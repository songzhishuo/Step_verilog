module BCD (
		input [7 : 0] binary,				//��������ƣ���λ
		output reg[3 : 0] hundres,			//��λ
		output reg[3 : 0] tens,			//ʮλ
		output reg[3 : 0] ones				//��λ
	);
	
	integer i;
	
	always @(binary) begin 
		hundres = 4'd0;
		tens = 4'd0;
		ones = 4'd0;
		
		for (i = 7; i >= 0; i = i -1) begin		
			if (hundres >= 5)
				hundres = hundres + 3;
			if (tens >= 5)
				tens = tens + 3;
			if (ones >= 5)
				ones = ones + 3;
			
			hundres = hundres << 1'b1;
			hundres[0] = tens[3];
			tens = tens << 1'b1;
			tens[0] = ones[3];
			ones = ones << 1'b1;
			ones[0] = binary[i];
		end
	end 
	

endmodule