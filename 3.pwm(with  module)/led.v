module LED(        
    input   clk,
    output  led1,
	output	led2
);

PWM	LED1(
	.clk	(clk),
	.led	(led1)
);

PWM	LED2(
	.clk	(clk),
	.led	(led2)
);

endmodule