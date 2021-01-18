
module uart_loopback_top(
    input           sys_clk,            //�ⲿ50Mʱ��
    input           sys_rst_n,          //�ⲿ��λ�źţ�����Ч

	input			key0,
    input           uart_rxd,           //UART���ն˿�
    output          uart_txd,            //UART���Ͷ˿�
	output			led_1
    );

//parameter define
parameter  CLK_FREQ = 12000000;         //����ϵͳʱ��Ƶ��
parameter  UART_BPS = 115200;           //���崮�ڲ�����
    
//wire define   
wire       uart_recv_done;              //UART�������
wire [7:0] uart_recv_data;              //UART��������
wire       uart_send_en;                //UART����ʹ��
wire [7:0] uart_send_data;              //UART��������
wire       uart_tx_busy;                //UART����æ״̬��־

//*****************************************************
//**                    main code
//*****************************************************

// //���ڽ���ģ��     
// uart_recv #(                          
//     .CLK_FREQ       (CLK_FREQ),         //����ϵͳʱ��Ƶ��
//     .UART_BPS       (UART_BPS))         //���ô��ڽ��ղ�����
// u_uart_recv(                 
//     .sys_clk        (sys_clk), 
//     .sys_rst_n      (sys_rst_n),
    
//     .uart_rxd       (uart_rxd),
//     .uart_done      (uart_recv_done),
//     .uart_data      (uart_recv_data)
//     );

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
    
// //���ڻ���ģ��    
// uart_loop u_uart_loop(
//     .sys_clk        (sys_clk),             
//     .sys_rst_n      (sys_rst_n),           
   
//     .recv_done      (uart_recv_done),   //����һ֡������ɱ�־�ź�
//     .recv_data      (uart_recv_data),   //���յ�����
   
//     .tx_busy        (uart_tx_busy),     //����æ״̬��־      
//     .send_en        (uart_send_en),     //����ʹ���ź�
//     .send_data      (uart_send_data)    //����������
//     );
    
	
uart_test u_uart_test(
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
	.key			(key0),
	
	.led			(led_1),
	.tx_busy        (uart_tx_busy),     //����æ״̬��־  
	.send_en        (uart_send_en),     //����ʹ���ź�
	.send_data      (uart_send_data)    //����������
);	


endmodule


//����ģ��
module uart_test(
    input	         	sys_clk,                   //ϵͳʱ��
    input            	sys_rst_n,                 //ϵͳ��λ���͵�ƽ��Ч
     
    input 		     	key,  
	output		reg		led,
	input				tx_busy,
    output reg       	send_en,                   //����ʹ���ź�
    output reg [7:0] 	send_data                  //����������
    );

//reg define
reg recv_done_d0;
reg recv_done_d1;
reg tx_ready;



always @(posedge sys_clk or negedge sys_rst_n) begin     
    if (!sys_rst_n) begin
        send_en   <= 1'b0;
        send_data <= 8'd0;
    end    
	else begin
		if (key == 1'b0)	begin
			led = ~led;
			send_en  <= 1'b1;                   //���߷���ʹ���ź�������Ҫ���Ǳ��ش���
			
			//if(recv_done_flag) begin
				send_data <= 8'hff;
			
			//end
		end 
        else
            send_en <= 1'b0;
	end
end	 

endmodule


module uart_send(
    input	      sys_clk,                  //ϵͳʱ��
    input         sys_rst_n,                //ϵͳ��λ���͵�ƽ��Ч
    
    input         uart_en,                  //����ʹ���ź�
    input  [7:0]  uart_din,                 //����������
    output        uart_tx_busy,             //����æ״̬��־      
    output  reg   uart_txd                  //UART���Ͷ˿�
    );
    
//parameter define
parameter  CLK_FREQ = 50000000;            //ϵͳʱ��Ƶ��
parameter  UART_BPS = 9600;                //���ڲ�����
localparam  BPS_CNT  = CLK_FREQ/UART_BPS;   //Ϊ�õ�ָ�������ʣ���ϵͳʱ�Ӽ���BPS_CNT��

//reg define
reg        uart_en_d0; 
reg        uart_en_d1;  
reg [15:0] clk_cnt;                         //ϵͳʱ�Ӽ�����
reg [ 3:0] tx_cnt;                          //�������ݼ�����
reg        tx_flag;                         //���͹��̱�־�ź�
reg [ 7:0] tx_data;                         //�Ĵ淢������

//wire define
wire       en_flag;

//*****************************************************
//**                    main code
//*****************************************************
//�ڴ��ڷ��͹����и���æ״̬��־
assign uart_tx_busy = tx_flag;

//����uart_en�����أ��õ�һ��ʱ�����ڵ������ź�
assign en_flag = (~uart_en_d1) & uart_en_d0;

//�Է���ʹ���ź�uart_en�ӳ�����ʱ������
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        uart_en_d0 <= 1'b0;                                  
        uart_en_d1 <= 1'b0;
    end                                                      
    else begin                                               
        uart_en_d0 <= uart_en;                               
        uart_en_d1 <= uart_en_d0;                            
    end
end

//�������ź�en_flag����ʱ,�Ĵ�����͵����ݣ������뷢�͹���          
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin                                  
        tx_flag <= 1'b0;
        tx_data <= 8'd0;
    end 
    else if (en_flag) begin                 //��⵽����ʹ��������                      
            tx_flag <= 1'b1;                //���뷢�͹��̣���־λtx_flag����
            tx_data <= uart_din;            //�Ĵ�����͵�����
        end
                                            //������ֹͣλ����ʱ��ֹͣ���͹���
        else if ((tx_cnt == 4'd9) && (clk_cnt == BPS_CNT -(BPS_CNT/16))) begin                                       
            tx_flag <= 1'b0;                //���͹��̽�������־λtx_flag����
            tx_data <= 8'd0;
        end
        else begin
            tx_flag <= tx_flag;
            tx_data <= tx_data;
        end 
end

//���뷢�͹��̺�����ϵͳʱ�Ӽ�����
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n)                             
        clk_cnt <= 16'd0;                                  
    else if (tx_flag) begin                 //���ڷ��͹���
        if (clk_cnt < BPS_CNT - 1)
            clk_cnt <= clk_cnt + 1'b1;
        else
            clk_cnt <= 16'd0;               //��ϵͳʱ�Ӽ�����һ�����������ں�����
    end
    else                             
        clk_cnt <= 16'd0; 				    //���͹��̽���
end

//���뷢�͹��̺������������ݼ�����
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n)                             
        tx_cnt <= 4'd0;
    else if (tx_flag) begin                 //���ڷ��͹���
        if (clk_cnt == BPS_CNT - 1)			//��ϵͳʱ�Ӽ�����һ������������
            tx_cnt <= tx_cnt + 1'b1;		//��ʱ�������ݼ�������1
        else
            tx_cnt <= tx_cnt;       
    end
    else                              
        tx_cnt  <= 4'd0;				    //���͹��̽���
end

//���ݷ������ݼ���������uart���Ͷ˿ڸ�ֵ
always @(posedge sys_clk or negedge sys_rst_n) begin        
    if (!sys_rst_n)  
        uart_txd <= 1'b1;        
    else if (tx_flag)
        case(tx_cnt)
            4'd0: uart_txd <= 1'b0;         //��ʼλ 
            4'd1: uart_txd <= tx_data[0];   //����λ���λ
            4'd2: uart_txd <= tx_data[1];
            4'd3: uart_txd <= tx_data[2];
            4'd4: uart_txd <= tx_data[3];
            4'd5: uart_txd <= tx_data[4];
            4'd6: uart_txd <= tx_data[5];
            4'd7: uart_txd <= tx_data[6];
            4'd8: uart_txd <= tx_data[7];   //����λ���λ
            4'd9: uart_txd <= 1'b1;         //ֹͣλ
            default: ;
        endcase
    else 
        uart_txd <= 1'b1;                   //����ʱ���Ͷ˿�Ϊ�ߵ�ƽ
end

endmodule	          