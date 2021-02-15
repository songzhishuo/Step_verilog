module Top_Module(
    input           sys_clk,            //�ⲿ12Mʱ��
    input           sys_rst_n,          //�ⲿ��λ�źţ�����Ч
    input           uart_rxd,           //UART���ն˿�
	input   	    switch_1,

    output          uart_txd,            //UART���Ͷ˿�
    output	reg		led,
    output  	    beep,
    output  reg     blink	
);
 
  
parameter  CLK_FREQ = 12000000;         //����ϵͳʱ��Ƶ��
parameter  UART_BPS = 115200;           //���崮�ڲ�����
	
wire       uart_recv_done;              //UART�������
wire [7:0] uart_recv_data;              //UART��������
wire       uart_send_en;                //UART����ʹ��
wire [7:0] uart_send_data;              //UART��������
wire       uart_tx_busy;                //UART����æ״̬��־
// /*******�������ݱ��ز���****************/
//reg define
reg recv_done_d0;
reg recv_done_d1;
reg tx_ready;

wire recv_done_flag;           //���������˱���ΪHigh ˵�����յ�һ���ֽڵ�����
// /**********************/
localparam  UART_RECV_CNT_MAX = 8;
reg [7:0] uart_recv_data_cnt;  //�������ݽ��ռ����� ÿ8bits����+1

reg [7:0] music_data_buf [100:0]; //���������ݴ��� ���������ݴ�ŵ����


reg [7:0] music_state;             //���ֲ���״̬��
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

reg [7:0]	state;			//״̬��״̬��־
reg	[7:0] 	state_back;
reg [7:0] 	run_cnt;		//RUN״̬״̬��

reg	[8:0]	music_cnt;			//���ּ�����

reg [15:0]	delay_cnt;

reg 		music_flag;
assign  music_busy = music_flag;	//��Ƶģ��æµ

reg 		tone_en;
reg [7:0]	tone;
reg [7:0]	music_delay;



/************************************************************************************************/
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


/************************************************************************************************/
    

//����recv_done�����أ��õ�һ��ʱ�����ڵ������ź�
assign recv_done_flag = (~recv_done_d1) & recv_done_d0;

//�Է���ʹ���ź�recv_done�ӳ�����ʱ������
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

divide divide_1ms(						//1msʱ��
	.clk	(sys_clk),
	.rst_n	(sys_rst_n),
	
	.clkout	(clkout_1ms),
	.div	(div_1ms)
);
 
Beeper beeper(
	.clk_in		(sys_clk),			//ϵͳʱ��
	.rst_n_in	(sys_rst_n),         //ϵͳ��λ������Ч
	
	.tone_en	(tone_en),          //������ʹ���ź�
	.tone		(tone),             //���������ڿ���
	.piano_out	(beep)              //�������������   
);

reg recv_8bits_flag;

//�������ݴ���
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        music_en <= 1'b0;
        music_note <= 8'b0;
        music_delay <= 8'd0;
    end
    if(recv_done_flag) begin    //���ڽ��յ�һ֡����
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
	if(!sys_rst_n) begin			//��λ
		tone_en <= 1'b1;            //��������������
		state <= IDLE;
		run_cnt <= 8'd0;
	end
	else begin

        if(music_en == 1'b0) begin          //ʧ��״̬
            state <= IDLE;  
            run_cnt<= 8'd0;
            
        end
        else begin                          //ʹ��״̬                  
        //���Ŵ��ڷ�������һ����Ƶ
            tone_en <= switch_1;
            case (state)
                IDLE:begin						    //����ģʽ
                end
                RUN:begin							//����ģʽ
                    case (run_cnt)
                        8'd0:begin
                            tone <= music_note;
                            run_cnt <= run_cnt+1'b1;
                            music_flag <= 1'b1;	    //æµ״̬
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
                            music_flag <= 1'b0;		//���ؿ���
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



// //�������ݴ洢��RAM��
//  always@(posedge sys_clk or negedge sys_rst_n) begin
// 	if(!sys_rst_n) begin			//��λ
//         music_state <= 8'd0;
//         music_play_cnt <= 8'd0;
//         uart_recv_data_cnt <= 8'd0;
//         recv_8bits_flag <= 1'd0;
//         music_en <= 1'b0; 

// 		music_time <= 8'd0;
//         music_note <= 8'd0;
// 	end
	
//     if(recv_done_flag == 1'b1) begin //���յ�8bits����
//         recv_8bits_flag <= 1'b1;    
//     end
//     if(recv_8bits_flag == 1'b1) begin    //���ܵ����� 
//         case (music_state)
//             8'd0:begin
//                 //if(music_busy == 1'b0)   begin   //����ģʽ
//                     music_data_buf[uart_recv_data_cnt] <= uart_recv_data;   //��������װ�Buf
//                     music_time <= 8'd200;
                    
//                     music_en <= 1'b1;
//                     music_state <= music_state + 1'b1;
//                 //end
//             end
//             8'd1:begin
//                 if(uart_recv_data_cnt < 8'd8)  begin
//                     uart_recv_data_cnt <= uart_recv_data_cnt +1'b1;
//                 end
//                 else begin                      //���ݽ�����ɿ�ʼ����
//                     uart_recv_data_cnt <= 8'd0;

//                 //     music_en <= 1'b0; 
//                 //     uart_recv_data_cnt <= 8'd0; //�����־
//                 // end
//                 // music_en <= 1'b0; 
//                 // uart_recv_data_cnt <= 8'd0; //�����־
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
//             //     if(music_busy == 1'b0)   begin   //����ģʽ
//             //         uart_recv_data_cnt <= uart_recv_data_cnt + 1'b1;        //���ݽ��ռ�����
//             //         music_data_buf[uart_recv_data_cnt] <= uart_recv_data;   //��������װ�Buf
//             //     end
//             // end
      
    
//     //    //if(recv_8bits_flag == 1'b1) begin    //���ܵ����� 


//     //         // case (music_state)
//     //         //     8'd0:begin
//     //         //         if(music_busy == 1'b0)   begin   //����ģʽ
//     //         //             //blink <= !blink;
//     //         //             //music_note <= music_data_buf[music_play_cnt];
//     //         //             //music_note <= uart_recv_data;
//     //         //             music_data_buf[music_play_cnt] <= uart_recv_data;   //��������װ�Buf
//     //         //             music_time <= 8'd200;
                        
//     //         //             music_en <= 1'b1;
//     //         //             music_state <= music_state + 1'b1;
//     //         //         end
//     //         //     end
//     //         //     8'd1:begin
//     //         //         if(music_play_cnt < 8'd8)  begin
//     //         //             music_play_cnt <= music_play_cnt +1'b1;
//     //         //         end
//     //         //         else begin  //�������
//     //         //             music_en <= 1'b0; 
//     //         //             uart_recv_data_cnt <= 8'd0; //�����־
//     //         //         end
//     //         //         music_en <= 1'b0; 
//     //         //         uart_recv_data_cnt <= 8'd0; //�����־
//     //         //         music_state <= 8'b0;
//     //         //         recv_8bits_flag <= 1'b0;
//     //         //     end
//     //         // endcase

//     //    //end
//     else begin   //�������
//         if(uart_recv_data_cnt == 8'b1) begin   //���ݽ������ �������8 * 8bits����
//             case (music_state)
//                 8'd0:begin
//                     if(music_busy == 1'b0)   begin   //����ģʽ
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
//                     else begin  //�������
//                         music_en <= 1'b0; 
//                         uart_recv_data_cnt <= 8'd0;         //��մ��ڽ��ռ�����
//                     end
//                 end
//             endcase
//         end
//         else begin
//             uart_recv_data_cnt <= uart_recv_data_cnt + 1'b1;    
//         end
//     end
// end