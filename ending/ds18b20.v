// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module:DS18B20Z 
// 
// Author: Step
// 
// Description: Drive DS18B20Z to get temperature code
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module DS18B20Z
(
	input				clk_in,			// system clock
	input				rst_n_in,		// system reset, active low
	inout				one_wire,		// ds18b20z one-wire-bus  输入
	output	reg	[15:0]	data_out		// ds18b20z data_out      数据
);
 

 
	localparam	IDLE	=	3'd0;
	localparam	MAIN	=	3'd1;
	localparam	INIT	=	3'd2;
	localparam	WRITE	=	3'd3;
	localparam	READ	=	3'd4;
	localparam	DELAY	=	3'd5;
 
	//generate clk_1mhz clock
	reg					clk_1mhz;
	reg		[2:0]		cnt_1mhz;
	always@(posedge clk_in or negedge rst_n_in) begin
		if(!rst_n_in) begin
			cnt_1mhz <= 3'd0;
			clk_1mhz <= 1'b0;
		end else if(cnt_1mhz >= 3'd5) begin
			cnt_1mhz <= 3'd0;
			clk_1mhz <= ~clk_1mhz;
		end else begin
			cnt_1mhz <= cnt_1mhz + 1'b1;
		end
	end
 
	reg					one_wire_buffer;
	reg		[3:0]		cnt_main;
	reg		[7:0]		data_wr;
	reg		[7:0]		data_wr_buffer;
	reg		[2:0]		cnt_init;
	reg		[19:0]		cnt_delay;
	reg		[19:0]		num_delay;
	reg		[5:0]		cnt_write;
	reg		[5:0]		cnt_read;
	reg		[15:0]		temperature;
	reg		[7:0]		temperature_buffer;
	reg		[2:0] 		state = IDLE;
	reg		[2:0] 		state_back = IDLE;
	always@(posedge clk_1mhz or negedge rst_n_in) begin
		if(!rst_n_in) begin
			state <= IDLE;
			state_back <= IDLE;
			cnt_main <= 4'd0;
			cnt_init <= 3'd0;
			cnt_write <= 6'd0;
			cnt_read <= 6'd0;
			cnt_delay <= 20'd0;
			one_wire_buffer <= 1'bz;
			temperature <= 16'h0;
		end else begin
			case(state)
				IDLE:begin
						state <= MAIN;
						state_back <= MAIN;
						cnt_main <= 4'd0;
						cnt_init <= 3'd0;
						cnt_write <= 6'd0;
						cnt_read <= 6'd0;
						cnt_delay <= 20'd0;
						one_wire_buffer <= 1'bz;
					end
				MAIN:begin
						if(cnt_main >= 4'd11) cnt_main <= 1'b0;
						else cnt_main <= cnt_main + 1'b1;
						case(cnt_main)
							4'd0: begin state <= INIT; end
							4'd1: begin data_wr <= 8'hcc;state <= WRITE; end            //skip rom
							4'd2: begin data_wr <= 8'h44;state <= WRITE; end            //convert
							4'd3: begin num_delay <= 20'd750000;state <= DELAY;state_back <= MAIN; end
 
							4'd4: begin state <= INIT; end
							4'd5: begin data_wr <= 8'hcc;state <= WRITE; end
							4'd6: begin data_wr <= 8'hbe;state <= WRITE; end
 
							4'd7: begin state <= READ; end
							4'd8: begin temperature[7:0] <= temperature_buffer; end
 
							4'd9: begin state <= READ; end
							4'd10: begin temperature[15:8] <= temperature_buffer; end
 
							4'd11: begin state <= IDLE;data_out <= temperature; end
							default: state <= IDLE;
						endcase
					end
				INIT:begin
						if(cnt_init >= 3'd6) cnt_init <= 1'b0;
						else cnt_init <= cnt_init + 1'b1;
						case(cnt_init)
							3'd0: begin one_wire_buffer <= 1'b0; end
							3'd1: begin num_delay <= 20'd500;state <= DELAY;state_back <= INIT; end     //500us reset
							3'd2: begin one_wire_buffer <= 1'bz; end
							3'd3: begin num_delay <= 20'd100;state <= DELAY;state_back <= INIT; end     //100us checkout
							3'd4: begin if(one_wire) state <= IDLE; else state <= INIT; end             //检测一个下降沿
							3'd5: begin num_delay <= 20'd400;state <= DELAY;state_back <= INIT; end     //400us
							3'd6: begin state <= MAIN; end                                              //返回main函数
							default: state <= IDLE;
						endcase
					end
				WRITE:begin
						if(cnt_write >= 6'd50) cnt_write <= 1'b0;
						else cnt_write <= cnt_write + 1'b1;
						case(cnt_write)
							//lock data_wr
							6'd0: begin data_wr_buffer <= data_wr; end
							//write bit 0
							6'd1: begin one_wire_buffer <= 1'b0; end
							6'd2: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd3: begin one_wire_buffer <= data_wr_buffer[0]; end
							6'd4: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd5: begin one_wire_buffer <= 1'bz; end
							6'd6: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//write bit 1
							6'd7: begin one_wire_buffer <= 1'b0; end
							6'd8: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd9: begin one_wire_buffer <= data_wr_buffer[1]; end
							6'd10: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd11: begin one_wire_buffer <= 1'bz; end
							6'd12: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//write bit 2
							6'd13: begin one_wire_buffer <= 1'b0; end
							6'd14: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd15: begin one_wire_buffer <= data_wr_buffer[2]; end
							6'd16: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd17: begin one_wire_buffer <= 1'bz; end
							6'd18: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//write bit 3
							6'd19: begin one_wire_buffer <= 1'b0; end
							6'd20: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd21: begin one_wire_buffer <= data_wr_buffer[3]; end
							6'd22: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd23: begin one_wire_buffer <= 1'bz; end
							6'd24: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//write bit 4
							6'd25: begin one_wire_buffer <= 1'b0; end
							6'd26: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd27: begin one_wire_buffer <= data_wr_buffer[4]; end
							6'd28: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd29: begin one_wire_buffer <= 1'bz; end
							6'd30: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//write bit 5
							6'd31: begin one_wire_buffer <= 1'b0; end
							6'd32: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd33: begin one_wire_buffer <= data_wr_buffer[5]; end
							6'd34: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd35: begin one_wire_buffer <= 1'bz; end
							6'd36: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//write bit 6
							6'd37: begin one_wire_buffer <= 1'b0; end
							6'd38: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd39: begin one_wire_buffer <= data_wr_buffer[6]; end
							6'd40: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd41: begin one_wire_buffer <= 1'bz; end
							6'd42: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//write bit 7
							6'd43: begin one_wire_buffer <= 1'b0; end
							6'd44: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							6'd45: begin one_wire_buffer <= data_wr_buffer[7]; end
							6'd46: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd47: begin one_wire_buffer <= 1'bz; end
							6'd48: begin num_delay <= 20'd2;state <= DELAY;state_back <= WRITE; end
							//back to main
							6'd49: begin num_delay <= 20'd80;state <= DELAY;state_back <= WRITE; end
							6'd50: begin state <= MAIN; end
							default: state <= IDLE;
						endcase
					end
				READ:begin
						if(cnt_read >= 6'd48) cnt_read <= 1'b0;
						else cnt_read <= cnt_read + 1'b1;
						case(cnt_read)
							//read bit 0
							6'd0: begin one_wire_buffer <= 1'b0; end
							6'd1: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd2: begin one_wire_buffer <= 1'bz; end
							6'd3: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd4: begin temperature_buffer[0] <= one_wire; end
							6'd5: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//read bit 1
							6'd6: begin one_wire_buffer <= 1'b0; end
							6'd7: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd8: begin one_wire_buffer <= 1'bz; end
							6'd9: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd10: begin temperature_buffer[1] <= one_wire; end
							6'd11: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//read bit 2
							6'd12: begin one_wire_buffer <= 1'b0; end
							6'd13: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd14: begin one_wire_buffer <= 1'bz; end
							6'd15: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd16: begin temperature_buffer[2] <= one_wire; end
							6'd17: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//read bit 3
							6'd18: begin one_wire_buffer <= 1'b0; end
							6'd19: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd20: begin one_wire_buffer <= 1'bz; end
							6'd21: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd22: begin temperature_buffer[3] <= one_wire; end
							6'd23: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//read bit 4
							6'd24: begin one_wire_buffer <= 1'b0; end
							6'd25: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd26: begin one_wire_buffer <= 1'bz; end
							6'd27: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd28: begin temperature_buffer[4] <= one_wire; end
							6'd29: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//read bit 5
							6'd30: begin one_wire_buffer <= 1'b0; end
							6'd31: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd32: begin one_wire_buffer <= 1'bz; end
							6'd33: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd34: begin temperature_buffer[5] <= one_wire; end
							6'd35: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//read bit 6
							6'd36: begin one_wire_buffer <= 1'b0; end
							6'd37: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd38: begin one_wire_buffer <= 1'bz; end
							6'd39: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd40: begin temperature_buffer[6] <= one_wire; end
							6'd41: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//read bit 7
							6'd42: begin one_wire_buffer <= 1'b0; end
							6'd43: begin num_delay <= 20'd2;state <= DELAY;state_back <= READ; end
							6'd44: begin one_wire_buffer <= 1'bz; end
							6'd45: begin num_delay <= 20'd10;state <= DELAY;state_back <= READ; end
							6'd46: begin temperature_buffer[7] <= one_wire; end
							6'd47: begin num_delay <= 20'd55;state <= DELAY;state_back <= READ; end
							//back to main
							6'd48: begin state <= MAIN; end
							default: state <= IDLE;
						endcase
					end
				DELAY:begin
						if(cnt_delay >= num_delay) begin
							cnt_delay <= 1'b0;
							state <= state_back; 
						end else cnt_delay <= cnt_delay + 1'b1;
					end
			endcase
		end
	end
 
	assign	one_wire = one_wire_buffer;
 
endmodule