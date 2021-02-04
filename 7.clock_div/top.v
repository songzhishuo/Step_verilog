module LCD_RGB 
(
	input				clk_in,			//12MHzϵͳʱ��
	input				rst_n_in,		//ϵͳ��λ������Ч
 
	output				clk_out,		//ϵͳʱ�����
	output 				clk_out_1MHz,	//1MHzƵ�����
	output 				clk_out_1KHZ	//1KHZƵ�����

);
 
wire [31:0]	div_1MHz;
wire [31:0]	div_1KHz;

assign div_1MHz = 32'd12;			//��Ƶϵ������
assign div_1KHz = 23'd12_000;		

assign clk_out = clk_in;			//����ʱ��

divide divide_1MHz(					//1MHZ	1us
	.clk		(clk_in),
	.rst_n		(rst_n_in),
	.clkout		(clk_out_1MHz),

	.div		(div_1MHz)	
);

divide divide_1KHz(					//1MHZ	1ms
	.clk		(clk_in),
	.rst_n		(rst_n_in),
	.clkout		(clk_out_1KHZ),

	.div		(div_1KHz)	
);



endmodule