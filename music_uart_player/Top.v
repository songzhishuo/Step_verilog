module top(
    input           sys_clk,            //�ⲿ50Mʱ��
    input           sys_rst_n,          //�ⲿ��λ�źţ�����Ч

    input           switch_1,

    input           switch_2,

    input           uart_rxd,           //UART���ն˿�
    output          uart_txd,           //UART���Ͷ˿�

    output          beep,               //�������ӿ�

    output       blink
    );
 
//parameter define
parameter  CLK_FREQ = 12000000;         //����ϵͳʱ��Ƶ��
parameter  UART_BPS = 115200;           //���崮�ڲ�����

localparam [31:0] div_1ms	= 23'd12_000;
 


//wire define   
wire       uart_recv_done;              //UART�������
wire [7:0] uart_recv_data;              //UART��������
wire       uart_send_en;                //UART����ʹ��
wire  [7:0] uart_send_data;              //UART��������
wire       uart_tx_busy;                //UART����æ״̬��־





   

//reg    [7:0]     music_time;
//reg    [4:0]    music_note;
//reg             clk_1ms;                 //1msʱ�䵽

wire [7:0]  music_tone;                     //����


wire 		clk_1ms;


//reg [15:0]	music_time [100:0];	//����

//*****************************************************
//**                    main code
//*****************************************************

//���ڽ���ģ��     
uart_recv #(                          
    .CLK_FREQ       (CLK_FREQ),         //����ϵͳʱ��Ƶ��
    .UART_BPS       (UART_BPS))         //���ô��ڽ��ղ�����
u_uart_recv(                 
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .uart_rxd       (uart_rxd),
    .uart_done      (uart_recv_done),
    .uart_data      (uart_recv_data)
    );

//���ڷ���ģ��    
uart_send #(                          
    .CLK_FREQ       (CLK_FREQ),         //����ϵͳʱ��Ƶ��
    .UART_BPS       (UART_BPS))         //���ô��ڷ��Ͳ�����
u_uart_send(                 
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
     
    .uart_en        (uart_send_en),
    .uart_din       (uart_send_data),
    .uart_tx_busy   (uart_tx_busy),
    .uart_txd       (uart_txd)
    );
    
//���ڻ���ģ��    
uart_loop u_uart_loop(
    .sys_clk        (sys_clk),             
    .sys_rst_n      (sys_rst_n),           
   
    .recv_done      (uart_recv_done),   //����һ֡������ɱ�־�ź�
    .recv_data      (uart_recv_data),   //���յ�����
   
    .tx_busy        (uart_tx_busy),     //����æ״̬��־      
    .send_en        (uart_send_en),     //����ʹ���ź�
    .send_data      (uart_send_data)    //����������
    );


Beeper  m_beep(
	.clk_in	(sys_clk),		//ϵͳʱ��
    .rst_n_in	(sys_rst_n),	//ϵͳ��λ������Ч
    .tone_en	(switch_1),		//������ʹ���ź�
    .tone		(music_tone),	//���������ڿ���
    .piano_out	(beep)			//�������������
);

divide divide_1ms(
	.clk	(sys_clk),
	.rst_n	(sys_rst_n),
	
	.clkout	(clk_1ms),
	.div	(div_1ms)
);
 
music_play  m_music_play(
    .sys_clk    (sys_clk),            //�ⲿ50Mʱ��
    .sys_rst_n  (sys_rst_n),          //�ⲿ��λ�źţ�����Ч

    .clk_1ms    (clk_1ms),            //1msʱ������

    .uart_done     (uart_recv_done),     //���ڽ������ݱ�־
    .uart_recv_data     (uart_recv_data),     //��������
    .switch_2           (switch_2),             //���Ա��ز���
    .blink              (blink),
    .music_tone         (music_tone)        //�������
    );


// wire recv_done_flag;
// reg recv_done_d0;
// reg recv_done_d1;


// //����recv_done�����أ��õ�һ��ʱ�����ڵ������ź�
// assign recv_done_flag = (~recv_done_d1) & recv_done_d0;
                                                 
// //�Է���ʹ���ź�recv_done�ӳ�����ʱ������
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