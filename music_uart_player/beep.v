// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Beeper
// 
// Author: Step
// 
// Description: Beeper
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Beeper
(
input					clk_in,		//ϵͳʱ��
input					rst_n_in,	//ϵͳ��λ������Ч
input					tone_en,	//������ʹ���ź�
input			[4:0]	tone,		//���������ڿ���
output	reg				piano_out	//�������������
);
/*
��Դ���������Է�����ͬ�����ڣ���������𶯵�Ƶ�ʣ����ڷ����������źŵ�Ƶ�ʣ���أ�
Ϊ���÷����������źŲ�����ͬ��Ƶ�ʣ�����ʹ�ü�������������Ƶ��ʵ�֣���ͬ�����ڿ��ƶ�Ӧ��ͬ�ļ�����ֵ����Ƶϵ����
���������ݼ�����ֵ��������Ƶ�����������������ź�
*/
reg [15:0] time_end;
//���ݲ�ͬ�����ڿ��ƣ�ѡ���Ӧ�ļ�����ֵ����Ƶϵ����
//����1��Ƶ��Ϊ261.6Hz�������������ź�����ӦΪ12MHz/261.6Hz = 45871.5��
//��Ϊ������з����������ź��ǰ����������ڷ�ת�ģ����Լ�����ֵ = 45871.5/2 = 22936
//��Ҫ����22936����������ΧΪ0 ~ (22936-1)������time_end = 22935
always@(tone) begin
	case(tone)
		//5'd0:	time_end =  16'd0;
		5'd1:	time_end =	16'd22935;	//L1,
		5'd2:	time_end =	16'd20428;	//L2,
		5'd3:	time_end =	16'd18203;	//L3,
		5'd4:	time_end =	16'd17181;	//L4,
		5'd5:	time_end =	16'd15305;	//L5,
		5'd6:	time_end =	16'd13635;	//L6,
		5'd7:	time_end =	16'd12147;	//L7,
		5'd8:	time_end =	16'd11464;	//M1,
		5'd9:	time_end =	16'd10215;	//M2,
		5'd10:	time_end =	16'd9100;	//M3,
		5'd11:	time_end =	16'd8589;	//M4,
		5'd12:	time_end =	16'd7652;	//M5,
		5'd13:	time_end =	16'd6817;	//M6,
		5'd14:	time_end =	16'd6073;	//M7,
		5'd15:	time_end =	16'd5740;	//H1,
		5'd16:	time_end =	16'd5107;	//H2,
		5'd17:	time_end =	16'd4549;	//H3,
		5'd18:	time_end =	16'd4294;	//H4,
		5'd19:	time_end =	16'd3825;	//H5,
		5'd20:	time_end =	16'd3408;	//H6,
		5'd21:	time_end =	16'd3036;	//H7,
		5'd22:	time_end = 	16'd0;
		default:time_end =	16'd65535;	
	endcase
end
 
reg [17:0] time_cnt;
//��������ʹ��ʱ�����������ռ�����ֵ����Ƶϵ��������
always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		time_cnt <= 1'b0;
	end else if(!tone_en) begin
		time_cnt <= 1'b0;
	end else if(time_cnt>=time_end) begin
		time_cnt <= 1'b0;
	end else begin
		time_cnt <= time_cnt + 1'b1;
	end
end
 
//���ݼ����������ڣ���ת�����������ź�
always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		piano_out <= 1'b0;
	end else if(time_cnt==time_end) begin
		piano_out <= ~piano_out;	//���������������ת�����η�תΪ1Hz
	end else begin
		piano_out <= piano_out;
	end
end
 
endmodule