module blink(
	input		sys_clk,		//系统时钟
	input		sys_rst,		//系统复位	

	input		toggle,		//反转信号
	output reg blink_io		//LED引脚
);

reg blink_flag;

always@(posedge sys_clk or negedge sys_rst) begin
	if (!sys_rst) begin				//系统复位
				//拉高电平熄灭LED
		blink_io <= 1'b1;
	end

 	else if(toggle)	begin

		blink_io <= ~blink_io;
 	end
	
end
	
endmodule