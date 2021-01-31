module blink(
	input		sys_clk,		//ϵͳʱ��
	input		sys_rst,		//ϵͳ��λ	

	input		toggle,		//��ת�ź�
	output reg blink_io		//LED����
);

reg blink_flag;

always@(posedge sys_clk or negedge sys_rst) begin
	if (!sys_rst) begin				//ϵͳ��λ
				//���ߵ�ƽϨ��LED
		blink_io <= 1'b1;
	end

 	else if(toggle)	begin

		blink_io <= ~blink_io;
 	end
	
end
	
endmodule