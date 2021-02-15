module music(
    input           sys_clk,            //外部12M时钟
    input           sys_rst_n,          //外部复位信号，低有效

	//input			switch,				//开关可以将蜂鸣器调为无声，但音乐仍然播放
	input 			en,					//蜂鸣器功能使能
	input	[7:0]		music_note,			//音调文件
	input	[7:0]		music_time, 		//拍子
	
	output			beep,			    //蜂鸣器IO
	output 			music_busy			//音乐播放忙信号		
);	

localparam [31:0] div_1ms	= 23'd12_000;
//localparam [31:0] div_1s	= 32'd6_000_000;
//localparam [15:0]	NUM_DELAY = 16'd1_000;		//1s	

localparam			IDLE	=	3'd0;
localparam			RUN		=	3'd1;
localparam			DELAY	=	3'd2;

reg [7:0]	state;			//状态机状态标志
reg	[7:0] 	state_back;
reg [7:0] 	run_cnt;		//RUN状态状态机

reg	[8:0]	music_cnt;			//音乐计数器

reg [15:0]	delay_cnt;

reg 		music_flag;
assign  music_busy = music_flag;	//音频模块忙碌

reg 		tone_en;
reg [7:0]	tone;
reg [7:0]	cnt_run;
reg [7:0]	music_delay;
divide divide_1ms(						//1ms时钟
	.clk	(clk_in),
	.rst_n	(rst_n_in),
	
	.clkout	(clkout_1ms),
	.div	(div_1ms)
);

Beeper beeper(
	.clk_in		(clk_in),			//系统时钟
	.rst_n_in	(rst_n_in),         //系统复位，低有效
	
	.tone_en	(tone_en),          //蜂鸣器使能信号
	.tone		(tone),             //蜂鸣器音节控制
	.piano_out	(beep)              //蜂鸣器控制输出   
);


// always@(posedge clk_in or negedge rst_n_in) begin
// 	if(!rst_n_in) begin			//复位
// 		tone_en <= 1'b0;
// 	end
// 	else begin
// 		if(switch == 1'b0)begin
// 			tone_en <= 1'b1;
// 		end
// 		else begin
// 			tone_en <= 1'b0;
// 		end
// 	end
	
// end

always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin			//复位
		tone_en <= 1'b0;
		state <= IDLE;
		cnt_run <= 8'd0;
//		music_note <= 8'd0;
//		music_time <= 8'd0;
	end
	else begin
		case (state)
			IDLE:begin						//空闲模式
				if(en == 1'b0)	begin	//失能状态	
					state <= IDLE;
				end
				else begin				//使能状态
					state <= RUN; 
				end
			end
			RUN:begin							//运行模式
				case (run_cnt)
					8'd0:begin
						tone <= music_note;
						cnt_run<=cnt_run+1'b1;
						music_flag <= 1'b1;	//忙碌状态
					end
					8'd1:begin
						music_delay <= music_time; 	
						state <= DELAY; state_back<=RUN;
						cnt_run<=cnt_run+1'b1;
					end
					8'd2:begin
						state <= IDLE; 
						state_back<=IDLE;
						music_flag <= 1'b0;		//返回空闲
					end
				endcase
			end
			DELAY:begin
				if(clkout_1ms == 1'b1) begin
					//state <= state_back; 	
					delay_cnt <= delay_cnt + 1'b1;
				end
				else if(delay_cnt >= music_delay)begin
					delay_cnt <= 16'd0;
					state <= state_back; 
				end
			end
		endcase
	end
end




endmodule