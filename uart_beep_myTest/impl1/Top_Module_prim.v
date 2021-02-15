// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Feb 15 16:14:45 2021
//
// Verilog Description of module Top_Module
//

module Top_Module (sys_clk, sys_rst_n, uart_rxd, switch_1, uart_txd, 
            led, beep, blink) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(1[8:18])
    input sys_clk;   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/test_bink/main.v(3[21:30])
    input uart_rxd;   // c:/users/argon/desktop/verilog/test_bink/main.v(4[21:29])
    input switch_1;   // c:/users/argon/desktop/verilog/test_bink/main.v(5[15:23])
    output uart_txd;   // c:/users/argon/desktop/verilog/test_bink/main.v(7[21:29])
    output led;   // c:/users/argon/desktop/verilog/test_bink/main.v(8[17:20])
    output beep;   // c:/users/argon/desktop/verilog/test_bink/main.v(9[18:22])
    output blink;   // c:/users/argon/desktop/verilog/test_bink/main.v(10[21:26])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    
    wire GND_net, VCC_net, sys_rst_n_c, uart_rxd_c, switch_1_c, uart_txd_c, 
        beep_c, blink_c, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/test_bink/main.v(18[12:26])
    
    wire uart_send_en;
    wire [7:0]uart_send_data;   // c:/users/argon/desktop/verilog/test_bink/main.v(20[12:26])
    
    wire uart_tx_busy;
    wire [7:0]state;   // c:/users/argon/desktop/verilog/test_bink/main.v(55[11:16])
    wire [7:0]state_back;   // c:/users/argon/desktop/verilog/test_bink/main.v(56[12:22])
    wire [7:0]run_cnt;   // c:/users/argon/desktop/verilog/test_bink/main.v(57[12:19])
    wire [15:0]delay_cnt;   // c:/users/argon/desktop/verilog/test_bink/main.v(61[12:21])
    
    wire tone_en, n44, n45, n46, n47, n48, n49, n50, n51;
    wire [7:0]run_cnt_7__N_87;
    
    wire blink_N_138, n3502, n162, n163, n164, n165, n166, n167, 
        n168, n169, n170, n171, n172, n173, n174, n175, n176, 
        n177, sys_clk_c_enable_51;
    wire [7:0]state_7__N_1;
    
    wire sys_clk_c_enable_26, n3501, n3500, n3499, n1921, sys_clk_c_enable_19, 
        n10, sys_clk_c_enable_54, tx_ready, send_en_N_292, clk_p, 
        sys_clk_c_enable_53, n5, n10_adj_517, n3444, n3443, n3506, 
        n3505, n1652, n3777, sys_clk_c_enable_50, sys_clk_c_enable_48, 
        n14, n3442, n658, sys_clk_c_enable_49, sys_clk_c_enable_61, 
        n1496, n3878, n3441, sys_clk_c_enable_52, n3504, n3503, 
        n4, n3585, sys_clk_c_enable_55, n3785, n3780, n3779;
    
    VHI i2664 (.Z(VCC_net));
    LUT4 i2_3_lut_rep_25 (.A(delay_cnt[5]), .B(delay_cnt[4]), .C(delay_cnt[3]), 
         .Z(n3785)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_25.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut (.A(delay_cnt[5]), .B(delay_cnt[4]), .C(delay_cnt[3]), 
         .D(delay_cnt[7]), .Z(n4)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfe00;
    LUT4 blink_I_0_2_lut_3_lut (.A(n3779), .B(n1921), .C(blink_c), .Z(blink_N_138)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam blink_I_0_2_lut_3_lut.init = 16'h1e1e;
    FD1P3AX run_cnt_i0 (.D(run_cnt_7__N_87[0]), .SP(sys_clk_c_enable_55), 
            .CK(sys_clk_c), .Q(run_cnt[0]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i0.GSR = "ENABLED";
    FD1P3AX delay_cnt_i0_i0 (.D(n177), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[0]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i0.GSR = "DISABLED";
    FD1S3AY tone_en_69 (.D(switch_1_c), .CK(sys_clk_c), .Q(tone_en));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam tone_en_69.GSR = "ENABLED";
    LUT4 i12_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n1652), .D(n658), 
         .Z(sys_clk_c_enable_61)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(200[4:9])
    defparam i12_4_lut_4_lut.init = 16'h4703;
    LUT4 i2646_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(sys_rst_n_c), 
         .Z(sys_clk_c_enable_48)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(200[4:9])
    defparam i2646_2_lut_3_lut.init = 16'h4040;
    LUT4 i1709_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(state_back[0]), 
         .Z(state_7__N_1[0])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(200[4:9])
    defparam i1709_2_lut_3_lut.init = 16'h4040;
    LUT4 i2634_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(clk_p), .D(sys_rst_n_c), 
         .Z(sys_clk_c_enable_26)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(200[4:9])
    defparam i2634_3_lut_4_lut.init = 16'h0400;
    FD1P3AX state_back_i0_i0 (.D(n1496), .SP(sys_clk_c_enable_19), .CK(sys_clk_c), 
            .Q(state_back[0]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    CCU2D add_13_5 (.A0(run_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(run_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3442), .COUT(n3443), .S0(n48), .S1(n47));   // c:/users/argon/desktop/verilog/test_bink/main.v(183[36:48])
    defparam add_13_5.INIT0 = 16'h5aaa;
    defparam add_13_5.INIT1 = 16'h5aaa;
    defparam add_13_5.INJECT1_0 = "NO";
    defparam add_13_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n658), .D(n5), 
         .Z(n3585)) /* synthesis lut_function=(A (B+(D))+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(200[4:9])
    defparam i1_4_lut_4_lut.init = 16'hff8c;
    CCU2D add_13_3 (.A0(run_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(run_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3441), .COUT(n3442), .S0(n50), .S1(n49));   // c:/users/argon/desktop/verilog/test_bink/main.v(183[36:48])
    defparam add_13_3.INIT0 = 16'h5aaa;
    defparam add_13_3.INIT1 = 16'h5aaa;
    defparam add_13_3.INJECT1_0 = "NO";
    defparam add_13_3.INJECT1_1 = "NO";
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    LUT4 i2644_2_lut_rep_29 (.A(state[0]), .B(state[1]), .Z(sys_clk_c_enable_55)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i2644_2_lut_rep_29.init = 16'h2222;
    FD1P3AX blink_77 (.D(blink_N_138), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .Q(blink_c));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam blink_77.GSR = "DISABLED";
    LUT4 i2639_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n3777), .D(sys_rst_n_c), 
         .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i2639_3_lut_4_lut.init = 16'h0200;
    divide divide_1ms (.GND_net(GND_net), .clk_p(clk_p), .sys_clk_c(sys_clk_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(134[8] 140[2])
    OB blink_pad (.I(blink_c), .O(blink));   // c:/users/argon/desktop/verilog/test_bink/main.v(10[21:26])
    FD1P3AX delay_cnt_i0_i15 (.D(n162), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[15]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i15.GSR = "DISABLED";
    LUT4 i11_3_lut_4_lut (.A(run_cnt[1]), .B(n3780), .C(run_cnt[0]), .D(n51), 
         .Z(run_cnt_7__N_87[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i11_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX delay_cnt_i0_i14 (.D(n163), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[14]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i14.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i13 (.D(n164), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[13]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i13.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i12 (.D(n165), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[12]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i12.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i11 (.D(n166), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[11]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i11.GSR = "DISABLED";
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/test_bink/main.v(9[18:22])
    OB led_pad (.I(GND_net), .O(led));   // c:/users/argon/desktop/verilog/test_bink/main.v(8[17:20])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/test_bink/main.v(7[21:29])
    FD1P3AX delay_cnt_i0_i10 (.D(n167), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[10]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i10.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i9 (.D(n168), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[9]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i9.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i8 (.D(n169), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[8]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i8.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i7 (.D(n170), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[7]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i7.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i6 (.D(n171), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[6]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i6.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i5 (.D(n172), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[5]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i5.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i4 (.D(n173), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[4]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i4.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i3 (.D(n174), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[3]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i3.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i2 (.D(n175), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[2]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i2.GSR = "DISABLED";
    FD1P3AX delay_cnt_i0_i1 (.D(n176), .SP(sys_clk_c_enable_48), .CK(sys_clk_c), 
            .Q(delay_cnt[1]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam delay_cnt_i0_i1.GSR = "DISABLED";
    FD1P3AX run_cnt_i7 (.D(n3878), .SP(sys_clk_c_enable_49), .CK(sys_clk_c), 
            .Q(run_cnt[7]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i7.GSR = "ENABLED";
    FD1P3AX run_cnt_i6 (.D(n3878), .SP(sys_clk_c_enable_50), .CK(sys_clk_c), 
            .Q(run_cnt[6]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i6.GSR = "ENABLED";
    FD1P3AX run_cnt_i5 (.D(n3878), .SP(sys_clk_c_enable_51), .CK(sys_clk_c), 
            .Q(run_cnt[5]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i5.GSR = "ENABLED";
    FD1P3AX run_cnt_i4 (.D(n3878), .SP(sys_clk_c_enable_52), .CK(sys_clk_c), 
            .Q(run_cnt[4]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i4.GSR = "ENABLED";
    FD1P3AX run_cnt_i3 (.D(n3878), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(run_cnt[3]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i3.GSR = "ENABLED";
    FD1P3AX run_cnt_i2 (.D(n3878), .SP(sys_clk_c_enable_54), .CK(sys_clk_c), 
            .Q(run_cnt[2]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i2.GSR = "ENABLED";
    FD1P3AX run_cnt_i1 (.D(run_cnt_7__N_87[1]), .SP(sys_clk_c_enable_55), 
            .CK(sys_clk_c), .Q(run_cnt[1]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam run_cnt_i1.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(n3585), .CK(sys_clk_c), .Q(state[1]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(run_cnt[2]), .B(run_cnt[3]), .C(run_cnt[4]), .D(run_cnt[5]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    CCU2D add_13_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(run_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3441), .S1(n51));   // c:/users/argon/desktop/verilog/test_bink/main.v(183[36:48])
    defparam add_13_1.INIT0 = 16'hF000;
    defparam add_13_1.INIT1 = 16'h5555;
    defparam add_13_1.INJECT1_0 = "NO";
    defparam add_13_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_19 (.A(delay_cnt[7]), .B(delay_cnt[6]), .C(n3785), 
         .Z(n3779)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_19.init = 16'h8080;
    LUT4 i3_4_lut_3_lut_4_lut (.A(state[0]), .B(run_cnt[1]), .C(n3780), 
         .D(run_cnt[0]), .Z(n5)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(200[4:9])
    defparam i3_4_lut_3_lut_4_lut.init = 16'h0200;
    FD1P3AX state_i0 (.D(state_7__N_1[0]), .SP(sys_clk_c_enable_61), .CK(sys_clk_c), 
            .Q(state[0]));   // c:/users/argon/desktop/verilog/test_bink/main.v(166[7] 212[5])
    defparam state_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(sys_clk_c_enable_55), .B(n49), .C(n3780), 
         .D(run_cnt[1]), .Z(sys_clk_c_enable_54)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_14 (.A(sys_clk_c_enable_55), .B(n44), 
         .C(n3780), .D(run_cnt[1]), .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_14.init = 16'h0008;
    CCU2D add_352_17 (.A0(n1921), .B0(n3779), .C0(delay_cnt[15]), .D0(clk_p), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3506), 
          .S0(n162));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_17.INIT0 = 16'hf010;
    defparam add_352_17.INIT1 = 16'h0000;
    defparam add_352_17.INJECT1_0 = "NO";
    defparam add_352_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_15 (.A(sys_clk_c_enable_55), .B(n48), 
         .C(n3780), .D(run_cnt[1]), .Z(sys_clk_c_enable_53)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_15.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_16 (.A(sys_clk_c_enable_55), .B(n45), 
         .C(n3780), .D(run_cnt[1]), .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_16.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_17 (.A(sys_clk_c_enable_55), .B(n47), 
         .C(n3780), .D(run_cnt[1]), .Z(sys_clk_c_enable_52)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_17.init = 16'h0008;
    LUT4 run_cnt_0__bdd_4_lut (.A(run_cnt[0]), .B(n50), .C(run_cnt[1]), 
         .D(n3780), .Z(run_cnt_7__N_87[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;
    defparam run_cnt_0__bdd_4_lut.init = 16'hf0ac;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_18 (.A(sys_clk_c_enable_55), .B(n46), 
         .C(n3780), .D(run_cnt[1]), .Z(sys_clk_c_enable_51)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(177[4:7])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_18.init = 16'h0008;
    LUT4 i5_3_lut_rep_20 (.A(run_cnt[6]), .B(n10), .C(run_cnt[7]), .Z(n3780)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_rep_20.init = 16'hfefe;
    LUT4 i1688_2_lut_3_lut (.A(run_cnt[1]), .B(n3780), .C(run_cnt[0]), 
         .Z(n1496)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1688_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_rep_17 (.A(run_cnt[1]), .B(n3780), .C(run_cnt[0]), .Z(n3777)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i1_3_lut_rep_17.init = 16'heded;
    CCU2D add_352_15 (.A0(n1921), .B0(n3779), .C0(delay_cnt[13]), .D0(clk_p), 
          .A1(n1921), .B1(n3779), .C1(delay_cnt[14]), .D1(clk_p), .CIN(n3505), 
          .COUT(n3506), .S0(n164), .S1(n163));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_15.INIT0 = 16'hf010;
    defparam add_352_15.INIT1 = 16'hf010;
    defparam add_352_15.INJECT1_0 = "NO";
    defparam add_352_15.INJECT1_1 = "NO";
    CCU2D add_352_13 (.A0(n1921), .B0(n3779), .C0(delay_cnt[11]), .D0(clk_p), 
          .A1(n1921), .B1(n3779), .C1(delay_cnt[12]), .D1(clk_p), .CIN(n3504), 
          .COUT(n3505), .S0(n166), .S1(n165));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_13.INIT0 = 16'hf010;
    defparam add_352_13.INIT1 = 16'hf010;
    defparam add_352_13.INJECT1_0 = "NO";
    defparam add_352_13.INJECT1_1 = "NO";
    LUT4 i722_2_lut_4_lut (.A(run_cnt[1]), .B(n3780), .C(run_cnt[0]), 
         .D(state[0]), .Z(n1652)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i722_2_lut_4_lut.init = 16'hed00;
    LUT4 i202_2_lut_3_lut (.A(n3779), .B(n1921), .C(clk_p), .Z(n658)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i202_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i7_4_lut (.A(delay_cnt[15]), .B(n14), .C(n10_adj_517), .D(delay_cnt[9]), 
         .Z(n1921)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D add_352_11 (.A0(n1921), .B0(n3779), .C0(delay_cnt[9]), .D0(clk_p), 
          .A1(n1921), .B1(n3779), .C1(delay_cnt[10]), .D1(clk_p), .CIN(n3503), 
          .COUT(n3504), .S0(n168), .S1(n167));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_11.INIT0 = 16'hf010;
    defparam add_352_11.INIT1 = 16'hf010;
    defparam add_352_11.INJECT1_0 = "NO";
    defparam add_352_11.INJECT1_1 = "NO";
    CCU2D add_352_9 (.A0(n1921), .B0(n3779), .C0(delay_cnt[7]), .D0(clk_p), 
          .A1(n1921), .B1(n3779), .C1(delay_cnt[8]), .D1(clk_p), .CIN(n3502), 
          .COUT(n3503), .S0(n170), .S1(n169));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_9.INIT0 = 16'hf010;
    defparam add_352_9.INIT1 = 16'hf010;
    defparam add_352_9.INJECT1_0 = "NO";
    defparam add_352_9.INJECT1_1 = "NO";
    CCU2D add_352_7 (.A0(n1921), .B0(n3779), .C0(delay_cnt[5]), .D0(clk_p), 
          .A1(n4), .B1(n1921), .C1(clk_p), .D1(delay_cnt[6]), .CIN(n3501), 
          .COUT(n3502), .S0(n172), .S1(n171));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_7.INIT0 = 16'hf010;
    defparam add_352_7.INIT1 = 16'hf100;
    defparam add_352_7.INJECT1_0 = "NO";
    defparam add_352_7.INJECT1_1 = "NO";
    CCU2D add_352_5 (.A0(n1921), .B0(n3779), .C0(delay_cnt[3]), .D0(clk_p), 
          .A1(n1921), .B1(n3779), .C1(delay_cnt[4]), .D1(clk_p), .CIN(n3500), 
          .COUT(n3501), .S0(n174), .S1(n173));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_5.INIT0 = 16'hf010;
    defparam add_352_5.INIT1 = 16'hf010;
    defparam add_352_5.INJECT1_0 = "NO";
    defparam add_352_5.INJECT1_1 = "NO";
    CCU2D add_13_9 (.A0(run_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3444), 
          .S0(n44));   // c:/users/argon/desktop/verilog/test_bink/main.v(183[36:48])
    defparam add_13_9.INIT0 = 16'h5aaa;
    defparam add_13_9.INIT1 = 16'h0000;
    defparam add_13_9.INJECT1_0 = "NO";
    defparam add_13_9.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(delay_cnt[12]), .B(delay_cnt[14]), .C(delay_cnt[10]), 
         .D(delay_cnt[8]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D add_352_3 (.A0(n1921), .B0(n3779), .C0(delay_cnt[1]), .D0(clk_p), 
          .A1(n1921), .B1(n3779), .C1(delay_cnt[2]), .D1(clk_p), .CIN(n3499), 
          .COUT(n3500), .S0(n176), .S1(n175));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_3.INIT0 = 16'hf010;
    defparam add_352_3.INIT1 = 16'hf010;
    defparam add_352_3.INJECT1_0 = "NO";
    defparam add_352_3.INJECT1_1 = "NO";
    CCU2D add_352_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_cnt[0]), .B1(n658), .C1(clk_p), .D1(GND_net), .COUT(n3499), 
          .S1(n177));   // c:/users/argon/desktop/verilog/test_bink/main.v(205[10] 209[8])
    defparam add_352_1.INIT0 = 16'hF000;
    defparam add_352_1.INIT1 = 16'hd2d2;
    defparam add_352_1.INJECT1_0 = "NO";
    defparam add_352_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(delay_cnt[13]), .B(delay_cnt[11]), .Z(n10_adj_517)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    uart_send u_uart_send (.uart_tx_busy(uart_tx_busy), .tx_ready(tx_ready), 
            .send_en_N_292(send_en_N_292), .sys_clk_c(sys_clk_c), .uart_send_en(uart_send_en), 
            .uart_txd_c(uart_txd_c), .GND_net(GND_net), .uart_send_data({uart_send_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(90[1] 98[6])
    CCU2D add_13_7 (.A0(run_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(run_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3443), .COUT(n3444), .S0(n46), .S1(n45));   // c:/users/argon/desktop/verilog/test_bink/main.v(183[36:48])
    defparam add_13_7.INIT0 = 16'h5aaa;
    defparam add_13_7.INIT1 = 16'h5aaa;
    defparam add_13_7.INJECT1_0 = "NO";
    defparam add_13_7.INJECT1_1 = "NO";
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/test_bink/main.v(3[21:30])
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/test_bink/main.v(4[21:29])
    IB switch_1_pad (.I(switch_1), .O(switch_1_c));   // c:/users/argon/desktop/verilog/test_bink/main.v(5[15:23])
    uart_recv u_uart_recv (.sys_clk_c(sys_clk_c), .uart_recv_done(uart_recv_done), 
            .uart_rxd_c(uart_rxd_c), .GND_net(GND_net), .uart_recv_data({uart_recv_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(77[1] 84[6])
    uart_loop u_uart_loop (.uart_send_data({uart_send_data}), .sys_clk_c(sys_clk_c), 
            .uart_recv_data({uart_recv_data}), .tx_ready(tx_ready), .uart_tx_busy(uart_tx_busy), 
            .uart_recv_done(uart_recv_done), .uart_send_en(uart_send_en), 
            .send_en_N_292(send_en_N_292), .n3878(n3878)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(101[11] 111[6])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    LUT4 m1_lut (.Z(n3878)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    Beeper beeper (.beep_c(beep_c), .sys_clk_c(sys_clk_c), .GND_net(GND_net), 
           .tone_en(tone_en)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(142[8] 149[2])
    
endmodule
//
// Verilog Description of module divide
//

module divide (GND_net, clk_p, sys_clk_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_p;
    input sys_clk_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    
    wire n3474;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/verilog/test_bink/clock.v(18[13:18])
    wire [31:0]n101;
    
    wire n3475, clk_p_N_468, n3496, n3497, n3488, n3489, n3473, 
        n3487;
    wire [31:0]n200;
    
    wire n2167, n3495, n3486, n3472, n3471, n3494, n3470, n3469, 
        n3468, n27, n3467, n38, n32_adj_516, n40, n3493, n3492, 
        n3466, n3465, n3464, n18, n3491, n3490, n3463, n36, 
        n3462, n28, n3461, n34, n24, n3681, n19, n17, n3498, 
        n3476;
    
    CCU2D cnt_p_488_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3474), .COUT(n3475), .S0(n101[27]), .S1(n101[28]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_29.INJECT1_1 = "NO";
    FD1S3AX clk_p_35 (.D(clk_p_N_468), .CK(sys_clk_c), .Q(clk_p)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=134, LSE_RLINE=140 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(40[9] 43[14])
    defparam clk_p_35.GSR = "ENABLED";
    CCU2D add_2460_24 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3496), .COUT(n3497));
    defparam add_2460_24.INIT0 = 16'h5555;
    defparam add_2460_24.INIT1 = 16'h5555;
    defparam add_2460_24.INJECT1_0 = "NO";
    defparam add_2460_24.INJECT1_1 = "NO";
    CCU2D add_2460_8 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3488), .COUT(n3489));
    defparam add_2460_8.INIT0 = 16'h5555;
    defparam add_2460_8.INIT1 = 16'h5aaa;
    defparam add_2460_8.INJECT1_0 = "NO";
    defparam add_2460_8.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3473), .COUT(n3474), .S0(n101[25]), .S1(n101[26]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_27.INJECT1_1 = "NO";
    CCU2D add_2460_6 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3487), .COUT(n3488));
    defparam add_2460_6.INIT0 = 16'h5aaa;
    defparam add_2460_6.INIT1 = 16'h5aaa;
    defparam add_2460_6.INJECT1_0 = "NO";
    defparam add_2460_6.INJECT1_1 = "NO";
    FD1S3IX cnt_p_488__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n2167), .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i0.GSR = "ENABLED";
    CCU2D add_2460_22 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3495), .COUT(n3496));
    defparam add_2460_22.INIT0 = 16'h5555;
    defparam add_2460_22.INIT1 = 16'h5555;
    defparam add_2460_22.INJECT1_0 = "NO";
    defparam add_2460_22.INJECT1_1 = "NO";
    CCU2D add_2460_4 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3486), 
          .COUT(n3487));
    defparam add_2460_4.INIT0 = 16'h5555;
    defparam add_2460_4.INIT1 = 16'h5aaa;
    defparam add_2460_4.INJECT1_0 = "NO";
    defparam add_2460_4.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3472), .COUT(n3473), .S0(n101[23]), .S1(n101[24]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3471), .COUT(n3472), .S0(n101[21]), .S1(n101[22]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_23.INJECT1_1 = "NO";
    CCU2D add_2460_20 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3494), .COUT(n3495));
    defparam add_2460_20.INIT0 = 16'h5555;
    defparam add_2460_20.INIT1 = 16'h5555;
    defparam add_2460_20.INJECT1_0 = "NO";
    defparam add_2460_20.INJECT1_1 = "NO";
    CCU2D add_2460_2 (.A0(cnt_p[5]), .B0(cnt_p[4]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3486));
    defparam add_2460_2.INIT0 = 16'h7000;
    defparam add_2460_2.INIT1 = 16'h5aaa;
    defparam add_2460_2.INJECT1_0 = "NO";
    defparam add_2460_2.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3470), .COUT(n3471), .S0(n101[19]), .S1(n101[20]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3469), .COUT(n3470), .S0(n101[17]), .S1(n101[18]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3468), .COUT(n3469), .S0(n101[15]), .S1(n101[16]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_17.INJECT1_1 = "NO";
    LUT4 i6_2_lut (.A(cnt_p[28]), .B(cnt_p[12]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i6_2_lut.init = 16'heeee;
    CCU2D cnt_p_488_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3467), .COUT(n3468), .S0(n101[13]), .S1(n101[14]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_15.INJECT1_1 = "NO";
    LUT4 i19_4_lut (.A(cnt_p[5]), .B(n38), .C(n32_adj_516), .D(cnt_p[20]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    CCU2D add_2460_18 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3493), .COUT(n3494));
    defparam add_2460_18.INIT0 = 16'h5555;
    defparam add_2460_18.INIT1 = 16'h5555;
    defparam add_2460_18.INJECT1_0 = "NO";
    defparam add_2460_18.INJECT1_1 = "NO";
    CCU2D add_2460_16 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3492), .COUT(n3493));
    defparam add_2460_16.INIT0 = 16'h5555;
    defparam add_2460_16.INIT1 = 16'h5555;
    defparam add_2460_16.INJECT1_0 = "NO";
    defparam add_2460_16.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3466), .COUT(n3467), .S0(n101[11]), .S1(n101[12]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3465), .COUT(n3466), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3464), .COUT(n3465), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_9.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(cnt_p[13]), .B(n200[2]), .C(n200[3]), .D(n200[0]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    CCU2D add_2460_14 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3491), .COUT(n3492));
    defparam add_2460_14.INIT0 = 16'h5555;
    defparam add_2460_14.INIT1 = 16'h5555;
    defparam add_2460_14.INJECT1_0 = "NO";
    defparam add_2460_14.INJECT1_1 = "NO";
    CCU2D add_2460_12 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3490), .COUT(n3491));
    defparam add_2460_12.INIT0 = 16'h5555;
    defparam add_2460_12.INIT1 = 16'h5555;
    defparam add_2460_12.INJECT1_0 = "NO";
    defparam add_2460_12.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3463), .COUT(n3464), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_7.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(cnt_p[8]), .B(cnt_p[25]), .C(cnt_p[15]), .D(cnt_p[26]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i15_4_lut.init = 16'hfffe;
    CCU2D cnt_p_488_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3462), .COUT(n3463), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_5.INJECT1_1 = "NO";
    FD1S3IX cnt_p_488__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i31.GSR = "ENABLED";
    LUT4 i7_2_lut (.A(cnt_p[17]), .B(cnt_p[24]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i7_2_lut.init = 16'heeee;
    CCU2D cnt_p_488_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3461), .COUT(n3462), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_p_488__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n2167), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n2167), .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n2167), .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n2167), .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i7.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(cnt_p[29]), .B(n34), .C(n24), .D(cnt_p[14]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i17_4_lut.init = 16'hfffe;
    FD1S3IX cnt_p_488__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n2167), .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n2167), .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n2167), .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n2167), .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n2167), .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_488__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n2167), .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488__i1.GSR = "ENABLED";
    LUT4 i11_3_lut (.A(cnt_p[22]), .B(cnt_p[21]), .C(cnt_p[31]), .Z(n32_adj_516)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i2630_4_lut (.A(n3681), .B(n19), .C(n17), .D(n18), .Z(n2167)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i2630_4_lut.init = 16'h8000;
    LUT4 i2629_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(n3681)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i2629_4_lut.init = 16'h0001;
    CCU2D cnt_p_488_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3461), .S1(n101[0]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_488_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_488_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_1.INJECT1_1 = "NO";
    LUT4 i13_4_lut (.A(cnt_p[16]), .B(cnt_p[27]), .C(cnt_p[23]), .D(cnt_p[30]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(cnt_p[11]), .B(n200[1]), .C(cnt_p[10]), .D(cnt_p[4]), 
         .Z(n19)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i6_3_lut (.A(cnt_p[9]), .B(cnt_p[6]), .C(cnt_p[7]), .Z(n17)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6_3_lut.init = 16'h8080;
    LUT4 i3_2_lut (.A(cnt_p[19]), .B(cnt_p[18]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D add_2460_28 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3498), 
          .S1(clk_p_N_468));
    defparam add_2460_28.INIT0 = 16'h5555;
    defparam add_2460_28.INIT1 = 16'h0000;
    defparam add_2460_28.INJECT1_0 = "NO";
    defparam add_2460_28.INJECT1_1 = "NO";
    CCU2D add_2460_26 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3497), .COUT(n3498));
    defparam add_2460_26.INIT0 = 16'h5555;
    defparam add_2460_26.INIT1 = 16'h5555;
    defparam add_2460_26.INJECT1_0 = "NO";
    defparam add_2460_26.INJECT1_1 = "NO";
    CCU2D add_2460_10 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3489), .COUT(n3490));
    defparam add_2460_10.INIT0 = 16'h5555;
    defparam add_2460_10.INIT1 = 16'h5555;
    defparam add_2460_10.INJECT1_0 = "NO";
    defparam add_2460_10.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3476), .S0(n101[31]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_488_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_488_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3475), .COUT(n3476), .S0(n101[29]), .S1(n101[30]));   // c:/users/argon/desktop/verilog/test_bink/clock.v(32[16:23])
    defparam cnt_p_488_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_488_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_488_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_488_add_4_31.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_send
//

module uart_send (uart_tx_busy, tx_ready, send_en_N_292, sys_clk_c, 
            uart_send_en, uart_txd_c, GND_net, uart_send_data) /* synthesis syn_module_defined=1 */ ;
    output uart_tx_busy;
    input tx_ready;
    output send_en_N_292;
    input sys_clk_c;
    input uart_send_en;
    output uart_txd_c;
    input GND_net;
    input [7:0]uart_send_data;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    
    wire n3786, n3611, n3634, uart_en_d1, uart_en_d0, n2157;
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(44[12:19])
    
    wire n2155;
    wire [15:0]n466;
    
    wire sys_clk_c_enable_28, n3784, uart_tx_busy_N_274, n2139, n2134, 
        n2130, n2128, n2126, n2124, n2108, n3788, n2431, n4, 
        n2166;
    wire [15:0]n69;
    
    wire sys_clk_c_enable_29, n1717, n3460, n3459, n3458, n3457, 
        n1892, n1893, n4_adj_515, n10, n1671, n1890;
    wire [0:0]n907;
    
    wire n6, n3617, n3456, n3455, n3454, n1716, n3453, n15, 
        n14, n3659, n3668;
    
    LUT4 tx_ready_I_0_28_2_lut_2_lut (.A(uart_tx_busy), .B(tx_ready), .Z(send_en_N_292)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_ready_I_0_28_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_26 (.A(clk_cnt[4]), .B(clk_cnt[3]), .Z(n3786)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    defparam i1_2_lut_rep_26.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(n3611), .Z(n3634)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(64[10] 67[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n2157), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n2155), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_send_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(64[10] 67[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n466[14]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[15]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n466[13]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[14]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n466[12]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[13]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n466[11]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[12]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n466[10]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[11]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_274), .SP(sys_clk_c_enable_28), 
            .CD(n3784), .CK(sys_clk_c), .Q(n466[10]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n466[8]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_274));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n466[7]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[8]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n466[6]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[7]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n466[5]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n466[4]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[5]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n466[3]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n466[2]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[3]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n466[1]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n466[0]), .SP(sys_clk_c_enable_28), .CD(n3784), 
            .CK(sys_clk_c), .Q(n466[1]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1S3AX tx_data_i7 (.D(n2139), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i7.GSR = "ENABLED";
    FD1S3AX tx_data_i6 (.D(n2134), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n2130), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n2128), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n2126), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n2124), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n2108), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i1.GSR = "ENABLED";
    LUT4 en_flag_I_0_2_lut_rep_28 (.A(uart_en_d1), .B(uart_en_d0), .Z(n3788)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(56[18:44])
    defparam en_flag_I_0_2_lut_rep_28.init = 16'h4444;
    LUT4 i1728_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(n2431), 
         .D(uart_tx_busy), .Z(n2157)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(56[18:44])
    defparam i1728_3_lut_4_lut.init = 16'hf444;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX clk_cnt_487__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i0.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n466[15]), .SP(sys_clk_c_enable_28), .PD(n3784), 
            .CK(sys_clk_c), .Q(n466[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    FD1P3JX uart_txd_47 (.D(n1717), .SP(sys_clk_c_enable_29), .PD(n3784), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=98 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(123[10] 138[26])
    defparam uart_txd_47.GSR = "ENABLED";
    CCU2D clk_cnt_487_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3460), .S0(n69[15]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_487_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_487_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3459), .COUT(n3460), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_487_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_487_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3458), .COUT(n3459), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_487_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_487_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3457), .COUT(n3458), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_487_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_11.INJECT1_1 = "NO";
    LUT4 i939_3_lut (.A(n1892), .B(tx_data[2]), .C(n466[3]), .Z(n1893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i939_3_lut.init = 16'hcaca;
    LUT4 i938_3_lut (.A(tx_data[4]), .B(tx_data[3]), .C(n466[4]), .Z(n1892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i938_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(clk_cnt[2]), .B(clk_cnt[5]), .C(n3786), .D(n4), 
         .Z(n4_adj_515)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam i1_4_lut.init = 16'hc8c0;
    LUT4 i2624_3_lut (.A(n466[15]), .B(n10), .C(n466[13]), .Z(sys_clk_c_enable_29)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i2624_3_lut.init = 16'h0101;
    LUT4 i2619_4_lut (.A(n1671), .B(n1890), .C(n466[1]), .D(n466[2]), 
         .Z(n907[0])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i2619_4_lut.init = 16'hccca;
    LUT4 i738_3_lut (.A(n6), .B(tx_data[5]), .C(n466[6]), .Z(n1671)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i738_3_lut.init = 16'hc5c5;
    LUT4 i3_4_lut (.A(clk_cnt[0]), .B(uart_tx_busy_N_274), .C(clk_cnt[2]), 
         .D(n3617), .Z(n2431)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    CCU2D clk_cnt_487_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3456), .COUT(n3457), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_487_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_9.INJECT1_1 = "NO";
    LUT4 i937_3_lut (.A(tx_data[1]), .B(tx_data[0]), .C(n466[1]), .Z(n1890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i937_3_lut.init = 16'hcaca;
    LUT4 i1472_1_lut_rep_24 (.A(uart_tx_busy), .Z(n3784)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1472_1_lut_rep_24.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(uart_tx_busy), .B(n4_adj_515), .C(clk_cnt[6]), 
         .D(n3611), .Z(n2166)) /* synthesis lut_function=((B (C+(D))+!B (D))+!A) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i2_4_lut_4_lut.init = 16'hffd5;
    CCU2D clk_cnt_487_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3455), .COUT(n3456), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_487_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_487_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3454), .COUT(n3455), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_487_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_5.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n466[14]), .B(n466[12]), .C(n466[11]), .D(n466[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_13 (.A(clk_cnt[5]), .B(n3634), .C(clk_cnt[1]), .D(clk_cnt[6]), 
         .Z(n3617)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut_adj_13.init = 16'hdfff;
    LUT4 i14_4_lut (.A(tx_data[7]), .B(tx_data[6]), .C(n466[7]), .D(n466[8]), 
         .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(44[12:19])
    defparam i14_4_lut.init = 16'h3530;
    LUT4 i1744_2_lut (.A(n1716), .B(n466[0]), .Z(n1717)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i1744_2_lut.init = 16'h2222;
    CCU2D clk_cnt_487_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3453), .COUT(n3454), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_487_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_487_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_487_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3453), .S1(n69[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_487_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_487_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_487_add_4_1.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[10]), .C(n14), .D(clk_cnt[11]), 
         .Z(n3611)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i2632_4_lut (.A(n466[1]), .B(n466[2]), .C(n466[3]), .D(n3659), 
         .Z(n3668)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i2632_4_lut.init = 16'hefee;
    LUT4 i2605_2_lut (.A(n466[4]), .B(n466[5]), .Z(n3659)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i2605_2_lut.init = 16'h1111;
    LUT4 i6_4_lut (.A(clk_cnt[7]), .B(clk_cnt[8]), .C(clk_cnt[14]), .D(clk_cnt[9]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[15]), .C(clk_cnt[13]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    FD1S3IX clk_cnt_487__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n2166), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i15.GSR = "ENABLED";
    LUT4 i1171_4_lut (.A(tx_data[6]), .B(uart_send_data[6]), .C(n3788), 
         .D(n2431), .Z(n2134)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1171_4_lut.init = 16'hcac0;
    FD1S3IX clk_cnt_487__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n2166), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n2166), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n2166), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n2166), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n2166), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_487__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n2166), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_487__i1.GSR = "ENABLED";
    LUT4 i1167_4_lut (.A(n2431), .B(uart_send_data[5]), .C(n3788), .D(tx_data[5]), 
         .Z(n2130)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1167_4_lut.init = 16'hcac0;
    LUT4 i1165_4_lut (.A(n2431), .B(uart_send_data[4]), .C(n3788), .D(tx_data[4]), 
         .Z(n2128)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1165_4_lut.init = 16'hcac0;
    LUT4 i2636_3_lut (.A(n3617), .B(clk_cnt[2]), .C(clk_cnt[0]), .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam i2636_3_lut.init = 16'h4040;
    LUT4 i1192_4_lut (.A(n2431), .B(uart_send_data[0]), .C(n3788), .D(tx_data[0]), 
         .Z(n2155)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1192_4_lut.init = 16'hcac0;
    LUT4 i1163_4_lut (.A(n2431), .B(uart_send_data[3]), .C(n3788), .D(tx_data[3]), 
         .Z(n2126)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1163_4_lut.init = 16'hcac0;
    LUT4 i1161_4_lut (.A(n2431), .B(uart_send_data[2]), .C(n3788), .D(tx_data[2]), 
         .Z(n2124)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1161_4_lut.init = 16'hcac0;
    PFUMX i773 (.BLUT(n1893), .ALUT(n907[0]), .C0(n3668), .Z(n1716));
    LUT4 i1145_4_lut (.A(n2431), .B(uart_send_data[1]), .C(n3788), .D(tx_data[1]), 
         .Z(n2108)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1145_4_lut.init = 16'hcac0;
    LUT4 i1176_4_lut (.A(tx_data[7]), .B(uart_send_data[7]), .C(n3788), 
         .D(n2431), .Z(n2139)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i1176_4_lut.init = 16'hcac0;
    
endmodule
//
// Verilog Description of module uart_recv
//

module uart_recv (sys_clk_c, uart_recv_done, uart_rxd_c, GND_net, uart_recv_data) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output uart_recv_done;
    input uart_rxd_c;
    input GND_net;
    output [7:0]uart_recv_data;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    
    wire uart_rxd_d1, uart_rxd_d0, rx_flag, n2137, uart_data_7__N_206;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(40[12:19])
    
    wire n6, n3451;
    wire [15:0]n69;
    
    wire n3452, n2161;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(43[12:18])
    
    wire n2020, n3651, n2165;
    wire [15:0]n557;
    
    wire sys_clk_c_enable_76, n1429, n3640, n2035, n3637, n2047, 
        n280;
    wire [7:0]n27;
    
    wire n3450, n3790, n3614, n15, n14, n3778, n3449, n3448, 
        n3447, n3521, sys_clk_c_enable_60, n2026, n2032, n2038, 
        n2041, n2044, n2698, n3631, n3782, n281, n3636, n3627, 
        n3639, rx_flag_N_207, n3615, n3783, n3776, n3781, n3446, 
        n3445;
    
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n2137), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_206), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    CCU2D clk_cnt_485_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3451), .COUT(n3452), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_485_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_15.INJECT1_1 = "NO";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    LUT4 i2628_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n2020), .D(n3651), 
         .Z(n2165)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(92[9:26])
    defparam i2628_4_lut.init = 16'hfdf5;
    FD1S3IX clk_cnt_485__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i0.GSR = "ENABLED";
    FD1P3JX rx_cnt_FSM_i0 (.D(n557[15]), .SP(sys_clk_c_enable_76), .PD(n1429), 
            .CK(sys_clk_c), .Q(n557[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i312_4_lut (.A(uart_rxd_d1), .B(n3640), .C(n557[6]), .D(rxdata[5]), 
         .Z(n2035)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i312_4_lut.init = 16'heca0;
    LUT4 i314_4_lut (.A(uart_rxd_d1), .B(n3637), .C(n557[2]), .D(rxdata[1]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i314_4_lut.init = 16'heca0;
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(n280), .C(n557[1]), .D(rxdata[0]), 
         .Z(n27[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i1_4_lut.init = 16'heca0;
    CCU2D clk_cnt_485_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3450), .COUT(n3451), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_485_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_30 (.A(n557[2]), .B(n557[7]), .Z(n3790)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_30.init = 16'heeee;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n2020), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n3614)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[13]), .C(n14), .D(clk_cnt[8]), 
         .Z(n2020)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(86[13:34])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_18_3_lut (.A(n557[2]), .B(n557[7]), .C(n557[4]), 
         .Z(n3778)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_18_3_lut.init = 16'hfefe;
    CCU2D clk_cnt_485_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3449), .COUT(n3450), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_485_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_485_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3448), .COUT(n3449), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_485_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_485_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3447), .COUT(n3448), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_485_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_7.INJECT1_1 = "NO";
    LUT4 i2597_4_lut (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n3521), .D(clk_cnt[3]), 
         .Z(n3651)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2597_4_lut.init = 16'hccc8;
    FD1P3IX rxdata__i7 (.D(n2026), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n2161), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(clk_cnt[14]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(86[13:34])
    defparam i6_4_lut.init = 16'hfffe;
    FD1P3IX rxdata__i6 (.D(n2032), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n2035), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n2038), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n2041), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n2044), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n2047), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1P3IX rxdata__i0 (.D(n27[0]), .SP(sys_clk_c_enable_60), .CD(n1429), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=77, LSE_RLINE=84 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n3521)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i2626_4_lut (.A(clk_cnt[0]), .B(clk_cnt[4]), .C(n2698), .D(n3614), 
         .Z(sys_clk_c_enable_76)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i2626_4_lut.init = 16'h0020;
    LUT4 i1741_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n2698)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1741_2_lut.init = 16'h8888;
    LUT4 i318_4_lut (.A(uart_rxd_d1), .B(n3631), .C(n557[5]), .D(rxdata[4]), 
         .Z(n2038)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i318_4_lut.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3778), .B(n3782), .C(n557[1]), .D(n557[5]), 
         .Z(n281)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[10]), .C(clk_cnt[11]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(86[13:34])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i308_4_lut (.A(uart_rxd_d1), .B(n3636), .C(n557[7]), .D(rxdata[6]), 
         .Z(n2032)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i308_4_lut.init = 16'heca0;
    LUT4 i320_4_lut (.A(uart_rxd_d1), .B(n3627), .C(n557[4]), .D(rxdata[3]), 
         .Z(n2041)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i320_4_lut.init = 16'heca0;
    LUT4 i310_4_lut (.A(uart_rxd_d1), .B(n3639), .C(n557[3]), .D(rxdata[2]), 
         .Z(n2044)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i310_4_lut.init = 16'heca0;
    LUT4 i508_1_lut (.A(rx_flag), .Z(n1429)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(70[10] 78[8])
    defparam i508_1_lut.init = 16'h5555;
    LUT4 i1174_4_lut (.A(uart_data_7__N_206), .B(rx_flag_N_207), .C(rx_flag), 
         .D(n3615), .Z(n2137)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(70[10] 78[8])
    defparam i1174_4_lut.init = 16'hfcdc;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_207)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(n557[5]), .B(n3783), .C(n3790), 
         .D(n3782), .Z(n3627)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'hfffe;
    LUT4 i1_2_lut_rep_22 (.A(n557[3]), .B(n557[6]), .Z(n3782)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_22.init = 16'heeee;
    LUT4 i1_2_lut_rep_16_3_lut_4_lut (.A(n557[3]), .B(n557[6]), .C(n3790), 
         .D(n557[4]), .Z(n3776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_16_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_23 (.A(n557[8]), .B(n557[1]), .Z(n3783)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_23.init = 16'heeee;
    LUT4 i1_2_lut_rep_21_3_lut (.A(n557[8]), .B(n557[1]), .C(n557[5]), 
         .Z(n3781)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_rep_21_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n3778), .B(n3782), .C(n557[8]), 
         .D(n557[5]), .Z(n280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'hfffe;
    CCU2D clk_cnt_485_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3446), .COUT(n3447), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_485_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_485_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3445), .COUT(n3446), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_485_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_485_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3445), .S1(n69[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_485_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_485_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(clk_cnt[0]), .B(n3614), .C(clk_cnt[4]), .D(n6), 
         .Z(n3615)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i4_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(n3781), .B(n3782), .C(n557[7]), 
         .D(n557[4]), .Z(n3637)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n3781), .B(n3782), .C(n557[2]), 
         .D(n557[4]), .Z(n3636)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hfffe;
    LUT4 i316_4_lut (.A(uart_rxd_d1), .B(n281), .C(n557[8]), .D(rxdata[7]), 
         .Z(n2026)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(39[12:23])
    defparam i316_4_lut.init = 16'heca0;
    FD1S3IX clk_cnt_485__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n2165), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n2165), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n2165), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n2165), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n2165), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n2165), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_485__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n2165), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485__i1.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n557[14]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[15]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(n557[4]), .B(n3790), .C(n3783), 
         .D(n3782), .Z(n3631)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'hfffe;
    FD1P3IX rx_cnt_FSM_i14 (.D(n557[13]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[14]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n557[12]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[13]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n557[11]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[12]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n557[10]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[11]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_206), .SP(sys_clk_c_enable_76), 
            .CD(n1429), .CK(sys_clk_c), .Q(n557[10]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n557[8]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(uart_data_7__N_206));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n557[7]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[8]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n557[6]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[7]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n557[5]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n557[4]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[5]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n557[3]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n557[2]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[3]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n557[1]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n557[0]), .SP(sys_clk_c_enable_76), .CD(n1429), 
            .CK(sys_clk_c), .Q(n557[1]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    CCU2D clk_cnt_485_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3452), .S0(n69[15]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_485_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_485_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_485_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_485_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(n557[5]), .B(n3776), .C(n3783), .D(n3615), 
         .Z(sys_clk_c_enable_60)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_3_lut_4_lut.init = 16'h00fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(n557[4]), .B(n3790), .C(n557[3]), 
         .D(n3781), .Z(n3640)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'hfffe;
    LUT4 i1198_1_lut (.A(uart_data_7__N_206), .Z(n2161)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1198_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(n557[4]), .B(n3790), .C(n557[6]), 
         .D(n3781), .Z(n3639)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module uart_loop
//

module uart_loop (uart_send_data, sys_clk_c, uart_recv_data, tx_ready, 
            uart_tx_busy, uart_recv_done, uart_send_en, send_en_N_292, 
            n3878) /* synthesis syn_module_defined=1 */ ;
    output [7:0]uart_send_data;
    input sys_clk_c;
    input [7:0]uart_recv_data;
    output tx_ready;
    input uart_tx_busy;
    input uart_recv_done;
    output uart_send_en;
    input send_en_N_292;
    input n3878;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    
    wire sys_clk_c_enable_30, recv_done_d1, recv_done_d0, tx_ready_N_295;
    
    FD1P3AX send_data_i0_i0 (.D(uart_recv_data[0]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i0.GSR = "ENABLED";
    LUT4 recv_done_flag_I_0_2_lut_rep_27 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_30)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(48[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_27.init = 16'h4444;
    LUT4 i1686_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(tx_ready_N_295)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(48[25:55])
    defparam i1686_3_lut_4_lut.init = 16'hf444;
    FD1S3AX recv_done_d1_23 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(56[10] 59[8])
    defparam recv_done_d1_23.GSR = "ENABLED";
    FD1S3AX tx_ready_24 (.D(tx_ready_N_295), .CK(sys_clk_c), .Q(tx_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam tx_ready_24.GSR = "ENABLED";
    FD1S3AX recv_done_d0_22 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(56[10] 59[8])
    defparam recv_done_d0_22.GSR = "ENABLED";
    FD1P3AX send_data_i0_i7 (.D(uart_recv_data[7]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i7.GSR = "ENABLED";
    FD1P3AX send_data_i0_i6 (.D(uart_recv_data[6]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i6.GSR = "ENABLED";
    FD1P3AX send_data_i0_i5 (.D(uart_recv_data[5]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i5.GSR = "ENABLED";
    FD1P3AX send_data_i0_i4 (.D(uart_recv_data[4]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i4.GSR = "ENABLED";
    FD1P3AX send_data_i0_i3 (.D(uart_recv_data[3]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i3.GSR = "ENABLED";
    FD1P3AX send_data_i0_i2 (.D(uart_recv_data[2]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i2.GSR = "ENABLED";
    FD1P3AX send_data_i0_i1 (.D(uart_recv_data[1]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=101, LSE_RLINE=111 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i1.GSR = "ENABLED";
    FD1P3IX send_en_25 (.D(n3878), .SP(send_en_N_292), .CD(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(uart_send_en));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_en_25.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Beeper
//

module Beeper (beep_c, sys_clk_c, GND_net, tone_en) /* synthesis syn_module_defined=1 */ ;
    output beep_c;
    input sys_clk_c;
    input GND_net;
    input tone_en;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/main.v(2[21:28])
    wire [17:0]n940;
    
    wire n30, piano_out_N_513;
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/test_bink/beep.v(64[12:20])
    
    wire n675;
    wire [17:0]n77;
    
    wire n3515, n959, n3514, n3513, n3485, n3512, n3511, n3510, 
        n3509, n3484, n3483, n3482, n3508, n3507, n3481, n3480, 
        n3479, n3478, n3477, n31, n28, n29, n34;
    
    LUT4 i12_4_lut (.A(n940[10]), .B(n940[4]), .C(n940[8]), .D(n940[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    FD1S3AX piano_out_20 (.D(piano_out_N_513), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=149 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(82[11] 86[5])
    defparam piano_out_20.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i0.GSR = "ENABLED";
    CCU2D add_342_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3515), 
          .S0(n940[17]), .S1(n959));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_19.INIT0 = 16'h5555;
    defparam add_342_19.INIT1 = 16'h0000;
    defparam add_342_19.INJECT1_0 = "NO";
    defparam add_342_19.INJECT1_1 = "NO";
    CCU2D add_342_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3514), .COUT(n3515), .S0(n940[15]), .S1(n940[16]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_17.INIT0 = 16'h5aaa;
    defparam add_342_17.INIT1 = 16'h5555;
    defparam add_342_17.INJECT1_0 = "NO";
    defparam add_342_17.INJECT1_1 = "NO";
    CCU2D add_342_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3513), .COUT(n3514), .S0(n940[13]), .S1(n940[14]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_15.INIT0 = 16'h5aaa;
    defparam add_342_15.INIT1 = 16'h5aaa;
    defparam add_342_15.INJECT1_0 = "NO";
    defparam add_342_15.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3485), .S0(n77[17]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_489_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_19.INJECT1_1 = "NO";
    CCU2D add_342_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3512), .COUT(n3513), .S0(n940[11]), .S1(n940[12]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_13.INIT0 = 16'h5aaa;
    defparam add_342_13.INIT1 = 16'h5aaa;
    defparam add_342_13.INJECT1_0 = "NO";
    defparam add_342_13.INJECT1_1 = "NO";
    CCU2D add_342_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3511), .COUT(n3512), .S0(n940[9]), .S1(n940[10]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_11.INIT0 = 16'h5aaa;
    defparam add_342_11.INIT1 = 16'h5aaa;
    defparam add_342_11.INJECT1_0 = "NO";
    defparam add_342_11.INJECT1_1 = "NO";
    LUT4 i219_2_lut (.A(n959), .B(tone_en), .Z(n675)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[11] 75[5])
    defparam i219_2_lut.init = 16'hbbbb;
    CCU2D add_342_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3510), .COUT(n3511), .S0(n940[7]), .S1(n940[8]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_9.INIT0 = 16'h5aaa;
    defparam add_342_9.INIT1 = 16'h5aaa;
    defparam add_342_9.INJECT1_0 = "NO";
    defparam add_342_9.INJECT1_1 = "NO";
    CCU2D add_342_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3509), .COUT(n3510), .S0(n940[5]), .S1(n940[6]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_7.INIT0 = 16'h5aaa;
    defparam add_342_7.INIT1 = 16'h5aaa;
    defparam add_342_7.INJECT1_0 = "NO";
    defparam add_342_7.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3484), .COUT(n3485), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3483), .COUT(n3484), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3482), .COUT(n3483), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_13.INJECT1_1 = "NO";
    CCU2D add_342_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3508), .COUT(n3509), .S0(n940[3]), .S1(n940[4]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_5.INIT0 = 16'h5aaa;
    defparam add_342_5.INIT1 = 16'h5aaa;
    defparam add_342_5.INJECT1_0 = "NO";
    defparam add_342_5.INJECT1_1 = "NO";
    CCU2D add_342_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3507), .COUT(n3508), .S0(n940[1]), .S1(n940[2]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_3.INIT0 = 16'h5aaa;
    defparam add_342_3.INIT1 = 16'h5aaa;
    defparam add_342_3.INJECT1_0 = "NO";
    defparam add_342_3.INJECT1_1 = "NO";
    CCU2D add_342_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3507), .S1(n940[0]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_342_1.INIT0 = 16'hF000;
    defparam add_342_1.INIT1 = 16'h5555;
    defparam add_342_1.INJECT1_0 = "NO";
    defparam add_342_1.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3481), .COUT(n3482), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_11.INJECT1_1 = "NO";
    FD1S3IX time_cnt_489__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i17.GSR = "ENABLED";
    CCU2D time_cnt_489_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3480), .COUT(n3481), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3479), .COUT(n3480), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_7.INJECT1_1 = "NO";
    FD1S3IX time_cnt_489__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n675), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_489__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n675), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489__i1.GSR = "ENABLED";
    CCU2D time_cnt_489_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3478), .COUT(n3479), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3477), .COUT(n3478), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_489_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_489_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_489_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3477), .S1(n77[0]));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_489_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_489_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_489_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_489_add_4_1.INJECT1_1 = "NO";
    LUT4 i13_4_lut (.A(n940[14]), .B(n940[17]), .C(n940[15]), .D(n940[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n940[12]), .B(n940[7]), .C(n940[0]), .D(n940[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_513)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n940[1]), .B(n940[6]), .C(n940[16]), .D(n940[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n940[5]), .C(n28), .D(n940[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    
endmodule
