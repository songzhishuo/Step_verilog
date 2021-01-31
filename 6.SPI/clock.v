module clock_1s(
	input		sys_clk,		//系统时钟
	input		sys_rst,		//系统复位	

	output	reg	clk_1s			//1S时间到
);

reg [31:0]	clk_cnt;
parameter CNT1S = 32'd12_000_000;


always@(posedge sys_clk or negedge sys_rst) begin
	if (!sys_rst) begin				//系统复位
		clk_cnt <= 1'b0;
		clk_1s	<= 1'b0;
	end

	else if (clk_cnt >= CNT1S) begin		//清零计数器
		clk_cnt <= 0;
		clk_1s	<= 1'b1;
	end
	else	begin
		clk_cnt <= clk_cnt + 1;
		clk_1s	<= 1'b0;
	end
end
endmodule

module clock_1ms(
	input		sys_clk,		//系统时钟
	input		sys_rst,		//系统复位	

	output	reg	clk_1ms			//1S时间到
);

reg [31:0]	clk_cnt;
parameter CNT1MS = 32'd12_000;


always@(posedge sys_clk or negedge sys_rst) begin
	if (!sys_rst) begin				//系统复位
		clk_cnt <= 1'b0;
		clk_1ms	<= 1'b0;
	end

	else if (clk_cnt >= CNT1MS) begin		//清零计数器
		clk_cnt <= 0;
		clk_1ms	<= 1'b1;
	end
	else	begin
		clk_cnt <= clk_cnt + 1;
		clk_1ms	<= 1'b0;
	end
end
endmodule


module clock_1us(
	input		sys_clk,		//系统时钟
	input		sys_rst,		//系统复位	

	output	reg	clk_1us			//1S时间到
);

reg [31:0]	clk_cnt;
parameter CNT1US = 4'd12;


always@(posedge sys_clk or negedge sys_rst) begin
	if (!sys_rst) begin				//系统复位
		clk_cnt <= 1'b0;
		clk_1us	<= 1'b0;
	end

	else if (clk_cnt >= CNT1US) begin		//清零计数器
		clk_cnt <= 0;
		clk_1us	<= 1'b1;
	end
	else	begin
		clk_cnt <= clk_cnt + 1;
		clk_1us	<= 1'b0;
	end
end
endmodule

