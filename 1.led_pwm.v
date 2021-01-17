module LED(        
    input   clk,
    output  led,
    output  reg out_clk
);

reg [31:0]cnt;                  //晶振计数器12M

reg [31:0]duty_cnt;             //占空比计数器
reg [31:0]duty;                 //实时占空比
reg inc_dec_flag = 1'b1;               //占空比增减标志

assign led = duty_cnt>duty ? 1'b1 : 1'b0;

always @(posedge clk) begin            //1K定时器      
	cnt = cnt+1;
    duty_cnt = duty_cnt+1;
	if (cnt == 32'd12000) begin
	 	cnt = 32'b0;
        duty_cnt = 32'b0;
	 	out_clk = ~out_clk;	            //1K
	end
end

always @(posedge clk) begin 
    if (cnt == 1'b0)  begin                 //1ms时间
        if ( inc_dec_flag == 1'b0) begin
            duty <= duty - 1;
        end
        if (inc_dec_flag == 1'b1) begin
           duty <= duty + 1; 
        end
    end   
    
    if (duty == 32'd12000) begin
       // duty = 1'b0;
        inc_dec_flag <= 1'b0;
    end
    else if (duty == 32'd0) begin
        inc_dec_flag <= 1'b1;
    end
end

endmodule