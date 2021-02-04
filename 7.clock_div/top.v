module LCD_RGB 
(
	input				clk_in,			//12MHz系统时钟
	input				rst_n_in,		//系统复位，低有效
 
	output				clk_out,		//系统时钟输出
	output 				clk_out_1MHz,	//1MHz频率输出
	output 				clk_out_1KHZ	//1KHZ频率输出

);
 
wire [31:0]	div_1MHz;
wire [31:0]	div_1KHz;

assign div_1MHz = 32'd12;			//分频系数传递
assign div_1KHz = 23'd12_000;		

assign clk_out = clk_in;			//晶振时钟

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