module top_module(
	input	sys_clk,		//系统时钟
	input	sys_rst,		//系统复位
	inout	one_wire,		//单总线信号线
	output  uart_txd,            //UART发送端口
	
	output	led1_pin
);
//	assign led1 = sys_rst;
wire	clk_1s;

reg		uart_en;
reg [7:0] 	uart_send_data;              //UART发送数据
reg	[7:0]	Temp_H;
reg	[7:0]	Temp_L;

wire       	uart_tx_busy;                //UART发送忙状态标志
wire [15:0]		ds18b20_data;

//1秒时钟
clock_1s u_clock_1s(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),		

	.clk_1s		(clk_1s)
);
 
//led秒闪烁
blink u_blink(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),
	
	.toggle		(clk_1s),	
	.blink_io	(led1_pin)
);
 
//串口发送
uart_send u_uart_send( 
    .sys_clk		(sys_clk),					//系统时钟
	.sys_rst_n		(sys_rst),       			//系统复位，低电平有效        
                
    
    .uart_en		(uart_en),                  //发送使能信号
    .uart_din		(uart_send_data),           //待发送数据
    .uart_tx_busy	(uart_tx_busy),             //发送忙状态标志      
    .uart_txd		(uart_txd)                  //UART发送端口
);


DS18B20Z  u_DS18B20Z(
	.clk_in				(sys_clk),
	.rst_n_in			(sys_rst),
	
	.one_wire			(one_wire),
	.data_out			(ds18b20_data)
);


//串口测试
always@(posedge sys_clk or negedge sys_rst) begin
	if (1)	begin
		if (!sys_rst) begin				//系统复位
			uart_en <= 1'b0;		
			Temp_H <= 8'b0;
		end
		else begin					
			if(clk_1s == 1'b1) begin	//1S时间到
				//温度数据整理
				Temp_H[6:4] <= ds18b20_data[10:8];
				Temp_H[3:0] <= ds18b20_data[7:4];
				
				//Temp_H <= ((Temp_H<<4) &8'h70 | (Temp_L >>4) & 8'h0f);
				
				
				uart_en  <= 1'b1;                               //拉高发送使能信号这里需要的是边沿触发	
				uart_send_data <= Temp_H;
			end
			else	
				uart_en  <= 1'b0;
			
		end
	end
end

endmodule
 


// module DS18B20Z
// (
// 	input				clk_in,			// system clock
// 	input				rst_n_in,		// system reset, active low
// 	inout				one_wire,		// ds18b20z one-wire-bus  输入
// 	output	reg	[15:0]	data_out		// ds18b20z data_out      数据
// );

