module music(
    input           sys_clk,            //�ⲿ12Mʱ��
    input           sys_rst_n,          //�ⲿ��λ�źţ�����Ч

	//input			switch,				//���ؿ��Խ���������Ϊ��������������Ȼ����
	input 			en,					//����������ʹ��
	input	[7:0]		music_note,			//�����ļ�
	input	[7:0]		music_time, 		//����
	
	output			beep,			    //������IO
	output 			music_busy			//���ֲ���æ�ź�		
);	

localparam [31:0] div_1ms	= 23'd12_000;
//localparam [31:0] div_1s	= 32'd6_000_000;
//localparam [15:0]	NUM_DELAY = 16'd1_000;		//1s	

localparam			IDLE	=	3'd0;
localparam			RUN		=	3'd1;
localparam			DELAY	=	3'd2;

reg [7:0]	state;			//״̬��״̬��־
reg	[7:0] 	state_back;
reg [7:0] 	run_cnt;		//RUN״̬״̬��

reg	[8:0]	music_cnt;			//���ּ�����

reg [15:0]	delay_cnt;

reg 		music_flag;
assign  music_busy = music_flag;	//��Ƶģ��æµ

reg 		tone_en;
reg [7:0]	tone;
reg [7:0]	cnt_run;
reg [7:0]	music_delay;
divide divide_1ms(						//1msʱ��
	.clk	(clk_in),
	.rst_n	(rst_n_in),
	
	.clkout	(clkout_1ms),
	.div	(div_1ms)
);

Beeper beeper(
	.clk_in		(clk_in),			//ϵͳʱ��
	.rst_n_in	(rst_n_in),         //ϵͳ��λ������Ч
	
	.tone_en	(tone_en),          //������ʹ���ź�
	.tone		(tone),             //���������ڿ���
	.piano_out	(beep)              //�������������   
);


// always@(posedge clk_in or negedge rst_n_in) begin
// 	if(!rst_n_in) begin			//��λ
// 		tone_en <= 1'b0;
// 	end
// 	else begin
// 		if(switch == 1'b0)begin
// 			tone_en <= 1'b1;
// 		end
// 		else begin
// 			tone_en <= 1'b0;
// 		end
// 	end
	
// end

always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin			//��λ
		tone_en <= 1'b0;
		state <= IDLE;
		cnt_run <= 8'd0;
//		music_note <= 8'd0;
//		music_time <= 8'd0;
	end
	else begin
		case (state)
			IDLE:begin						//����ģʽ
				if(en == 1'b0)	begin	//ʧ��״̬	
					state <= IDLE;
				end
				else begin				//ʹ��״̬
					state <= RUN; 
				end
			end
			RUN:begin							//����ģʽ
				case (run_cnt)
					8'd0:begin
						tone <= music_note;
						cnt_run<=cnt_run+1'b1;
						music_flag <= 1'b1;	//æµ״̬
					end
					8'd1:begin
						music_delay <= music_time; 	
						state <= DELAY; state_back<=RUN;
						cnt_run<=cnt_run+1'b1;
					end
					8'd2:begin
						state <= IDLE; 
						state_back<=IDLE;
						music_flag <= 1'b0;		//���ؿ���
					end
				endcase
			end
			DELAY:begin
				if(clkout_1ms == 1'b1) begin
					//state <= state_back; 	
					delay_cnt <= delay_cnt + 1'b1;
				end
				else if(delay_cnt >= music_delay)begin
					delay_cnt <= 16'd0;
					state <= state_back; 
				end
			end
		endcase
	end
end




endmodule