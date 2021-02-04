

/*
������Դ�ڵ���ɭ��
������ַ��
https://www.eetree.cn/wiki/lcd%E6%98%BE%E7%A4%BA%E6%A8%A1%E5%9D%97
*/

module LCD_RGB 
(
	input				clk_in,			//12MHzϵͳʱ��
	input				rst_n_in,		//ϵͳ��λ������Ч
 
	output	reg			OLED_RES,	//OLED��λ
	output	reg			OLED_CS,		//OLEDƬѡ����
	output	reg			OLED_DC,		//OLED����ָ�����
	output	reg			OLED_SCK,	//OLEDʱ���ź�
	output	reg			OLED_MOSI	//OLED�����ź�
);
 
	localparam			INIT_DEPTH = 16'd29; //LCD��ʼ����������ݵ�����
 
	localparam			IDLE	=	3'd0;
	localparam			MAIN	=	3'd1;
	localparam			INIT	=	3'd2;
	localparam			SCAN	=	3'd3;
	localparam			WRITE	=	3'd4;
	localparam			DELAY	=	3'd5;
	localparam			POINT	=	3'd6;
 
	localparam			LOW		=	1'b0;
	localparam			HIGH	=	1'b1;
 
	//assign	lcd_bl_out = HIGH;				// backlight active high level
 
	//wire		[15:0]	color_t	=	YELLOW;		//����ɫΪ��ɫ
	//wire		[15:0]	color_b	=	BLACK;		//����ɫΪ��ɫ
 
	//reg			[7:0]	x_cnt;
	//reg			[7:0]	y_cnt;
 
	reg			[8:0]	data_reg;				//
	reg			[8:0]	reg_setxy	[10:0];
	reg			[8:0]	reg_init	[72:0];
	reg			[2:0]	cnt_main;
	reg			[2:0]	cnt_init;
	reg			[2:0]	cnt_scan;
	reg			[5:0]	cnt_write;
	reg			[15:0]	cnt_delay;
	reg			[8:0]	point_cnt;
	
	reg			[15:0]	num_delay;
	reg			[15:0]	cnt;
	///reg			[15:0]	cnt_divide_4;
	//reg					high_word;
	reg			[2:0] 	state = IDLE;
	reg			[2:0] 	state_back = IDLE;
	reg			[7:0] 	cnt_clear;
	reg			[2:0] 	cnt_finnal_second;
	
	
	
//	initial //����ط��Ҿ���RES
wire clk_in_1MHz;divide divide_1MHz (.clk(clk_in),.rst_n(rst_n_in),.clkout(clk_in_1MHz));

	always@(posedge clk_in_1MHz or negedge rst_n_in) begin
		if(!rst_n_in) begin
			//x_cnt <= 8'd0;
			//y_cnt <= 8'd0;
			OLED_RES <= 0;
			cnt_main <= 3'd0;
			cnt_init <= 3'd0;
			cnt_scan <= 3'd0;
			cnt_write <= 6'd0;
			cnt_delay <= 16'd0;
			num_delay <= 16'd50;
			cnt <= 16'd0;
			cnt_finnal_second <= 3'd0;
			cnt_clear <= 8'd0;
			
			point_cnt <= 8'd0;
			//high_word <= 1'b1;
			state <= IDLE;
			state_back <= IDLE;
		end else begin
			case(state)
				IDLE:begin
						//x_cnt <= 8'd0;
						//y_cnt <= 8'd0;
						cnt_main <= 3'd0;
						cnt_init <= 3'd0;
						cnt_scan <= 3'd0;
						cnt_write <= 6'd0;
						cnt_delay <= 16'd0;
						num_delay <= 16'd50;
						cnt_finnal_second <= 3'd0;
						cnt_clear <= 8'd0;
						//high_word <= 1'b1;
						state <= MAIN;
						state_back <= MAIN;
					end
				MAIN:begin
						case(cnt_main)	//MAIN״̬
							3'd0:	begin state <= INIT; cnt_main <= cnt_main + 1'b1; end
							//3'd1:	begin state <= SCAN; cnt_main <= cnt_main + 1'b1; end
							3'd1:	begin state <= POINT; cnt_main <= cnt_main + 1'b1;end//cnt_main <= 1'b1; end
							3'd2:	begin cnt_main <=3'd2; end
							default: state <= IDLE;
						endcase
					end
				INIT:begin	//��ʼ��״̬
						case(cnt_init)
							3'd0:	begin OLED_RES <= 1'b0; cnt_init <= cnt_init + 1'b1; end	//��λ��Ч
							3'd1:	begin num_delay <= 16'd120; /*�˴���ʱ���ڸ�λ   ���˶γ���ľ���Ϊ12Mʱ�� num_delay = 3000 ��������ʱ��3k/12M��= 250΢������*/
																state <= DELAY; state_back <= INIT; cnt_init <= cnt_init + 1'b1; end	//��ʱ
							3'd2:	begin OLED_RES <= 1'b1; cnt_init <= cnt_init + 1'b1;end	//��λ�ָ�
							3'd3:	begin num_delay <= 16'd120; state <= DELAY; state_back <= INIT; cnt_init <= cnt_init + 1'b1; end	//��ʱ
							3'd4:	begin 
										if(cnt>=INIT_DEPTH) begin	//��73��ָ����ݷ������������
											cnt <= 16'd0;
											cnt_init <= cnt_init + 1'b1;
										end else begin
											data_reg <= reg_init[cnt];	
											num_delay <= 16'd6;//�����ʱ�����ڵ�һ��ָ���ȥ֮����ʱ��50/12M����
											cnt <= cnt + 16'd1;
											state <= WRITE;
											state_back <= INIT;
											OLED_CS <= 1'b0;//�Լ��ӵģ���ɾ
										end
									end
							3'd5:	begin cnt_init <= 1'b0; state <= MAIN; end	//��ʼ����ɣ�����MAIN״̬
							default: state <= IDLE;
						endcase
					end
				SCAN:begin	//ˢ��״̬����RAM�ж�ȡ����ˢ��
						case(cnt_scan)
							3'd0:	begin 
										if(cnt == 16'd32) begin
											cnt_scan <= cnt_scan + 1'b1;
											cnt <= 16'd0;//�����Ҫע��
											cnt_finnal_second <= 3'd0;
										end else begin
											case(cnt_finnal_second[1:0])
											2'd0:begin
												data_reg <= reg_setxy[cnt_finnal_second[1:0]] + cnt / 4;
												cnt <= cnt + 16'd1;
												cnt_finnal_second <= cnt_finnal_second + 3'd1;
												num_delay <= 16'd6;
												state <= WRITE;
												state_back <= SCAN;
												OLED_CS <= 1'b0;//�Լ��ӵģ���ɾ
											end
											2'd1,2'd2:begin
												data_reg <= reg_setxy[cnt_finnal_second[1:0]];
												cnt <= cnt + 16'd1;
												cnt_finnal_second <= cnt_finnal_second + 3'd1;
												num_delay <= 16'd6;
												state <= WRITE;
												state_back <= SCAN;
												OLED_CS <= 1'b0;//�Լ��ӵģ���ɾ
											
											end
											2'd3:begin//���Զ�ѭ��128��
												if(cnt_clear == 8'd127)begin
													cnt_clear <= 8'd0;
													cnt <= cnt + 16'd1;
													cnt_finnal_second <= cnt_finnal_second + 3'd1;
												end else begin
													cnt_clear <= cnt_clear + 8'd1;
												end
													data_reg <= reg_setxy[cnt_finnal_second[1:0]];
													num_delay <= 16'd6;
													state <= WRITE;
													state_back <= SCAN;
													OLED_CS <= 1'b0;//�Լ��ӵģ���ɾ
											end
											endcase
										end
									end
							3'd1:	begin //����дָ��
										
									end
							3'd2:	begin cnt_scan <= 1'b0; state <= MAIN; end
							default: state <= IDLE;
						endcase
					end
				WRITE:begin	//WRITE״̬�������ݰ���SPIʱ���͸���Ļ
						if(cnt_write >= 6'd18) cnt_write <= 1'b0;
						else cnt_write <= cnt_write + 1'b1;
						case(cnt_write)//**���Կ���10λ���ݣ���10λΪCSƬѡλ**
							6'd0:	begin OLED_DC <= data_reg[8];end	//9λ�������λΪ�������ݿ���λ
							6'd1:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[7];end	//�ȷ���λ����
							6'd2:	begin OLED_SCK <= HIGH;end
							6'd3:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[6];end
							6'd4:	begin OLED_SCK <= HIGH;end
							6'd5:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[5];end
							6'd6:	begin OLED_SCK <= HIGH;end
							6'd7:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[4];end
							6'd8:	begin OLED_SCK <= HIGH; end
							6'd9:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[3];end
							6'd10:	begin OLED_SCK <= HIGH;end
							6'd11:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[2];end
							6'd12:	begin OLED_SCK <= HIGH;end
							6'd13:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[1];end
							6'd14:	begin OLED_SCK <= HIGH; end
							6'd15:	begin OLED_SCK <= LOW; OLED_MOSI <= data_reg[0];end	//�󷢵�λ����
							6'd16:	begin OLED_SCK <= HIGH;end
							6'd17:	begin OLED_CS <= 1; OLED_DC <=1;end 								
							6'd18:	begin 
								//OLED_SCK <= LOW; 
								state <= DELAY;end	
							default: state <= IDLE;
						endcase
					end
				DELAY:begin	//��ʱ״̬
						if(cnt_delay >= num_delay) begin
							cnt_delay <= 16'd0;
							state <= state_back; 
						end else cnt_delay <= cnt_delay + 1'b1;
					end
					
					
				POINT:begin
					if(point_cnt >= 8'd9) begin
						point_cnt <= 8'd0;
						state <= MAIN; 
					end
					else
						point_cnt <= point_cnt + 1'b1;
					
					
					case(point_cnt)
						8'd0:begin data_reg <= (8'hb0);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end			//x
						8'd1:begin data_reg <= (8'h10);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end		//(((x&0xf0)>>4)|0x10)
						8'd2:begin data_reg <= (8'h01);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end
						
						//8'd1:begin data_reg <= (8'h00);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end		//(((x&0xf0)>>4)|0x10)
						//8'd2:begin data_reg <= (8'h00);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end
						
						//0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C,// A
						//0x00, 0x20, 0x54, 0x54, 0x54, 0x78
						8'd3:begin data_reg <= (9'h100);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end
						8'd4:begin data_reg <= (9'h120);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end
						8'd5:begin data_reg <= (9'h154);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end
						8'd6:begin data_reg <= (9'h154);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end
						8'd7:begin data_reg <= (9'h154);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end
						8'd8:begin data_reg <= (9'h178);state <= WRITE;state_back <= POINT;OLED_CS <= 1'b0;end	
						8'd9:begin state <= MAIN; end
					endcase
					
				end


				default:state <= IDLE;
			endcase
		end
	end
 
	// data for setxy
	initial	//�趨��ʾ����ָ�����
		begin
			reg_setxy[0]	=	{1'b0,8'hb0};
			reg_setxy[1]	=	{1'b0,8'h00};
			reg_setxy[2]	=	{1'b0,8'h10};
			reg_setxy[3]	=	{1'b1,8'h00};
		end
 
	// data for init
	initial	//OLED��ʼ�����������
		begin
			reg_init[0]		=	{1'b0,8'hAE}; // ��OLED��ʾ
			reg_init[1]		=	{1'b0,8'h00}; // ������ʾ(1��0��)
			reg_init[2]		=	{1'b0,8'h10}; // ���õ�ɱ�
			reg_init[3]		=	{1'b0,8'h40}; // ���õ�ɱ�
			reg_init[4]		=	{1'b0,8'h81}; // ��OLED��ʾ
			reg_init[5]		=	{1'b0,8'hCF};//ȫ����ʾ
			reg_init[6]		=	{1'b0,8'hA1};//
			reg_init[7]		=	{1'b0,8'hC8};
			reg_init[8]		=	{1'b0,8'hA6};
			reg_init[9]		=	{1'b0,8'hA8};
			reg_init[10]		=	{1'b0,8'h1f};
			reg_init[11]		=	{1'b0,8'hD3};
			reg_init[12]		=	{1'b0,8'h00};
			reg_init[13]		=	{1'b0,8'hd5};
			reg_init[14]		=	{1'b0,8'h80};
			reg_init[15]		=	{1'b0,8'hD9};
			reg_init[16]		=	{1'b0,8'hF1};
			reg_init[17]		=	{1'b0,8'hDA};
			reg_init[18]		=	{1'b0,8'h02};	//02
			reg_init[19]		=	{1'b0,8'hDB};
			reg_init[20]		=	{1'b0,8'h40};
			reg_init[21]		=	{1'b0,8'h20};
			reg_init[22]		=	{1'b0,8'h02};
			reg_init[23]		=	{1'b0,8'h8D};
			reg_init[24]		=	{1'b0,8'h14};
			reg_init[25]		=	{1'b0,8'hA4};
			reg_init[26]		=	{1'b0,8'hA6};
			reg_init[27]		=	{1'b0,8'hAF};
			reg_init[28]		=	{1'b0,8'hA4};
			
		

			
		end	
endmodule