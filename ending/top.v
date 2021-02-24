module top(sys_clk, sys_rst_n, sw1,sw2,beep,uart_txd,one_wire, uart_rxd,oled_res, key1, key2, key3, oled_cs, oled_dc, oled_sck, oled_mosi, led);
	
	input sys_clk;						//系统时钟
	input sys_rst_n;					//系统复位
	input key1;							//功能+
	input key2;							//功能-
	input key3;							//模式切换
	
	output reg led;
	input sw1;							//走时和报警设置切换
	input sw2;							//音频暂停开关
	input           uart_rxd;           //UART接收端口
	
	output oled_res;					//OLED复位IO
	output oled_cs;						//OLED片选IO
	output oled_dc;						//OLED
	output oled_sck;
	output oled_mosi;

	output          beep;        		//蜂鸣器接口
	output  uart_txd;            		//UART发送端口

	
	inout	one_wire;					//单总线信号线
	
	reg [7 : 0] sec;					//时钟秒
	reg [7 : 0] min;					//时钟分
	reg [7 : 0] hour;					//时钟小时
	
	wire clk_1s;			

	divide #(.WIDTH(32), .N(12000000)) devide_1s (
		
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.clkout(clk_1s)
		
	);
	
	wire key1_pulse;
	KEY key_1(
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.key(key1),
		.key_pulse(key1_pulse)
	);
	
	wire key2_pulse;
	KEY key_2(
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.key(key2),
		.key_pulse(key2_pulse)
	);
	
	wire key3_pulse;
	KEY key_3(
		.sys_clk(sys_clk),
		.sys_rst_n(sys_rst_n),
		.key(key3),
		.key_pulse(key3_pulse)
	);
	
	reg		[7 : 0]		sec_t;//模式设置
	reg		[7 : 0]		min_t;
	reg		[7 : 0]		hour_t;
	reg		[2 : 0]		key_mode;
	
	reg		[7 : 0]		min_warning;//设定的报警时间
	reg		[7 : 0]		hour_warning;
	reg		[7 : 0]		min_waning_t;
	reg		[7 : 0]		hour_waning_t;
	
	reg					warning;//报警标志位
	reg					time_set;//处于设定当前时间或者是设定报警时间的标志位
	reg		[7 : 0]		warning_time;//报警开始的时间
	
	always @(posedge sys_clk or negedge sys_rst_n) begin
		if (!sys_rst_n) begin
				key_mode <= 3'd0;
				time_set <= 1'b0;
				hour_t <= 8'd0;
				min_t <= 8'd0;
				sec_t <= 8'd0;
				min_warning <= 8'd1;
				hour_warning <= 8'd0;
				min_waning_t <= 8'd1;
				hour_waning_t <= 8'd0;
				TEM_high <= 8'd33;
			end else begin
				if (key1_pulse) begin
						if(sw1 == 0)//判断SW1处于走时/报警设定
							if(key_mode <= 2) begin
								key_mode <= key_mode + 1'b1;
								time_set <= 1'b1;
							end else begin//走时
								key_mode <= 3'd0;
								time_set <= 1'b0;
							end else begin
								if (key_mode <= 1) begin//报警
									key_mode <= key_mode + 1'b1;
									time_set <= 1'b1;
								end else begin
									key_mode <= 3'd0;
									time_set <= 1'b0;
								end
							end
				end else 
					if (key2_pulse) begin//加
						case (key_mode)
							3'd1: begin
								if(sw1 == 0) begin
									hour_t <= hour_t + 1'b1; 
									if (hour_t >=23)
										hour_t <= 0;
								end else begin
									hour_warning <= hour_warning + 1'b1; 
									if (hour_warning >=23)
										hour_warning <= 0;
								end
							end
							3'd2: begin
								if(sw1 == 0) begin
									min_t <= min_t + 1'b1; 
									if (min_t >= 59)
										min_t <= 0;
								end else begin
									min_warning <= min_warning + 1'b1; 
									if (min_warning >= 59)
										min_warning <= 0;
								end
							end
							3'd3: begin
								if(sw1 == 0) begin
									sec_t <= sec_t + 1'b1; 
									if (sec_t >= 59)
										sec_t <= 0;
								end
							end
						endcase
					end else 
						if (key3_pulse) begin//减
							case (key_mode)
								3'd1: begin
									if(sw1 == 0) begin
										hour_t <= hour_t - 1'b1; 
										if (hour_t <= 0)
											hour_t <= 0;
									end else begin
										hour_warning <= hour_warning - 1'b1; 
										if (hour_warning <= 0)
											hour_warning <= 0;
									end
								end
								3'd2: begin
									if(sw1 == 0) begin
										min_t <= min_t - 1'b1; 
										if (min_t <= 0)
											min_t <= 0;
									end else begin
										min_warning <= min_warning - 1'b1; 
										if (min_warning <= 0)
											min_warning <= 0;
									end
								end
								3'd3: begin
									if(sw1 == 0) begin
										sec_t <= sec_t - 1'b1; 
										if (sec_t <= 0)
											sec_t <= 0;
									end
								end
							endcase
						end else 
							if (!key_mode) begin
								sec_t <= sec;
								min_t <= min;
								hour_t <= hour;
								min_waning_t <= min_warning;
								hour_waning_t <= hour_warning;
							end
			end
	end
	
	always @(posedge clk_1s or negedge sys_rst_n) begin//报警检测
		if (!sys_rst_n) begin
			warning_time <= 8'd0;
			led <= 1'b1;
			warning <= 1'b0;
		end else begin
			if((min_waning_t == min) && (hour_waning_t == hour)) begin//报警时刻
				if(warning_time <= 9) begin//本地音乐播放的时间
					warning <= 1'b1;
					led = ~led;
					warning_time <= warning_time + 8'd1;
				end else begin
					warning <= 1'b0;
					led <= 1'b1;
				end
			end else begin
				warning_time <= 8'd0;
			end
		end
	end
	
	always @(posedge clk_1s or negedge sys_rst_n) begin//计时模块
		if (!sys_rst_n) begin
			sec <= 8'd0;
			min <= 8'd0;
			hour <= 8'd0;
		end else begin
				if (key_mode) begin
						sec <= sec_t;
						min <= min_t;
						hour <= hour_t;
				end else begin
					if (sec >= 59) begin
						sec <= 1'b0;
						min <= min + 1'b1;
					end else
						sec <= sec + 1'b1;
						if (min >= 59) begin
							min <= 1'b0;
							hour <= 1'b1;
						end
						if (hour >= 23)
							hour <= 1'b0;
				end
		end
	end
	
	
	wire [3 : 0] sec_tens;
	wire [3 : 0] sec_ones;
	
	wire [3 : 0] min_tens;
	wire [3 : 0] min_ones;
	
	wire [3 : 0] hour_tens;
	wire [3 : 0] hour_ones;
	
	
	wire [3 : 0] min_warning_tens;
	wire [3 : 0] min_warning_ones;
	
	wire [3 : 0] hour_warning_tens;
	wire [3 : 0] hour_warning_ones;
	
	
	BCD bcd_sec (
	
		.binary(sec),
		.tens(sec_tens),
		.ones(sec_ones)
	
	);
	
	BCD bcd_min (
	
		.binary(min),
		.tens(min_tens),
		.ones(min_ones)
	
	);
	
	BCD bcd_hour (
	
		.binary(hour),
		.tens(hour_tens),
		.ones(hour_ones)
	
	);
	
		BCD bcd_hour_warning (
	
		.binary(hour_warning),
		.tens(hour_warning_tens),
		.ones(hour_warning_ones)
	
	);
	
		BCD bcd_min_warning (
	
		.binary(min_warning),
		.tens(min_warning_tens),
		.ones(min_warning_ones)
	
	);
	
//温度转化和读取
wire	[15:0]		ds18b20_data;
wire	[7:0]		T;
wire	[3:0]		Tem_high;
wire	[3:0]		Tem_lower;

assign T = {1'b0,ds18b20_data[10:8],ds18b20_data[7:4]};
BCD bcd_T (

		.binary(T),
		.tens(Tem_high),
		.ones(Tem_lower)
	
	);
	
DS18B20Z  u_DS18B20Z(
	.clk_in				(sys_clk),
	.rst_n_in			(sys_rst_n),
	
	.one_wire			(one_wire),
	.data_out			(ds18b20_data)
);
reg	[7:0]	Temp_H;
reg	[7:0]	TEM_high;
always@(posedge sys_clk or negedge sys_rst_n) begin
	if (1)	begin
		if (!sys_rst_n) begin				//系统复位
			uart_en <= 1'b0;		
			Temp_H <= 8'b0;

		end
		else begin					
			if(clk_1s == 1'b1) begin	//1S时间到
				//温度数据整理
				Temp_H[6:4] <= ds18b20_data[10:8];
				Temp_H[3:0] <= ds18b20_data[7:4];
				
				//Temp_H <= ((Temp_H<<4) &8'h70 | (Temp_L >>4) & 8'h0f);
				if(Temp_H >= TEM_high) begin
					uart_en  <= 1'b1;                               //拉高发送使能信号这里需要的是边沿触发	
					uart_send_data <= 8'hff;	
				end
				else if(warning_time) begin
					uart_en  <= 1'b1;                               //拉高发送使能信号这里需要的是边沿触发	
					uart_send_data <= Temp_H;
				end
			end
			else	
					uart_en  <= 1'b0;
		end
	end
end

reg		uart_en;
reg [7:0] 	uart_send_data;              //UART发送数据
wire       	uart_tx_busy;                //UART发送忙状态标志
uart_send u_uart_send( 
    .sys_clk		(sys_clk),					//系统时钟
	.sys_rst_n		(sys_rst_n),       			//系统复位，低电平有效        
                
    
    .uart_en		(uart_en),                  //发送使能信号
    .uart_din		(uart_send_data),           //待发送数据
    .uart_tx_busy	(uart_tx_busy),             //发送忙状态标志      
    .uart_txd		(uart_txd)                  //UART发送端口
);
// Temp_H[6:4] <= ds18b20_data[10:8];
// Temp_H[3:0] <= ds18b20_data[7:4];
	
	//时间显示模块

	wire		warning_TEM;

	OLED12832 oled1 (
		
		.clk(sys_clk),
		.rst_n(sys_rst_n),		//系统复位，低有效
		.sw1(sw1),			//切换定时/走时模式
 
		.oled_rst(oled_res),	//OLED复位
		.oled_csn(oled_cs),		//OLED片选控制
		.oled_dcn(oled_dc),		//OLED数据指令控制
		.oled_clk(oled_sck),	//OLED时钟信号
		.oled_dat(oled_mosi),	//OLED数据信号
		
		
		
		.T_high(Tem_high),
		.T_lower(Tem_lower),
		.warning_TEM(warning_TEM),
		
		.time_set(time_set),
		.warningtime_min_lower(min_warning_ones),
		.warningtime_min_high(min_warning_tens),
		.warningtime_hour_lower(hour_warning_ones),
		.warningtime_hour_high(hour_warning_tens),
		
		.time_sec_lower(sec_ones),
		.time_sec_high(sec_tens),
		.time_min_lower(min_ones),
		.time_min_high(min_tens),
		.time_hour_lower(hour_ones),
		.time_hour_high(hour_tens)
	); 
	
	
	
	
	//音频功能
parameter  CLK_FREQ = 12000000;         //定义系统时钟频率
parameter  UART_BPS = 115200;           //定义串口波特率
wire        uart_recv_done;              //UART接收完成
wire  [7:0] uart_recv_data;              //UART接收数据
wire [7:0]  music_tone;                     //音调


//串口接收模块     
uart_recv #(                          
    .CLK_FREQ       (CLK_FREQ),         //设置系统时钟频率
    .UART_BPS       (UART_BPS))         //设置串口接收波特率
u_uart_recv(                 
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .uart_rxd       (uart_rxd),
    .uart_done      (uart_recv_done),
    .uart_data      (uart_recv_data)
    );

Beeper  m_beep(
	.clk_in	    (sys_clk),		//系统时钟
    .rst_n_in	(sys_rst_n),	//系统复位，低有效
    .tone_en	(sw2),		//蜂鸣器使能信号
    .tone		(music_tone),	//蜂鸣器音节控制
    .piano_out	(beep)			//蜂鸣器控制输出
);

wire 		clk_1ms;

	divide #(.WIDTH(32),.N(12000000)) divide_1kHz ( 
			.sys_clk(clk),
			.sys_rst_n(rst_n),      
			.clkout(clk_1ms)
			);
 
 
music_play  m_music_play(
    .sys_clk    (sys_clk),            //外部50M时钟
    .sys_rst_n  (sys_rst_n),          //外部复位信号，低有效

    .clk_1ms    (clk_1ms),            //1ms时钟输入

    .uart_done          (uart_recv_done),     //串口接收数据标志
    .uart_recv_data     (uart_recv_data),     //串口数据
    .music_stop           (warning),             //测试本地播放
    //.blink              (blink),
    .music_tone         (music_tone),        //输出音调
	.uart_data_busy		(warning_TEM)

    );

endmodule