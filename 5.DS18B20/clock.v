module clock_1s(
	input		sys_clk,		//ϵͳʱ��
	input		sys_rst,		//ϵͳ��λ	

	output	reg	clk_1s			//1Sʱ�䵽
);

reg [31:0]	clk_cnt;
parameter CNT1S = 32'd12_000_000;


always@(posedge sys_clk or negedge sys_rst) begin
	if (!sys_rst) begin				//ϵͳ��λ
		clk_cnt <= 1'b0;
		clk_1s	<= 1'b0;
	end

	else if (clk_cnt >= CNT1S) begin		//���������
		clk_cnt <= 0;
		clk_1s	<= 1'b1;
	end
	else	begin
		clk_cnt <= clk_cnt + 1;
		clk_1s	<= 1'b0;
	end
end
endmodule

