// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Feb 21 00:23:48 2021
//
// Verilog Description of module top
//

module top (sys_clk, sys_rst_n, switch_1, uart_rxd, uart_txd, beep, 
            blink) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(1[8:11])
    input sys_clk;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    input switch_1;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    input uart_rxd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    output uart_txd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(8[21:29])
    output beep;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:25])
    output blink;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:26])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    
    wire GND_net, VCC_net, sys_rst_n_c, switch_1_c, uart_rxd_c, uart_txd_c, 
        beep_c, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(28[12:26])
    
    wire uart_send_en;
    wire [7:0]uart_send_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(30[13:27])
    
    wire uart_tx_busy, recv_done_d0, recv_done_d1;
    wire [4:0]music_note;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(43[17:27])
    wire [4:0]state;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(46[11:16])
    wire [2:0]state_back;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(47[12:22])
    wire [7:0]cnt_run;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(48[11:18])
    wire [15:0]cnt_delay;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(49[12:21])
    wire [15:0]music_delay;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(50[12:23])
    wire [8:0]music_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(56[11:20])
    
    wire n3668, n132, n133, n134, n135, n141, n142, n143, n144, 
        n145, n146, n147, n148, n2884, n284, n299, n302, n303, 
        n304, n305, n306, n307, n308, n309, n310, n2744, n386, 
        n389, n390, n391, n392, n393, n394, n395, n396, n397, 
        n398, n399, n400, n401, n402, n403, n404;
    wire [4:0]state_4__N_65;
    
    wire n4, n4_adj_510, n4753;
    wire [4:0]music_note_4__N_78;
    
    wire n5088, clk_p_enable_36, n12, clk_p_enable_29, clk_p_enable_28, 
        n4510, clk_p_enable_40, n3684, n4934, n2961, n4430, n4429, 
        n6, n4428, n4427, n4745, n4426, n36, n4637, n4696, n6_adj_511, 
        n4658, n4425, n4729, n4424, n4423, n4421, n4420, n4419, 
        n4418, n4417, n4416, n4415, n3259, n9, clk_p_enable_19, 
        n8, n4933, n4932, n4414, n4413, n4412, n4411, n1866, 
        n4638, n8_adj_512, clk_p_enable_15, tx_ready_N_287, tx_ready, 
        n4955, sys_clk_c_enable_46, sys_clk_c_enable_50, n4953, n4951, 
        n4950, n4949, clk_p_enable_32, clk_p_enable_16, n4944, clk_p_enable_20, 
        n2946, clk_p_enable_1, n5084, n4941, n5085, n5083, n1545, 
        n4410, n4409, n4408, n4668, n4928, n4956, n1543, n1542, 
        n4407, n4660, clk_p_enable_17, clk_p_enable_38, clk_p_enable_18, 
        n4938;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i3670_2_lut_2_lut_3_lut_4_lut_4_lut (.A(clk_p_enable_1), .B(n4934), 
         .C(n2884), .D(n4953), .Z(clk_p_enable_29)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3670_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    FD1P3AX state_back_i0_i0 (.D(n1866), .SP(clk_p_enable_1), .CK(clk_p), 
            .Q(state_back[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    LUT4 n148_bdd_4_lut (.A(n148), .B(cnt_run[0]), .C(n2744), .D(cnt_run[1]), 
         .Z(n4956)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam n148_bdd_4_lut.init = 16'hccca;
    FD1P3AX state_i0_i0 (.D(state_4__N_65[0]), .SP(clk_p_enable_28), .CK(clk_p), 
            .Q(state[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i2634_2_lut_rep_61 (.A(cnt_run[1]), .B(n2744), .Z(n5083)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(305[6:10])
    defparam i2634_2_lut_rep_61.init = 16'heeee;
    LUT4 i2655_4_lut_4_lut (.A(cnt_run[1]), .B(n2744), .C(n147), .D(n4510), 
         .Z(n3684)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(305[6:10])
    defparam i2655_4_lut_4_lut.init = 16'hba10;
    LUT4 i1_4_lut (.A(state[0]), .B(state[1]), .C(n4934), .D(n386), 
         .Z(state_4__N_65[1])) /* synthesis lut_function=(A (B+!(C))+!A !((D)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(152[3] 348[10])
    defparam i1_4_lut.init = 16'h8ace;
    LUT4 i1_2_lut_rep_43 (.A(cnt_run[0]), .B(n2744), .Z(n4938)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(319[6:10])
    defparam i1_2_lut_rep_43.init = 16'heeee;
    LUT4 i1_2_lut_rep_38_3_lut (.A(cnt_run[0]), .B(n2744), .C(cnt_run[1]), 
         .Z(n4933)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(319[6:10])
    defparam i1_2_lut_rep_38_3_lut.init = 16'hfefe;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i1_2_lut (.A(cnt_run[6]), .B(cnt_run[7]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(300[5] 327[12])
    defparam i1_2_lut.init = 16'h4444;
    FD1P3IX cnt_delay_i0_i4 (.D(n400), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i4.GSR = "DISABLED";
    LUT4 i3592_3_lut (.A(state[0]), .B(state_back[0]), .C(n386), .Z(n4729)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i3592_3_lut.init = 16'heaea;
    LUT4 i1184_2_lut_rep_33_3_lut_4_lut (.A(cnt_run[0]), .B(n2744), .C(n4953), 
         .D(cnt_run[1]), .Z(n4928)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(319[6:10])
    defparam i1184_2_lut_rep_33_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_39_3_lut (.A(cnt_run[1]), .B(n2744), .C(cnt_run[0]), 
         .Z(n4934)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(305[6:10])
    defparam i1_2_lut_rep_39_3_lut.init = 16'hefef;
    LUT4 i1747_4_lut_then_4_lut (.A(clk_p_enable_36), .B(cnt_run[2]), .C(n3668), 
         .D(n299), .Z(n5085)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1747_4_lut_then_4_lut.init = 16'h0800;
    LUT4 i3685_2_lut_3_lut_4_lut (.A(cnt_run[1]), .B(n2744), .C(state[0]), 
         .D(cnt_run[0]), .Z(n9)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(305[6:10])
    defparam i3685_2_lut_3_lut_4_lut.init = 16'hefff;
    FD1P3IX cnt_delay_i0_i5 (.D(n399), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[5]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i5.GSR = "DISABLED";
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    IB switch_1_pad (.I(switch_1), .O(switch_1_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    FD1P3IX cnt_delay_i0_i6 (.D(n398), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[6]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i6.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n397), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[7]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i7.GSR = "DISABLED";
    LUT4 i1747_4_lut_else_4_lut (.A(clk_p_enable_36), .B(n146), .C(n2744), 
         .Z(n5084)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1747_4_lut_else_4_lut.init = 16'h0808;
    LUT4 i2_4_lut (.A(cnt_run[2]), .B(n3668), .C(cnt_run[1]), .D(n299), 
         .Z(n4510)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i2_3_lut_4_lut (.A(n4949), .B(n4955), .C(cnt_run[0]), .D(cnt_run[3]), 
         .Z(n3668)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_delay_i0_i8 (.D(n396), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[8]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n395), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[9]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i9.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n394), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[10]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i10.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n393), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[11]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i11.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n392), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[12]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i12.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n391), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[13]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n390), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[14]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i14.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i15 (.D(n389), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[15]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i15.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i7 (.D(n5088), .SP(clk_p_enable_15), .CK(clk_p), 
            .Q(cnt_run[7]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n5088), .SP(clk_p_enable_16), .CK(clk_p), 
            .Q(cnt_run[6]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n5088), .SP(clk_p_enable_17), .CK(clk_p), 
            .Q(cnt_run[5]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n5088), .SP(clk_p_enable_18), .CK(clk_p), 
            .Q(cnt_run[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n5088), .SP(clk_p_enable_19), .CK(clk_p), 
            .Q(cnt_run[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n5088), .SP(clk_p_enable_20), .CK(clk_p), 
            .Q(cnt_run[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n3684), .SP(clk_p_enable_36), .CK(clk_p), 
            .Q(cnt_run[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    LUT4 i3687_3_lut_rep_40_4_lut (.A(sys_clk_c_enable_46), .B(sys_rst_n_c), 
         .C(state[0]), .D(state[1]), .Z(clk_p_enable_40)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3687_3_lut_rep_40_4_lut.init = 16'h0400;
    CCU2D add_141_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4424), .COUT(n4425), .S0(n401), .S1(n400));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_5.INIT0 = 16'h5aaa;
    defparam add_141_5.INIT1 = 16'h5aaa;
    defparam add_141_5.INJECT1_0 = "NO";
    defparam add_141_5.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(cnt_run[7]), .B(n4955), .C(cnt_run[3]), .D(n6), 
         .Z(n2744)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(319[6:10])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_27 (.A(cnt_run[6]), .B(cnt_run[2]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(319[6:10])
    defparam i1_2_lut_adj_27.init = 16'heeee;
    CCU2D sub_817_add_2_5 (.A0(cnt_delay[5]), .B0(music_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4408), .COUT(n4409));
    defparam sub_817_add_2_5.INIT0 = 16'h5999;
    defparam sub_817_add_2_5.INIT1 = 16'h5aaa;
    defparam sub_817_add_2_5.INJECT1_0 = "NO";
    defparam sub_817_add_2_5.INJECT1_1 = "NO";
    LUT4 i3083_1_lut_rep_49 (.A(n135), .Z(n4944)) /* synthesis lut_function=(!(A)) */ ;
    defparam i3083_1_lut_rep_49.init = 16'h5555;
    CCU2D add_141_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4423), .COUT(n4424), .S0(n403), .S1(n402));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_3.INIT0 = 16'h5aaa;
    defparam add_141_3.INIT1 = 16'h5aaa;
    defparam add_141_3.INJECT1_0 = "NO";
    defparam add_141_3.INJECT1_1 = "NO";
    CCU2D add_141_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4423), .S1(n404));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_1.INIT0 = 16'hF000;
    defparam add_141_1.INIT1 = 16'h5555;
    defparam add_141_1.INJECT1_0 = "NO";
    defparam add_141_1.INJECT1_1 = "NO";
    LUT4 i1932_2_lut_4_lut (.A(n4938), .B(n4932), .C(cnt_run[1]), .D(n299), 
         .Z(n2961)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1932_2_lut_4_lut.init = 16'h1000;
    LUT4 i3109_3_lut_4_lut (.A(n4933), .B(n4953), .C(music_note[0]), .D(n135), 
         .Z(n1545)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(152[3] 348[10])
    defparam i3109_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2226_3_lut_4_lut (.A(n4933), .B(n4953), .C(music_note[1]), .D(n134), 
         .Z(n3259)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(152[3] 348[10])
    defparam i2226_3_lut_4_lut.init = 16'hf1e0;
    CCU2D add_127_9 (.A0(music_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4421), .S0(n303), .S1(n302));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(323[22:38])
    defparam add_127_9.INIT0 = 16'h5aaa;
    defparam add_127_9.INIT1 = 16'h5aaa;
    defparam add_127_9.INJECT1_0 = "NO";
    defparam add_127_9.INJECT1_1 = "NO";
    CCU2D add_127_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4420), .COUT(n4421), .S0(n305), .S1(n304));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(323[22:38])
    defparam add_127_7.INIT0 = 16'h5aaa;
    defparam add_127_7.INIT1 = 16'h5aaa;
    defparam add_127_7.INJECT1_0 = "NO";
    defparam add_127_7.INJECT1_1 = "NO";
    CCU2D sub_817_add_2_15 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4413), .S1(n386));
    defparam sub_817_add_2_15.INIT0 = 16'h5555;
    defparam sub_817_add_2_15.INIT1 = 16'h0000;
    defparam sub_817_add_2_15.INJECT1_0 = "NO";
    defparam sub_817_add_2_15.INJECT1_1 = "NO";
    CCU2D add_127_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4419), .COUT(n4420), .S0(n307), .S1(n306));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(323[22:38])
    defparam add_127_5.INIT0 = 16'h5aaa;
    defparam add_127_5.INIT1 = 16'h5aaa;
    defparam add_127_5.INJECT1_0 = "NO";
    defparam add_127_5.INJECT1_1 = "NO";
    LUT4 i3115_3_lut_4_lut (.A(n4933), .B(n4953), .C(music_note[2]), .D(n133), 
         .Z(n1543)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(152[3] 348[10])
    defparam i3115_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX music_delay_i0_i2 (.D(n4944), .SP(clk_p_enable_29), .CD(n4696), 
            .CK(clk_p), .Q(music_delay[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_delay_i0_i2.GSR = "DISABLED";
    FD1P3JX music_delay_i0_i3 (.D(n36), .SP(clk_p_enable_29), .PD(n4696), 
            .CK(clk_p), .Q(music_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_delay_i0_i3.GSR = "DISABLED";
    CCU2D add_127_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4418), .COUT(n4419), .S0(n309), .S1(n308));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(323[22:38])
    defparam add_127_3.INIT0 = 16'h5aaa;
    defparam add_127_3.INIT1 = 16'h5aaa;
    defparam add_127_3.INJECT1_0 = "NO";
    defparam add_127_3.INJECT1_1 = "NO";
    CCU2D add_127_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4418), .S1(n310));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(323[22:38])
    defparam add_127_1.INIT0 = 16'hF000;
    defparam add_127_1.INIT1 = 16'h5555;
    defparam add_127_1.INJECT1_0 = "NO";
    defparam add_127_1.INJECT1_1 = "NO";
    LUT4 i3616_4_lut (.A(n2884), .B(clk_p_enable_1), .C(n2744), .D(cnt_run[1]), 
         .Z(n4753)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3616_4_lut.init = 16'hfffb;
    CCU2D add_109_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4417), 
          .S0(n141));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[34:46])
    defparam add_109_9.INIT0 = 16'h5aaa;
    defparam add_109_9.INIT1 = 16'h0000;
    defparam add_109_9.INJECT1_0 = "NO";
    defparam add_109_9.INJECT1_1 = "NO";
    CCU2D add_141_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4430), .S0(n389));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_17.INIT0 = 16'h5aaa;
    defparam add_141_17.INIT1 = 16'h0000;
    defparam add_141_17.INJECT1_0 = "NO";
    defparam add_141_17.INJECT1_1 = "NO";
    CCU2D add_109_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4416), .COUT(n4417), .S0(n143), .S1(n142));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[34:46])
    defparam add_109_7.INIT0 = 16'h5aaa;
    defparam add_109_7.INIT1 = 16'h5aaa;
    defparam add_109_7.INJECT1_0 = "NO";
    defparam add_109_7.INJECT1_1 = "NO";
    CCU2D sub_817_add_2_13 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4412), .COUT(n4413));
    defparam sub_817_add_2_13.INIT0 = 16'h5555;
    defparam sub_817_add_2_13.INIT1 = 16'h5555;
    defparam sub_817_add_2_13.INJECT1_0 = "NO";
    defparam sub_817_add_2_13.INJECT1_1 = "NO";
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    CCU2D sub_817_add_2_3 (.A0(cnt_delay[3]), .B0(music_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(music_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4407), .COUT(n4408));
    defparam sub_817_add_2_3.INIT0 = 16'h5999;
    defparam sub_817_add_2_3.INIT1 = 16'h5999;
    defparam sub_817_add_2_3.INJECT1_0 = "NO";
    defparam sub_817_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_817_add_2_11 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4411), .COUT(n4412));
    defparam sub_817_add_2_11.INIT0 = 16'h5555;
    defparam sub_817_add_2_11.INIT1 = 16'h5555;
    defparam sub_817_add_2_11.INJECT1_0 = "NO";
    defparam sub_817_add_2_11.INJECT1_1 = "NO";
    CCU2D add_141_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4429), .COUT(n4430), .S0(n391), .S1(n390));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_15.INIT0 = 16'h5aaa;
    defparam add_141_15.INIT1 = 16'h5aaa;
    defparam add_141_15.INJECT1_0 = "NO";
    defparam add_141_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_run[1]), .B(n4938), .C(n141), .D(n4934), 
         .Z(n8)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(319[6:10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h10f0;
    CCU2D add_141_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4428), .COUT(n4429), .S0(n393), .S1(n392));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_13.INIT0 = 16'h5aaa;
    defparam add_141_13.INIT1 = 16'h5aaa;
    defparam add_141_13.INJECT1_0 = "NO";
    defparam add_141_13.INJECT1_1 = "NO";
    CCU2D add_141_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4427), .COUT(n4428), .S0(n395), .S1(n394));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_11.INIT0 = 16'h5aaa;
    defparam add_141_11.INIT1 = 16'h5aaa;
    defparam add_141_11.INJECT1_0 = "NO";
    defparam add_141_11.INJECT1_1 = "NO";
    CCU2D add_109_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4415), .COUT(n4416), .S0(n145), .S1(n144));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[34:46])
    defparam add_109_5.INIT0 = 16'h5aaa;
    defparam add_109_5.INIT1 = 16'h5aaa;
    defparam add_109_5.INJECT1_0 = "NO";
    defparam add_109_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(cnt_run[1]), .B(n4938), .C(n142), 
         .D(n4934), .Z(n8_adj_512)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(319[6:10])
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h10f0;
    FD1P3IX music_cnt_i0_i1 (.D(n309), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i1.GSR = "DISABLED";
    CCU2D sub_817_add_2_9 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4410), .COUT(n4411));
    defparam sub_817_add_2_9.INIT0 = 16'h5555;
    defparam sub_817_add_2_9.INIT1 = 16'h5555;
    defparam sub_817_add_2_9.INJECT1_0 = "NO";
    defparam sub_817_add_2_9.INJECT1_1 = "NO";
    LUT4 i2567_2_lut_rep_54 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n4949)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2567_2_lut_rep_54.init = 16'heeee;
    FD1P3IX music_cnt_i0_i2 (.D(n308), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i2.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_29 (.A(cnt_run[7]), .B(cnt_run[6]), .C(cnt_run[5]), 
         .D(n4658), .Z(n4660)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_29.init = 16'h1000;
    LUT4 i1_3_lut_rep_55 (.A(cnt_run[0]), .B(cnt_run[2]), .C(cnt_run[1]), 
         .Z(n4950)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(300[5] 327[12])
    defparam i1_3_lut_rep_55.init = 16'h1010;
    FD1P3IX music_cnt_i0_i3 (.D(n307), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_56 (.A(music_cnt[6]), .B(music_cnt[5]), .Z(n4951)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1_2_lut_rep_56.init = 16'h8888;
    LUT4 i3116_3_lut_4_lut (.A(n4933), .B(n4953), .C(music_note[3]), .D(n132), 
         .Z(n1542)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(152[3] 348[10])
    defparam i3116_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3676_2_lut_2_lut_3_lut (.A(music_cnt[6]), .B(music_cnt[5]), .C(n135), 
         .Z(n36)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i3676_2_lut_2_lut_3_lut.init = 16'h0707;
    LUT4 i1_2_lut_2_lut_3_lut (.A(music_cnt[6]), .B(music_cnt[5]), .C(n135), 
         .Z(n284)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut (.A(music_cnt[6]), .B(music_cnt[5]), .C(n135), 
         .Z(n2884)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_58 (.A(state[0]), .B(state[1]), .Z(n4953)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(329[4:9])
    defparam i1_2_lut_rep_58.init = 16'hdddd;
    LUT4 i1_2_lut_rep_37_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), 
         .C(sys_rst_n_c), .D(sys_clk_c_enable_46), .Z(n4932)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(329[4:9])
    defparam i1_2_lut_rep_37_2_lut_3_lut_4_lut.init = 16'hffdf;
    LUT4 recv_done_flag_I_0_2_lut_rep_59 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_46)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_59.init = 16'h4444;
    LUT4 i3681_2_lut_rep_48_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(sys_rst_n_c), 
         .Z(clk_p_enable_1)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i3681_2_lut_rep_48_3_lut.init = 16'hb0b0;
    LUT4 i1_2_lut_adj_30 (.A(cnt_run[5]), .B(n4658), .Z(n4668)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(300[5] 327[12])
    defparam i1_2_lut_adj_30.init = 16'h4444;
    LUT4 i3667_2_lut_2_lut_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(state[1]), .D(state[0]), .Z(clk_p_enable_36)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i3667_2_lut_2_lut_3_lut_4_lut.init = 16'h0b00;
    LUT4 mux_251_i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[0]), 
         .D(n1545), .Z(music_note_4__N_78[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam mux_251_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_251_i2_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[1]), 
         .D(n3259), .Z(music_note_4__N_78[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam mux_251_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_251_i3_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[2]), 
         .D(n1543), .Z(music_note_4__N_78[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam mux_251_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_251_i4_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[3]), 
         .D(n1542), .Z(music_note_4__N_78[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam mux_251_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(tx_ready_N_287)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i1_3_lut_4_lut.init = 16'hf444;
    LUT4 i1_3_lut_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h44f4;
    LUT4 i1177_1_lut_2_lut (.A(recv_done_d1), .B(recv_done_d0), .Z(clk_p_enable_28)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i1177_1_lut_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_60 (.A(cnt_run[5]), .B(cnt_run[4]), .Z(n4955)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_60.init = 16'heeee;
    FD1P3IX music_cnt_i0_i4 (.D(n306), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i4.GSR = "DISABLED";
    CCU2D add_109_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4414), .COUT(n4415), .S0(n147), .S1(n146));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[34:46])
    defparam add_109_3.INIT0 = 16'h5aaa;
    defparam add_109_3.INIT1 = 16'h5aaa;
    defparam add_109_3.INJECT1_0 = "NO";
    defparam add_109_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_46_3_lut_4_lut (.A(cnt_run[5]), .B(cnt_run[4]), .C(cnt_run[6]), 
         .D(cnt_run[7]), .Z(n4941)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_46_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n4934), .D(state_back[0]), 
         .Z(n1866)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hee02;
    LUT4 i5_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n4753), .D(cnt_run[0]), 
         .Z(clk_p_enable_32)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i5_3_lut_4_lut.init = 16'h0200;
    FD1P3AX state_i0_i1 (.D(state_4__N_65[1]), .SP(clk_p_enable_28), .CK(clk_p), 
            .Q(state[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_31 (.A(n299), .B(cnt_run[4]), .C(n4950), .D(cnt_run[3]), 
         .Z(n4658)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(300[5] 327[12])
    defparam i1_4_lut_adj_31.init = 16'h0020;
    LUT4 i6_4_lut (.A(n4745), .B(n12), .C(music_cnt[6]), .D(music_cnt[3]), 
         .Z(n299)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i6_4_lut.init = 16'h4000;
    PFUMX i22 (.BLUT(n9), .ALUT(n4729), .C0(state[1]), .Z(state_4__N_65[0]));
    LUT4 i3608_3_lut (.A(music_cnt[7]), .B(music_cnt[8]), .C(music_cnt[5]), 
         .Z(n4745)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3608_3_lut.init = 16'hfefe;
    LUT4 i5_4_lut (.A(music_cnt[4]), .B(music_cnt[0]), .C(music_cnt[2]), 
         .D(music_cnt[1]), .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1755_4_lut (.A(clk_p_enable_36), .B(n8_adj_512), .C(n4668), 
         .D(n4_adj_510), .Z(clk_p_enable_16)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1755_4_lut.init = 16'ha888;
    FD1P3AX music_delay_i0_i8 (.D(n4951), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[8]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_delay_i0_i8.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i5 (.D(n305), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[5]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_32 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n4_adj_510)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(300[5] 327[12])
    defparam i1_2_lut_adj_32.init = 16'h4444;
    FD1P3IX music_cnt_i0_i6 (.D(n304), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[6]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i6.GSR = "DISABLED";
    LUT4 i1924_2_lut_4_lut (.A(state[1]), .B(state[0]), .C(clk_p_enable_1), 
         .D(n386), .Z(n2946)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1924_2_lut_4_lut.init = 16'h2000;
    FD1P3AX music_delay_i0_i4 (.D(n284), .SP(clk_p_enable_32), .CK(clk_p), 
            .Q(music_delay[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_delay_i0_i4.GSR = "DISABLED";
    LUT4 i1753_4_lut (.A(clk_p_enable_36), .B(n5083), .C(n4660), .D(n143), 
         .Z(clk_p_enable_17)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1753_4_lut.init = 16'ha2a0;
    ROM128X1A mux_586_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n133)) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_586_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    LUT4 i1751_4_lut (.A(clk_p_enable_36), .B(n5083), .C(n4637), .D(n144), 
         .Z(clk_p_enable_18)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1751_4_lut.init = 16'ha2a0;
    CCU2D sub_817_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(music_delay[2]), .C1(GND_net), .D1(GND_net), 
          .COUT(n4407));
    defparam sub_817_add_2_1.INIT0 = 16'h0000;
    defparam sub_817_add_2_1.INIT1 = 16'h5999;
    defparam sub_817_add_2_1.INJECT1_0 = "NO";
    defparam sub_817_add_2_1.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i7 (.D(n303), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[7]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i7.GSR = "DISABLED";
    LUT4 i4_4_lut_adj_33 (.A(cnt_run[5]), .B(cnt_run[3]), .C(n4949), .D(n6_adj_511), 
         .Z(n4637)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_4_lut_adj_33.init = 16'h0100;
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    OB blink_pad (.I(GND_net), .O(blink));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:26])
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:25])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(8[21:29])
    FD1P3IX music_cnt_i0_i8 (.D(n302), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[8]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i0 (.D(n404), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i0.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n4956), .SP(clk_p_enable_36), .CK(clk_p), 
            .Q(cnt_run[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    LUT4 mux_251_i5_4_lut (.A(n4928), .B(uart_recv_data[4]), .C(sys_clk_c_enable_46), 
         .D(music_note[4]), .Z(music_note_4__N_78[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(151[7] 350[5])
    defparam mux_251_i5_4_lut.init = 16'hcac0;
    LUT4 i1749_4_lut (.A(clk_p_enable_36), .B(n5083), .C(n4638), .D(n145), 
         .Z(clk_p_enable_19)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1749_4_lut.init = 16'ha2a0;
    FD1P3IX cnt_delay_i0_i1 (.D(n403), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i1.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_34 (.A(n299), .B(n4950), .C(cnt_run[3]), .D(n4941), 
         .Z(n4638)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(300[5] 327[12])
    defparam i2_3_lut_4_lut_adj_34.init = 16'h0080;
    CCU2D sub_817_add_2_7 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(music_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4409), .COUT(n4410));
    defparam sub_817_add_2_7.INIT0 = 16'h5aaa;
    defparam sub_817_add_2_7.INIT1 = 16'h5999;
    defparam sub_817_add_2_7.INJECT1_0 = "NO";
    defparam sub_817_add_2_7.INJECT1_1 = "NO";
    ROM128X1A mux_586_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n132)) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_586_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    CCU2D add_109_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4414), .S1(n148));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[34:46])
    defparam add_109_1.INIT0 = 16'hF000;
    defparam add_109_1.INIT1 = 16'h5555;
    defparam add_109_1.INJECT1_0 = "NO";
    defparam add_109_1.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i0 (.D(n310), .SP(clk_p_enable_38), .CD(n2961), 
            .CK(clk_p), .Q(music_cnt[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_cnt_i0_i0.GSR = "DISABLED";
    CCU2D add_141_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4426), .COUT(n4427), .S0(n397), .S1(n396));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_9.INIT0 = 16'h5aaa;
    defparam add_141_9.INIT1 = 16'h5aaa;
    defparam add_141_9.INJECT1_0 = "NO";
    defparam add_141_9.INJECT1_1 = "NO";
    CCU2D add_141_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4425), .COUT(n4426), .S0(n399), .S1(n398));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(345[39:55])
    defparam add_141_7.INIT0 = 16'h5aaa;
    defparam add_141_7.INIT1 = 16'h5aaa;
    defparam add_141_7.INJECT1_0 = "NO";
    defparam add_141_7.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i2 (.D(n402), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_35 (.A(n299), .B(n4950), .C(cnt_run[4]), .Z(n6_adj_511)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(300[5] 327[12])
    defparam i1_2_lut_3_lut_adj_35.init = 16'h8080;
    FD1P3AX music_note_i0_i4 (.D(music_note_4__N_78[4]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_note_i0_i4.GSR = "DISABLED";
    LUT4 i1757_4_lut (.A(clk_p_enable_36), .B(n8), .C(n4668), .D(n4), 
         .Z(clk_p_enable_15)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam i1757_4_lut.init = 16'ha888;
    LUT4 i3690_3_lut_rep_32_4_lut_4_lut (.A(clk_p_enable_1), .B(n4938), 
         .C(cnt_run[1]), .D(n4953), .Z(clk_p_enable_38)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3690_3_lut_rep_32_4_lut_4_lut.init = 16'h0020;
    LUT4 i3673_2_lut_2_lut_3_lut_4_lut_4_lut (.A(clk_p_enable_1), .B(n4934), 
         .C(n4951), .D(n4953), .Z(n4696)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3673_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    FD1P3IX cnt_delay_i0_i3 (.D(n401), .SP(clk_p_enable_40), .CD(n2946), 
            .CK(clk_p), .Q(cnt_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam cnt_delay_i0_i3.GSR = "DISABLED";
    ROM128X1A mux_586_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n134)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_586_Mux_2.initval = 128'h000000005994949451139113B7139113;
    FD1P3AX music_note_i0_i3 (.D(music_note_4__N_78[3]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_note_i0_i3.GSR = "DISABLED";
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .uart_recv_data({uart_recv_data}), .uart_rxd_c(uart_rxd_c), 
            .uart_recv_done(uart_recv_done)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(65[1] 72[6])
    VLO i1 (.Z(GND_net));
    FD1P3AX music_note_i0_i2 (.D(music_note_4__N_78[2]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_note_i0_i2.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    ROM128X1A mux_586_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n135)) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_586_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    PFUMX i3748 (.BLUT(n5084), .ALUT(n5085), .C0(cnt_run[1]), .Z(clk_p_enable_20));
    \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_send (.uart_send_data({uart_send_data}), 
            .sys_clk_c(sys_clk_c), .GND_net(GND_net), .uart_tx_busy(uart_tx_busy), 
            .uart_txd_c(uart_txd_c), .uart_send_en(uart_send_en)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(78[1] 86[6])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX music_note_i0_i1 (.D(music_note_4__N_78[1]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_note_i0_i1.GSR = "DISABLED";
    divide divide_1ms (.GND_net(GND_net), .sys_clk_c(sys_clk_c), .clk_p(clk_p)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(110[8] 116[2])
    FD1P3AX music_note_i0_i0 (.D(music_note_4__N_78[0]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 350[5])
    defparam music_note_i0_i0.GSR = "DISABLED";
    Beeper m_beep (.GND_net(GND_net), .sys_clk_c(sys_clk_c), .switch_1_c(switch_1_c), 
           .beep_c(beep_c), .music_note_4__N_78({music_note_4__N_78}), .clk_p(clk_p), 
           .sys_rst_n_c(sys_rst_n_c), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(102[9] 108[2])
    LUT4 m1_lut (.Z(n5088)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    uart_loop u_uart_loop (.uart_send_data({uart_send_data}), .sys_clk_c(sys_clk_c), 
            .sys_clk_c_enable_46(sys_clk_c_enable_46), .uart_recv_data({uart_recv_data}), 
            .recv_done_d0(recv_done_d0), .uart_recv_done(uart_recv_done), 
            .tx_ready(tx_ready), .tx_ready_N_287(tx_ready_N_287), .recv_done_d1(recv_done_d1), 
            .uart_send_en(uart_send_en), .sys_clk_c_enable_50(sys_clk_c_enable_50), 
            .clk_p_enable_28(clk_p_enable_28)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(89[11] 99[6])
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, GND_net, 
            uart_recv_data, uart_rxd_c, uart_recv_done) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input GND_net;
    output [7:0]uart_recv_data;
    input uart_rxd_c;
    output uart_recv_done;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    
    wire n2937;
    wire [15:0]n69;
    
    wire n4931, rx_flag, n4942, n4930, sys_clk_c_enable_49;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(43[12:18])
    
    wire sys_clk_c_enable_8, n1913, n2775, n4507, n2734, n4665;
    wire [15:0]n1081;
    
    wire n4946, n4687, n4936, n4673, n4672, n4937, n4690, n4682, 
        n4699, n2772, n2769, n2766, n2763, n2760, n2757, n4691, 
        sys_clk_c_enable_48, uart_data_7__N_198, n7, n4677, n4940, 
        n4471, n4470, uart_rxd_d1, n4702, n4469, n4468, n4467, 
        n4466, n4948, n4465, n4464, n4652, rx_flag_N_199, n2900, 
        uart_rxd_d0, n2938, n15, n14, n4, n2754;
    
    FD1S3IX clk_cnt_909__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n2937), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n2937), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n2937), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n2937), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i11.GSR = "ENABLED";
    LUT4 i3659_2_lut_4_lut_4_lut (.A(n4931), .B(rx_flag), .C(n4942), .D(n4930), 
         .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(128[13:30])
    defparam i3659_2_lut_4_lut_4_lut.init = 16'h7773;
    FD1P3IX rxdata__i7 (.D(n2775), .SP(sys_clk_c_enable_8), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    LUT4 i3656_4_lut (.A(rx_flag), .B(n4507), .C(n2734), .D(n4665), 
         .Z(n2937)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(92[9:26])
    defparam i3656_4_lut.init = 16'hfdf5;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n1081[5]), .B(n4942), .C(n4946), .D(n1081[4]), 
         .Z(n4687)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(n1081[5]), .B(n4936), .C(n1081[6]), 
         .D(n1081[7]), .Z(n4673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n1081[5]), .B(n4936), .C(n1081[8]), 
         .D(n1081[7]), .Z(n4672)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hfffe;
    LUT4 i3662_3_lut_rep_31_3_lut_4_lut (.A(n1081[5]), .B(n4936), .C(n4942), 
         .D(n4931), .Z(sys_clk_c_enable_8)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i3662_3_lut_rep_31_3_lut_4_lut.init = 16'h00fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(n1081[4]), .B(n4937), .C(n1081[1]), 
         .D(n1081[3]), .Z(n4690)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'hfffe;
    LUT4 i1_2_lut_rep_35_3_lut_4_lut (.A(n1081[3]), .B(n4946), .C(n1081[5]), 
         .D(n1081[4]), .Z(n4930)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_35_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(n1081[3]), .B(n4946), .C(n4942), 
         .D(n1081[4]), .Z(n4682)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(n1081[3]), .B(n4946), .C(n4942), 
         .D(n1081[5]), .Z(n4699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'hfffe;
    FD1P3IX rxdata__i6 (.D(n2772), .SP(sys_clk_c_enable_49), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n2769), .SP(sys_clk_c_enable_49), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n2766), .SP(sys_clk_c_enable_49), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n2763), .SP(sys_clk_c_enable_49), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n2760), .SP(sys_clk_c_enable_49), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n2757), .SP(sys_clk_c_enable_8), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(n1081[4]), .B(n4937), .C(n1081[2]), 
         .D(n1081[3]), .Z(n4691)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'hfffe;
    FD1P3IX rx_cnt_FSM_i14 (.D(n1081[13]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n1081[12]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n1081[11]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n1081[10]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_198), .SP(sys_clk_c_enable_48), 
            .CD(n1913), .CK(sys_clk_c), .Q(n1081[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n1081[8]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(uart_data_7__N_198));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n1081[7]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n1081[6]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n1081[5]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n1081[4]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n1081[3]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n1081[2]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n1081[1]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n1081[0]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i4_4_lut_rep_36 (.A(n7), .B(n4677), .C(clk_cnt[0]), .D(clk_cnt[6]), 
         .Z(n4931)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i4_4_lut_rep_36.init = 16'hfffe;
    FD1S3IX clk_cnt_909__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n2937), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i6.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_51 (.A(n1081[2]), .B(n1081[1]), .Z(n4946)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_51.init = 16'heeee;
    LUT4 i1_2_lut_rep_45_3_lut (.A(n1081[2]), .B(n1081[1]), .C(n1081[3]), 
         .Z(n4940)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_45_3_lut.init = 16'hfefe;
    CCU2D clk_cnt_909_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4471), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_909_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_909_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4470), .COUT(n4471), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_909_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[6]), .C(n1081[7]), .D(n4702), 
         .Z(n2772)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    FD1S3IX clk_cnt_909__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n1081[14]), .SP(sys_clk_c_enable_48), .CD(n1913), 
            .CK(sys_clk_c), .Q(n1081[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i1.GSR = "ENABLED";
    CCU2D clk_cnt_909_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4469), .COUT(n4470), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_909_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_909_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4468), .COUT(n4469), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_909_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_14 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n1081[6]), 
         .D(n4672), .Z(n2769)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_14.init = 16'heca0;
    LUT4 i1_2_lut_rep_41_3_lut_4_lut (.A(n1081[2]), .B(n1081[1]), .C(n1081[4]), 
         .D(n1081[3]), .Z(n4936)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_41_3_lut_4_lut.init = 16'hfffe;
    LUT4 i946_1_lut (.A(rx_flag), .Z(n1913)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i946_1_lut.init = 16'h5555;
    CCU2D clk_cnt_909_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4467), .COUT(n4468), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_909_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_909_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4466), .COUT(n4467), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_909_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_15 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n1081[8]), 
         .D(n4673), .Z(n2775)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_15.init = 16'heca0;
    LUT4 i1_2_lut_rep_53 (.A(n1081[6]), .B(n1081[8]), .Z(n4948)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_53.init = 16'heeee;
    FD1S3IX clk_cnt_909__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n2937), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i0.GSR = "ENABLED";
    CCU2D clk_cnt_909_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4465), .COUT(n4466), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_909_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_909_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4464), .COUT(n4465), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_909_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_909_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_909_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4464), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_909_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_909_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_909_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_47_3_lut (.A(n1081[6]), .B(n1081[8]), .C(n1081[7]), 
         .Z(n4942)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_47_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_42_3_lut_4_lut (.A(n1081[6]), .B(n1081[8]), .C(n1081[5]), 
         .D(n1081[7]), .Z(n4937)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_42_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_16 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n1081[5]), 
         .D(n4682), .Z(n2766)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_16.init = 16'heca0;
    LUT4 i1_4_lut_adj_17 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n1081[4]), 
         .D(n4699), .Z(n2763)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_17.init = 16'heca0;
    LUT4 i2_4_lut (.A(clk_cnt[4]), .B(clk_cnt[0]), .C(clk_cnt[3]), .D(n4652), 
         .Z(n4507)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i1_4_lut_adj_18 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n1081[3]), 
         .D(n4687), .Z(n2760)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_18.init = 16'heca0;
    LUT4 i1866_4_lut (.A(uart_data_7__N_198), .B(rx_flag_N_199), .C(rx_flag), 
         .D(n4931), .Z(n2900)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i1866_4_lut.init = 16'hfcdc;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_199)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i1903_1_lut (.A(uart_data_7__N_198), .Z(n2938)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam i1903_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_adj_19 (.A(clk_cnt[1]), .B(clk_cnt[5]), .C(clk_cnt[4]), 
         .D(clk_cnt[2]), .Z(n7)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i2_4_lut_adj_19.init = 16'hbfff;
    LUT4 i1_2_lut (.A(clk_cnt[3]), .B(n2734), .Z(n4677)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_20 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n1081[2]), 
         .D(n4690), .Z(n2757)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_20.init = 16'heca0;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[13]), .C(n14), .D(clk_cnt[8]), 
         .Z(n2734)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[14]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_21 (.A(n4665), .B(n4677), .C(n4652), .D(n4), .Z(sys_clk_c_enable_48)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    defparam i2_4_lut_adj_21.init = 16'h0020;
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_22 (.A(clk_cnt[0]), .B(clk_cnt[4]), .Z(n4)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i1_2_lut_adj_22.init = 16'hdddd;
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[10]), .C(clk_cnt[11]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_23 (.A(clk_cnt[6]), .B(clk_cnt[5]), .Z(n4665)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    defparam i1_2_lut_adj_23.init = 16'h8888;
    LUT4 i1_2_lut_adj_24 (.A(clk_cnt[1]), .B(clk_cnt[2]), .Z(n4652)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    defparam i1_2_lut_adj_24.init = 16'h8888;
    FD1P3JX rx_cnt_FSM_i0 (.D(n1081[15]), .SP(sys_clk_c_enable_48), .PD(n1913), 
            .CK(sys_clk_c), .Q(n1081[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n2938), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    FD1S3IX clk_cnt_909__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n2937), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_909__i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_25 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n1081[1]), 
         .D(n4691), .Z(n2754)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_25.init = 16'heca0;
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_198), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1P3IX rxdata__i0 (.D(n2754), .SP(sys_clk_c_enable_49), .CD(n1913), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n2900), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(n1081[4]), .B(n4940), .C(n4948), 
         .D(n1081[5]), .Z(n4702)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'hfffe;
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \uart_send(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  (uart_send_data, sys_clk_c, 
            GND_net, uart_tx_busy, uart_txd_c, uart_send_en) /* synthesis syn_module_defined=1 */ ;
    input [7:0]uart_send_data;
    input sys_clk_c;
    input GND_net;
    output uart_tx_busy;
    output uart_txd_c;
    input uart_send_en;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    
    wire n4674, n28;
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(44[12:19])
    
    wire n4952, uart_tx_busy_N_265, n2919, n2924, n2944;
    wire [15:0]n69;
    wire [15:0]n1171;
    
    wire sys_clk_c_enable_47, n4945, n2922, n2917, n2915, n2913, 
        n2911, n4947, n39, n4462, n4463, n4461, uart_tx_busy_N_266, 
        n4460, n4459, n4458, n4457, n4456, n10, sys_clk_c_enable_39, 
        n2285, n4639, n2284, uart_en_d1, uart_en_d0, n2903, n14, 
        n10_adj_509, n4633, n2301, n2540, n4755, n4763, n2300, 
        n2515, n4780;
    wire [0:0]n1639;
    
    wire n2541, n4772, n4783, n4757, n4739, n2905;
    
    LUT4 i1_2_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .Z(n4674)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_6 (.A(clk_cnt[2]), .B(clk_cnt[0]), .Z(n28)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'h8888;
    LUT4 i1885_4_lut (.A(tx_data[5]), .B(uart_send_data[5]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2919)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1885_4_lut.init = 16'hc0ca;
    FD1S3AX tx_data_i7 (.D(n2924), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n2944), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i15.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n1171[14]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1S3AX tx_data_i6 (.D(n2922), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n2919), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n2917), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n2915), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n2913), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n2911), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i1.GSR = "ENABLED";
    LUT4 i54_4_lut (.A(n4947), .B(clk_cnt[1]), .C(n4674), .D(n28), .Z(n39)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i54_4_lut.init = 16'ha8a0;
    CCU2D clk_cnt_907_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4462), .COUT(n4463), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_907_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_907_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4461), .COUT(n4462), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_907_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_13.INJECT1_1 = "NO";
    FD1P3IX tx_cnt_FSM_i14 (.D(n1171[13]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n1171[12]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n1171[11]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n1171[10]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_266), .SP(sys_clk_c_enable_47), 
            .CD(n4945), .CK(sys_clk_c), .Q(n1171[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n1171[8]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_266));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n1171[7]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n1171[6]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n1171[5]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n1171[4]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n1171[3]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n1171[2]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n1171[1]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n1171[0]), .SP(sys_clk_c_enable_47), .CD(n4945), 
            .CK(sys_clk_c), .Q(n1171[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    CCU2D clk_cnt_907_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4460), .COUT(n4461), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_907_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_907_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4459), .COUT(n4460), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_907_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_907_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4458), .COUT(n4459), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_907_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_907_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4457), .COUT(n4458), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_907_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_907_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4456), .COUT(n4457), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_907_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_3.INJECT1_1 = "NO";
    LUT4 i3694_3_lut (.A(n1171[15]), .B(n10), .C(n1171[13]), .Z(sys_clk_c_enable_39)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3694_3_lut.init = 16'h0101;
    LUT4 i2015_1_lut_rep_50 (.A(uart_tx_busy), .Z(n4945)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i2015_1_lut_rep_50.init = 16'h5555;
    CCU2D clk_cnt_907_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4456), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_907_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_907_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n1171[14]), .B(n1171[12]), .C(n1171[11]), .D(n1171[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i4_4_lut.init = 16'hfffe;
    FD1P3JX uart_txd_47 (.D(n2285), .SP(sys_clk_c_enable_39), .PD(n4945), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(123[10] 138[26])
    defparam uart_txd_47.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_52 (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n4947)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_rep_52.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(clk_cnt[5]), .B(clk_cnt[6]), .C(clk_cnt[1]), 
         .D(clk_cnt[13]), .Z(n4639)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    FD1S3IX clk_cnt_907__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n2944), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n2944), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n2944), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n2944), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n2944), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_907__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n2944), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907__i0.GSR = "ENABLED";
    CCU2D clk_cnt_907_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4463), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_907_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_907_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_907_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_907_add_4_17.INJECT1_1 = "NO";
    LUT4 i1883_4_lut (.A(tx_data[4]), .B(uart_send_data[4]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2917)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1883_4_lut.init = 16'hc0ca;
    LUT4 i2572_2_lut (.A(n2284), .B(n1171[0]), .Z(n2285)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i2572_2_lut.init = 16'h2222;
    LUT4 en_flag_I_0_2_lut_rep_57 (.A(uart_en_d1), .B(uart_en_d0), .Z(n4952)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam en_flag_I_0_2_lut_rep_57.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(uart_tx_busy), 
         .D(uart_tx_busy_N_265), .Z(n2903)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam i1_3_lut_4_lut.init = 16'h44f4;
    LUT4 i7_4_lut (.A(clk_cnt[14]), .B(n14), .C(n10_adj_509), .D(clk_cnt[11]), 
         .Z(n4633)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[15]), .B(clk_cnt[9]), .C(clk_cnt[8]), .D(clk_cnt[12]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(clk_cnt[7]), .B(clk_cnt[10]), .Z(n10_adj_509)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(n28), .B(n4639), .C(n4633), .D(n4674), .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0008;
    LUT4 i1881_4_lut (.A(tx_data[3]), .B(uart_send_data[3]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2915)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1881_4_lut.init = 16'hc0ca;
    LUT4 i1890_4_lut (.A(tx_data[7]), .B(uart_send_data[7]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2924)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1890_4_lut.init = 16'hc0ca;
    LUT4 i1531_3_lut (.A(n2301), .B(tx_data[3]), .C(n1171[4]), .Z(n2540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1531_3_lut.init = 16'hcaca;
    LUT4 i1320_3_lut (.A(tx_data[5]), .B(tx_data[4]), .C(n1171[5]), .Z(n2301)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1320_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_7 (.A(n4755), .B(uart_tx_busy_N_266), .C(n4763), 
         .D(n4639), .Z(uart_tx_busy_N_265)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_7.init = 16'h0400;
    LUT4 i3618_4_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[10]), 
         .D(clk_cnt[9]), .Z(n4755)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3618_4_lut.init = 16'hfffe;
    LUT4 i1879_4_lut (.A(tx_data[2]), .B(uart_send_data[2]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2913)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1879_4_lut.init = 16'hc0ca;
    LUT4 i3651_4_lut (.A(n2300), .B(n2515), .C(n1171[1]), .D(n4780), 
         .Z(n1639[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3651_4_lut.init = 16'hcacc;
    LUT4 i1319_4_lut (.A(tx_data[7]), .B(tx_data[6]), .C(n1171[7]), .D(n1171[8]), 
         .Z(n2300)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1319_4_lut.init = 16'hcacf;
    LUT4 i1509_3_lut (.A(n2541), .B(tx_data[0]), .C(n1171[1]), .Z(n2515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1509_3_lut.init = 16'hcaca;
    LUT4 i3643_2_lut (.A(n1171[2]), .B(n1171[3]), .Z(n4780)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3643_2_lut.init = 16'h1111;
    LUT4 i1877_4_lut (.A(tx_data[1]), .B(uart_send_data[1]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2911)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1877_4_lut.init = 16'hc0ca;
    FD1P3JX tx_cnt_FSM_i0 (.D(n1171[15]), .SP(sys_clk_c_enable_47), .PD(n4945), 
            .CK(sys_clk_c), .Q(n1171[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i1532_3_lut (.A(tx_data[2]), .B(tx_data[1]), .C(n1171[2]), .Z(n2541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1532_3_lut.init = 16'hcaca;
    LUT4 i3683_4_lut (.A(n1171[1]), .B(n1171[2]), .C(n1171[3]), .D(n4772), 
         .Z(n4783)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3683_4_lut.init = 16'hfffe;
    LUT4 i3635_3_lut (.A(n1171[4]), .B(n1171[5]), .C(n1171[6]), .Z(n4772)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i3635_3_lut.init = 16'h0101;
    LUT4 i3626_4_lut (.A(clk_cnt[15]), .B(n4757), .C(n4739), .D(clk_cnt[2]), 
         .Z(n4763)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3626_4_lut.init = 16'hfffe;
    PFUMX i1303 (.BLUT(n2540), .ALUT(n1639[0]), .C0(n4783), .Z(n2284));
    LUT4 i3620_4_lut (.A(clk_cnt[12]), .B(clk_cnt[7]), .C(clk_cnt[8]), 
         .D(clk_cnt[14]), .Z(n4757)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3620_4_lut.init = 16'hfffe;
    LUT4 i3602_2_lut (.A(clk_cnt[11]), .B(clk_cnt[0]), .Z(n4739)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3602_2_lut.init = 16'heeee;
    LUT4 i1871_4_lut (.A(tx_data[0]), .B(uart_send_data[0]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2905)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1871_4_lut.init = 16'hc0ca;
    FD1S3AX uart_en_d0_40 (.D(uart_send_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n2905), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n2903), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n4633), .B(n39), .C(uart_tx_busy), .D(clk_cnt[13]), 
         .Z(n2944)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut.init = 16'hffef;
    LUT4 i1888_4_lut (.A(tx_data[6]), .B(uart_send_data[6]), .C(n4952), 
         .D(uart_tx_busy_N_265), .Z(n2922)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i1888_4_lut.init = 16'hc0ca;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module divide
//

module divide (GND_net, sys_clk_c, clk_p) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    output clk_p;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    
    wire n4491;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(18[13:18])
    
    wire n4492, n4490, n4489, n4488, n4487, n4446;
    wire [31:0]n101;
    
    wire n4445, n4444, n4486, n4443, n4485, n4484, n4442, n4441, 
        n4440, n4483, n4439, n4438, n4482, n4437, n4436, n4435, 
        n4481, n4434;
    wire [31:0]n200;
    
    wire n4725, n4433, n4432, n4431, n2941, n4643, n4717, n29_adj_507, 
        n42, n38, n30_adj_508, n40, n34, n4761, n36, n26, clk_p_N_502, 
        n4493;
    
    CCU2D add_3355_24 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4491), .COUT(n4492));
    defparam add_3355_24.INIT0 = 16'h5555;
    defparam add_3355_24.INIT1 = 16'h5555;
    defparam add_3355_24.INJECT1_0 = "NO";
    defparam add_3355_24.INJECT1_1 = "NO";
    CCU2D add_3355_22 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4490), .COUT(n4491));
    defparam add_3355_22.INIT0 = 16'h5555;
    defparam add_3355_22.INIT1 = 16'h5555;
    defparam add_3355_22.INJECT1_0 = "NO";
    defparam add_3355_22.INJECT1_1 = "NO";
    CCU2D add_3355_20 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4489), .COUT(n4490));
    defparam add_3355_20.INIT0 = 16'h5555;
    defparam add_3355_20.INIT1 = 16'h5555;
    defparam add_3355_20.INJECT1_0 = "NO";
    defparam add_3355_20.INJECT1_1 = "NO";
    CCU2D add_3355_18 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4488), .COUT(n4489));
    defparam add_3355_18.INIT0 = 16'h5555;
    defparam add_3355_18.INIT1 = 16'h5555;
    defparam add_3355_18.INJECT1_0 = "NO";
    defparam add_3355_18.INJECT1_1 = "NO";
    CCU2D add_3355_16 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4487), .COUT(n4488));
    defparam add_3355_16.INIT0 = 16'h5555;
    defparam add_3355_16.INIT1 = 16'h5555;
    defparam add_3355_16.INJECT1_0 = "NO";
    defparam add_3355_16.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4446), .S0(n101[31]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_904_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4445), .COUT(n4446), .S0(n101[29]), .S1(n101[30]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4444), .COUT(n4445), .S0(n101[27]), .S1(n101[28]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_29.INJECT1_1 = "NO";
    CCU2D add_3355_14 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4486), .COUT(n4487));
    defparam add_3355_14.INIT0 = 16'h5555;
    defparam add_3355_14.INIT1 = 16'h5555;
    defparam add_3355_14.INJECT1_0 = "NO";
    defparam add_3355_14.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4443), .COUT(n4444), .S0(n101[25]), .S1(n101[26]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_27.INJECT1_1 = "NO";
    CCU2D add_3355_12 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4485), .COUT(n4486));
    defparam add_3355_12.INIT0 = 16'h5555;
    defparam add_3355_12.INIT1 = 16'h5555;
    defparam add_3355_12.INJECT1_0 = "NO";
    defparam add_3355_12.INJECT1_1 = "NO";
    CCU2D add_3355_10 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4484), .COUT(n4485));
    defparam add_3355_10.INIT0 = 16'h5555;
    defparam add_3355_10.INIT1 = 16'h5555;
    defparam add_3355_10.INJECT1_0 = "NO";
    defparam add_3355_10.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4442), .COUT(n4443), .S0(n101[23]), .S1(n101[24]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4441), .COUT(n4442), .S0(n101[21]), .S1(n101[22]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4440), .COUT(n4441), .S0(n101[19]), .S1(n101[20]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_21.INJECT1_1 = "NO";
    CCU2D add_3355_8 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4483), .COUT(n4484));
    defparam add_3355_8.INIT0 = 16'h5555;
    defparam add_3355_8.INIT1 = 16'h5aaa;
    defparam add_3355_8.INJECT1_0 = "NO";
    defparam add_3355_8.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4439), .COUT(n4440), .S0(n101[17]), .S1(n101[18]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4438), .COUT(n4439), .S0(n101[15]), .S1(n101[16]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_17.INJECT1_1 = "NO";
    CCU2D add_3355_6 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4482), .COUT(n4483));
    defparam add_3355_6.INIT0 = 16'h5aaa;
    defparam add_3355_6.INIT1 = 16'h5aaa;
    defparam add_3355_6.INJECT1_0 = "NO";
    defparam add_3355_6.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4437), .COUT(n4438), .S0(n101[13]), .S1(n101[14]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4436), .COUT(n4437), .S0(n101[11]), .S1(n101[12]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4435), .COUT(n4436), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_11.INJECT1_1 = "NO";
    CCU2D add_3355_4 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4481), 
          .COUT(n4482));
    defparam add_3355_4.INIT0 = 16'h5555;
    defparam add_3355_4.INIT1 = 16'h5aaa;
    defparam add_3355_4.INJECT1_0 = "NO";
    defparam add_3355_4.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4434), .COUT(n4435), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_9.INJECT1_1 = "NO";
    LUT4 i3588_2_lut (.A(n200[0]), .B(cnt_p[4]), .Z(n4725)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3588_2_lut.init = 16'h8888;
    CCU2D cnt_p_904_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4433), .COUT(n4434), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4432), .COUT(n4433), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_5.INJECT1_1 = "NO";
    CCU2D add_3355_2 (.A0(cnt_p[5]), .B0(cnt_p[4]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4481));
    defparam add_3355_2.INIT0 = 16'h7000;
    defparam add_3355_2.INIT1 = 16'h5aaa;
    defparam add_3355_2.INJECT1_0 = "NO";
    defparam add_3355_2.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4431), .COUT(n4432), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_904_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_904_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_904_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4431), .S1(n101[0]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_904_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_904_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_904_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_p_904__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n2941), .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i0.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n2941), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n2941), .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n2941), .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n2941), .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n2941), .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n2941), .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n2941), .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n2941), .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n2941), .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_904__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n2941), .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_904__i1.GSR = "ENABLED";
    LUT4 i3664_4_lut (.A(n4643), .B(cnt_p[9]), .C(n4717), .D(cnt_p[6]), 
         .Z(n2941)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i3664_4_lut.init = 16'h4000;
    LUT4 i21_4_lut (.A(n29_adj_507), .B(n42), .C(n38), .D(n30_adj_508), 
         .Z(n4643)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i3580_4_lut (.A(n200[2]), .B(cnt_p[11]), .C(n200[1]), .D(cnt_p[7]), 
         .Z(n4717)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3580_4_lut.init = 16'h8000;
    LUT4 i7_2_lut (.A(cnt_p[14]), .B(cnt_p[19]), .Z(n29_adj_507)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i20_4_lut (.A(cnt_p[31]), .B(n40), .C(n34), .D(n4761), .Z(n42)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i20_4_lut.init = 16'hfeff;
    LUT4 i16_4_lut (.A(cnt_p[20]), .B(cnt_p[23]), .C(cnt_p[15]), .D(cnt_p[29]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(cnt_p[22]), .B(cnt_p[5]), .Z(n30_adj_508)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(cnt_p[21]), .B(n36), .C(n26), .D(cnt_p[25]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(cnt_p[28]), .B(cnt_p[8]), .C(cnt_p[18]), .D(cnt_p[16]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(cnt_p[17]), .B(cnt_p[27]), .C(cnt_p[24]), .D(cnt_p[30]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    FD1S3AX clk_p_35 (.D(clk_p_N_502), .CK(sys_clk_c), .Q(clk_p)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=110, LSE_RLINE=116 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(40[9] 43[14])
    defparam clk_p_35.GSR = "ENABLED";
    CCU2D add_3355_28 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4493), 
          .S1(clk_p_N_502));
    defparam add_3355_28.INIT0 = 16'h5555;
    defparam add_3355_28.INIT1 = 16'h0000;
    defparam add_3355_28.INJECT1_0 = "NO";
    defparam add_3355_28.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(cnt_p[26]), .B(cnt_p[12]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i4_2_lut.init = 16'heeee;
    CCU2D add_3355_26 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4492), .COUT(n4493));
    defparam add_3355_26.INIT0 = 16'h5555;
    defparam add_3355_26.INIT1 = 16'h5555;
    defparam add_3355_26.INJECT1_0 = "NO";
    defparam add_3355_26.INJECT1_1 = "NO";
    LUT4 i3624_4_lut (.A(cnt_p[10]), .B(n200[3]), .C(cnt_p[13]), .D(n4725), 
         .Z(n4761)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3624_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (GND_net, sys_clk_c, switch_1_c, beep_c, music_note_4__N_78, 
            clk_p, sys_rst_n_c, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    input switch_1_c;
    output beep_c;
    input [4:0]music_note_4__N_78;
    input clk_p;
    input sys_rst_n_c;
    input VCC_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    
    wire n4478;
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(65[12:20])
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(31[12:20])
    wire [17:0]n1675;
    
    wire n4479, n4477, n4476, n4475, n4474, n4473, n4472, n4455;
    wire [17:0]n77;
    
    wire n4454, n4453, n4452, n4451, n1378, n4480, n1694, n4450, 
        n4449, n4448, n4447, n29, n34, n30, piano_out_N_331, n31, 
        n28;
    
    CCU2D add_814_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4478), .COUT(n4479), .S0(n1675[13]), .S1(n1675[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_15.INIT0 = 16'h5999;
    defparam add_814_15.INIT1 = 16'h5999;
    defparam add_814_15.INJECT1_0 = "NO";
    defparam add_814_15.INJECT1_1 = "NO";
    CCU2D add_814_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4477), .COUT(n4478), .S0(n1675[11]), .S1(n1675[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_13.INIT0 = 16'h5999;
    defparam add_814_13.INIT1 = 16'h5999;
    defparam add_814_13.INJECT1_0 = "NO";
    defparam add_814_13.INJECT1_1 = "NO";
    CCU2D add_814_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4476), .COUT(n4477), .S0(n1675[9]), .S1(n1675[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_11.INIT0 = 16'h5999;
    defparam add_814_11.INIT1 = 16'h5999;
    defparam add_814_11.INJECT1_0 = "NO";
    defparam add_814_11.INJECT1_1 = "NO";
    CCU2D add_814_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4475), .COUT(n4476), .S0(n1675[7]), .S1(n1675[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_9.INIT0 = 16'h5999;
    defparam add_814_9.INIT1 = 16'h5999;
    defparam add_814_9.INJECT1_0 = "NO";
    defparam add_814_9.INJECT1_1 = "NO";
    CCU2D add_814_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4474), .COUT(n4475), .S0(n1675[5]), .S1(n1675[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_7.INIT0 = 16'h5999;
    defparam add_814_7.INIT1 = 16'h5999;
    defparam add_814_7.INJECT1_0 = "NO";
    defparam add_814_7.INJECT1_1 = "NO";
    CCU2D add_814_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4473), .COUT(n4474), .S0(n1675[3]), .S1(n1675[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_5.INIT0 = 16'h5999;
    defparam add_814_5.INIT1 = 16'h5999;
    defparam add_814_5.INJECT1_0 = "NO";
    defparam add_814_5.INJECT1_1 = "NO";
    CCU2D add_814_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4472), .COUT(n4473), .S0(n1675[1]), .S1(n1675[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_3.INIT0 = 16'h5999;
    defparam add_814_3.INIT1 = 16'h5999;
    defparam add_814_3.INJECT1_0 = "NO";
    defparam add_814_3.INJECT1_1 = "NO";
    CCU2D add_814_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n4472), .S1(n1675[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_1.INIT0 = 16'h0000;
    defparam add_814_1.INIT1 = 16'h5999;
    defparam add_814_1.INJECT1_0 = "NO";
    defparam add_814_1.INJECT1_1 = "NO";
    CCU2D time_cnt_905_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4455), .S0(n77[17]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_905_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_905_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4454), .COUT(n4455), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_905_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4453), .COUT(n4454), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_905_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4452), .COUT(n4453), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_905_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4451), .COUT(n4452), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_11.INJECT1_1 = "NO";
    FD1S3IX time_cnt_905__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i0.GSR = "ENABLED";
    CCU2D add_814_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4480), 
          .S0(n1675[17]), .S1(n1694));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_19.INIT0 = 16'h5555;
    defparam add_814_19.INIT1 = 16'h0000;
    defparam add_814_19.INJECT1_0 = "NO";
    defparam add_814_19.INJECT1_1 = "NO";
    FD1S3IX time_cnt_905__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i17.GSR = "ENABLED";
    CCU2D time_cnt_905_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4450), .COUT(n4451), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_905_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4449), .COUT(n4450), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_7.INJECT1_1 = "NO";
    CCU2D add_814_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4479), .COUT(n4480), .S0(n1675[15]), .S1(n1675[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_814_17.INIT0 = 16'h5999;
    defparam add_814_17.INIT1 = 16'h5555;
    defparam add_814_17.INJECT1_0 = "NO";
    defparam add_814_17.INJECT1_1 = "NO";
    CCU2D time_cnt_905_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4448), .COUT(n4449), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_5.INJECT1_1 = "NO";
    FD1S3IX time_cnt_905__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_905__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n1378), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905__i1.GSR = "ENABLED";
    CCU2D time_cnt_905_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4447), .COUT(n4448), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_905_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_905_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_3.INJECT1_1 = "NO";
    LUT4 i669_2_lut (.A(n1694), .B(switch_1_c), .Z(n1378)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[11] 76[5])
    defparam i669_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_331)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n1675[1]), .B(n1675[6]), .C(n1675[16]), .D(n1675[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n1675[5]), .C(n28), .D(n1675[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n1675[10]), .B(n1675[4]), .C(n1675[8]), .D(n1675[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n1675[14]), .B(n1675[17]), .C(n1675[15]), .D(n1675[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n1675[12]), .B(n1675[7]), .C(n1675[0]), .D(n1675[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    FD1S3AX piano_out_20 (.D(piano_out_N_331), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=108 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    CCU2D time_cnt_905_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4447), .S1(n77[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_905_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_905_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_905_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_905_add_4_1.INJECT1_1 = "NO";
    PDPW8KC tone_4__I_0 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), 
            .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), 
            .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), 
            .BE0(GND_net), .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), 
            .CSW0(GND_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(music_note_4__N_78[0]), 
            .ADR5(music_note_4__N_78[1]), .ADR6(music_note_4__N_78[2]), 
            .ADR7(music_note_4__N_78[3]), .ADR8(music_note_4__N_78[4]), 
            .ADR9(GND_net), .ADR10(GND_net), .ADR11(GND_net), .ADR12(GND_net), 
            .CER(sys_rst_n_c), .OCER(VCC_net), .CLKR(clk_p), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(time_end[9]), 
            .DO1(time_end[10]), .DO2(time_end[11]), .DO3(time_end[12]), 
            .DO4(time_end[13]), .DO5(time_end[14]), .DO6(time_end[15]), 
            .DO9(time_end[0]), .DO10(time_end[1]), .DO11(time_end[2]), 
            .DO12(time_end[3]), .DO13(time_end[4]), .DO14(time_end[5]), 
            .DO15(time_end[6]), .DO16(time_end[7]), .DO17(time_end[8]));
    defparam tone_4__I_0.DATA_WIDTH_W = 18;
    defparam tone_4__I_0.DATA_WIDTH_R = 18;
    defparam tone_4__I_0.REGMODE = "NOREG";
    defparam tone_4__I_0.CSDECODE_W = "0b000";
    defparam tone_4__I_0.CSDECODE_R = "0b000";
    defparam tone_4__I_0.GSR = "DISABLED";
    defparam tone_4__I_0.RESETMODE = "ASYNC";
    defparam tone_4__I_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam tone_4__I_0.INIT_DATA = "STATIC";
    defparam tone_4__I_0.INITVAL_00 = "0x0166C017B901AA101DE40218D0238C027E702CC802F730354303BC90431D0471B04FCC059970FFFF";
    defparam tone_4__I_0.INITVAL_01 = "0x0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0000000BDC00D5000EF1010C6011C5013F3";
    defparam tone_4__I_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module uart_loop
//

module uart_loop (uart_send_data, sys_clk_c, sys_clk_c_enable_46, uart_recv_data, 
            recv_done_d0, uart_recv_done, tx_ready, tx_ready_N_287, 
            recv_done_d1, uart_send_en, sys_clk_c_enable_50, clk_p_enable_28) /* synthesis syn_module_defined=1 */ ;
    output [7:0]uart_send_data;
    input sys_clk_c;
    input sys_clk_c_enable_46;
    input [7:0]uart_recv_data;
    output recv_done_d0;
    input uart_recv_done;
    output tx_ready;
    input tx_ready_N_287;
    output recv_done_d1;
    output uart_send_en;
    input sys_clk_c_enable_50;
    input clk_p_enable_28;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    FD1P3AX send_data_i0_i0 (.D(uart_recv_data[0]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i0.GSR = "ENABLED";
    FD1S3AX recv_done_d0_463 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(127[10] 130[8])
    defparam recv_done_d0_463.GSR = "ENABLED";
    FD1P3AX send_data_i0_i7 (.D(uart_recv_data[7]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i7.GSR = "ENABLED";
    FD1P3AX send_data_i0_i6 (.D(uart_recv_data[6]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i6.GSR = "ENABLED";
    FD1P3AX send_data_i0_i5 (.D(uart_recv_data[5]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i5.GSR = "ENABLED";
    FD1P3AX send_data_i0_i4 (.D(uart_recv_data[4]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i4.GSR = "ENABLED";
    FD1P3AX send_data_i0_i3 (.D(uart_recv_data[3]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i3.GSR = "ENABLED";
    FD1P3AX send_data_i0_i2 (.D(uart_recv_data[2]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i2.GSR = "ENABLED";
    FD1P3AX send_data_i0_i1 (.D(uart_recv_data[1]), .SP(sys_clk_c_enable_46), 
            .CK(sys_clk_c), .Q(uart_send_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i1.GSR = "ENABLED";
    FD1S3AX tx_ready_24 (.D(tx_ready_N_287), .CK(sys_clk_c), .Q(tx_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam tx_ready_24.GSR = "ENABLED";
    FD1S3AX recv_done_d1_464 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(127[10] 130[8])
    defparam recv_done_d1_464.GSR = "ENABLED";
    FD1P3AX send_en_25 (.D(clk_p_enable_28), .SP(sys_clk_c_enable_50), .CK(sys_clk_c), 
            .Q(uart_send_en));   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_en_25.GSR = "ENABLED";
    
endmodule
