/**
    注意：
    1.在串口播放时候 播放完成会发送一个 uart_recv_data == 8'd22 可以在外部判断是否播放完
    2.设备本地播放时候在暂停时候无法保证声音消失，所以需要在外部对music_tone 设置 8'd22 进行消音处理（已废除此条）
    3.模块内部实现了串口音频数据的检测，如果串口收到音频数据 xxx 会拉低 否则会为高电平

***/
 
module  music_play(
    input               sys_clk,            //外部50M时钟
    input               sys_rst_n,          //外部复位信号，低有效

    input               clk_1ms,            //1ms时钟输入
	input 			    music_stop,

        

    input               uart_done,     //串口接收数据标志
    input   [7:0]       uart_recv_data,     //串口数据
    
    output      reg     uart_data_busy,     //串口收到数据拉低 ,接收完成 拉高
	//output 	reg	        blink,
    output  reg  [6:0]  led_debug,

    output  reg  [7:0]  music_tone        //输出音调
    );

localparam			IDLE	=	3'd0;
localparam			RUN		=	3'd1;
localparam			DELAY	=	3'd2;


localparam [15:0]	NUM_DELAY = 16'd1_000;		//1s   

reg	[8:0]	note	[100:0];		//音调
reg	[7:0]	cnt_run;	//运行状态跳转

reg         music_en;                //音频模块使能
reg         music_busy;  

reg [4:0]	state;
reg	[2:0] 	state_back = IDLE;

reg [15:0]	cnt_delay;
reg [15:0]	music_delay;

reg	[8:0]	music_cnt;			//音乐播放计数器()

reg [15:0]  clk_cnt;            //delay时钟计数器

wire recv_done_flag;
reg recv_done_d0;
reg recv_done_d1;

reg uart_music_mode;

//捕获recv_done上升沿，得到一个时钟周期的脉冲信号
assign recv_done_flag = (~recv_done_d1) & recv_done_d0;
                                                 
//对发送使能信号recv_done延迟两个时钟周期
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        recv_done_d0 <= 1'b0;                                  
        recv_done_d1 <= 1'b0;
    end                                                      
    else begin                                               
        recv_done_d0 <= uart_done;                               
        recv_done_d1 <= recv_done_d0;                            
    end
//    if (recv_done_flag == 1'b1)
//        blink <= ~blink;
end


//串口数据转发到音频模块
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        state <= IDLE;
        cnt_run <= 8'd0;
        uart_music_mode <= 1'b0;
        uart_data_busy <= 1'b1;
//        music_time <= 8'd0;
//        music_note <= 5'd0;
    end
    else if(recv_done_flag == 1'b1) begin
        music_tone <= uart_recv_data;
        if(uart_recv_data == 8'd22) begin       //接收到结尾停止音乐播放
            uart_music_mode <= 1'b0;            //将模式切换为空白等待 等待本地音乐
            uart_data_busy <= 1'b1;             //清零
        end
        else begin
            uart_music_mode <= 1'b1;           
            uart_data_busy <= 1'b0;             //接收到串口数据
        end


        //led_debug <= uart_recv_data[7:3];
		//blink <= ~blink;
        //if(uart_recv_data == 8'd22)				//播放完成

    end
	else begin                                      //正常播放
		if (music_stop == 1'b0)  begin
            if(uart_music_mode == 1'b0) begin   //本地播放模式        
                music_tone <= 8'd22;
            end
            else begin                          //串口播放模式
                
            end
		end
		else begin
			case (state)
				IDLE: begin		
					// if(music_en == 1'b0)	begin//不播放音乐
					// 	state_back <= IDLE;
					// 	state <= IDLE;
					// end
					// else if(en == 1'b1) begin //数据接收完成
					// 	state_back <= IDLE;
					// 	state <= RUN;
					// end
					state_back <= IDLE;
					//    音调          | 拍子
					// __ __ __ __ | __ __ __ __ 

					//拍子
					//  1. 1/4拍 200ms
					//  2. 1/2拍 400ms
					//  3. 1  拍 1s
					//  4. 2  拍 2s
					//  5. 4  拍 4s 
					note[0] = {5'd6,3'd1};	//music_time[0] = 16'd200;	//200 100
					note[1] = {5'd7,3'd1};	//music_time[1] = 16'd200;	//200 100
					note[2] = {5'd8,3'd1};	//music_time[2] = 16'd200;	//200 100
					note[3] = {5'd9,3'd1};	//music_time[3] = 16'd200;	//200 100

					note[4] = {5'd10,3'd1};        //music_time[4] = 16'd200;	//200 100
					note[5] = {5'd0,3'd1};	        //music_time[5] = 16'd200;	//200 100
					note[6] = {5'd13,3'd1};        //music_time[6] = 16'd200;	//200 100
					note[7] = {5'd12,3'd1};        //music_time[7] = 16'd200;	//200 100

					note[8] = {5'd10,3'd1};	        //music_time[8] = 16'd200;	//200 100
					note[9] = {5'd0,3'd1};	        //music_time[9] = 16'd200;	//200 100
					note[10] = {5'd13,3'd1};        //music_time[10] = 16'd200;	//200 100
					note[11] = {5'd0,3'd1};	        //music_time[11] = 16'd200;	//200 100	

					note[12] = {5'd10,3'd1};               //music_time[12] = 16'd200;	//200 100
					note[13] = {5'd9,3'd1};                //music_time[13] = 16'd200;	//200 100
					note[14] = {5'd8,3'd1};                //music_time[14] = 16'd200;	//200 100
					note[15] = {5'd14,3'd1};               //music_time[15] = 16'd200;	//200 100

					note[16] = {5'd6,3'd1};                //music_time[16] = 16'd200;	//200 100
					note[17] = {5'd7,3'd1};                //music_time[17] = 16'd200;	//200 100
					note[18] = {5'd8,3'd1};                //music_time[18] = 16'd200;	//200 100
					note[19] = {5'd9,3'd1};                //music_time[19] = 16'd200;	//200 100
					
					note[20] = {5'd10,3'd1};               //music_time[20] = 16'd200;	//200 100
					note[21] = {5'd0,3'd1};                //music_time[21] = 16'd200;	//200 100
					note[22] = {5'd9,3'd1};                //music_time[22] = 16'd200;	//200 100
					note[23] = {5'd8,3'd1};                //music_time[23] = 16'd200;	//200 100

					note[24] = {5'd7,3'd1};                //music_time[24] = 16'd200;	//200 100
					note[25] = {5'd6,3'd1};                //music_time[25] = 16'd200;	//200 100
					note[26] = {5'd7,3'd1};                //music_time[26] = 16'd200;	//200 100
					note[27] = {5'd8,3'd1};                //music_time[27] = 16'd200;	//200 100

					note[28] = {5'd7,3'd1};                //music_time[28] = 16'd200;	//200 100
					note[29] = {5'd6,3'd1};                //music_time[29] = 16'd200;	//200 100
					note[30] = {5'd12,3'd1};	            //music_time[30] = 16'd200;	//200 100
					note[31] = {5'd7,3'd1};                //music_time[31] = 16'd200;	//200 100

					//第二段
					note[32] = {5'd6,3'd1};                //music_time[32] = 16'd200;	//200 100
					note[33] = {5'd7,3'd1};                //music_time[33] = 16'd200;	//200 100
					note[34] = {5'd8,3'd1};                //music_time[34] = 16'd200;	//200 100
					note[35] = {5'd9,3'd1};                //music_time[35] = 16'd200;	//200 100

					note[36] = {5'd10,3'd1};               //music_time[36] = 16'd200;	//200 100
					note[37] = {5'd0,3'd1};                //music_time[37] = 16'd200;	//200 100
					note[38] = {5'd13,3'd1};               //music_time[38] = 16'd200;	//200 100
					note[39] = {5'd12,3'd1};               //music_time[39] = 16'd200;	//200 100

					note[40] = {5'd10,3'd1};               //music_time[40] = 16'd200;	//200 100
					note[41] = {5'd0,3'd1};                //music_time[41] = 16'd200;	//200 100
					note[42] = {5'd13,3'd1};               //music_time[42] = 16'd200;	//200 100
					note[43] = {5'd0,3'd1};                //music_time[43] = 16'd200;	//200 100	

					note[44] = {5'd10,3'd1};               //music_time[44] = 16'd200;	//200 100
					note[45] = {5'd9,3'd1};                //music_time[45] = 16'd200;	//200 100
					note[46] = {5'd8,3'd1};                //music_time[46] = 16'd200;	//200 100
					note[47] = {5'd14,3'd1};               //music_time[47] = 16'd200;	//200 100

					note[48] = {5'd6,3'd1};                //music_time[48] = 16'd200;	//200 100
					note[49] = {5'd7,3'd1};                //music_time[49] = 16'd200;	//200 100
					note[50] = {5'd8,3'd1};                //music_time[50] = 16'd200;	//200 100
					note[51] = {5'd9,3'd1};                //music_time[51] = 16'd200;	//200 100
					
					note[52] = {5'd10,3'd1};               //music_time[52] = 16'd200;	//200 100
					note[53] = {5'd0,3'd1};                //music_time[53] = 16'd200;	//200 100
					note[54] = {5'd9,3'd1};                //music_time[54] = 16'd200;	//200 100
					note[55] = {5'd8,3'd1};                //music_time[55] = 16'd200;	//200 100

					note[56] = {5'd7,3'd1};                //music_time[56] = 16'd200;	//200 100
					note[57] = {5'd0,3'd1};                //music_time[57] = 16'd200;	//200 100
					note[58] = {5'd8,3'd1};                //music_time[58] = 16'd200;	//200 100
					note[59] = {5'd0,3'd1};                //music_time[59] = 16'd200;	//200 100

					note[60] = {5'd2,3'd1};                //music_time[60] = 16'd200;	//200 100
					note[61] = {5'd0,3'd1};                //music_time[61] = 16'd200;	//200 100
					note[62] = {5'd10,3'd1};               //music_time[62] = 16'd200;	//200 100
					note[63] = {5'd0,3'd1};                //music_time[63] = 16'd200;	//200 100

					///HIGH C		1               //13，10，9
					note[64] = {5'd12,3'd1};               //music_time[64] = 16'd200;	//200 100
					note[65] = {5'd13,3'd1};               //music_time[65] = 16'd200;	//200 100
					note[66] = {5'd10,3'd1};               //music_time[66] = 16'd200;	//200 100
					note[67] = {5'd9,3'd1};                //music_time[67] = 16'd200;	//200 100
					//10，0，9 10
					note[68] = {5'd10,3'd1};               //music_time[68] = 16'd200;	//200 100
					note[69] = {5'd0,3'd1};                //music_time[69] = 16'd200;	//200 100
					note[70] = {5'd9,3'd1};                //music_time[70] = 16'd200;	//200 100
					note[71] = {5'd10,3'd1};               //music_time[71] = 16'd200;	//200 100
					//12，13，15，9
					note[72] = {5'd12,3'd1};               //music_time[72] = 16'd200;	//200 100
					note[73] = {5'd13,3'd1};               //music_time[73] = 16'd200;	//200 100
					note[74] = {5'd10,3'd1};               //music_time[74] = 16'd200;	//200 100
					note[75] = {5'd9,3'd1};                //music_time[75] = 16'd200;	//200 100
					//10，0，9 10
					note[76] = {5'd10,3'd1};               //music_time[76] = 16'd200;	//200 100
					note[77] = {5'd0,3'd1};                //music_time[77] = 16'd200;	//200 100
					note[78] = {5'd9,3'd1};                //music_time[78] = 16'd200;	//200 100
					note[79] = {5'd10,3'd1};               //music_time[79] = 16'd200;	//200 100
					//9,8,7,5
					note[80] = {5'd9,3'd1};                //music_time[80] = 16'd200;	//200 100
					note[81] = {5'd8,3'd1};                //music_time[81] = 16'd200;	//200 100
					note[82] = {5'd7,3'd1};                //music_time[82] = 16'd200;	//200 100
					note[83] = {5'd5,3'd1};                //music_time[83] = 16'd200;	//200 100

					//6,0,5,6
					note[84] = {5'd6,3'd1};                //music_time[84] = 16'd200;	//200 100
					note[85] = {5'd0,3'd1};                //music_time[85] = 16'd200;	//200 100
					note[86] = {5'd5,3'd1};                //music_time[86] = 16'd200;	//200 100
					note[87] = {5'd6,3'd1};                //music_time[87] = 16'd200;	//200 100	

					//7,8,9,10
					note[88] = {5'd7,3'd1};                //music_time[87] = 16'd200;	//200 100
					note[89] = {5'd8,3'd1};                //music_time[89] = 16'd200;	//200 100
					note[90] = {5'd9,3'd1};                //music_time[90] = 16'd200;	//200 100
					note[91] = {5'd10,3'd1};               //music_time[91] = 16'd200;	//200 100

					//	6,0,10,2	                //				
					note[92] = {5'd6,3'd1};                //music_time[92] = 16'd200;	//200 100
					note[93] = {5'd0,3'd1};                //music_time[93] = 16'd200;	//200 100
					note[94] = {5'd10,3'd1};               //music_time[94] = 16'd200;	//200 100
					note[95] = {5'd12,3'd1};               //music_time[95] = 16'd200;	//200 100
					state <= RUN;

				end
				RUN:begin
					case (cnt_run)
						7'd0:begin	
							music_tone <= note[music_cnt][7:3]; 
							cnt_run<=cnt_run+1'b1;
							end							
						7'd1:begin	
							if(note[music_cnt][2:0] == 4'd1)
								music_delay <= 16'd200; 
							else if(note[music_cnt][3:0] == 4'd2)
								music_delay <= 16'd500; 
							else if(note[music_cnt][3:0] == 4'd3)    
								music_delay <= 16'd1000;
							else if(note[music_cnt][3:0] == 4'd4)    
								music_delay <= 16'd2000;
							else if(note[music_cnt][3:0] == 4'd5)    
								music_delay <= 16'd4000;   
							state <= DELAY; state_back<=RUN; 
							cnt_run<=cnt_run+1'b1;
							end
						7'd2:begin 	
								if(music_cnt == 8'd95)          //播放完成
									music_cnt <= 8'd0;
								else begin
									music_cnt <= music_cnt + 1'b1;
									cnt_run <= 7'd0;
								end
							end	
					endcase							
				end
				DELAY:begin
					// if(clk_1ms == 1'b1) begin
					//     //clkout_1ms <= 1'b0;
					   
                    //     if(cnt_delay >= 16'd200) begin
					//     cnt_delay <= 16'd0;
					//     state <= state_back; 
					//     blink <= ~ blink;                //LED测试
					//     end
                    //     else begin 
                    //         cnt_delay <= cnt_delay + 1'b1;   
                    //     end

					// end    

					
                    if(clk_cnt == 16'd12_000) begin
                        clk_cnt <= 16'b0;
                        if(cnt_delay >= music_delay) begin
						    cnt_delay <= 16'd0;
						    state <= state_back; 
					    end 
                        else 
                            cnt_delay <= cnt_delay + 1'b1;
                    end
                    else begin
                        clk_cnt <= clk_cnt + 1'b1;

                    end
                    
				

				end
			endcase		
		end
	end
end

endmodule