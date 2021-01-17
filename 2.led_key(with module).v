module structer(        
    //input   sysclk,
    input key0,
	input key1,
    output  led0,
	output	led1
	//output	led1
    //output  reg out_clk
);

// PWM led0(
//     .pwmclk(sysclk),
//     .pwmout(led0)
// );

	// PWM led1(
	// 	.clk    (sysclk),
	// 	.out    (led1)
	// );

led_test LED0(
    .key (key0),
    .io (led0)
);


led_test LED1(
    .key (key1),
    .io (led1)	
);


endmodule
 



module led_test(
	input key,
	output io
	
	);
	
assign io = key;	
	
	
endmodule
