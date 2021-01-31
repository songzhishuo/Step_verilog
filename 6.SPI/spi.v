module top_mod(
	input		sys_clk,		//ϵͳʱ��
	input		sys_rst,		//ϵͳ��λ	

	output		led,

	//output	busy,

	output	reg	SPI_CLK,	    //SPIʱ��	
    output	reg	SPI_MOSI,		//SPI����
    output	reg	SPI_RES,	    //SPI��λ
    output	reg	SPI_DC,         //SPI��������ѡ��
    output	reg	SPI_CS 			//SPIʹ��
	
);

wire	clk_1s;			//�����
wire	clk_1ms;		//�������
wire	clk_1us;		//΢�����


reg	dc_comm;			//SPI��������ѡ��
reg [7:0] mosi_data;	//SPI����
reg 	spi_en;			//SPI���ݷ���ʹ��



/*״ֵ̬*/
reg		[2:0] 		state;
reg		[2:0] 		state_back;

/*��ʱ��ʱ������*/
reg		[19:0]		cnt_delay;
reg		[19:0]		num_delay;

/*������ת������*/
reg [7:0] comm_cnt;		

/*wirte*/
reg		[7:0]	write_cnt;			//״̬����ת������


/*�궨��*/
localparam	IDLE	=	3'd0;
localparam	MAIN	=	3'd1;
localparam	DELAY	=	3'd2;
localparam	INIT	=	3'd3;	//��ʼ��
localparam	WRITE	=	3'd4;	//ָ��д��




always@(posedge sys_clk or negedge sys_rst) begin	//ÿһ���봥��һ��
	if(!sys_rst) begin			//��λ
		dc_comm 	<= 1'b0;
		mosi_data 	<= 8'b0;
		spi_en		<= 1'b0;

		/*״̬����ʼ��*/
		state <= INIT;
		state_back <= IDLE;

		/*��������ʼ��*/
		cnt_delay 	<= 20'd0;
		comm_cnt	<= 8'b0;
		write_cnt	<= 8'b0;	
		
	end 
	else begin			//���ݷ���״̬��	
		case(state)
			IDLE:
			begin
				
				
			end
			MAIN:
			begin
				
			end
			DELAY:
				begin
					if(cnt_delay >= num_delay) begin
						cnt_delay <= 1'b0;
						state <= state_back; 					//״̬�ص�
					end else cnt_delay <= cnt_delay + 1'b1;
				end
			INIT:
				begin
					if(comm_cnt == 8'd59)	
						begin
							comm_cnt 	<= 8'd59;
							state		<= IDLE;		//����״̬
						end
					else 
						begin
							comm_cnt <= comm_cnt + 1'b1;
						end

					case(comm_cnt)  
						8'd0:begin SPI_RES	<= 1'b1; num_delay <= 20'd100_000;state <= DELAY; state_back <= INIT; end	//��ʱ100ms����
						8'd1:begin SPI_RES	<= 1'b0; num_delay <= 20'd100_000;state <= DELAY; state_back <= INIT; end	//��ʱ100ms����
						8'd2:begin SPI_RES	<= 1'b1; spi_en<= 1'b0; num_delay <= 20'd100_000;state <= DELAY; state_back <= INIT; end	//��ʱ100ms����
						
						//����ʾ
						8'd3:begin dc_comm <= 1'b0; mosi_data <= 8'hAE; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd4:begin spi_en <= 1'b0;end		
						// ���GDDRAM����
						8'd5:begin dc_comm <= 1'b0; mosi_data <= 8'h00; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd6:begin spi_en <= 1'b0;end	
						// ������ʾ(1��0��)
						8'd7:begin dc_comm <= 1'b0; mosi_data <= 8'h10; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd8:begin spi_en <= 1'b0;end	
						// ���öԱȶ�
						8'd9:begin dc_comm <= 1'b0; mosi_data <= 8'h40; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd10:begin spi_en <= 1'b0;end	
						// ��127���Աȶ�
						8'd11:begin dc_comm <= 1'b0; mosi_data <= 8'h81; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd12:begin spi_en <= 1'b0;end	
						
						8'd13:begin dc_comm <= 1'b0; mosi_data <= 8'hCF; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd14:begin spi_en <= 1'b0;end	
						
						8'd15:begin dc_comm <= 1'b0; mosi_data <= 8'hA1; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd16:begin spi_en <= 1'b0;end	

						8'd17:begin dc_comm <= 1'b0; mosi_data <= 8'hC8; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd18:begin spi_en <= 1'b0;end	

						8'd19:begin dc_comm <= 1'b0; mosi_data <= 8'hA6; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd20:begin spi_en <= 1'b0;end	

						8'd21:begin dc_comm <= 1'b0; mosi_data <= 8'hA8; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd22:begin spi_en <= 1'b0;end

						8'd23:begin dc_comm <= 1'b0; mosi_data <= 8'h3F; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd24:begin spi_en <= 1'b0;end

						8'd25:begin dc_comm <= 1'b0; mosi_data <= 8'hD3; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd26:begin spi_en <= 1'b0;end	

						8'd27:begin dc_comm <= 1'b0; mosi_data <= 8'h00; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd28:begin spi_en <= 1'b0;end				

						8'd29:begin dc_comm <= 1'b0; mosi_data <= 8'hd5; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd30:begin spi_en <= 1'b0;end																				

						8'd31:begin dc_comm <= 1'b0; mosi_data <= 8'h80; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd32:begin spi_en <= 1'b0;end	

						8'd33:begin dc_comm <= 1'b0; mosi_data <= 8'hD9; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd34:begin spi_en <= 1'b0;end	

						8'd35:begin dc_comm <= 1'b0; mosi_data <= 8'hF1; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd36:begin spi_en <= 1'b0;end	

						8'd37:begin dc_comm <= 1'b0; mosi_data <= 8'hDA; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd38:begin spi_en <= 1'b0;end	

						8'd39:begin dc_comm <= 1'b0; mosi_data <= 8'h12; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd40:begin spi_en <= 1'b0;end

						8'd41:begin dc_comm <= 1'b0; mosi_data <= 8'hDB; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd42:begin spi_en <= 1'b0;end	

						8'd43:begin dc_comm <= 1'b0; mosi_data <= 8'h40; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd44:begin spi_en <= 1'b0;end	

						8'd45:begin dc_comm <= 1'b0; mosi_data <= 8'h20; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd46:begin spi_en <= 1'b0;end	

						8'd47:begin dc_comm <= 1'b0; mosi_data <= 8'h02; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd48:begin spi_en <= 1'b0;end	

						8'd49:begin dc_comm <= 1'b0; mosi_data <= 8'h8D; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd50:begin spi_en <= 1'b0;end

						8'd51:begin dc_comm <= 1'b0; mosi_data <= 8'h14; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd52:begin spi_en <= 1'b0;end

						8'd53:begin dc_comm <= 1'b0; mosi_data <= 8'hA4; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end			//������Ļȫ������A4:����ģʽ A5:ȫ��ģʽ
						8'd54:begin spi_en <= 1'b0;end	

						8'd55:begin dc_comm <= 1'b0; mosi_data <= 8'hA6; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end		
						8'd56:begin spi_en <= 1'b0;end		

						8'd57:begin dc_comm <= 1'b0; mosi_data <= 8'hAF; state <= WRITE; state_back <= INIT; spi_en <= 1'b1;end			//��ʼ�����
						8'd58:begin spi_en <= 1'b0;end	

						// 8'd57:begin dc_comm <= 1'b0; mosi_data <= 8'hAF; spi_en <= 1'b1;end		
						// 8'd58:begin spi_en <= 1'b0;end	


						// 8'd57:begin dc_comm <= 1'b0; mosi_data <= 8'hAF; spi_en <= 1'b1;end		
						// 8'd58:begin spi_en <= 1'b0;end					


						8'd59:begin comm_cnt <= 8'd59; end																																																		
					endcase					
					


				end
			WRITE:
				begin
					if(write_cnt == 8'd18) 
					begin
						write_cnt <= 8'd0;
					end
					else begin
						write_cnt <= write_cnt +1'b1;
					end	
					
				case(write_cnt)  
					8'd0: 
						begin 
							SPI_DC <= dc_comm;
							SPI_CS <= 1'b0;
						end 
					8'd1: 
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[7]; end		//0
					8'd2:
						begin SPI_CLK <= 1'b1;end				
					
					8'd3:
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[6];end		//0
					8'd4:
						begin SPI_CLK <= 1'b1; end							
					
					8'd5:
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[5];end		//1
					8'd6:
						begin SPI_CLK <= 1'b1; end				
					
					8'd7: 
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[4]; end		//0
					8'd8:
						begin SPI_CLK <= 1'b1;end					
					
					8'd9: 
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[3]; end		//0
					8'd10:
						begin SPI_CLK <= 1'b1; end					
					
					8'd11:
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[2]; end		//0
					8'd12:
						begin SPI_CLK <= 1'b1; end					
					
					8'd13:
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[1]; end		//1
					8'd14:
						begin SPI_CLK <= 1'b1; end	

					8'd15:
						begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[0]; end		//1
					8'd16:
						begin SPI_CLK <= 1'b1; end

					8'd17:
						begin  
							SPI_CS <= 1'b1; 
			
						end		
					8'd18:  					//����״̬
						begin  
							state <= state_back;
							
						end				
					default: 
						begin
							state <= IDLE;
							write_cnt <= 8'd0; 
						end
				endcase
						
				end
				
		endcase

	end
end




blink m_blink(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),
	
	.toggle		(clk_1s),
	.blink_io	(led)
);


//1��ʱ��
clock_1s u_clock_1s(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),		

	.clk_1s	(clk_1s)
);


clock_1ms u_clock_1ms(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),		

	.clk_1ms	(clk_1ms)
);

/*1us*/
clock_1us u_clock_1us(
	.sys_clk	(sys_clk),
	.sys_rst	(sys_rst),		

	.clk_1us	(clk_1us)
);

endmodule



// module SPI_wirte8_bits(
// 	input		sys_clk,		//ϵͳʱ��
// 	input		sys_rst,		//ϵͳ��λ	

// 	input		spi_en,			//spi���ݷ���ʹ��	
// 	input		dc_comm,		//��������ѡ�����DC����
// 	input	[7:0] mosi_data,	//Ҫ���͵�����
// 	output		reg		SPI_CLK,	    //SPIʱ��	
//     output		reg		SPI_MOSI,		//SPI����
// //    output		reg		SPI_RES,	    //SPI��λ
//     output		reg		SPI_DC,         //SPI��������ѡ��
//     output		reg		SPI_CS,  		//SPIʹ��
// 	output		reg		busy			//����״̬	0������ 1��æµ
// );

// localparam  	IDLE	=	3'd0;           //����

// reg		[2:0] 		state;
// reg		[2:0] 		state_back;      //״̬�ص�

// reg		[7:0]		cnt_write_com;			//״̬����ת������
// reg		[7:0]		data_wr_buffer = 8'd23;	//���ݷ��ͼĴ���

// //SPIʹ�ܱ��ش�����
// reg        spi_en_d0; 
// reg        spi_en_d1;  
// wire        en_flag;
// //generate clk_1mhz clock
// reg					clk_1mhz;
// reg		[8:0]		cnt_1mhz;

// always@(posedge sys_clk or negedge sys_rst) begin
// 	if(!sys_rst) begin
// 		cnt_1mhz <= 8'd0;
// 		clk_1mhz <= 1'b0;
// 	end 
// 	else if(cnt_1mhz >= 8'd200) begin		//
// 		cnt_1mhz <= 8'd0;
// 		clk_1mhz <= ~clk_1mhz;
// 	end 
// 	else begin
// 		cnt_1mhz <= cnt_1mhz + 1'b1;
// 	end
// end


// //����uart_en�����أ��õ�һ��ʱ�����ڵ������ź�
// assign en_flag = (~spi_en_d1) & spi_en_d0;

// //�Է���ʹ���ź�uart_en�ӳ�����ʱ������
// always @(posedge sys_clk or negedge sys_rst) begin         
//     if (!sys_rst) begin
//         spi_en_d0 <= 1'b0;                                  
//         spi_en_d1 <= 1'b0;
//     end                                                      
//     else begin                                               
//         spi_en_d0 <= spi_en;                               
//         spi_en_d1 <= spi_en_d0;                            
//     end
// end



// always@(posedge sys_clk or negedge sys_rst) begin
// 	if (!sys_rst) begin				//ϵͳ��λ
// 		cnt_write_com <= 8'd18;
		
// 		data_wr_buffer <= 8'h0;
// //		en_flag			<= 1'b0;
// 		SPI_DC			<= 1'b1;
// 		SPI_CS			<= 1'b1;
// 		SPI_MOSI		<= 8'b1;
// 		SPI_CLK		 	<= 1'b1;
// //		SPI_RES			<= 1'b0;

// 		busy			<= 1'b0;
// 	end
// 	else if(spi_en == 1'b1) begin 		
// 	//else begin
// 		begin
// 			if(cnt_write_com == 8'd18) begin
// 				cnt_write_com <= 8'd0;
// 			end
// 			else
// 				cnt_write_com <= cnt_write_com +1'b1;
			
			
// 			case(cnt_write_com)  
// 				8'd0: 
// 					begin 
// 						SPI_DC <= dc_comm;
// 						SPI_CS <= 1'b0;
// 						busy	<= 1'b1;
// 					end 
// 				8'd1: 
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[7]; end		//0
// 				8'd2:
// 					begin SPI_CLK <= 1'b1;end				
				
// 				8'd3:
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[6];end		//0
// 				8'd4:
// 					begin SPI_CLK <= 1'b1; end							
				
// 				8'd5:
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[5];end		//1
// 				8'd6:
// 					begin SPI_CLK <= 1'b1; end				
				
// 				8'd7: 
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[4]; end		//0
// 				8'd8:
// 					begin SPI_CLK <= 1'b1;end					
				
// 				8'd9: 
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[3]; end		//0
// 				8'd10:
// 					begin SPI_CLK <= 1'b1; end					
				
// 				8'd11:
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[2]; end		//0
// 				8'd12:
// 					begin SPI_CLK <= 1'b1; end					
				
// 				8'd13:
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[1]; end		//1
// 				8'd14:
// 					begin SPI_CLK <= 1'b1; end	

// 				8'd15:
// 					begin SPI_CLK <= 1'b0; SPI_MOSI <= mosi_data[0]; end		//1
// 				8'd16:
// 					begin SPI_CLK <= 1'b1; end

// 				8'd17:
// 					begin  
// 						SPI_CS <= 1'b1; 
// 						busy	<= 1'b0; 
// 					end		
// 				8'd18:  					//����״̬
// 					begin  
// 						state <= IDLE;
						
// 					end				
// 				default: 
// 					begin
// 						state <= IDLE;
// 						cnt_write_com <= 8'd0;
// 						busy	<= 1'b0; 
// 					end
// 			endcase

		
// 		end
// 	end
	
// end


// endmodule



