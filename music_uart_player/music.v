//https://tieba.baidu.com/p/3019879444
module music(
	input clk_in,
	input rst_n_in,
	
	input switch,
	input en,				

	input  [4:0]  music_note,	//����
	input  [7:0]  music_time,	//����

	output beep,
	output music_busy
);



wire 		clkout_1ms;

localparam [31:0] div_1ms	= 23'd12_000;
localparam [31:0] div_1s	= 32'd6_000_000;
localparam [15:0] NUM_DELAY = 16'd1_000;		//1s	

localparam			IDLE	=	3'd0;
localparam			RUN		=	3'd1;
localparam			DELAY	=	3'd2;

reg 		tone_en;		//���ط�����
reg 		music_flag;		//æµ��־	
reg [4:0]	tone;			//����

reg [4:0]	state;
reg	[2:0] 	state_back = IDLE;


reg	[7:0]	cnt_run;	//����״̬��ת
reg [15:0]	cnt_delay;

reg [15:0]	music_delay;



assign  music_busy = music_flag;	//��Ƶģ��æµ

Beeper beeper(
	.clk_in		(clk_in),			//ϵͳʱ��
	.rst_n_in	(rst_n_in),         //ϵͳ��λ������Ч
	
	.tone_en	(tone_en),          //������ʹ���ź�
	.tone		(tone),             //���������ڿ���
	.piano_out	(beep)              //�������������   
);

divide divide_1ms(
	.clk	(clk_in),
	.rst_n	(rst_n_in),
	
	.clkout	(clkout_1ms),
	.div	(div_1ms)
);


always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin			//��λ
		tone_en <= 1'b0;
	end
	else begin
		if(switch == 1'b0)begin
			tone_en <= 1'b1;
		end
		else begin
			tone_en <= 1'b0;
		end
		
	end
	
end

always@(posedge clkout_1ms or negedge rst_n_in) begin
	if(!rst_n_in) begin			//��λ
		state <= IDLE;
		cnt_run <= 7'd0;
		//tone_en <= 1'b0;
	end
	else	begin
		case (state)
			IDLE: begin		
				if(en == 1'b0)	begin//����������
					state_back <= IDLE;
					state <= IDLE;
				end
				else if(en == 1'b1) begin //���ݽ������
					state_back <= IDLE;
					state <= RUN;
				end
			end
			RUN:begin
				case (cnt_run)
					
					7'd0:begin	tone <= music_note; cnt_run<=cnt_run+1'b1; music_flag <= 1'b1; end		//��������						
					7'd1:begin	
						music_delay <= music_time; 							//��������
						state <= DELAY; state_back<=RUN; 
						end
					7'd2:begin 	
						state <= IDLE; 
						state_back<=IDLE;
						music_flag <= 1'b0;		//���ؿ���
					end	
				endcase							
			end
			DELAY:begin
				if(cnt_delay >= music_delay) begin
					cnt_delay <= 16'd0;
					state <= state_back; 
				end 
				else 
					cnt_delay <= cnt_delay + 1'b1;
					
			end
		endcase
	end


end



endmodule








