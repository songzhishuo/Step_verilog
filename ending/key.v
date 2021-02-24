module KEY (sys_clk, sys_rst_n, key, key_pulse);

	input sys_clk;			//ʱ������	
	input sys_rst_n;		//ģ�鸴λ
	
	input key;			//���밴��IO
	
	output key_pulse;		//������������ź�
	
	reg key_rst_pre;	//����һ���Ĵ�������������һ������ʱ�̵İ���ֵ
	reg key_rst;		//����һ���Ĵ����������浱ǰʱ�̴���������ֵ
	
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
		
		reg key_sec_pre;		//�ӳٺ����ƽ���Ĵ���ǰһ��ֵ
		reg key_sec;			//�ӳٺ�ļ���ƽ���Ĵ�����ǰֵ
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