module Top_Module(
    input           sys_clk,            //外部12M时钟
    input           sys_rst_n,          //外部复位信号，低有效
    input           uart_rxd,           //UART接收端口
	input   	    switch_1,

    output          uart_txd,            //UART发送端口
    output	reg		led,
    output  	    beep,
    output  reg     blink	
);
 
  
parameter  CLK_FREQ = 12000000;         //定义系统时钟频率
parameter  UART_BPS = 115200;           //定义串口波特率
	
wire       uart_recv_done;              //UART接收完成
wire [7:0] uart_recv_data;              //UART接收数据
wire       uart_send_en;                //UART发送使能
wire [7:0] uart_send_data;              //UART发送数据
wire       uart_tx_busy;                //UART发送忙状态标志
// /*******接受数据边沿捕获****************/
//reg define
reg recv_done_d0;
reg recv_done_d1;
reg tx_ready;

wire recv_done_flag;           //程序中若此变量为High 说明接收到一个字节的数据
// /**********************/
localparam  UART_RECV_CNT_MAX = 8;
reg [7:0] uart_recv_data_cnt;  //串口数据接收计数器 每8bits数据+1

reg [7:0] music_data_buf [100:0]; //音乐数据暂存器 （串口数据存放到这里）


reg [7:0] music_state;             //音乐播放状态机
reg [7:0] music_play_cnt;

reg [7:0] music_note;
reg [7:0] music_time;

reg         music_en;




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
reg [7:0]	music_delay;



/************************************************************************************************/
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

//串口发送模块    
uart_send #(                          
    .CLK_FREQ       (CLK_FREQ),         //设置系统时钟频率
    .UART_BPS       (UART_BPS))         //设置串口发送波特率
u_uart_send(                 
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
     
    .uart_en        (uart_send_en),
    .uart_din       (uart_send_data),
    .uart_tx_busy   (uart_tx_busy),
    .uart_txd       (uart_txd)
    );
    
//串口环回模块    
uart_loop u_uart_loop(
    .sys_clk        (sys_clk),             
    .sys_rst_n      (sys_rst_n),           
   
    .recv_done      (uart_recv_done),   //接收一帧数据完成标志信号
    .recv_data      (uart_recv_data),   //接收的数据
   
    .tx_busy        (uart_tx_busy),     //发送忙状态标志      
    .send_en        (uart_send_en),     //发送使能信号
    .send_data      (uart_send_data)    //待发送数据
    );


/************************************************************************************************/
    

//捕获recv_done上升沿，得到一个时钟周期的脉冲信号
assign recv_done_flag = (~recv_done_d1) & recv_done_d0;

//对发送使能信号recv_done延迟两个时钟周期
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        recv_done_d0 <= 1'b0;                                  
        recv_done_d1 <= 1'b0;
    end                                                      
    else begin                                               
        recv_done_d0 <= uart_recv_done;    
		//recv_done_d0 <= recv_done;                           
        recv_done_d1 <= recv_done_d0;                            
    end
end	
//***************************************************

divide divide_1ms(						//1ms时钟
	.clk	(sys_clk),
	.rst_n	(sys_rst_n),
	
	.clkout	(clkout_1ms),
	.div	(div_1ms)
);
 
Beeper beeper(
	.clk_in		(sys_clk),			//系统时钟
	.rst_n_in	(sys_rst_n),         //系统复位，低有效
	
	.tone_en	(tone_en),          //蜂鸣器使能信号
	.tone		(tone),             //蜂鸣器音节控制
	.piano_out	(beep)              //蜂鸣器控制输出   
);

reg recv_8bits_flag;

//串口数据处理
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        music_en <= 1'b0;
        music_note <= 8'b0;
        music_delay <= 8'd0;
    end
    if(recv_done_flag) begin    //串口接收到一帧数据
        music_en <= 1'b1;
        music_note <= uart_recv_data;
        music_delay <= 8'd200;
        music_en <=1'b1;
    end
    else begin
        music_en <= 1'b0;
    end
end

always@(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n) begin			//复位
		tone_en <= 1'b1;            //开启蜂鸣器功能
		state <= IDLE;
		run_cnt <= 8'd0;
	end
	else begin

        if(music_en == 1'b0) begin          //失能状态
            state <= IDLE;  
            run_cnt<= 8'd0;
            
        end
        else begin                          //使能状态                  
        //播放串口发送来的一次音频
            tone_en <= switch_1;
            case (state)
                IDLE:begin						    //空闲模式
                end
                RUN:begin							//运行模式
                    case (run_cnt)
                        8'd0:begin
                            tone <= music_note;
                            run_cnt <= run_cnt+1'b1;
                            music_flag <= 1'b1;	    //忙碌状态
                        end
                        8'd1:begin
                            music_delay <= 8'd200;//music_time; 	
                            state <= DELAY; 
                            state_back <= RUN;
                            run_cnt<=run_cnt+1'b1;
                        end
                        8'd2:begin
                            state <= IDLE; 
                            state_back<=IDLE;
                            run_cnt<= 8'b0;
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
                        blink <= !blink;
                        delay_cnt <= 16'd0;
                        state <= state_back; 
                    end
                end
            endcase
        end
	end
end
endmodule



// //串口数据存储到RAM中
//  always@(posedge sys_clk or negedge sys_rst_n) begin
// 	if(!sys_rst_n) begin			//复位
//         music_state <= 8'd0;
//         music_play_cnt <= 8'd0;
//         uart_recv_data_cnt <= 8'd0;
//         recv_8bits_flag <= 1'd0;
//         music_en <= 1'b0; 

// 		music_time <= 8'd0;
//         music_note <= 8'd0;
// 	end
	
//     if(recv_done_flag == 1'b1) begin //接收到8bits数据
//         recv_8bits_flag <= 1'b1;    
//     end
//     if(recv_8bits_flag == 1'b1) begin    //接受到数据 
//         case (music_state)
//             8'd0:begin
//                 //if(music_busy == 1'b0)   begin   //空闲模式
//                     music_data_buf[uart_recv_data_cnt] <= uart_recv_data;   //串口数据装填到Buf
//                     music_time <= 8'd200;
                    
//                     music_en <= 1'b1;
//                     music_state <= music_state + 1'b1;
//                 //end
//             end
//             8'd1:begin
//                 if(uart_recv_data_cnt < 8'd8)  begin
//                     uart_recv_data_cnt <= uart_recv_data_cnt +1'b1;
//                 end
//                 else begin                      //数据接收完成开始播放
//                     uart_recv_data_cnt <= 8'd0;

//                 //     music_en <= 1'b0; 
//                 //     uart_recv_data_cnt <= 8'd0; //清除标志
//                 // end
//                 // music_en <= 1'b0; 
//                 // uart_recv_data_cnt <= 8'd0; //清除标志
//                 // music_state <= 8'b0;
//                 // recv_8bits_flag <= 1'b0;
//                 end
//             end
//         endcase       
//     end
//             // if(music_play_cnt == 8'b0) begin    
//             //     music_data_buf[0] <= uart_recv_data;
//             // end
//             // else begin
//             //     if(music_busy == 1'b0)   begin   //空闲模式
//             //         uart_recv_data_cnt <= uart_recv_data_cnt + 1'b1;        //数据接收计数器
//             //         music_data_buf[uart_recv_data_cnt] <= uart_recv_data;   //串口数据装填到Buf
//             //     end
//             // end
      
    
//     //    //if(recv_8bits_flag == 1'b1) begin    //接受到数据 


//     //         // case (music_state)
//     //         //     8'd0:begin
//     //         //         if(music_busy == 1'b0)   begin   //空闲模式
//     //         //             //blink <= !blink;
//     //         //             //music_note <= music_data_buf[music_play_cnt];
//     //         //             //music_note <= uart_recv_data;
//     //         //             music_data_buf[music_play_cnt] <= uart_recv_data;   //串口数据装填到Buf
//     //         //             music_time <= 8'd200;
                        
//     //         //             music_en <= 1'b1;
//     //         //             music_state <= music_state + 1'b1;
//     //         //         end
//     //         //     end
//     //         //     8'd1:begin
//     //         //         if(music_play_cnt < 8'd8)  begin
//     //         //             music_play_cnt <= music_play_cnt +1'b1;
//     //         //         end
//     //         //         else begin  //播放完成
//     //         //             music_en <= 1'b0; 
//     //         //             uart_recv_data_cnt <= 8'd0; //清除标志
//     //         //         end
//     //         //         music_en <= 1'b0; 
//     //         //         uart_recv_data_cnt <= 8'd0; //清除标志
//     //         //         music_state <= 8'b0;
//     //         //         recv_8bits_flag <= 1'b0;
//     //         //     end
//     //         // endcase

//     //    //end
//     else begin   //接收完成
//         if(uart_recv_data_cnt == 8'b1) begin   //数据接收完成 接收完成8 * 8bits数据
//             case (music_state)
//                 8'd0:begin
//                     if(music_busy == 1'b0)   begin   //空闲模式
//                         music_note <= music_data_buf[music_play_cnt];
//                         music_time <= 8'd200;
//                         music_en <= 1'b1;
//                         music_state <= music_state + 1'b1;
//                     end
//                 end
//                 8'd1:begin
//                     if(music_play_cnt < 8'd8)  begin
//                         music_play_cnt <= music_play_cnt +1'b1;
//                     end
//                     else begin  //播放完成
//                         music_en <= 1'b0; 
//                         uart_recv_data_cnt <= 8'd0;         //清空串口接收计数器
//                     end
//                 end
//             endcase
//         end
//         else begin
//             uart_recv_data_cnt <= uart_recv_data_cnt + 1'b1;    
//         end
//     end
// end