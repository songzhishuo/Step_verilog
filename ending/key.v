module KEY (sys_clk, sys_rst_n, key, key_pulse);

	input sys_clk;			//时钟输入	
	input sys_rst_n;		//模块复位
	
	input key;			//输入按键IO
	
	output key_pulse;		//输出按键触发信号
	
	reg key_rst_pre;	//定义一个寄存器变量储存上一个触发时刻的按键值
	reg key_rst;		//定义一个寄存器变量储存当前时刻触发按键的值
	
	wire key_edge;
	
	always @ (posedge sys_clk or negedge sys_rst_n)
		begin 
		
			if (!sys_rst_n)
				begin
					
					key_rst <= 1'b1;
					
					key_rst_pre <= 1'b1;
				
				end
			else
				begin
						
					key_rst <= key;
					key_rst_pre <= key_rst;
						
				end
		end
		
		assign key_edge = key_rst_pre & (~key_rst);
		
		reg [17 : 0] cnt;
		always @(posedge sys_clk or negedge sys_rst_n)
		begin
			
			if (!sys_rst_n)
				cnt <= 18'b0;
			else if (key_edge)
				cnt <= 18'h0;
			else
				cnt <= cnt + 18'd1;
		end
		
		reg key_sec_pre;		//延迟后检测电平，寄存器前一个值
		reg key_sec;			//延迟后的检测电平，寄存器当前值
		always @(posedge sys_clk or negedge sys_rst_n)
			begin
				
				if (!sys_rst_n)
					begin
						
						key_sec <= 1'b1;
						
					end
				else if (cnt == 18'h3ffff)
					begin 
						key_sec <= key;
					end	
			end
		always @(posedge sys_clk or negedge sys_rst_n)
			begin
			
				if (!sys_rst_n)
					begin
						
						key_sec_pre <= 1'b1;
						
					end
				else
					key_sec_pre <= key_sec;
			end
		
		assign key_pulse = key_sec_pre & (~key_sec);

endmodule