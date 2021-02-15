// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Feb 15 00:44:19 2021
//
// Verilog Description of module music
//

module music (sys_clk, sys_rst_n, en, music_note, music_time, beep, 
            music_busy) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/music.v(1[8:13])
    input sys_clk;   // c:/users/argon/desktop/verilog/test_bink/music.v(2[21:28])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/test_bink/music.v(3[21:30])
    input en;   // c:/users/argon/desktop/verilog/test_bink/music.v(6[11:13])
    input [7:0]music_note;   // c:/users/argon/desktop/verilog/test_bink/music.v(7[15:25])
    input [7:0]music_time;   // c:/users/argon/desktop/verilog/test_bink/music.v(8[15:25])
    output beep;   // c:/users/argon/desktop/verilog/test_bink/music.v(10[11:15])
    output music_busy;   // c:/users/argon/desktop/verilog/test_bink/music.v(11[12:22])
    
    
    wire GND_net, VCC_net;
    
    VHI i76 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    OB music_busy_pad (.I(GND_net), .O(music_busy));   // c:/users/argon/desktop/verilog/test_bink/music.v(11[12:22])
    OB beep_pad (.I(GND_net), .O(beep));   // c:/users/argon/desktop/verilog/test_bink/music.v(10[11:15])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

