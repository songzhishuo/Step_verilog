module top_module(
	input	sys_clk,		//ϵͳʱ��
	input	sys_rst,		//ϵͳ��λ
	inout	one_wire,		//�������ź���
	output  uart_txd,            //UART���Ͷ˿�
	
	output	led1_pin
);
//	assign led1 = sys_rst;
wire	clk_1s;

reg		uart_en;
reg [7:0] 	uart_send_data;              //UART��������
reg	[7:0]	Temp_H;
reg	[7:0]	Temp_L;

wire       	uart_tx_busy;                //UART����æ״̬��־
wire [15:0]		ds18b20_data;

//1��ʱ��
clock_1s u_clock_1s(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),		

	.clk_1s		(clk_1s)
);
 
//led����˸
blink u_blink(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),
	
	.toggle		(clk_1s),	
	.blink_io	(led1_pin)
);
 
//���ڷ���
uart_send u_uart_send( 
    .sys_clk		(sys_clk),					//ϵͳʱ��
	.sys_rst_n		(sys_rst),       			//ϵͳ��λ���͵�ƽ��Ч        
                
    
    .uart_en		(uart_en),                  //����ʹ���ź�
    .uart_din		(uart_send_data),           //����������
    .uart_tx_busy	(uart_tx_busy),             //����æ״̬��־      
    .uart_txd		(uart_txd)                  //UART���Ͷ˿�
);


DS18B20Z  u_DS18B20Z(
	.clk_in				(sys_clk),
	.rst_n_in			(sys_rst),
	
	.one_wire			(one_wire),
	.data_out			(ds18b20_data)
);


//���ڲ���
always@(posedge sys_clk or negedge sys_rst) begin
	if (1)	begin
		if (!sys_rst) begin				//ϵͳ��λ
			uart_en <= 1'b0;		
			Temp_H <= 8'b0;
		end
		else begin					
			if(clk_1s == 1'b1) begin	//1Sʱ�䵽
				//�¶���������
				Temp_H[6:4] <= ds18b20_data[10:8];
				Temp_H[3:0] <= ds18b20_data[7:4];
				
				//Temp_H <= ((Temp_H<<4) &8'h70 | (Temp_L >>4) & 8'h0f);
				
				
				uart_en  <= 1'b1;                               //���߷���ʹ���ź�������Ҫ���Ǳ��ش���	
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
// 	inout				one_wire,		// ds18b20z one-wire-bus  ����
// 	output	reg	[15:0]	data_out		// ds18b20z data_out      ����
// );

