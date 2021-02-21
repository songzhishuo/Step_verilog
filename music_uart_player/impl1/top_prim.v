// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Feb 21 11:50:14 2021
//
// Verilog Description of module top
//

module top (sys_clk, sys_rst_n, switch_1, switch_2, uart_rxd, uart_txd, 
            beep, blink) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(1[8:11])
    input sys_clk;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    input switch_1;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    input switch_2;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    input uart_rxd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(9[21:29])
    output uart_txd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:29])
    output beep;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:25])
    output blink;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(14[18:23])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    
    wire GND_net, VCC_net, sys_rst_n_c, switch_1_c, switch_2_c, uart_rxd_c, 
        uart_txd_c, beep_c, blink_c, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(27[12:26])
    
    wire uart_send_en;
    wire [7:0]uart_send_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(29[13:27])
    
    wire uart_tx_busy;
    wire [7:0]music_tone;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(42[13:23])
    
    wire tx_ready, tx_ready_N_156, sys_clk_c_enable_29, n2282;
    wire [8:0]music_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(36[11:20])
    
    wire n114, n4198, sys_clk_c_enable_49, n4389;
    
    VHI i3562 (.Z(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    LUT4 m1_lut (.Z(n4389)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    ROM128X1A mux_116_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n114)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_116_Mux_2.initval = 128'h000000005994949451139113B7139113;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(9[21:29])
    IB switch_2_pad (.I(switch_2), .O(switch_2_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    IB switch_1_pad (.I(switch_1), .O(switch_1_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_send (.sys_clk_c(sys_clk_c), 
            .uart_tx_busy(uart_tx_busy), .GND_net(GND_net), .uart_send_en(uart_send_en), 
            .uart_send_data({uart_send_data}), .n4198(n4198), .uart_txd_c(uart_txd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(71[1] 79[6])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    OB blink_pad (.I(blink_c), .O(blink));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(14[18:23])
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:25])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:29])
    music_play m_music_play (.sys_clk_c_enable_29(sys_clk_c_enable_29), .music_cnt({Open_0, 
            Open_1, music_cnt[6:0]}), .clk_p(clk_p), .GND_net(GND_net), 
            .sys_clk_c(sys_clk_c), .sys_rst_n_c(sys_rst_n_c), .switch_2_c(switch_2_c), 
            .uart_recv_done(uart_recv_done), .tx_ready(tx_ready), .uart_tx_busy(uart_tx_busy), 
            .sys_clk_c_enable_49(sys_clk_c_enable_49), .\music_tone[0] (music_tone[0]), 
            .tx_ready_N_156(tx_ready_N_156), .blink_c(blink_c), .n2282(n2282), 
            .\uart_recv_data[4] (uart_recv_data[4]), .n114(n114), .\uart_recv_data[3] (uart_recv_data[3]), 
            .\music_tone[3] (music_tone[3]), .\music_tone[2] (music_tone[2]), 
            .\music_tone[1] (music_tone[1]), .\music_tone[4] (music_tone[4]), 
            .\uart_recv_data[6] (uart_recv_data[6]), .\uart_recv_data[7] (uart_recv_data[7]), 
            .\uart_recv_data[5] (uart_recv_data[5]), .n4389(n4389)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(111[13] 122[6])
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), .GND_net(GND_net), 
            .uart_recv_data({uart_recv_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(58[1] 65[6])
    divide divide_1ms (.GND_net(GND_net), .clk_p(clk_p), .sys_clk_c(sys_clk_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(103[8] 109[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    uart_loop u_uart_loop (.tx_ready(tx_ready), .sys_clk_c(sys_clk_c), .tx_ready_N_156(tx_ready_N_156), 
            .uart_send_data({uart_send_data}), .sys_clk_c_enable_29(sys_clk_c_enable_29), 
            .uart_recv_data({uart_recv_data}), .uart_tx_busy(uart_tx_busy), 
            .n4198(n4198), .uart_send_en(uart_send_en), .sys_clk_c_enable_49(sys_clk_c_enable_49), 
            .n2282(n2282)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(82[11] 92[6])
    Beeper m_beep (.\music_tone[4] (music_tone[4]), .\music_tone[3] (music_tone[3]), 
           .\music_tone[1] (music_tone[1]), .\music_tone[0] (music_tone[0]), 
           .sys_clk_c(sys_clk_c), .beep_c(beep_c), .\music_tone[2] (music_tone[2]), 
           .GND_net(GND_net), .switch_1_c(switch_1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(95[9] 101[2])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \uart_send(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, uart_tx_busy, 
            GND_net, uart_send_en, uart_send_data, n4198, uart_txd_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output uart_tx_busy;
    input GND_net;
    input uart_send_en;
    input [7:0]uart_send_data;
    input n4198;
    output uart_txd_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire uart_en_d1, uart_en_d0, n1963, n3449;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    wire [15:0]n69;
    
    wire n3450;
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(44[12:19])
    
    wire n1983, n4204, uart_tx_busy_N_134, n1956, n1954, n1952, 
        n1950, n1999, n3801, n4, n1958, n1941, n4201, n3524, 
        n3879, n3842, uart_tx_busy_N_135, n1232;
    wire [15:0]n152;
    
    wire n1574, n1231, n1417, n3928;
    wire [0:0]n584;
    
    wire n1575, sys_clk_c_enable_48, n3920, n3931, n3776, n3847, 
        n3846, n1989, n7, n4203, n10, sys_clk_c_enable_47, n3901, 
        n3456, n3455, n3454, n1359, n3453, n3452, n1358, n3451;
    
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n1963), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_flag_42.GSR = "ENABLED";
    CCU2D clk_cnt_482_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3449), .COUT(n3450), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_482_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_3.INJECT1_1 = "NO";
    FD1S3AX tx_data_i0 (.D(n1983), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_send_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    LUT4 i1498_4_lut (.A(tx_data[4]), .B(uart_send_data[4]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1956)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1498_4_lut.init = 16'hc0ca;
    LUT4 i1496_4_lut (.A(tx_data[3]), .B(uart_send_data[3]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1954)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1496_4_lut.init = 16'hc0ca;
    LUT4 i1494_4_lut (.A(tx_data[2]), .B(uart_send_data[2]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1952)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1494_4_lut.init = 16'hc0ca;
    LUT4 i1492_4_lut (.A(tx_data[1]), .B(uart_send_data[1]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1950)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1492_4_lut.init = 16'hc0ca;
    FD1S3IX clk_cnt_482__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n1999), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n1999), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n1999), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n1999), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n1999), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_482__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n3801), .B(clk_cnt[2]), .C(n4), .D(clk_cnt[14]), 
         .Z(uart_tx_busy_N_134)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_4_lut.init = 16'h0020;
    CCU2D clk_cnt_482_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3449), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_482_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_482_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_1.INJECT1_1 = "NO";
    LUT4 i1500_4_lut (.A(tx_data[5]), .B(uart_send_data[5]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1958)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1500_4_lut.init = 16'hc0ca;
    LUT4 i1483_4_lut (.A(tx_data[6]), .B(uart_send_data[6]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1941)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1483_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_40 (.A(n4201), .B(n3524), .C(n3879), .D(n3842), 
         .Z(n3801)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_4_lut_adj_40.init = 16'h0002;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(uart_tx_busy_N_135), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(clk_cnt[9]), .B(clk_cnt[0]), .C(clk_cnt[3]), .Z(n3524)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1143_3_lut (.A(n1232), .B(tx_data[3]), .C(n152[4]), .Z(n1574)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1143_3_lut.init = 16'hcaca;
    LUT4 i828_3_lut (.A(tx_data[5]), .B(tx_data[4]), .C(n152[5]), .Z(n1232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i828_3_lut.init = 16'hcaca;
    LUT4 i3418_4_lut (.A(n1231), .B(n1417), .C(n152[1]), .D(n3928), 
         .Z(n584[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3418_4_lut.init = 16'hcacc;
    LUT4 i827_4_lut (.A(tx_data[7]), .B(tx_data[6]), .C(n152[7]), .D(n152[8]), 
         .Z(n1231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i827_4_lut.init = 16'hcacf;
    LUT4 i1006_3_lut (.A(n1575), .B(tx_data[0]), .C(n152[1]), .Z(n1417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1006_3_lut.init = 16'hcaca;
    LUT4 i3368_2_lut (.A(n152[2]), .B(n152[3]), .Z(n3928)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3368_2_lut.init = 16'h1111;
    LUT4 i1144_3_lut (.A(tx_data[2]), .B(tx_data[1]), .C(n152[2]), .Z(n1575)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1144_3_lut.init = 16'hcaca;
    FD1P3IX tx_cnt_FSM_i14 (.D(n152[13]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n152[12]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n152[11]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n152[10]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_135), .SP(sys_clk_c_enable_48), 
            .CD(n4198), .CK(sys_clk_c), .Q(n152[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n152[8]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_135));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n152[7]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n152[6]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n152[5]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n152[4]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n152[3]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n152[2]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n152[1]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n152[0]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i3444_4_lut (.A(n152[1]), .B(n152[2]), .C(n152[3]), .D(n3920), 
         .Z(n3931)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3444_4_lut.init = 16'hfffe;
    LUT4 i3360_3_lut (.A(n152[4]), .B(n152[5]), .C(n152[6]), .Z(n3920)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3360_3_lut.init = 16'h0101;
    FD1S3IX clk_cnt_482__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n1999), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_41 (.A(uart_tx_busy), .B(n3776), .C(n4201), .D(n3847), 
         .Z(n1999)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(96[13:34])
    defparam i1_4_lut_adj_41.init = 16'hfddd;
    LUT4 i1_4_lut_adj_42 (.A(clk_cnt[2]), .B(n3846), .C(clk_cnt[0]), .D(clk_cnt[1]), 
         .Z(n3847)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_42.init = 16'heccc;
    LUT4 i1_2_lut_adj_43 (.A(clk_cnt[3]), .B(clk_cnt[4]), .Z(n3846)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_43.init = 16'heeee;
    LUT4 i1530_4_lut (.A(tx_data[7]), .B(uart_send_data[7]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1989)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1530_4_lut.init = 16'hc0ca;
    LUT4 i5_4_lut (.A(clk_cnt[8]), .B(n7), .C(n3842), .D(n4203), .Z(n3776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i3428_3_lut (.A(n152[15]), .B(n10), .C(n152[13]), .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3428_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_adj_44 (.A(clk_cnt[14]), .B(clk_cnt[9]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_44.init = 16'heeee;
    LUT4 i3437_4_lut (.A(n3901), .B(n3846), .C(clk_cnt[0]), .D(n3776), 
         .Z(sys_clk_c_enable_48)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(110[13:35])
    defparam i3437_4_lut.init = 16'h0020;
    LUT4 i3_4_lut (.A(clk_cnt[12]), .B(clk_cnt[11]), .C(clk_cnt[7]), .D(clk_cnt[10]), 
         .Z(n3842)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1524_4_lut (.A(tx_data[0]), .B(uart_send_data[0]), .C(n4204), 
         .D(uart_tx_busy_N_134), .Z(n1983)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1524_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_83 (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n4201)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_83.init = 16'h8888;
    LUT4 i3341_3_lut_4_lut (.A(clk_cnt[5]), .B(clk_cnt[6]), .C(clk_cnt[1]), 
         .D(clk_cnt[2]), .Z(n3901)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3341_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_2_lut_rep_85 (.A(clk_cnt[13]), .B(clk_cnt[15]), .Z(n4203)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_85.init = 16'heeee;
    LUT4 i3320_3_lut_4_lut (.A(clk_cnt[13]), .B(clk_cnt[15]), .C(clk_cnt[8]), 
         .D(clk_cnt[4]), .Z(n3879)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3320_3_lut_4_lut.init = 16'hfffe;
    LUT4 en_flag_I_0_2_lut_rep_86 (.A(uart_en_d1), .B(uart_en_d0), .Z(n4204)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam en_flag_I_0_2_lut_rep_86.init = 16'h4444;
    FD1S3AX tx_data_i7 (.D(n1989), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i7.GSR = "ENABLED";
    FD1S3AX tx_data_i6 (.D(n1941), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n1958), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n1956), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n1954), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i3.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(uart_tx_busy), 
         .D(uart_tx_busy_N_134), .Z(n1963)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam i1_3_lut_4_lut.init = 16'h44f4;
    FD1S3AX tx_data_i2 (.D(n1952), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n1950), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n152[14]), .SP(sys_clk_c_enable_48), .CD(n4198), 
            .CK(sys_clk_c), .Q(n152[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    CCU2D clk_cnt_482_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3456), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_482_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_482_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3455), .COUT(n3456), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_482_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_15.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n152[14]), .B(n152[12]), .C(n152[11]), .D(n152[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i4_4_lut.init = 16'hfffe;
    FD1S3IX clk_cnt_482__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n1999), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482__i15.GSR = "ENABLED";
    CCU2D clk_cnt_482_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3454), .COUT(n3455), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_482_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_13.INJECT1_1 = "NO";
    FD1P3JX uart_txd_47 (.D(n1359), .SP(sys_clk_c_enable_47), .PD(n4198), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(123[10] 138[26])
    defparam uart_txd_47.GSR = "ENABLED";
    CCU2D clk_cnt_482_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3453), .COUT(n3454), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_482_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_482_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3452), .COUT(n3453), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_482_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_9.INJECT1_1 = "NO";
    LUT4 i2306_2_lut (.A(n1358), .B(n152[0]), .Z(n1359)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i2306_2_lut.init = 16'h2222;
    CCU2D clk_cnt_482_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3451), .COUT(n3452), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_482_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_482_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3450), .COUT(n3451), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_482_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_482_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_482_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_482_add_4_5.INJECT1_1 = "NO";
    FD1P3JX tx_cnt_FSM_i0 (.D(n152[15]), .SP(sys_clk_c_enable_48), .PD(n4198), 
            .CK(sys_clk_c), .Q(n152[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    PFUMX i951 (.BLUT(n1574), .ALUT(n584[0]), .C0(n3931), .Z(n1358));
    
endmodule
//
// Verilog Description of module music_play
//

module music_play (sys_clk_c_enable_29, music_cnt, clk_p, GND_net, sys_clk_c, 
            sys_rst_n_c, switch_2_c, uart_recv_done, tx_ready, uart_tx_busy, 
            sys_clk_c_enable_49, \music_tone[0] , tx_ready_N_156, blink_c, 
            n2282, \uart_recv_data[4] , n114, \uart_recv_data[3] , \music_tone[3] , 
            \music_tone[2] , \music_tone[1] , \music_tone[4] , \uart_recv_data[6] , 
            \uart_recv_data[7] , \uart_recv_data[5] , n4389) /* synthesis syn_module_defined=1 */ ;
    output sys_clk_c_enable_29;
    output [8:0]music_cnt;
    input clk_p;
    input GND_net;
    input sys_clk_c;
    input sys_rst_n_c;
    input switch_2_c;
    input uart_recv_done;
    input tx_ready;
    input uart_tx_busy;
    output sys_clk_c_enable_49;
    output \music_tone[0] ;
    output tx_ready_N_156;
    output blink_c;
    output n2282;
    input \uart_recv_data[4] ;
    input n114;
    input \uart_recv_data[3] ;
    output \music_tone[3] ;
    output \music_tone[2] ;
    output \music_tone[1] ;
    output \music_tone[4] ;
    input \uart_recv_data[6] ;
    input \uart_recv_data[7] ;
    input \uart_recv_data[5] ;
    input n4389;
    
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire [7:0]cnt_run;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(25[11:18])
    
    wire n1776, n89, recv_done_d1, recv_done_d0;
    wire [8:0]n109;
    wire [15:0]cnt_delay;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(33[12:21])
    
    wire clk_p_enable_44, n2006;
    wire [15:0]n371;
    
    wire n11, n3823, n3620, clk_p_enable_38, n3670;
    wire [7:0]n120;
    
    wire n3417, clk_p_enable_5, n3871;
    wire [2:0]state_back;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(31[12:22])
    
    wire n875, n4, clk_p_enable_45, n8, n3819, n4_adj_528, clk_p_enable_34, 
        n3426, clk_p_enable_23;
    wire [7:0]music_tone_7__N_456;
    
    wire n4185, n3504, clk_p_enable_36, n3424;
    wire [8:0]music_cnt_c;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(36[11:20])
    wire [8:0]n281;
    
    wire n1747, n4186, n3615, clk_p_enable_24, blink_N_509, n3423, 
        n6;
    wire [4:0]state;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(30[11:16])
    
    wire n369, n3812, n4384, n4184, n2021, n4192, n3440, n3422, 
        n3421, n3439, n8_adj_529, n3438, clk_p_enable_41, n8_adj_530, 
        n3807, n4_adj_531, n8_adj_532, n4207, n4191, n3822, n18, 
        n3905, n16, n4202, n6_adj_533, n4205;
    wire [15:0]music_delay;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(34[12:23])
    
    wire clk_p_enable_19, n4195, clk_p_enable_17, n2346, n2349, clk_p_enable_35, 
        n3437, n3436, n3435, n3434, n3433, n7, n8_adj_534, n3432, 
        n4193, n10, n3881, n3616, n3783, n3431, n3430, n4_adj_535, 
        n3429, n4208, clk_p_enable_32, clk_p_enable_33, clk_p_enable_37, 
        n16_adj_536, n3867, n3420, n3418, n3419, n3428, n3427, 
        n3813, n4_adj_537;
    
    LUT4 i1_2_lut_3_lut (.A(cnt_run[0]), .B(n1776), .C(cnt_run[1]), .Z(n89)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfdfd;
    LUT4 recv_done_flag_I_0_2_lut_rep_88 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_29)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_88.init = 16'h4444;
    ROM128X1A mux_116_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n109[6])) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_116_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    FD1P3IX cnt_delay_i0_i3 (.D(n371[3]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i3.GSR = "DISABLED";
    PFUMX i28 (.BLUT(n11), .ALUT(n3823), .C0(cnt_run[1]), .Z(n3620));
    FD1P3IX cnt_delay_i0_i4 (.D(n371[4]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n371[5]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n3670), .SP(clk_p_enable_38), .CK(clk_p), 
            .Q(cnt_run[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    CCU2D add_111_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3417), .S1(n120[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_1.INIT0 = 16'hF000;
    defparam add_111_1.INIT1 = 16'h5555;
    defparam add_111_1.INJECT1_0 = "NO";
    defparam add_111_1.INJECT1_1 = "NO";
    ROM128X1A mux_116_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n109[5])) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_116_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    FD1S3AX recv_done_d1_23 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(56[10] 59[8])
    defparam recv_done_d1_23.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_63_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(sys_rst_n_c), .D(switch_2_c), .Z(clk_p_enable_5)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1_2_lut_rep_63_3_lut_4_lut.init = 16'hb000;
    FD1S3AX recv_done_d0_22 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(56[10] 59[8])
    defparam recv_done_d0_22.GSR = "ENABLED";
    LUT4 i3312_2_lut_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(cnt_run[0]), 
         .D(switch_2_c), .Z(n3871)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i3312_2_lut_3_lut_4_lut.init = 16'hb000;
    LUT4 i1_3_lut_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h44f4;
    FD1P3AX state_back_i0_i0 (.D(n875), .SP(clk_p_enable_5), .CK(clk_p), 
            .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i1_2_lut.init = 16'h4444;
    FD1P3IX cnt_delay_i0_i6 (.D(n371[6]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_71_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(switch_2_c), 
         .Z(clk_p_enable_45)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1_2_lut_rep_71_3_lut.init = 16'hb0b0;
    LUT4 i1369_4_lut (.A(clk_p_enable_38), .B(n8), .C(n3819), .D(n4_adj_528), 
         .Z(clk_p_enable_34)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1369_4_lut.init = 16'ha888;
    CCU2D add_143_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3426), .S1(n371[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_1.INIT0 = 16'hF000;
    defparam add_143_1.INIT1 = 16'h5555;
    defparam add_143_1.INJECT1_0 = "NO";
    defparam add_143_1.INJECT1_1 = "NO";
    FD1P3AX music_tone_i0_i0 (.D(music_tone_7__N_456[0]), .SP(clk_p_enable_23), 
            .CK(clk_p), .Q(\music_tone[0] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i0.GSR = "DISABLED";
    LUT4 i1365_4_lut (.A(clk_p_enable_38), .B(n4185), .C(n3504), .D(n120[3]), 
         .Z(clk_p_enable_36)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1365_4_lut.init = 16'ha2a0;
    CCU2D add_129_9 (.A0(music_cnt_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3424), .S0(n281[7]), .S1(n281[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_9.INIT0 = 16'h5aaa;
    defparam add_129_9.INIT1 = 16'h5aaa;
    defparam add_129_9.INJECT1_0 = "NO";
    defparam add_129_9.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(n1747), .B(n4186), .C(n3615), .D(cnt_run[3]), 
         .Z(n3504)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i3_4_lut.init = 16'h0200;
    LUT4 i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(tx_ready_N_156)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1_3_lut_4_lut.init = 16'hf444;
    LUT4 i2389_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(sys_rst_n_c), 
         .D(switch_2_c), .Z(clk_p_enable_24)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i2389_3_lut_4_lut.init = 16'hf040;
    LUT4 blink_I_0_2_lut_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(blink_c), 
         .Z(blink_N_509)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam blink_I_0_2_lut_3_lut.init = 16'hb4b4;
    CCU2D add_129_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3423), .COUT(n3424), .S0(n281[5]), .S1(n281[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_7.INIT0 = 16'h5aaa;
    defparam add_129_7.INIT1 = 16'h5aaa;
    defparam add_129_7.INJECT1_0 = "NO";
    defparam add_129_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_22 (.A(cnt_run[2]), .B(cnt_run[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_adj_22.init = 16'heeee;
    LUT4 i1825_1_lut_2_lut (.A(recv_done_d1), .B(recv_done_d0), .Z(n2282)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1825_1_lut_2_lut.init = 16'hbbbb;
    LUT4 i1560_2_lut_4_lut (.A(state[1]), .B(clk_p_enable_5), .C(state[0]), 
         .D(n369), .Z(n2006)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1560_2_lut_4_lut.init = 16'h0800;
    FD1P3IX cnt_delay_i0_i7 (.D(n371[7]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i7.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n371[8]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i8.GSR = "DISABLED";
    LUT4 n1776_bdd_4_lut (.A(n1776), .B(n120[4]), .C(n3812), .D(cnt_run[1]), 
         .Z(n4384)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n1776_bdd_4_lut.init = 16'hf044;
    LUT4 i1568_2_lut_4_lut (.A(n4184), .B(cnt_run[1]), .C(clk_p_enable_5), 
         .D(n3615), .Z(n2021)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1568_2_lut_4_lut.init = 16'h0040;
    LUT4 i4_4_lut (.A(cnt_run[3]), .B(n4192), .C(cnt_run[7]), .D(n6), 
         .Z(n1776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i4_4_lut.init = 16'hfffe;
    FD1P3IX cnt_delay_i0_i9 (.D(n371[9]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i9.GSR = "DISABLED";
    CCU2D sub_339_add_2_15 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3440), .S1(n369));
    defparam sub_339_add_2_15.INIT0 = 16'h5555;
    defparam sub_339_add_2_15.INIT1 = 16'h0000;
    defparam sub_339_add_2_15.INJECT1_0 = "NO";
    defparam sub_339_add_2_15.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i10 (.D(n371[10]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i10.GSR = "DISABLED";
    CCU2D add_129_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3422), .COUT(n3423), .S0(n281[3]), .S1(n281[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_5.INIT0 = 16'h5aaa;
    defparam add_129_5.INIT1 = 16'h5aaa;
    defparam add_129_5.INJECT1_0 = "NO";
    defparam add_129_5.INJECT1_1 = "NO";
    CCU2D add_129_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3421), .COUT(n3422), .S0(n281[1]), .S1(n281[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_3.INIT0 = 16'h5aaa;
    defparam add_129_3.INIT1 = 16'h5aaa;
    defparam add_129_3.INJECT1_0 = "NO";
    defparam add_129_3.INJECT1_1 = "NO";
    CCU2D sub_339_add_2_13 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3439), .COUT(n3440));
    defparam sub_339_add_2_13.INIT0 = 16'h5555;
    defparam sub_339_add_2_13.INIT1 = 16'h5555;
    defparam sub_339_add_2_13.INJECT1_0 = "NO";
    defparam sub_339_add_2_13.INJECT1_1 = "NO";
    LUT4 i3442_4_lut (.A(state[1]), .B(n369), .C(state[0]), .D(n89), 
         .Z(n8_adj_529)) /* synthesis lut_function=(A ((C)+!B)+!A !((D)+!C)) */ ;
    defparam i3442_4_lut.init = 16'ha2f2;
    FD1P3IX cnt_delay_i0_i11 (.D(n371[11]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i11.GSR = "DISABLED";
    CCU2D sub_339_add_2_11 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3438), .COUT(n3439));
    defparam sub_339_add_2_11.INIT0 = 16'h5555;
    defparam sub_339_add_2_11.INIT1 = 16'h5555;
    defparam sub_339_add_2_11.INJECT1_0 = "NO";
    defparam sub_339_add_2_11.INJECT1_1 = "NO";
    LUT4 i3392_3_lut_4_lut (.A(cnt_run[1]), .B(n1776), .C(cnt_run[0]), 
         .D(n120[0]), .Z(n3670)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i3392_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_3_lut_rep_58_4_lut (.A(sys_rst_n_c), .B(clk_p_enable_45), .C(cnt_run[1]), 
         .D(n4184), .Z(clk_p_enable_41)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    defparam i2_3_lut_rep_58_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(cnt_run[1]), .B(n1776), .C(n120[7]), 
         .Z(n8_adj_530)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'h1010;
    LUT4 i2_3_lut_rep_61_4_lut (.A(sys_rst_n_c), .B(clk_p_enable_45), .C(state[0]), 
         .D(state[1]), .Z(clk_p_enable_44)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    defparam i2_3_lut_rep_61_4_lut.init = 16'h0800;
    LUT4 i1941_4_lut (.A(state[1]), .B(n89), .C(state[0]), .D(state_back[0]), 
         .Z(n875)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(30[11:16])
    defparam i1941_4_lut.init = 16'hfa10;
    LUT4 mux_356_i2_4_lut (.A(n3807), .B(\uart_recv_data[4] ), .C(sys_clk_c_enable_29), 
         .D(n4_adj_531), .Z(music_tone_7__N_456[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(74[7] 278[5])
    defparam mux_356_i2_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(cnt_run[1]), .B(n1776), .C(n120[6]), 
         .Z(n8_adj_532)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_24.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(cnt_run[1]), .B(n1776), .C(n120[5]), 
         .Z(n8)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h1010;
    LUT4 i1363_4_lut_else_4_lut (.A(clk_p_enable_38), .B(n120[2]), .C(n1776), 
         .Z(n4207)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1363_4_lut_else_4_lut.init = 16'h0808;
    LUT4 i2_3_lut_4_lut (.A(n4191), .B(n4192), .C(cnt_run[3]), .D(cnt_run[0]), 
         .Z(n3822)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_129_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3421), .S1(n281[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_1.INIT0 = 16'hF000;
    defparam add_129_1.INIT1 = 16'h5555;
    defparam add_129_1.INJECT1_0 = "NO";
    defparam add_129_1.INJECT1_1 = "NO";
    ROM128X1A mux_116_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n109[3])) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_116_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    LUT4 i9_4_lut (.A(music_cnt[3]), .B(n18), .C(n3905), .D(music_cnt[4]), 
         .Z(n3812)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i9_4_lut.init = 16'h0800;
    LUT4 i8_4_lut (.A(music_cnt[1]), .B(n16), .C(n4202), .D(n6_adj_533), 
         .Z(n18)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i8_4_lut.init = 16'h0800;
    LUT4 i6_4_lut (.A(cnt_run[3]), .B(cnt_run[5]), .C(cnt_run[4]), .D(music_cnt[6]), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i6_4_lut.init = 16'h1000;
    FD1P3IX cnt_delay_i0_i12 (.D(n371[12]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(n4205), .B(n1776), .C(cnt_run[0]), .D(n114), 
         .Z(n4_adj_531)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_4_lut.init = 16'h0100;
    FD1P3IX cnt_delay_i0_i13 (.D(n371[13]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n371[14]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i14.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(sys_rst_n_c), .B(sys_clk_c_enable_29), .C(n4184), 
         .D(n3807), .Z(clk_p_enable_23)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    defparam i1_4_lut.init = 16'h8a88;
    LUT4 i1948_4_lut (.A(switch_2_c), .B(\uart_recv_data[3] ), .C(sys_clk_c_enable_29), 
         .D(n109[3]), .Z(music_tone_7__N_456[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(41[13:27])
    defparam i1948_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_26 (.A(switch_2_c), .B(cnt_run[1]), .Z(n3807)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_adj_26.init = 16'h2222;
    FD1P3AX music_delay_i0_i8 (.D(n4195), .SP(clk_p_enable_19), .CK(clk_p), 
            .Q(music_delay[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i8.GSR = "DISABLED";
    FD1P3AX music_delay_i0_i4 (.D(n2346), .SP(clk_p_enable_17), .CK(clk_p), 
            .Q(music_delay[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX music_delay_i0_i3 (.D(n2349), .SP(clk_p_enable_19), .CK(clk_p), 
            .Q(music_delay[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i3.GSR = "DISABLED";
    FD1P3AX music_delay_i0_i2 (.D(n2346), .SP(clk_p_enable_19), .CK(clk_p), 
            .Q(music_delay[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i2.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i3 (.D(music_tone_7__N_456[3]), .SP(clk_p_enable_23), 
            .CK(clk_p), .Q(\music_tone[3] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i3.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i2 (.D(music_tone_7__N_456[2]), .SP(clk_p_enable_23), 
            .CK(clk_p), .Q(\music_tone[2] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i2.GSR = "DISABLED";
    LUT4 i1367_2_lut_3_lut_4_lut (.A(switch_2_c), .B(sys_clk_c_enable_29), 
         .C(n4384), .D(n4205), .Z(clk_p_enable_35)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1367_2_lut_3_lut_4_lut.init = 16'h0020;
    FD1P3IX cnt_delay_i0_i15 (.D(n371[15]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i15.GSR = "DISABLED";
    CCU2D sub_339_add_2_9 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3437), .COUT(n3438));
    defparam sub_339_add_2_9.INIT0 = 16'h5555;
    defparam sub_339_add_2_9.INIT1 = 16'h5555;
    defparam sub_339_add_2_9.INJECT1_0 = "NO";
    defparam sub_339_add_2_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_27 (.A(n120[1]), .B(n1776), .Z(n11)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_27.init = 16'h2222;
    LUT4 i2398_2_lut_rep_73 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n4191)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2398_2_lut_rep_73.init = 16'heeee;
    CCU2D sub_339_add_2_7 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(music_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3436), .COUT(n3437));
    defparam sub_339_add_2_7.INIT0 = 16'h5aaa;
    defparam sub_339_add_2_7.INIT1 = 16'h5999;
    defparam sub_339_add_2_7.INJECT1_0 = "NO";
    defparam sub_339_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_339_add_2_5 (.A0(cnt_delay[5]), .B0(music_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3435), .COUT(n3436));
    defparam sub_339_add_2_5.INIT0 = 16'h5999;
    defparam sub_339_add_2_5.INIT1 = 16'h5aaa;
    defparam sub_339_add_2_5.INJECT1_0 = "NO";
    defparam sub_339_add_2_5.INJECT1_1 = "NO";
    FD1P3AX music_tone_i0_i1 (.D(music_tone_7__N_456[1]), .SP(clk_p_enable_23), 
            .CK(clk_p), .Q(\music_tone[1] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i1.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i4 (.D(music_tone_7__N_456[4]), .SP(clk_p_enable_24), 
            .CK(clk_p), .Q(\music_tone[4] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i4.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i1 (.D(n281[1]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i1.GSR = "DISABLED";
    CCU2D sub_339_add_2_3 (.A0(cnt_delay[3]), .B0(music_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(music_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3434), .COUT(n3435));
    defparam sub_339_add_2_3.INIT0 = 16'h5999;
    defparam sub_339_add_2_3.INIT1 = 16'h5999;
    defparam sub_339_add_2_3.INJECT1_0 = "NO";
    defparam sub_339_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_339_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(music_delay[2]), .C1(GND_net), .D1(GND_net), 
          .COUT(n3434));
    defparam sub_339_add_2_1.INIT0 = 16'h0000;
    defparam sub_339_add_2_1.INIT1 = 16'h5999;
    defparam sub_339_add_2_1.INJECT1_0 = "NO";
    defparam sub_339_add_2_1.INJECT1_1 = "NO";
    CCU2D add_143_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3433), .S0(n371[15]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_17.INIT0 = 16'h5aaa;
    defparam add_143_17.INIT1 = 16'h0000;
    defparam add_143_17.INJECT1_0 = "NO";
    defparam add_143_17.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n3822), .B(cnt_run[2]), .C(n7), .D(n8_adj_534), 
         .Z(n3823)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_3_lut_adj_28 (.A(cnt_run[7]), .B(cnt_run[6]), .C(cnt_run[5]), 
         .Z(n4_adj_528)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_28.init = 16'h1010;
    CCU2D add_143_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3432), .COUT(n3433), .S0(n371[13]), .S1(n371[14]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_15.INIT0 = 16'h5aaa;
    defparam add_143_15.INIT1 = 16'h5aaa;
    defparam add_143_15.INJECT1_0 = "NO";
    defparam add_143_15.INJECT1_1 = "NO";
    LUT4 i3345_2_lut_3_lut_4_lut (.A(cnt_run[7]), .B(cnt_run[6]), .C(n4193), 
         .D(music_cnt_c[7]), .Z(n3905)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3345_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i24 (.BLUT(n10), .ALUT(n3881), .C0(state[1]), .Z(n3616));
    FD1P3IX music_cnt_i0_i2 (.D(n281[2]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_74 (.A(cnt_run[4]), .B(cnt_run[5]), .Z(n4192)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_74.init = 16'heeee;
    LUT4 i2_4_lut_adj_29 (.A(n4185), .B(n3783), .C(n3871), .D(sys_rst_n_c), 
         .Z(clk_p_enable_19)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(30[11:16])
    defparam i2_4_lut_adj_29.init = 16'h4000;
    LUT4 i2_4_lut_adj_30 (.A(n4195), .B(state[1]), .C(n109[3]), .D(state[0]), 
         .Z(n3783)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(30[11:16])
    defparam i2_4_lut_adj_30.init = 16'h1300;
    LUT4 i1_2_lut_rep_68_3_lut_4_lut (.A(cnt_run[4]), .B(cnt_run[5]), .C(cnt_run[6]), 
         .D(cnt_run[7]), .Z(n4186)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_68_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_31 (.A(clk_p_enable_5), .B(cnt_run[0]), .C(n3783), 
         .D(n4185), .Z(clk_p_enable_17)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i3_4_lut_adj_31.init = 16'h0080;
    LUT4 i3302_2_lut_rep_75 (.A(music_cnt[5]), .B(music_cnt_c[8]), .Z(n4193)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3302_2_lut_rep_75.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(music_cnt[5]), .B(music_cnt_c[8]), .C(music_cnt[1]), 
         .D(music_cnt_c[7]), .Z(n7)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 mux_356_i4_4_lut (.A(n109[6]), .B(\uart_recv_data[6] ), .C(sys_clk_c_enable_29), 
         .D(switch_2_c), .Z(music_tone_7__N_456[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(74[7] 278[5])
    defparam mux_356_i4_4_lut.init = 16'hcac0;
    FD1P3IX music_cnt_i0_i3 (.D(n281[3]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i3.GSR = "DISABLED";
    CCU2D add_143_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3431), .COUT(n3432), .S0(n371[11]), .S1(n371[12]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_13.INIT0 = 16'h5aaa;
    defparam add_143_13.INIT1 = 16'h5aaa;
    defparam add_143_13.INJECT1_0 = "NO";
    defparam add_143_13.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i4 (.D(n281[4]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i4.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i5 (.D(n281[5]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i5.GSR = "DISABLED";
    CCU2D add_143_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3430), .COUT(n3431), .S0(n371[9]), .S1(n371[10]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_11.INIT0 = 16'h5aaa;
    defparam add_143_11.INIT1 = 16'h5aaa;
    defparam add_143_11.INJECT1_0 = "NO";
    defparam add_143_11.INJECT1_1 = "NO";
    LUT4 mux_356_i5_4_lut (.A(switch_2_c), .B(\uart_recv_data[7] ), .C(sys_clk_c_enable_29), 
         .D(n4_adj_535), .Z(music_tone_7__N_456[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(74[7] 278[5])
    defparam mux_356_i5_4_lut.init = 16'hcac0;
    FD1P3IX music_cnt_i0_i6 (.D(n281[6]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i6.GSR = "DISABLED";
    LUT4 mux_356_i3_4_lut (.A(n109[5]), .B(\uart_recv_data[5] ), .C(sys_clk_c_enable_29), 
         .D(switch_2_c), .Z(music_tone_7__N_456[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(74[7] 278[5])
    defparam mux_356_i3_4_lut.init = 16'hcac0;
    LUT4 i3298_2_lut_rep_84 (.A(cnt_run[0]), .B(cnt_run[2]), .Z(n4202)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3298_2_lut_rep_84.init = 16'heeee;
    CCU2D add_143_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3429), .COUT(n3430), .S0(n371[7]), .S1(n371[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_9.INIT0 = 16'h5aaa;
    defparam add_143_9.INIT1 = 16'h5aaa;
    defparam add_143_9.INJECT1_0 = "NO";
    defparam add_143_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_32 (.A(cnt_run[0]), .B(cnt_run[2]), .C(cnt_run[1]), 
         .Z(n1747)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_32.init = 16'h1010;
    LUT4 i1_3_lut (.A(cnt_run[1]), .B(\music_tone[4] ), .C(n4184), .Z(n4_adj_535)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(25[11:18])
    defparam i1_3_lut.init = 16'hc8c8;
    FD1P3IX music_cnt_i0_i7 (.D(n281[7]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i7.GSR = "DISABLED";
    LUT4 i1363_4_lut_then_4_lut (.A(clk_p_enable_38), .B(cnt_run[2]), .C(n3615), 
         .D(n3822), .Z(n4208)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1363_4_lut_then_4_lut.init = 16'h0008;
    FD1P3AX cnt_run_i0_i7 (.D(n4389), .SP(clk_p_enable_32), .CK(clk_p), 
            .Q(cnt_run[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n4389), .SP(clk_p_enable_33), .CK(clk_p), 
            .Q(cnt_run[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n4389), .SP(clk_p_enable_34), .CK(clk_p), 
            .Q(cnt_run[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_67 (.A(cnt_run[1]), .B(n1776), .Z(n4185)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_67.init = 16'heeee;
    FD1P3AX cnt_run_i0_i4 (.D(n4389), .SP(clk_p_enable_35), .CK(clk_p), 
            .Q(cnt_run[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n4389), .SP(clk_p_enable_36), .CK(clk_p), 
            .Q(cnt_run[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n4389), .SP(clk_p_enable_37), .CK(clk_p), 
            .Q(cnt_run[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n3620), .SP(clk_p_enable_38), .CK(clk_p), 
            .Q(cnt_run[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_87 (.A(state[0]), .B(state[1]), .Z(n4205)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_rep_87.init = 16'hdddd;
    LUT4 i8_4_lut_adj_33 (.A(music_cnt_c[7]), .B(n16_adj_536), .C(n3867), 
         .D(music_cnt[6]), .Z(n3615)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i8_4_lut_adj_33.init = 16'hefff;
    LUT4 i1_3_lut_rep_66_4_lut (.A(state[0]), .B(state[1]), .C(cnt_run[0]), 
         .D(n1776), .Z(n4184)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_3_lut_rep_66_4_lut.init = 16'hfffd;
    FD1P3IX cnt_delay_i0_i0 (.D(n371[0]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i0.GSR = "DISABLED";
    LUT4 i7_4_lut (.A(music_cnt[2]), .B(music_cnt[1]), .C(music_cnt[4]), 
         .D(n4193), .Z(n16_adj_536)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i7_4_lut.init = 16'hff7f;
    PFUMX i3512 (.BLUT(n4207), .ALUT(n4208), .C0(cnt_run[1]), .Z(clk_p_enable_37));
    FD1P3IX music_cnt_i0_i0 (.D(n281[0]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i0.GSR = "DISABLED";
    CCU2D add_111_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3420), 
          .S0(n120[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_9.INIT0 = 16'h5aaa;
    defparam add_111_9.INIT1 = 16'h0000;
    defparam add_111_9.INJECT1_0 = "NO";
    defparam add_111_9.INJECT1_1 = "NO";
    LUT4 i3308_2_lut (.A(music_cnt[0]), .B(music_cnt[3]), .Z(n3867)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3308_2_lut.init = 16'h8888;
    LUT4 i3451_3_lut_4_lut (.A(cnt_run[0]), .B(n1776), .C(cnt_run[1]), 
         .D(state[0]), .Z(n10)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3451_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_62_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(sys_clk_c_enable_29), 
         .D(switch_2_c), .Z(clk_p_enable_38)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_rep_62_3_lut_4_lut.init = 16'h0200;
    CCU2D add_111_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3418), .COUT(n3419), .S0(n120[3]), .S1(n120[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_5.INIT0 = 16'h5aaa;
    defparam add_111_5.INIT1 = 16'h5aaa;
    defparam add_111_5.INJECT1_0 = "NO";
    defparam add_111_5.INJECT1_1 = "NO";
    CCU2D add_143_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3428), .COUT(n3429), .S0(n371[5]), .S1(n371[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_7.INIT0 = 16'h5aaa;
    defparam add_143_7.INIT1 = 16'h5aaa;
    defparam add_143_7.INJECT1_0 = "NO";
    defparam add_143_7.INJECT1_1 = "NO";
    CCU2D add_111_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3419), .COUT(n3420), .S0(n120[5]), .S1(n120[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_7.INIT0 = 16'h5aaa;
    defparam add_111_7.INIT1 = 16'h5aaa;
    defparam add_111_7.INJECT1_0 = "NO";
    defparam add_111_7.INJECT1_1 = "NO";
    CCU2D add_143_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3427), .COUT(n3428), .S0(n371[3]), .S1(n371[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_5.INIT0 = 16'h5aaa;
    defparam add_143_5.INIT1 = 16'h5aaa;
    defparam add_143_5.INJECT1_0 = "NO";
    defparam add_143_5.INJECT1_1 = "NO";
    LUT4 i3322_3_lut (.A(state[0]), .B(state_back[0]), .C(n369), .Z(n3881)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i3322_3_lut.init = 16'heaea;
    CCU2D add_111_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3417), .COUT(n3418), .S0(n120[1]), .S1(n120[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_3.INIT0 = 16'h5aaa;
    defparam add_111_3.INIT1 = 16'h5aaa;
    defparam add_111_3.INJECT1_0 = "NO";
    defparam add_111_3.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i8 (.D(n281[8]), .SP(clk_p_enable_41), .CD(n2021), 
            .CK(clk_p), .Q(music_cnt_c[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i8.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_77 (.A(music_cnt[6]), .B(music_cnt[5]), .Z(n4195)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_rep_77.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_34 (.A(music_cnt[6]), .B(music_cnt[5]), .C(n109[3]), 
         .Z(n2346)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_3_lut_adj_34.init = 16'h0808;
    LUT4 i6_1_lut_2_lut (.A(music_cnt[6]), .B(music_cnt[5]), .Z(n2349)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i6_1_lut_2_lut.init = 16'h7777;
    LUT4 i1373_4_lut (.A(clk_p_enable_38), .B(n8_adj_530), .C(n3813), 
         .D(n4_adj_537), .Z(clk_p_enable_32)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1373_4_lut.init = 16'ha888;
    CCU2D add_143_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3426), .COUT(n3427), .S0(n371[1]), .S1(n371[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_3.INIT0 = 16'h5aaa;
    defparam add_143_3.INIT1 = 16'h5aaa;
    defparam add_143_3.INJECT1_0 = "NO";
    defparam add_143_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_35 (.A(cnt_run[6]), .B(cnt_run[7]), .Z(n4_adj_537)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i1_2_lut_adj_35.init = 16'h4444;
    FD1P3AX blink_576 (.D(blink_N_509), .SP(sys_rst_n_c), .CK(clk_p), 
            .Q(blink_c));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam blink_576.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_36 (.A(cnt_run[5]), .B(n3819), .Z(n3813)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i1_2_lut_adj_36.init = 16'h4444;
    LUT4 i3_4_lut_adj_37 (.A(music_cnt[4]), .B(n6_adj_533), .C(music_cnt[6]), 
         .D(music_cnt[3]), .Z(n8_adj_534)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_37.init = 16'h8000;
    FD1P3AX state_i0_i1 (.D(n8_adj_529), .SP(clk_p_enable_45), .CK(clk_p), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_38 (.A(music_cnt[0]), .B(music_cnt[2]), .Z(n6_adj_533)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'h8888;
    LUT4 i1_4_lut_adj_39 (.A(n3615), .B(cnt_run[3]), .C(cnt_run[4]), .D(n1747), 
         .Z(n3819)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i1_4_lut_adj_39.init = 16'h0100;
    FD1P3IX cnt_delay_i0_i1 (.D(n371[1]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n371[2]), .SP(clk_p_enable_44), .CD(n2006), 
            .CK(clk_p), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i2.GSR = "DISABLED";
    LUT4 i1371_4_lut (.A(clk_p_enable_38), .B(n8_adj_532), .C(n3813), 
         .D(n4), .Z(clk_p_enable_33)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1371_4_lut.init = 16'ha888;
    FD1P3AX state_i0_i0 (.D(n3616), .SP(clk_p_enable_45), .CK(clk_p), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=111, LSE_RLINE=122 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam state_i0_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, uart_recv_done, 
            uart_rxd_c, GND_net, uart_recv_data) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output uart_recv_done;
    input uart_rxd_c;
    input GND_net;
    output [7:0]uart_recv_data;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire rx_flag, n1992, uart_data_7__N_67, uart_rxd_d0, n1996;
    wire [15:0]n62;
    
    wire n4187, n4200, n3831;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(43[12:18])
    
    wire sys_clk_c_enable_50, n916, n1814, n3448;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    wire [15:0]n69;
    
    wire n3447, n2793, n3780, sys_clk_c_enable_46, n3446, n3445, 
        n3444, n3443, n3442, n3441, rx_flag_N_68, n4178, sys_clk_c_enable_7, 
        n1808, n1805, n1802, n1799, n1796, uart_rxd_d1, n1793, 
        n3835, n1811, n2002, n4199, n4177, n4188, n3851, n3841, 
        n3838, n6, n1774, n15, n14, n3840, n3854, n3853, n4, 
        n3509, n4183, n4182;
    
    FD1S3AX rx_flag_56 (.D(n1992), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_67), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    LUT4 i1537_1_lut (.A(uart_data_7__N_67), .Z(n1996)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam i1537_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n62[4]), .B(n4187), .C(n4200), .D(n62[5]), 
         .Z(n3831)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX rxdata__i7 (.D(n1814), .SP(sys_clk_c_enable_50), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    CCU2D clk_cnt_480_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3448), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_480_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_480_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3447), .COUT(n3448), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_480_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_15.INJECT1_1 = "NO";
    LUT4 i3430_4_lut (.A(clk_cnt[0]), .B(clk_cnt[4]), .C(n2793), .D(n3780), 
         .Z(sys_clk_c_enable_46)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i3430_4_lut.init = 16'h0020;
    CCU2D clk_cnt_480_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3446), .COUT(n3447), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_480_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_480_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3445), .COUT(n3446), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_480_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_480_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3444), .COUT(n3445), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_480_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_480_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3443), .COUT(n3444), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_480_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_480_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3442), .COUT(n3443), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_480_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_480_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3441), .COUT(n3442), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_480_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_480_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_3.INJECT1_1 = "NO";
    LUT4 i1533_4_lut (.A(uart_data_7__N_67), .B(rx_flag_N_68), .C(rx_flag), 
         .D(n4178), .Z(n1992)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i1533_4_lut.init = 16'hfcdc;
    CCU2D clk_cnt_480_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3441), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_480_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_480_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_480_add_4_1.INJECT1_1 = "NO";
    FD1P3IX rxdata__i6 (.D(n1808), .SP(sys_clk_c_enable_7), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n1805), .SP(sys_clk_c_enable_7), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n1802), .SP(sys_clk_c_enable_7), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n1799), .SP(sys_clk_c_enable_7), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n1796), .SP(sys_clk_c_enable_7), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_68)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    FD1P3IX rxdata__i1 (.D(n1793), .SP(sys_clk_c_enable_7), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[0]), .C(n62[1]), .D(n3835), 
         .Z(n1811)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i2343_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n2793)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2343_2_lut.init = 16'h8888;
    FD1S3IX clk_cnt_480__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n2002), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n2002), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n2002), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n2002), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n2002), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n2002), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i1.GSR = "ENABLED";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_59_3_lut_4_lut (.A(n62[1]), .B(n4199), .C(n62[5]), 
         .D(n62[4]), .Z(n4177)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_59_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n62[1]), .B(n4199), .C(n4188), 
         .D(n62[5]), .Z(n3851)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'hfffe;
    LUT4 i518_1_lut (.A(rx_flag), .Z(n916)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i518_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_8 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n62[8]), .D(n3841), 
         .Z(n1814)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_8.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n62[1]), .B(n4199), .C(n4188), 
         .D(n62[4]), .Z(n3838)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hfffe;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n1774), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n3780)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[13]), .C(n14), .D(clk_cnt[8]), 
         .Z(n1774)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[14]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[10]), .C(clk_cnt[11]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_10 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n62[7]), 
         .D(n3831), .Z(n1808)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_10.init = 16'heca0;
    LUT4 i1_4_lut_adj_11 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n62[6]), 
         .D(n3840), .Z(n1805)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_11.init = 16'heca0;
    LUT4 i1_4_lut_adj_12 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n62[5]), 
         .D(n3838), .Z(n1802)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_12.init = 16'heca0;
    FD1P3IX rx_cnt_FSM_i15 (.D(n62[14]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_13 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n62[4]), 
         .D(n3851), .Z(n1799)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_13.init = 16'heca0;
    LUT4 i1_4_lut_adj_14 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n62[3]), 
         .D(n3854), .Z(n1796)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_14.init = 16'heca0;
    LUT4 i1_4_lut_adj_15 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n62[2]), 
         .D(n3853), .Z(n1793)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_15.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(n62[5]), .B(n4188), .C(n4199), 
         .D(n62[4]), .Z(n3835)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'hfffe;
    LUT4 i3433_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n1774), .D(n4), 
         .Z(n2002)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(92[9:26])
    defparam i3433_4_lut.init = 16'hfdf5;
    LUT4 i1_4_lut_adj_17 (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n3509), .D(clk_cnt[3]), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hccc8;
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n3509)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_81 (.A(n62[2]), .B(n62[3]), .Z(n4199)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_81.init = 16'heeee;
    LUT4 i1_2_lut_rep_69_3_lut (.A(n62[2]), .B(n62[3]), .C(n62[1]), .Z(n4187)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_69_3_lut.init = 16'hfefe;
    LUT4 i3454_2_lut_4_lut_4_lut (.A(n4178), .B(rx_flag), .C(n4188), .D(n4177), 
         .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(128[13:30])
    defparam i3454_2_lut_4_lut_4_lut.init = 16'h7773;
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(n62[2]), .B(n62[3]), .C(n62[4]), 
         .D(n62[1]), .Z(n4183)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_82 (.A(n62[6]), .B(n62[8]), .Z(n4200)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_82.init = 16'heeee;
    LUT4 i1_2_lut_rep_70_3_lut (.A(n62[6]), .B(n62[8]), .C(n62[7]), .Z(n4188)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_70_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(n62[6]), .B(n62[8]), .C(n62[5]), 
         .D(n62[7]), .Z(n4182)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(n62[4]), .B(n4182), .C(n62[3]), 
         .D(n62[1]), .Z(n3853)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(n62[4]), .B(n4182), .C(n62[2]), 
         .D(n62[1]), .Z(n3854)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'hfffe;
    FD1P3IX rx_cnt_FSM_i14 (.D(n62[13]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n62[12]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n62[11]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n62[10]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_67), .SP(sys_clk_c_enable_46), 
            .CD(n916), .CK(sys_clk_c), .Q(n62[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n62[8]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(uart_data_7__N_67));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n62[7]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n62[6]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n62[5]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n62[4]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n62[3]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n62[2]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n62[1]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n62[0]), .SP(sys_clk_c_enable_46), .CD(n916), 
            .CK(sys_clk_c), .Q(n62[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(n62[5]), .B(n4183), .C(n62[6]), 
         .D(n62[7]), .Z(n3841)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'hfffe;
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_480__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n2002), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_480__i0.GSR = "ENABLED";
    LUT4 i3458_3_lut_rep_57_3_lut_4_lut (.A(n62[5]), .B(n4183), .C(n4188), 
         .D(n4178), .Z(sys_clk_c_enable_7)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i3458_3_lut_rep_57_3_lut_4_lut.init = 16'h00fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(n62[5]), .B(n4183), .C(n62[8]), 
         .D(n62[7]), .Z(n3840)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'hfffe;
    FD1P3JX rx_cnt_FSM_i0 (.D(n62[15]), .SP(sys_clk_c_enable_46), .PD(n916), 
            .CK(sys_clk_c), .Q(n62[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i4_4_lut_rep_60 (.A(clk_cnt[0]), .B(n3780), .C(clk_cnt[4]), .D(n6), 
         .Z(n4178)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i4_4_lut_rep_60.init = 16'hffef;
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1P3IX rxdata__i0 (.D(n1811), .SP(sys_clk_c_enable_50), .CD(n916), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n1996), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module divide
//

module divide (GND_net, clk_p, sys_clk_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_p;
    input sys_clk_c;
    
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n3480;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(18[13:18])
    wire [31:0]n101;
    
    wire n3481, clk_p_N_371, n3479, n3478, n3477, n3476, n3475, 
        n3474, n3473, n3472, n3471, n3470, n3469, n3468, n3467;
    wire [31:0]n200;
    
    wire n3466, n2004, n3976, n19, n17, n18, n27, n40, n36, 
        n28, n38, n32_adj_518, n34, n24, n3503, n3502, n3501, 
        n3500, n3499, n3498, n3497, n3496, n3495, n3494, n3493, 
        n3492, n3491;
    
    CCU2D cnt_p_484_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3480), .COUT(n3481), .S0(n101[29]), .S1(n101[30]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_31.INJECT1_1 = "NO";
    FD1S3AX clk_p_35 (.D(clk_p_N_371), .CK(sys_clk_c), .Q(clk_p)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=109 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(40[9] 43[14])
    defparam clk_p_35.GSR = "ENABLED";
    CCU2D cnt_p_484_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3479), .COUT(n3480), .S0(n101[27]), .S1(n101[28]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3478), .COUT(n3479), .S0(n101[25]), .S1(n101[26]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3477), .COUT(n3478), .S0(n101[23]), .S1(n101[24]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3476), .COUT(n3477), .S0(n101[21]), .S1(n101[22]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3475), .COUT(n3476), .S0(n101[19]), .S1(n101[20]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3474), .COUT(n3475), .S0(n101[17]), .S1(n101[18]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3473), .COUT(n3474), .S0(n101[15]), .S1(n101[16]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3472), .COUT(n3473), .S0(n101[13]), .S1(n101[14]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3471), .COUT(n3472), .S0(n101[11]), .S1(n101[12]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3470), .COUT(n3471), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3469), .COUT(n3470), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3468), .COUT(n3469), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3467), .COUT(n3468), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3466), .COUT(n3467), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_484_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3466), .S1(n101[0]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_484_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_484_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_p_484__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n2004), .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n2004), .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n2004), .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n2004), .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n2004), .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i0.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n2004), .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n2004), .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n2004), .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n2004), .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_484__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n2004), .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i1.GSR = "ENABLED";
    LUT4 i3439_4_lut (.A(n3976), .B(n19), .C(n17), .D(n18), .Z(n2004)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i3439_4_lut.init = 16'h8000;
    LUT4 i3438_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(n3976)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i3438_4_lut.init = 16'h0001;
    LUT4 i8_4_lut (.A(cnt_p[11]), .B(n200[1]), .C(cnt_p[10]), .D(cnt_p[4]), 
         .Z(n19)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i6_3_lut (.A(cnt_p[9]), .B(cnt_p[6]), .C(cnt_p[7]), .Z(n17)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6_3_lut.init = 16'h8080;
    LUT4 i7_4_lut (.A(cnt_p[13]), .B(n200[2]), .C(n200[3]), .D(n200[0]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i6_2_lut (.A(cnt_p[28]), .B(cnt_p[12]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(cnt_p[5]), .B(n38), .C(n32_adj_518), .D(cnt_p[20]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i15_4_lut (.A(cnt_p[8]), .B(cnt_p[25]), .C(cnt_p[15]), .D(cnt_p[26]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(cnt_p[17]), .B(cnt_p[24]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(cnt_p[29]), .B(n34), .C(n24), .D(cnt_p[14]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i11_3_lut (.A(cnt_p[22]), .B(cnt_p[21]), .C(cnt_p[31]), .Z(n32_adj_518)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i13_4_lut (.A(cnt_p[16]), .B(cnt_p[27]), .C(cnt_p[23]), .D(cnt_p[30]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i13_4_lut.init = 16'hfffe;
    CCU2D add_2943_28 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3503), 
          .S1(clk_p_N_371));
    defparam add_2943_28.INIT0 = 16'h5555;
    defparam add_2943_28.INIT1 = 16'h0000;
    defparam add_2943_28.INJECT1_0 = "NO";
    defparam add_2943_28.INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(cnt_p[19]), .B(cnt_p[18]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D add_2943_26 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3502), .COUT(n3503));
    defparam add_2943_26.INIT0 = 16'h5555;
    defparam add_2943_26.INIT1 = 16'h5555;
    defparam add_2943_26.INJECT1_0 = "NO";
    defparam add_2943_26.INJECT1_1 = "NO";
    CCU2D add_2943_24 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3501), .COUT(n3502));
    defparam add_2943_24.INIT0 = 16'h5555;
    defparam add_2943_24.INIT1 = 16'h5555;
    defparam add_2943_24.INJECT1_0 = "NO";
    defparam add_2943_24.INJECT1_1 = "NO";
    FD1S3IX cnt_p_484__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n2004), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484__i31.GSR = "ENABLED";
    CCU2D add_2943_22 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3500), .COUT(n3501));
    defparam add_2943_22.INIT0 = 16'h5555;
    defparam add_2943_22.INIT1 = 16'h5555;
    defparam add_2943_22.INJECT1_0 = "NO";
    defparam add_2943_22.INJECT1_1 = "NO";
    CCU2D add_2943_20 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3499), .COUT(n3500));
    defparam add_2943_20.INIT0 = 16'h5555;
    defparam add_2943_20.INIT1 = 16'h5555;
    defparam add_2943_20.INJECT1_0 = "NO";
    defparam add_2943_20.INJECT1_1 = "NO";
    CCU2D add_2943_18 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3498), .COUT(n3499));
    defparam add_2943_18.INIT0 = 16'h5555;
    defparam add_2943_18.INIT1 = 16'h5555;
    defparam add_2943_18.INJECT1_0 = "NO";
    defparam add_2943_18.INJECT1_1 = "NO";
    CCU2D add_2943_16 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3497), .COUT(n3498));
    defparam add_2943_16.INIT0 = 16'h5555;
    defparam add_2943_16.INIT1 = 16'h5555;
    defparam add_2943_16.INJECT1_0 = "NO";
    defparam add_2943_16.INJECT1_1 = "NO";
    CCU2D add_2943_14 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3496), .COUT(n3497));
    defparam add_2943_14.INIT0 = 16'h5555;
    defparam add_2943_14.INIT1 = 16'h5555;
    defparam add_2943_14.INJECT1_0 = "NO";
    defparam add_2943_14.INJECT1_1 = "NO";
    CCU2D add_2943_12 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3495), .COUT(n3496));
    defparam add_2943_12.INIT0 = 16'h5555;
    defparam add_2943_12.INIT1 = 16'h5555;
    defparam add_2943_12.INJECT1_0 = "NO";
    defparam add_2943_12.INJECT1_1 = "NO";
    CCU2D add_2943_10 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3494), .COUT(n3495));
    defparam add_2943_10.INIT0 = 16'h5555;
    defparam add_2943_10.INIT1 = 16'h5555;
    defparam add_2943_10.INJECT1_0 = "NO";
    defparam add_2943_10.INJECT1_1 = "NO";
    CCU2D add_2943_8 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3493), .COUT(n3494));
    defparam add_2943_8.INIT0 = 16'h5555;
    defparam add_2943_8.INIT1 = 16'h5aaa;
    defparam add_2943_8.INJECT1_0 = "NO";
    defparam add_2943_8.INJECT1_1 = "NO";
    CCU2D add_2943_6 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3492), .COUT(n3493));
    defparam add_2943_6.INIT0 = 16'h5aaa;
    defparam add_2943_6.INIT1 = 16'h5aaa;
    defparam add_2943_6.INJECT1_0 = "NO";
    defparam add_2943_6.INJECT1_1 = "NO";
    CCU2D add_2943_4 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3491), 
          .COUT(n3492));
    defparam add_2943_4.INIT0 = 16'h5555;
    defparam add_2943_4.INIT1 = 16'h5aaa;
    defparam add_2943_4.INJECT1_0 = "NO";
    defparam add_2943_4.INJECT1_1 = "NO";
    CCU2D add_2943_2 (.A0(cnt_p[5]), .B0(cnt_p[4]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3491));
    defparam add_2943_2.INIT0 = 16'h7000;
    defparam add_2943_2.INIT1 = 16'h5aaa;
    defparam add_2943_2.INJECT1_0 = "NO";
    defparam add_2943_2.INJECT1_1 = "NO";
    CCU2D cnt_p_484_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3481), .S0(n101[31]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_484_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_484_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_484_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_484_add_4_33.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_loop
//

module uart_loop (tx_ready, sys_clk_c, tx_ready_N_156, uart_send_data, 
            sys_clk_c_enable_29, uart_recv_data, uart_tx_busy, n4198, 
            uart_send_en, sys_clk_c_enable_49, n2282) /* synthesis syn_module_defined=1 */ ;
    output tx_ready;
    input sys_clk_c;
    input tx_ready_N_156;
    output [7:0]uart_send_data;
    input sys_clk_c_enable_29;
    input [7:0]uart_recv_data;
    input uart_tx_busy;
    output n4198;
    output uart_send_en;
    input sys_clk_c_enable_49;
    input n2282;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    FD1S3AX tx_ready_24 (.D(tx_ready_N_156), .CK(sys_clk_c), .Q(tx_ready)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam tx_ready_24.GSR = "ENABLED";
    FD1P3AX send_data_i0_i7 (.D(uart_recv_data[7]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i7.GSR = "ENABLED";
    FD1P3AX send_data_i0_i6 (.D(uart_recv_data[6]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i6.GSR = "ENABLED";
    FD1P3AX send_data_i0_i5 (.D(uart_recv_data[5]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i5.GSR = "ENABLED";
    FD1P3AX send_data_i0_i4 (.D(uart_recv_data[4]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i4.GSR = "ENABLED";
    FD1P3AX send_data_i0_i3 (.D(uart_recv_data[3]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i3.GSR = "ENABLED";
    FD1P3AX send_data_i0_i2 (.D(uart_recv_data[2]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i2.GSR = "ENABLED";
    FD1P3AX send_data_i0_i1 (.D(uart_recv_data[1]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i1.GSR = "ENABLED";
    FD1P3AX send_data_i0_i0 (.D(uart_recv_data[0]), .SP(sys_clk_c_enable_29), 
            .CK(sys_clk_c), .Q(uart_send_data[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i0.GSR = "ENABLED";
    LUT4 tx_busy_I_0_1_lut_rep_80 (.A(uart_tx_busy), .Z(n4198)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(75[29:39])
    defparam tx_busy_I_0_1_lut_rep_80.init = 16'h5555;
    FD1P3AX send_en_25 (.D(n2282), .SP(sys_clk_c_enable_49), .CK(sys_clk_c), 
            .Q(uart_send_en));   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_en_25.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (\music_tone[4] , \music_tone[3] , \music_tone[1] , \music_tone[0] , 
            sys_clk_c, beep_c, \music_tone[2] , GND_net, switch_1_c) /* synthesis syn_module_defined=1 */ ;
    input \music_tone[4] ;
    input \music_tone[3] ;
    input \music_tone[1] ;
    input \music_tone[0] ;
    input sys_clk_c;
    output beep_c;
    input \music_tone[2] ;
    input GND_net;
    input switch_1_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n4223, n4144, n4143;
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(31[12:20])
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(65[12:20])
    
    wire n326;
    wire [17:0]n77;
    
    wire n4222, piano_out_N_200, n4226, n4147, n4126, n4225, n4117, 
        n15, n4229, n4228, n4232, n4231, n4146, n4235, n3465, 
        n4234, n4238, n4237, n638, n29, n34, n30;
    wire [17:0]n619;
    
    wire n31, n28, n4386, n3464, n3463, n4116, n3541, n3462, 
        n3461, n3460, n4127, n3459, n4385, n4210, n4214, n4213, 
        n3458, n3457, n4217, n4216, n4211, n4220, n4219, n3490, 
        n3489, n3488, n3487, n3486, n3485, n3484, n3483, n3482;
    
    LUT4 i3449_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n4223)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i3449_4_lut_then_4_lut.init = 16'hafcc;
    PFUMX i3489 (.BLUT(n4144), .ALUT(n4143), .C0(\music_tone[4] ), .Z(time_end[3]));
    FD1S3IX time_cnt_483__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i14.GSR = "ENABLED";
    LUT4 i3449_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n4222)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i3449_4_lut_else_4_lut.init = 16'hefff;
    FD1S3IX time_cnt_483__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n326), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i7.GSR = "ENABLED";
    FD1S3AX piano_out_20 (.D(piano_out_N_200), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=101 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_483__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i1.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n4226)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hffbc;
    LUT4 n2856_bdd_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), .C(\music_tone[1] ), 
         .D(\music_tone[2] ), .Z(n4147)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam n2856_bdd_4_lut.init = 16'h302b;
    LUT4 n6_bdd_4_lut_3483_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n4126)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam n6_bdd_4_lut_3483_4_lut.init = 16'hf6fa;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n4225)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C)+!B !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hc9db;
    LUT4 n2856_bdd_4_lut_3491 (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n4117)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam n2856_bdd_4_lut_3491.init = 16'hd3cd;
    LUT4 i2395_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[2] ), 
         .D(\music_tone[3] ), .Z(n15)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;
    defparam i2395_4_lut_4_lut.init = 16'h5eff;
    LUT4 tone_4__I_0_Mux_4_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n4229)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+!(C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_4_i31_then_4_lut.init = 16'hbab9;
    LUT4 tone_4__I_0_Mux_4_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n4228)) /* synthesis lut_function=(A (B+!(C))+!A (B (C (D))+!B !(C))) */ ;
    defparam tone_4__I_0_Mux_4_i31_else_4_lut.init = 16'hcb8b;
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n4232)) /* synthesis lut_function=(A (B+(C))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hf9fc;
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n4231)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A ((C+(D))+!B)) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hf57b;
    LUT4 n2856_bdd_4_lut_3492_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n4146)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((D)+!C)) */ ;
    defparam n2856_bdd_4_lut_3492_4_lut.init = 16'hff85;
    LUT4 music_tone_4__bdd_4_lut_3496 (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[3] ), .D(\music_tone[0] ), .Z(n4144)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam music_tone_4__bdd_4_lut_3496.init = 16'ha6b7;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n4235)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    CCU2D time_cnt_483_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3465), .S0(n77[17]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_483_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_19.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n4234)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n4238)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n4237)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    LUT4 i199_2_lut (.A(n638), .B(switch_1_c), .Z(n326)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[11] 76[5])
    defparam i199_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_200)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n619[1]), .B(n619[6]), .C(n619[16]), .D(n619[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n619[5]), .C(n28), .D(n619[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n619[10]), .B(n619[4]), .C(n619[8]), .D(n619[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n619[14]), .B(n619[17]), .C(n619[15]), .D(n619[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n619[12]), .B(n619[7]), .C(n619[0]), .D(n619[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n4386)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    FD1S3IX time_cnt_483__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n326), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483__i0.GSR = "ENABLED";
    CCU2D time_cnt_483_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3464), .COUT(n3465), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_483_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3463), .COUT(n3464), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_15.INJECT1_1 = "NO";
    LUT4 music_tone_4__bdd_3_lut (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n4143)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut.init = 16'hecec;
    PFUMX i3480 (.BLUT(n4117), .ALUT(n4116), .C0(\music_tone[4] ), .Z(time_end[10]));
    PFUMX tone_4__I_0_Mux_8_i31 (.BLUT(n15), .ALUT(n3541), .C0(\music_tone[4] ), 
          .Z(time_end[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=101 */ ;
    CCU2D time_cnt_483_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3462), .COUT(n3463), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_483_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3461), .COUT(n3462), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_483_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3460), .COUT(n3461), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_9.INJECT1_1 = "NO";
    PFUMX i3484 (.BLUT(n4127), .ALUT(n4126), .C0(\music_tone[3] ), .Z(time_end[0]));
    CCU2D time_cnt_483_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3459), .COUT(n3460), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_7.INJECT1_1 = "NO";
    LUT4 n2856_bdd_4_lut_3479_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n4116)) /* synthesis lut_function=(A (B+(D))+!A (B (D)+!B (C+(D)))) */ ;
    defparam n2856_bdd_4_lut_3479_4_lut.init = 16'hff98;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n4385)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n4210)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfa4b;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n4214)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((C)+!B)) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfbd1;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n4213)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hf627;
    CCU2D time_cnt_483_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3458), .COUT(n3459), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_483_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3457), .COUT(n3458), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_483_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_483_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_3.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n4217)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hfe71;
    CCU2D time_cnt_483_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3457), .S1(n77[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_483_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_483_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_483_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_483_add_4_1.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n4216)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hba27;
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n4211)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    PFUMX i3532 (.BLUT(n4237), .ALUT(n4238), .C0(\music_tone[0] ), .Z(time_end[13]));
    PFUMX i3530 (.BLUT(n4234), .ALUT(n4235), .C0(\music_tone[0] ), .Z(time_end[14]));
    PFUMX i3528 (.BLUT(n4231), .ALUT(n4232), .C0(\music_tone[0] ), .Z(time_end[6]));
    LUT4 i3435_4_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n4220)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i3435_4_lut_then_4_lut.init = 16'hfcaa;
    LUT4 i3435_4_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n4219)) /* synthesis lut_function=(A (B+(C))+!A !(B+(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i3435_4_lut_else_4_lut.init = 16'ha8b9;
    PFUMX i3526 (.BLUT(n4228), .ALUT(n4229), .C0(\music_tone[0] ), .Z(time_end[4]));
    CCU2D add_334_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3490), 
          .S0(n619[17]), .S1(n638));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_19.INIT0 = 16'h5555;
    defparam add_334_19.INIT1 = 16'h0000;
    defparam add_334_19.INJECT1_0 = "NO";
    defparam add_334_19.INJECT1_1 = "NO";
    PFUMX i3524 (.BLUT(n4225), .ALUT(n4226), .C0(\music_tone[0] ), .Z(time_end[9]));
    LUT4 i2_2_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), .C(\music_tone[2] ), 
         .D(\music_tone[1] ), .Z(n3541)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i2_2_lut_4_lut.init = 16'hecff;
    PFUMX i3522 (.BLUT(n4222), .ALUT(n4223), .C0(\music_tone[2] ), .Z(time_end[7]));
    CCU2D add_334_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3489), .COUT(n3490), .S0(n619[15]), .S1(n619[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_17.INIT0 = 16'h5999;
    defparam add_334_17.INIT1 = 16'h5555;
    defparam add_334_17.INJECT1_0 = "NO";
    defparam add_334_17.INJECT1_1 = "NO";
    CCU2D add_334_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3488), .COUT(n3489), .S0(n619[13]), .S1(n619[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_15.INIT0 = 16'h5999;
    defparam add_334_15.INIT1 = 16'h5999;
    defparam add_334_15.INJECT1_0 = "NO";
    defparam add_334_15.INJECT1_1 = "NO";
    CCU2D add_334_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3487), .COUT(n3488), .S0(n619[11]), .S1(n619[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_13.INIT0 = 16'h5999;
    defparam add_334_13.INIT1 = 16'h5999;
    defparam add_334_13.INJECT1_0 = "NO";
    defparam add_334_13.INJECT1_1 = "NO";
    CCU2D add_334_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3486), .COUT(n3487), .S0(n619[9]), .S1(n619[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_11.INIT0 = 16'h5999;
    defparam add_334_11.INIT1 = 16'h5999;
    defparam add_334_11.INJECT1_0 = "NO";
    defparam add_334_11.INJECT1_1 = "NO";
    PFUMX i3520 (.BLUT(n4219), .ALUT(n4220), .C0(\music_tone[0] ), .Z(time_end[5]));
    CCU2D add_334_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3485), .COUT(n3486), .S0(n619[7]), .S1(n619[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_9.INIT0 = 16'h5999;
    defparam add_334_9.INIT1 = 16'h5999;
    defparam add_334_9.INJECT1_0 = "NO";
    defparam add_334_9.INJECT1_1 = "NO";
    PFUMX i3560 (.BLUT(n4385), .ALUT(n4386), .C0(\music_tone[1] ), .Z(time_end[15]));
    CCU2D add_334_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3484), .COUT(n3485), .S0(n619[5]), .S1(n619[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_7.INIT0 = 16'h5999;
    defparam add_334_7.INIT1 = 16'h5999;
    defparam add_334_7.INJECT1_0 = "NO";
    defparam add_334_7.INJECT1_1 = "NO";
    PFUMX i3518 (.BLUT(n4216), .ALUT(n4217), .C0(\music_tone[0] ), .Z(time_end[11]));
    CCU2D add_334_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3483), .COUT(n3484), .S0(n619[3]), .S1(n619[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_5.INIT0 = 16'h5999;
    defparam add_334_5.INIT1 = 16'h5999;
    defparam add_334_5.INJECT1_0 = "NO";
    defparam add_334_5.INJECT1_1 = "NO";
    CCU2D add_334_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3482), .COUT(n3483), .S0(n619[1]), .S1(n619[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_3.INIT0 = 16'h5999;
    defparam add_334_3.INIT1 = 16'h5999;
    defparam add_334_3.INJECT1_0 = "NO";
    defparam add_334_3.INJECT1_1 = "NO";
    LUT4 n6_bdd_4_lut_3501 (.A(\music_tone[0] ), .B(\music_tone[2] ), .C(\music_tone[4] ), 
         .D(\music_tone[1] ), .Z(n4127)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam n6_bdd_4_lut_3501.init = 16'hae3f;
    PFUMX i3516 (.BLUT(n4213), .ALUT(n4214), .C0(\music_tone[0] ), .Z(time_end[2]));
    CCU2D add_334_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n3482), .S1(n619[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_334_1.INIT0 = 16'h0000;
    defparam add_334_1.INIT1 = 16'h5999;
    defparam add_334_1.INJECT1_0 = "NO";
    defparam add_334_1.INJECT1_1 = "NO";
    PFUMX i3493 (.BLUT(n4147), .ALUT(n4146), .C0(\music_tone[4] ), .Z(time_end[1]));
    PFUMX i3514 (.BLUT(n4210), .ALUT(n4211), .C0(\music_tone[0] ), .Z(time_end[12]));
    
endmodule
