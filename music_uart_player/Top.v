module top(
    input           sys_clk,            //外部50M时钟
    input           sys_rst_n,          //外部复位信号，低有效

    input           switch_1,

    input           switch_2,

    input           uart_rxd,           //UART接收端口
    output          uart_txd,           //UART发送端口

    output          beep,               //蜂鸣器接口

    output       blink
    );
 
//parameter define
parameter  CLK_FREQ = 12000000;         //定义系统时钟频率
parameter  UART_BPS = 115200;           //定义串口波特率

localparam [31:0] div_1ms	= 23'd12_000;
 


//wire define   
wire       uart_recv_done;              //UART接收完成
wire [7:0] uart_recv_data;              //UART接收数据
wire       uart_send_en;                //UART发送使能
wire  [7:0] uart_send_data;              //UART发送数据
wire       uart_tx_busy;                //UART发送忙状态标志





   

//reg    [7:0]     music_time;
//reg    [4:0]    music_note;
//reg             clk_1ms;                 //1ms时间到

wire [7:0]  music_tone;                     //音调


wire 		clk_1ms;


//reg [15:0]	music_time [100:0];	//拍子

//*****************************************************
//**                    main code
//*****************************************************

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


Beeper  m_beep(
	.clk_in	(sys_clk),		//系统时钟
    .rst_n_in	(sys_rst_n),	//系统复位，低有效
    .tone_en	(switch_1),		//蜂鸣器使能信号
    .tone		(music_tone),	//蜂鸣器音节控制
    .piano_out	(beep)			//蜂鸣器控制输出
);

divide divide_1ms(
	.clk	(sys_clk),
	.rst_n	(sys_rst_n),
	
	.clkout	(clk_1ms),
	.div	(div_1ms)
);
 
music_play  m_music_play(
    .sys_clk    (sys_clk),            //外部50M时钟
    .sys_rst_n  (sys_rst_n),          //外部复位信号，低有效

    .clk_1ms    (clk_1ms),            //1ms时钟输入

    .uart_done     (uart_recv_done),     //串口接收数据标志
    .uart_recv_data     (uart_recv_data),     //串口数据
    .switch_2           (switch_2),             //测试本地播放
    .blink              (blink),
    .music_tone         (music_tone)        //输出音调
    );


// wire recv_done_flag;
// reg recv_done_d0;
// reg recv_done_d1;


// //捕获recv_done上升沿，得到一个时钟周期的脉冲信号
// assign recv_done_flag = (~recv_done_d1) & recv_done_d0;
                                                 
// //对发送使能信号recv_done延迟两个时钟周期
// always @(posedge sys_clk or negedge sys_rst_n) begin         
//     if (!sys_rst_n) begin
//         recv_done_d0 <= 1'b0;                                  
//         recv_done_d1 <= 1'b0;
//     end                                                      
//     else begin                                               
//         recv_done_d0 <= uart_recv_done;                               
//         recv_done_d1 <= recv_done_d0;                            
//     end
//     if (recv_done_flag == 1'b1)
//         blink <= ~blink;
//end







endmodule