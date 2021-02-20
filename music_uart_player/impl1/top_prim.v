// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sat Feb 20 23:59:51 2021
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
    
    wire n39, n40, n45, n46, n47, n48, n49, n50, n51, n52, 
        n62, n66, n83, n84, n85, n86, n87, n88, n89, n90, 
        n91, n36026, n167, n170, n171, n172, n173, n174, n175, 
        n176, n177, n178, n179, n180, n181, n182, n183, n184, 
        n185, n9, n36213;
    wire [4:0]state_4__N_7218;
    wire [4:0]music_note_4__N_7231;
    
    wire n4, n36539, n35979, n36209, n35396, n36538, n36537, n36319, 
        n15, n36458, n36456, n36536, sys_clk_c_enable_1, n36601, 
        n35978, clk_p_enable_11, clk_p_enable_14, n35977, n36611, 
        n36190, n36604, n36326, n36457, n35996, n35995, n36300, 
        n36298, n15281, n15280, n36294, n35976, n36287, n35975, 
        n36274, n34498, n34496, n34493, tx_ready, tx_ready_N_7437, 
        n36770, sys_clk_c_enable_48, clk_p_enable_10, n36603, clk_p_enable_35, 
        clk_p_enable_12, n15571, n35922, n36225, n36210, n35921, 
        n36632, n34132, clk_p_enable_32, n36104, n36631, n36009, 
        n35974, n35973, n36630, n35920, n35919, n35918, n35420, 
        n14, n22, n36502, n36501, n35917, n34369, n36608, n36500, 
        n36499, n36498, n36629, n15_adj_7660, n36461, n36602, n36208, 
        n36497, n36496, n35916, n93, n126, n35915, n36628, n36593, 
        n35913, n35912, n35911, n35910, n35909, n12, n126_adj_7661, 
        n35908, n35907, n14_adj_7662, n36607, n36618, clk_p_enable_29, 
        n36483, clk_p_enable_30, n28655, n36485, clk_p_enable_15, 
        clk_p_enable_18, n36484, n36616, n36615, n36606, n35906, 
        n36614, n36599, clk_p_enable_38, n36211;
    
    VHI i2 (.Z(VCC_net));
    FD1P3AX music_note_i0_i0 (.D(music_note_4__N_7231[0]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_note_i0_i0.GSR = "DISABLED";
    LUT4 n36499_bdd_3_lut (.A(n36499), .B(n36498), .C(music_cnt[3]), .Z(n36500)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36499_bdd_3_lut.init = 16'hcaca;
    LUT4 music_cnt_0__bdd_3_lut_39805 (.A(music_cnt[0]), .B(music_cnt[5]), 
         .C(music_cnt[4]), .Z(n36497)) /* synthesis lut_function=(!(A (B+!(C)))) */ ;
    defparam music_cnt_0__bdd_3_lut_39805.init = 16'h7575;
    LUT4 music_cnt_0__bdd_4_lut_39819 (.A(music_cnt[0]), .B(music_cnt[5]), 
         .C(music_cnt[4]), .D(music_cnt[2]), .Z(n36496)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam music_cnt_0__bdd_4_lut_39819.init = 16'h6a10;
    LUT4 i1_2_lut_rep_60_2_lut_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(n36631), .D(sys_rst_n_c), .Z(n36604)) /* synthesis lut_function=(A (C+!(D))+!A (B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i1_2_lut_rep_60_2_lut_3_lut_4_lut.init = 16'hf4ff;
    LUT4 recv_done_flag_I_0_2_lut_rep_89 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_48)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_89.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(sys_clk_c_enable_1)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i1_3_lut_4_lut.init = 16'h44f4;
    PFUMX i39799 (.BLUT(n36484), .ALUT(n36483), .C0(music_cnt[1]), .Z(n36485));
    LUT4 n36539_bdd_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[0]), 
         .D(n36539), .Z(music_note_4__N_7231[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam n36539_bdd_3_lut_4_lut.init = 16'hfb40;
    LUT4 n36501_bdd_3_lut_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(n36501), .D(uart_recv_data[1]), .Z(n36502)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam n36501_bdd_3_lut_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_rep_62 (.A(n36608), .B(cnt_run[0]), .C(cnt_run[1]), 
         .Z(n36606)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[11:29])
    defparam i2_3_lut_rep_62.init = 16'h1010;
    LUT4 mux_4813_i5_4_lut (.A(music_note[4]), .B(uart_recv_data[4]), .C(sys_clk_c_enable_48), 
         .D(n28655), .Z(music_note_4__N_7231[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(151[7] 333[5])
    defparam mux_4813_i5_4_lut.init = 16'hcac0;
    LUT4 i39771_2_lut_3_lut_4_lut (.A(cnt_run[1]), .B(n36607), .C(state[0]), 
         .D(cnt_run[0]), .Z(n9)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i39771_2_lut_3_lut_4_lut.init = 16'hefff;
    FD1P3IX cnt_delay_i0_i14 (.D(n171), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[14]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i14.GSR = "DISABLED";
    LUT4 i32176_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[3]), 
         .D(n36298), .Z(n15280)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i32176_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_3_lut_4_lut_adj_2411 (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(tx_ready_N_7437)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i1_3_lut_4_lut_adj_2411.init = 16'hf444;
    LUT4 i32178_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[2]), 
         .D(n15_adj_7660), .Z(n15281)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i32178_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_16763_Mux_1_i127_3_lut_rep_70_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(uart_recv_data[1]), .D(music_note[1]), .Z(n36614)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam mux_16763_Mux_1_i127_3_lut_rep_70_4_lut.init = 16'hfb40;
    LUT4 i26052_1_lut_2_lut (.A(recv_done_d1), .B(recv_done_d0), .Z(clk_p_enable_30)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i26052_1_lut_2_lut.init = 16'hbbbb;
    LUT4 i39749_2_lut_rep_73_3_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(sys_rst_n_c), .Z(clk_p_enable_29)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(119[25:55])
    defparam i39749_2_lut_rep_73_3_lut.init = 16'hb0b0;
    LUT4 i38770_2_lut (.A(music_cnt[0]), .B(music_cnt[2]), .Z(n14)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i38770_2_lut.init = 16'hdddd;
    LUT4 i39657_4_lut (.A(music_cnt[1]), .B(music_cnt[0]), .C(music_cnt[5]), 
         .D(music_cnt[2]), .Z(n36300)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i39657_4_lut.init = 16'h2228;
    LUT4 i39354_3_lut_4_lut_3_lut (.A(music_cnt[0]), .B(music_cnt[1]), .C(music_cnt[2]), 
         .Z(n35995)) /* synthesis lut_function=(A (B (C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i39354_3_lut_4_lut_3_lut.init = 16'h9494;
    LUT4 mux_16763_Mux_0_i14_4_lut_3_lut (.A(music_cnt[0]), .B(music_cnt[1]), 
         .C(music_cnt[2]), .Z(n14_adj_7662)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam mux_16763_Mux_0_i14_4_lut_3_lut.init = 16'h2424;
    FD1P3IX cnt_delay_i0_i13 (.D(n172), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[13]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n173), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[12]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i12.GSR = "DISABLED";
    LUT4 mux_16763_Mux_2_i15_4_lut_4_lut (.A(music_cnt[0]), .B(music_cnt[2]), 
         .C(music_cnt[3]), .D(music_cnt[1]), .Z(n15_adj_7660)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam mux_16763_Mux_2_i15_4_lut_4_lut.init = 16'h9c03;
    LUT4 m1_lut (.Z(n36770)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i38857_2_lut_rep_84 (.A(music_cnt[0]), .B(music_cnt[1]), .Z(n36628)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i38857_2_lut_rep_84.init = 16'heeee;
    CCU2D add_13_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n35906), .S1(n52));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(295[34:46])
    defparam add_13_1.INIT0 = 16'hF000;
    defparam add_13_1.INIT1 = 16'h5555;
    defparam add_13_1.INJECT1_0 = "NO";
    defparam add_13_1.INJECT1_1 = "NO";
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    FD1P3IX music_cnt_i0_i5 (.D(n86), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[5]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i5.GSR = "DISABLED";
    LUT4 i38785_4_lut (.A(n36632), .B(music_cnt[5]), .C(n93), .D(music_cnt[4]), 
         .Z(n126)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i38785_4_lut.init = 16'h3011;
    LUT4 music_cnt_1__bdd_3_lut_39786 (.A(music_cnt[0]), .B(music_cnt[4]), 
         .C(music_cnt[2]), .Z(n36458)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam music_cnt_1__bdd_3_lut_39786.init = 16'h0606;
    LUT4 i1_3_lut_4_lut_adj_2412 (.A(n36606), .B(cnt_run[2]), .C(cnt_run[7]), 
         .D(cnt_run[3]), .Z(n36208)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[11:29])
    defparam i1_3_lut_4_lut_adj_2412.init = 16'h0002;
    LUT4 i1_2_lut_rep_86 (.A(cnt_run[6]), .B(cnt_run[4]), .Z(n36630)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_2_lut_rep_86.init = 16'heeee;
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    IB switch_1_pad (.I(switch_1), .O(switch_1_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    FD1P3AX music_note_i0_i4 (.D(music_note_4__N_7231[4]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_note_i0_i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n174), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[11]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i11.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n175), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[10]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i10.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_72_4_lut (.A(cnt_run[6]), .B(cnt_run[4]), .C(cnt_run[5]), 
         .D(cnt_run[7]), .Z(n36616)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_3_lut_rep_72_4_lut.init = 16'hfffe;
    FD1P3AX music_note_i0_i3 (.D(music_note_4__N_7231[3]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_note_i0_i3.GSR = "DISABLED";
    FD1P3AX music_note_i0_i2 (.D(music_note_4__N_7231[2]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_note_i0_i2.GSR = "DISABLED";
    FD1P3AX music_note_i0_i1 (.D(music_note_4__N_7231[1]), .SP(sys_rst_n_c), 
            .CK(clk_p), .Q(music_note[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_note_i0_i1.GSR = "DISABLED";
    PFUMX i39656 (.BLUT(n14), .ALUT(n36300), .C0(music_cnt[4]), .Z(n36298));
    LUT4 i2_3_lut_4_lut (.A(cnt_run[6]), .B(cnt_run[4]), .C(cnt_run[5]), 
         .D(n36208), .Z(n36210)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i2_3_lut_4_lut.init = 16'h1000;
    FD1P3IX cnt_delay_i0_i9 (.D(n176), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[9]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i9.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_87 (.A(state[0]), .B(state[1]), .Z(n36631)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(291[4:7])
    defparam i1_2_lut_rep_87.init = 16'hdddd;
    LUT4 i39782_2_lut_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(recv_done_d0), 
         .D(recv_done_d1), .Z(clk_p_enable_18)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(291[4:7])
    defparam i39782_2_lut_2_lut_3_lut_4_lut.init = 16'h2202;
    LUT4 i1_2_lut_rep_57_3_lut_4_lut (.A(cnt_run[2]), .B(n36611), .C(cnt_run[0]), 
         .D(cnt_run[1]), .Z(n36601)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_2_lut_rep_57_3_lut_4_lut.init = 16'hffef;
    LUT4 i34254_2_lut_rep_88 (.A(music_cnt[1]), .B(music_cnt[2]), .Z(n36632)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i34254_2_lut_rep_88.init = 16'heeee;
    LUT4 i39632_3_lut_4_lut (.A(music_cnt[1]), .B(music_cnt[2]), .C(music_cnt[3]), 
         .D(n36593), .Z(n36274)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i39632_3_lut_4_lut.init = 16'h01f1;
    LUT4 n36458_bdd_4_lut (.A(n36458), .B(n36457), .C(music_cnt[1]), .D(music_cnt[5]), 
         .Z(n36599)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n36458_bdd_4_lut.init = 16'h00ca;
    CCU2D sub_17025_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[3]), .B1(music_delay[3]), .C1(GND_net), 
          .D1(GND_net), .COUT(n35973));
    defparam sub_17025_add_2_1.INIT0 = 16'h0000;
    defparam sub_17025_add_2_1.INIT1 = 16'h5999;
    defparam sub_17025_add_2_1.INJECT1_0 = "NO";
    defparam sub_17025_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_2413 (.A(n36606), .B(cnt_run[2]), .C(n36616), 
         .D(cnt_run[3]), .Z(n36213)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[11:29])
    defparam i2_3_lut_4_lut_adj_2413.init = 16'h0200;
    LUT4 i39645_3_lut (.A(state[0]), .B(state_back[0]), .C(n167), .Z(n36287)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i39645_3_lut.init = 16'heaea;
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_run[2]), .B(n36611), .C(n36608), 
         .D(cnt_run[0]), .Z(n36225)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i39752_2_lut_3_lut_3_lut_4_lut (.A(cnt_run[1]), .B(n36607), .C(cnt_run[0]), 
         .D(n36604), .Z(clk_p_enable_32)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i39752_2_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 n14_bdd_3_lut (.A(n14_adj_7662), .B(n36456), .C(music_cnt[4]), 
         .Z(n36536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14_bdd_3_lut.init = 16'hcaca;
    LUT4 i38798_4_lut (.A(n35995), .B(music_cnt[5]), .C(n35996), .D(n36618), 
         .Z(n126_adj_7661)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i38798_4_lut.init = 16'h3022;
    LUT4 mux_16763_Mux_2_i127_3_lut (.A(n34369), .B(music_note[2]), .C(n28655), 
         .Z(n40)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam mux_16763_Mux_2_i127_3_lut.init = 16'hcaca;
    CCU2D add_31_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n35922), 
          .S0(n170));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_17.INIT0 = 16'h5aaa;
    defparam add_31_17.INIT1 = 16'h0000;
    defparam add_31_17.INJECT1_0 = "NO";
    defparam add_31_17.INJECT1_1 = "NO";
    LUT4 i38882_4_lut_4_lut (.A(cnt_run[1]), .B(n36607), .C(n36225), .D(n51), 
         .Z(n35420)) /* synthesis lut_function=(A (C)+!A !(B+!(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i38882_4_lut_4_lut.init = 16'hb1a0;
    OB blink_pad (.I(GND_net), .O(blink));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:26])
    LUT4 i39718_3_lut_4_lut (.A(cnt_run[1]), .B(n36607), .C(cnt_run[0]), 
         .D(n52), .Z(n36104)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i39718_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i39772_4_lut (.A(sys_clk_c_enable_48), .B(n28655), .C(music_cnt[6]), 
         .D(music_cnt[4]), .Z(n36326)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(151[7] 333[5])
    defparam i39772_4_lut.init = 16'haaab;
    PFUMX i22 (.BLUT(n9), .ALUT(n36287), .C0(state[1]), .Z(state_4__N_7218[0]));
    CCU2D add_17_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35911), .COUT(n35912), .S0(n88), .S1(n87));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(306[22:38])
    defparam add_17_5.INIT0 = 16'h5aaa;
    defparam add_17_5.INIT1 = 16'h5aaa;
    defparam add_17_5.INJECT1_0 = "NO";
    defparam add_17_5.INJECT1_1 = "NO";
    CCU2D add_31_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35921), .COUT(n35922), .S0(n172), .S1(n171));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_15.INIT0 = 16'h5aaa;
    defparam add_31_15.INIT1 = 16'h5aaa;
    defparam add_31_15.INJECT1_0 = "NO";
    defparam add_31_15.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i8 (.D(n177), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[8]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i8.GSR = "DISABLED";
    LUT4 n36537_bdd_3_lut (.A(n36537), .B(n36599), .C(music_cnt[6]), .Z(n36538)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36537_bdd_3_lut.init = 16'hcaca;
    LUT4 n36538_bdd_3_lut (.A(n36538), .B(music_note[0]), .C(n28655), 
         .Z(n36539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36538_bdd_3_lut.init = 16'hcaca;
    PFUMX mux_4813_i3 (.BLUT(n40), .ALUT(n15281), .C0(n36326), .Z(music_note_4__N_7231[2]));
    FD1P3AX cnt_run_i0_i7 (.D(n36026), .SP(clk_p_enable_18), .CK(clk_p), 
            .Q(cnt_run[7]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:25])
    FD1P3AX cnt_run_i0_i6 (.D(n36770), .SP(clk_p_enable_10), .CK(clk_p), 
            .Q(cnt_run[6]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n36770), .SP(clk_p_enable_11), .CK(clk_p), 
            .Q(cnt_run[5]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n36770), .SP(clk_p_enable_12), .CK(clk_p), 
            .Q(cnt_run[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3IX music_cnt_i0_i4 (.D(n87), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i4.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n36770), .SP(clk_p_enable_14), .CK(clk_p), 
            .Q(cnt_run[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n36770), .SP(clk_p_enable_15), .CK(clk_p), 
            .Q(cnt_run[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    LUT4 i39776_2_lut_4_lut (.A(n28655), .B(music_cnt[6]), .C(music_cnt[3]), 
         .D(sys_clk_c_enable_48), .Z(n36319)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(152[3] 331[10])
    defparam i39776_2_lut_4_lut.init = 16'hff10;
    CCU2D add_31_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35920), .COUT(n35921), .S0(n174), .S1(n173));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_13.INIT0 = 16'h5aaa;
    defparam add_31_13.INIT1 = 16'h5aaa;
    defparam add_31_13.INJECT1_0 = "NO";
    defparam add_31_13.INJECT1_1 = "NO";
    FD1P3AX cnt_run_i0_i1 (.D(n35420), .SP(clk_p_enable_18), .CK(clk_p), 
            .Q(cnt_run[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i0 (.D(state_4__N_7218[0]), .SP(clk_p_enable_30), .CK(clk_p), 
            .Q(state[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i32161_3_lut_4_lut (.A(cnt_run[1]), .B(n36607), .C(n36631), .D(cnt_run[0]), 
         .Z(n28655)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i32161_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX cnt_run_i0_i0 (.D(n36104), .SP(clk_p_enable_18), .CK(clk_p), 
            .Q(cnt_run[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(8[21:29])
    CCU2D add_31_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35919), .COUT(n35920), .S0(n176), .S1(n175));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_11.INIT0 = 16'h5aaa;
    defparam add_31_11.INIT1 = 16'h5aaa;
    defparam add_31_11.INJECT1_0 = "NO";
    defparam add_31_11.INJECT1_1 = "NO";
    LUT4 i6_4_lut_rep_64 (.A(n35396), .B(n12), .C(music_cnt[5]), .D(music_cnt[8]), 
         .Z(n36608)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i6_4_lut_rep_64.init = 16'hfffd;
    PFUMX mux_4813_i4 (.BLUT(n39), .ALUT(n15280), .C0(n36319), .Z(music_note_4__N_7231[3]));
    LUT4 music_cnt_1__bdd_3_lut_39879 (.A(music_cnt[1]), .B(music_cnt[0]), 
         .C(music_cnt[2]), .Z(n36461)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam music_cnt_1__bdd_3_lut_39879.init = 16'h2c2c;
    CCU2D add_31_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35918), .COUT(n35919), .S0(n178), .S1(n177));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_9.INIT0 = 16'h5aaa;
    defparam add_31_9.INIT1 = 16'h5aaa;
    defparam add_31_9.INJECT1_0 = "NO";
    defparam add_31_9.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i7 (.D(n178), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[7]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i7.GSR = "DISABLED";
    LUT4 i37855_4_lut (.A(clk_p_enable_18), .B(n36602), .C(n36209), .D(n46), 
         .Z(clk_p_enable_10)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i37855_4_lut.init = 16'ha2a0;
    FD1P3IX cnt_delay_i0_i6 (.D(n179), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[6]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i6.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(n36208), .B(cnt_run[6]), .C(cnt_run[5]), .D(cnt_run[4]), 
         .Z(n36209)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0008;
    FD1P3IX cnt_delay_i0_i5 (.D(n180), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[5]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i5.GSR = "DISABLED";
    LUT4 i39758_3_lut_rep_56_4_lut (.A(cnt_run[0]), .B(n36607), .C(cnt_run[1]), 
         .D(n36604), .Z(clk_p_enable_38)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i39758_3_lut_rep_56_4_lut.init = 16'h0010;
    LUT4 i37954_2_lut_4_lut (.A(state[1]), .B(state[0]), .C(clk_p_enable_29), 
         .D(n167), .Z(n34498)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i37954_2_lut_4_lut.init = 16'h2000;
    FD1P3IX cnt_delay_i0_i4 (.D(n181), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i4.GSR = "DISABLED";
    LUT4 i37853_4_lut (.A(clk_p_enable_18), .B(n36602), .C(n36210), .D(n47), 
         .Z(clk_p_enable_11)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i37853_4_lut.init = 16'ha2a0;
    CCU2D sub_17025_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35979), .S0(n167));
    defparam sub_17025_add_2_cout.INIT0 = 16'h0000;
    defparam sub_17025_add_2_cout.INIT1 = 16'h0000;
    defparam sub_17025_add_2_cout.INJECT1_0 = "NO";
    defparam sub_17025_add_2_cout.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i3 (.D(n182), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i3.GSR = "DISABLED";
    LUT4 mux_16763_Mux_2_i93_3_lut_4_lut (.A(music_cnt[0]), .B(music_cnt[1]), 
         .C(music_cnt[2]), .D(music_cnt[3]), .Z(n93)) /* synthesis lut_function=(A (B (C+!(D)))+!A !(B (D)+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam mux_16763_Mux_2_i93_3_lut_4_lut.init = 16'h91dc;
    LUT4 i39355_3_lut_3_lut (.A(music_cnt[0]), .B(music_cnt[1]), .C(music_cnt[2]), 
         .Z(n35996)) /* synthesis lut_function=(!(A ((C)+!B)+!A !((C)+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i39355_3_lut_3_lut.init = 16'h5959;
    LUT4 i39659_2_lut_rep_74 (.A(music_cnt[3]), .B(music_cnt[4]), .Z(n36618)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i39659_2_lut_rep_74.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(music_cnt[3]), .B(music_cnt[4]), .C(music_cnt[2]), 
         .Z(n34132)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i2_2_lut_3_lut.init = 16'h0808;
    PFUMX i37827 (.BLUT(n36274), .ALUT(n126), .C0(music_cnt[6]), .Z(n34369));
    CCU2D add_31_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35917), .COUT(n35918), .S0(n180), .S1(n179));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_7.INIT0 = 16'h5aaa;
    defparam add_31_7.INIT1 = 16'h5aaa;
    defparam add_31_7.INJECT1_0 = "NO";
    defparam add_31_7.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i3 (.D(n88), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i3.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i2 (.D(n89), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i2.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i1 (.D(n90), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i0 (.D(n185), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i0.GSR = "DISABLED";
    LUT4 i39717_4_lut (.A(n36601), .B(state_back[0]), .C(state[1]), .D(state[0]), 
         .Z(n15571)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i39717_4_lut.init = 16'hcdc0;
    LUT4 i1_2_lut_3_lut (.A(music_cnt[3]), .B(music_cnt[4]), .C(music_cnt[2]), 
         .Z(n4)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i1_2_lut_3_lut.init = 16'hf7f7;
    CCU2D add_17_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35910), .COUT(n35911), .S0(n90), .S1(n89));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(306[22:38])
    defparam add_17_3.INIT0 = 16'h5aaa;
    defparam add_17_3.INIT1 = 16'h5aaa;
    defparam add_17_3.INJECT1_0 = "NO";
    defparam add_17_3.INJECT1_1 = "NO";
    LUT4 i38859_2_lut (.A(music_cnt[2]), .B(music_cnt[0]), .Z(n35396)) /* synthesis lut_function=(A (B)) */ ;
    defparam i38859_2_lut.init = 16'h8888;
    PFUMX i39824 (.BLUT(n36461), .ALUT(n36536), .C0(music_cnt[3]), .Z(n36537));
    LUT4 i1_4_lut (.A(state[0]), .B(state[1]), .C(n36601), .D(n167), 
         .Z(state_4__N_7218[1])) /* synthesis lut_function=(A (B+!(C))+!A !((D)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(152[3] 331[10])
    defparam i1_4_lut.init = 16'h8ace;
    LUT4 i1_2_lut_rep_63_3_lut (.A(cnt_run[3]), .B(n36616), .C(cnt_run[2]), 
         .Z(n36607)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_2_lut_rep_63_3_lut.init = 16'hfefe;
    LUT4 music_cnt_0__bdd_3_lut_39820 (.A(music_cnt[0]), .B(music_cnt[1]), 
         .C(music_cnt[2]), .Z(n36499)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;
    defparam music_cnt_0__bdd_3_lut_39820.init = 16'h1313;
    LUT4 i2_3_lut_4_lut_adj_2414 (.A(cnt_run[3]), .B(n36616), .C(cnt_run[2]), 
         .D(n36606), .Z(n36009)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i2_3_lut_4_lut_adj_2414.init = 16'h1000;
    LUT4 i37851_4_lut (.A(clk_p_enable_18), .B(n36602), .C(n36211), .D(n48), 
         .Z(clk_p_enable_12)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i37851_4_lut.init = 16'ha2a0;
    LUT4 music_cnt_0__bdd_4_lut_39849 (.A(music_cnt[0]), .B(music_cnt[1]), 
         .C(music_cnt[5]), .D(music_cnt[2]), .Z(n36593)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam music_cnt_0__bdd_4_lut_39849.init = 16'hf0e8;
    LUT4 mux_16763_Mux_3_i127_3_lut (.A(n36294), .B(music_note[3]), .C(n28655), 
         .Z(n39)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam mux_16763_Mux_3_i127_3_lut.init = 16'hcaca;
    LUT4 i38720_4_lut (.A(n34132), .B(music_cnt[6]), .C(music_cnt[5]), 
         .D(n36628), .Z(n66)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(298[33:42])
    defparam i38720_4_lut.init = 16'h3f37;
    LUT4 i2_4_lut_adj_2415 (.A(n36208), .B(cnt_run[5]), .C(cnt_run[4]), 
         .D(cnt_run[6]), .Z(n36211)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(303[11:29])
    defparam i2_4_lut_adj_2415.init = 16'h0020;
    LUT4 i38757_4_lut (.A(n36628), .B(music_cnt[6]), .C(music_cnt[5]), 
         .D(n4), .Z(n62)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(298[33:42])
    defparam i38757_4_lut.init = 16'h3f3b;
    CCU2D add_13_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35907), .COUT(n35908), .S0(n49), .S1(n48));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(295[34:46])
    defparam add_13_5.INIT0 = 16'h5aaa;
    defparam add_13_5.INIT1 = 16'h5aaa;
    defparam add_13_5.INJECT1_0 = "NO";
    defparam add_13_5.INJECT1_1 = "NO";
    CCU2D add_13_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35906), .COUT(n35907), .S0(n51), .S1(n50));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(295[34:46])
    defparam add_13_3.INIT0 = 16'h5aaa;
    defparam add_13_3.INIT1 = 16'h5aaa;
    defparam add_13_3.INJECT1_0 = "NO";
    defparam add_13_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_58_3_lut_4_lut (.A(cnt_run[3]), .B(n36616), .C(cnt_run[1]), 
         .D(cnt_run[2]), .Z(n36602)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_2_lut_rep_58_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_17_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n35910), .S1(n91));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(306[22:38])
    defparam add_17_1.INIT0 = 16'hF000;
    defparam add_17_1.INIT1 = 16'h5555;
    defparam add_17_1.INJECT1_0 = "NO";
    defparam add_17_1.INJECT1_1 = "NO";
    CCU2D add_31_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35916), .COUT(n35917), .S0(n182), .S1(n181));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_5.INIT0 = 16'h5aaa;
    defparam add_31_5.INIT1 = 16'h5aaa;
    defparam add_31_5.INJECT1_0 = "NO";
    defparam add_31_5.INJECT1_1 = "NO";
    LUT4 i37849_4_lut (.A(clk_p_enable_18), .B(n36602), .C(n36213), .D(n49), 
         .Z(clk_p_enable_14)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i37849_4_lut.init = 16'ha2a0;
    LUT4 i1_2_lut_rep_59_3_lut_4_lut (.A(cnt_run[3]), .B(n36616), .C(cnt_run[0]), 
         .D(cnt_run[2]), .Z(n36603)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_2_lut_rep_59_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_13_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n35909), 
          .S0(n45));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(295[34:46])
    defparam add_13_9.INIT0 = 16'h5aaa;
    defparam add_13_9.INIT1 = 16'h0000;
    defparam add_13_9.INJECT1_0 = "NO";
    defparam add_13_9.INJECT1_1 = "NO";
    CCU2D add_31_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35915), .COUT(n35916), .S0(n184), .S1(n183));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_3.INIT0 = 16'h5aaa;
    defparam add_31_3.INIT1 = 16'h5aaa;
    defparam add_31_3.INJECT1_0 = "NO";
    defparam add_31_3.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i0 (.D(n91), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i0.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(n15571), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(state_back[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    Beeper m_beep (.switch_1_c(switch_1_c), .music_note_4__N_7231({music_note_4__N_7231}), 
           .clk_p(clk_p), .sys_rst_n_c(sys_rst_n_c), .GND_net(GND_net), 
           .VCC_net(VCC_net), .sys_clk_c(sys_clk_c), .beep_c(beep_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(102[9] 108[2])
    LUT4 i37847_4_lut (.A(clk_p_enable_18), .B(n36602), .C(n36009), .D(n50), 
         .Z(clk_p_enable_15)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i37847_4_lut.init = 16'ha2a0;
    FD1P3AX state_i0_i1 (.D(state_4__N_7218[1]), .SP(clk_p_enable_30), .CK(clk_p), 
            .Q(state[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX music_delay_i0_i3 (.D(n66), .SP(clk_p_enable_32), .CK(clk_p), 
            .Q(music_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_delay_i0_i3.GSR = "DISABLED";
    LUT4 music_cnt_5__bdd_4_lut_39814 (.A(music_cnt[5]), .B(music_cnt[0]), 
         .C(music_cnt[2]), .D(music_cnt[1]), .Z(n36456)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C (D))))) */ ;
    defparam music_cnt_5__bdd_4_lut_39814.init = 16'h4113;
    FD1P3AX music_delay_i0_i7 (.D(n62), .SP(clk_p_enable_32), .CK(clk_p), 
            .Q(music_delay[7]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_delay_i0_i7.GSR = "DISABLED";
    CCU2D add_13_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35908), .COUT(n35909), .S0(n47), .S1(n46));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(295[34:46])
    defparam add_13_7.INIT0 = 16'h5aaa;
    defparam add_13_7.INIT1 = 16'h5aaa;
    defparam add_13_7.INJECT1_0 = "NO";
    defparam add_13_7.INJECT1_1 = "NO";
    CCU2D sub_17025_add_2_13 (.A0(cnt_delay[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35978), .COUT(n35979));
    defparam sub_17025_add_2_13.INIT0 = 16'h5555;
    defparam sub_17025_add_2_13.INIT1 = 16'h5555;
    defparam sub_17025_add_2_13.INJECT1_0 = "NO";
    defparam sub_17025_add_2_13.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i15 (.D(n170), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[15]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i15.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n183), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i1 (.D(n184), .SP(clk_p_enable_35), .CD(n34498), 
            .CK(clk_p), .Q(cnt_delay[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam cnt_delay_i0_i1.GSR = "DISABLED";
    LUT4 music_cnt_1__bdd_4_lut_39798 (.A(music_cnt[0]), .B(music_cnt[4]), 
         .C(music_cnt[2]), .D(music_cnt[3]), .Z(n36457)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C (D))+!B !(C)))) */ ;
    defparam music_cnt_1__bdd_4_lut_39798.init = 16'h165e;
    CCU2D sub_17025_add_2_11 (.A0(cnt_delay[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35977), .COUT(n35978));
    defparam sub_17025_add_2_11.INIT0 = 16'h5555;
    defparam sub_17025_add_2_11.INIT1 = 16'h5555;
    defparam sub_17025_add_2_11.INJECT1_0 = "NO";
    defparam sub_17025_add_2_11.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i8 (.D(n83), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[8]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i8.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i7 (.D(n84), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[7]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i7.GSR = "DISABLED";
    PFUMX i39808 (.BLUT(n36502), .ALUT(n36614), .C0(n28655), .Z(music_note_4__N_7231[1]));
    LUT4 music_cnt_1__bdd_2_lut_39839 (.A(music_cnt[4]), .B(music_cnt[3]), 
         .Z(n36483)) /* synthesis lut_function=((B)+!A) */ ;
    defparam music_cnt_1__bdd_2_lut_39839.init = 16'hdddd;
    LUT4 i39652_4_lut (.A(n22), .B(n36485), .C(music_cnt[6]), .D(music_cnt[5]), 
         .Z(n36294)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i39652_4_lut.init = 16'h0aca;
    PFUMX i39806 (.BLUT(n36500), .ALUT(n126_adj_7661), .C0(music_cnt[6]), 
          .Z(n36501));
    CCU2D add_31_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n35915), .S1(n185));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(328[39:55])
    defparam add_31_1.INIT0 = 16'hF000;
    defparam add_31_1.INIT1 = 16'h5555;
    defparam add_31_1.INJECT1_0 = "NO";
    defparam add_31_1.INJECT1_1 = "NO";
    CCU2D sub_17025_add_2_9 (.A0(cnt_delay[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35976), .COUT(n35977));
    defparam sub_17025_add_2_9.INIT0 = 16'h5555;
    defparam sub_17025_add_2_9.INIT1 = 16'h5555;
    defparam sub_17025_add_2_9.INJECT1_0 = "NO";
    defparam sub_17025_add_2_9.INJECT1_1 = "NO";
    LUT4 music_cnt_1__bdd_4_lut_39838 (.A(music_cnt[4]), .B(music_cnt[3]), 
         .C(music_cnt[2]), .D(music_cnt[0]), .Z(n36484)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C (D)))) */ ;
    defparam music_cnt_1__bdd_4_lut_39838.init = 16'h0f57;
    LUT4 i1_2_lut_rep_67_4_lut (.A(cnt_run[7]), .B(cnt_run[5]), .C(n36630), 
         .D(cnt_run[3]), .Z(n36611)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_2_lut_rep_67_4_lut.init = 16'hfffe;
    CCU2D sub_17025_add_2_7 (.A0(cnt_delay[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35975), .COUT(n35976));
    defparam sub_17025_add_2_7.INIT0 = 16'h5555;
    defparam sub_17025_add_2_7.INIT1 = 16'h5555;
    defparam sub_17025_add_2_7.INJECT1_0 = "NO";
    defparam sub_17025_add_2_7.INJECT1_1 = "NO";
    LUT4 i38768_3_lut (.A(music_cnt[0]), .B(music_cnt[1]), .C(music_cnt[2]), 
         .Z(n22)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(294[44:53])
    defparam i38768_3_lut.init = 16'hdcdc;
    LUT4 i39754_3_lut_rep_66_4_lut (.A(sys_clk_c_enable_48), .B(sys_rst_n_c), 
         .C(state[0]), .D(state[1]), .Z(clk_p_enable_35)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i39754_3_lut_rep_66_4_lut.init = 16'h0400;
    CCU2D sub_17025_add_2_5 (.A0(cnt_delay[6]), .B0(music_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[7]), .B1(music_delay[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35974), .COUT(n35975));
    defparam sub_17025_add_2_5.INIT0 = 16'h5999;
    defparam sub_17025_add_2_5.INIT1 = 16'h5999;
    defparam sub_17025_add_2_5.INJECT1_0 = "NO";
    defparam sub_17025_add_2_5.INJECT1_1 = "NO";
    \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_send (.GND_net(GND_net), 
            .sys_clk_c(sys_clk_c), .uart_tx_busy(uart_tx_busy), .uart_send_en(uart_send_en), 
            .uart_send_data({uart_send_data}), .n36629(n36629), .uart_txd_c(uart_txd_c), 
            .n36190(n36190), .n34496(n34496), .n15(n15), .n36615(n36615)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(78[1] 86[6])
    PFUMX i39803 (.BLUT(n36497), .ALUT(n36496), .C0(music_cnt[1]), .Z(n36498));
    GSR GSR_INST (.GSR(sys_rst_n_c));
    FD1P3IX music_cnt_i0_i6 (.D(n85), .SP(clk_p_enable_38), .CD(n34493), 
            .CK(clk_p), .Q(music_cnt[6]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam music_cnt_i0_i6.GSR = "DISABLED";
    LUT4 i39760_2_lut_4_lut_4_lut (.A(n36608), .B(n36603), .C(cnt_run[1]), 
         .D(n36604), .Z(n34493)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i39760_2_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_2416 (.A(cnt_run[1]), .B(n36607), .C(n45), 
         .D(cnt_run[7]), .Z(n36026)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(142[10] 333[5])
    defparam i1_3_lut_4_lut_adj_2416.init = 16'hff10;
    LUT4 i5_4_lut (.A(music_cnt[7]), .B(music_cnt[1]), .C(n36618), .D(music_cnt[6]), 
         .Z(n12)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'hbfff;
    uart_loop u_uart_loop (.uart_send_en(uart_send_en), .sys_clk_c(sys_clk_c), 
            .sys_clk_c_enable_1(sys_clk_c_enable_1), .clk_p_enable_30(clk_p_enable_30), 
            .uart_tx_busy(uart_tx_busy), .n36629(n36629), .n36615(n36615), 
            .n15(n15), .n36190(n36190), .n34496(n34496), .uart_send_data({uart_send_data}), 
            .sys_clk_c_enable_48(sys_clk_c_enable_48), .uart_recv_data({uart_recv_data}), 
            .recv_done_d0(recv_done_d0), .uart_recv_done(uart_recv_done), 
            .tx_ready(tx_ready), .tx_ready_N_7437(tx_ready_N_7437), .recv_done_d1(recv_done_d1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(89[11] 99[6])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D add_17_9 (.A0(music_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35913), .S0(n84), .S1(n83));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(306[22:38])
    defparam add_17_9.INIT0 = 16'h5aaa;
    defparam add_17_9.INIT1 = 16'h5aaa;
    defparam add_17_9.INJECT1_0 = "NO";
    defparam add_17_9.INJECT1_1 = "NO";
    divide divide_1ms (.GND_net(GND_net), .clk_p(clk_p), .sys_clk_c(sys_clk_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(110[8] 116[2])
    CCU2D add_17_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35912), .COUT(n35913), .S0(n86), .S1(n85));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(306[22:38])
    defparam add_17_7.INIT0 = 16'h5aaa;
    defparam add_17_7.INIT1 = 16'h5aaa;
    defparam add_17_7.INJECT1_0 = "NO";
    defparam add_17_7.INJECT1_1 = "NO";
    CCU2D sub_17025_add_2_3 (.A0(cnt_delay[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35973), .COUT(n35974));
    defparam sub_17025_add_2_3.INIT0 = 16'h5555;
    defparam sub_17025_add_2_3.INIT1 = 16'h5555;
    defparam sub_17025_add_2_3.INJECT1_0 = "NO";
    defparam sub_17025_add_2_3.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), 
            .uart_recv_data({uart_recv_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(65[1] 72[6])
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (switch_1_c, music_note_4__N_7231, clk_p, sys_rst_n_c, 
            GND_net, VCC_net, sys_clk_c, beep_c) /* synthesis syn_module_defined=1 */ ;
    input switch_1_c;
    input [4:0]music_note_4__N_7231;
    input clk_p;
    input sys_rst_n_c;
    input GND_net;
    input VCC_net;
    input sys_clk_c;
    output beep_c;
    
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n15419, n15125;
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(31[12:20])
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(65[12:20])
    wire [17:0]n77;
    wire [17:0]n15400;
    
    wire n35923, n35956, n35955, n35954, piano_out_N_7481, n35953, 
        n35952, n29, n34, n30, n31, n28, n35951, n35950, n35931, 
        n35949, n35930, n35929, n35948, n35928, n35927, n35926, 
        n35925, n35924;
    
    LUT4 i16899_2_lut (.A(n15419), .B(switch_1_c), .Z(n15125)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[11] 76[5])
    defparam i16899_2_lut.init = 16'hbbbb;
    PDPW8KC tone_4__I_0 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), 
            .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), 
            .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), 
            .BE0(GND_net), .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), 
            .CSW0(GND_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(music_note_4__N_7231[0]), 
            .ADR5(music_note_4__N_7231[1]), .ADR6(music_note_4__N_7231[2]), 
            .ADR7(music_note_4__N_7231[3]), .ADR8(music_note_4__N_7231[4]), 
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
    FD1S3IX time_cnt_17083__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i0.GSR = "ENABLED";
    CCU2D add_17022_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n35923), .S1(n15400[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_1.INIT0 = 16'h0000;
    defparam add_17022_1.INIT1 = 16'h5999;
    defparam add_17022_1.INJECT1_0 = "NO";
    defparam add_17022_1.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35956), .S0(n77[17]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_17083_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35955), .COUT(n35956), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35954), .COUT(n35955), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_15.INJECT1_1 = "NO";
    FD1S3AX piano_out_20 (.D(piano_out_N_7481), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=108 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    CCU2D time_cnt_17083_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35953), .COUT(n35954), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35952), .COUT(n35953), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_11.INJECT1_1 = "NO";
    FD1S3IX time_cnt_17083__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i1.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_17083__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n15125), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083__i17.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_7481)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n15400[1]), .B(n15400[6]), .C(n15400[16]), .D(n15400[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n15400[5]), .C(n28), .D(n15400[11]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    CCU2D time_cnt_17083_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35951), .COUT(n35952), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35950), .COUT(n35951), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_7.INJECT1_1 = "NO";
    CCU2D add_17022_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35931), .S0(n15400[17]), .S1(n15419));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_19.INIT0 = 16'h5555;
    defparam add_17022_19.INIT1 = 16'h0000;
    defparam add_17022_19.INJECT1_0 = "NO";
    defparam add_17022_19.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35949), .COUT(n35950), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_5.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(n15400[10]), .B(n15400[4]), .C(n15400[8]), .D(n15400[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n15400[14]), .B(n15400[17]), .C(n15400[15]), .D(n15400[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    CCU2D add_17022_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35930), .COUT(n35931), .S0(n15400[15]), 
          .S1(n15400[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_17.INIT0 = 16'h5999;
    defparam add_17022_17.INIT1 = 16'h5555;
    defparam add_17022_17.INJECT1_0 = "NO";
    defparam add_17022_17.INJECT1_1 = "NO";
    CCU2D add_17022_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35929), .COUT(n35930), .S0(n15400[13]), 
          .S1(n15400[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_15.INIT0 = 16'h5999;
    defparam add_17022_15.INIT1 = 16'h5999;
    defparam add_17022_15.INJECT1_0 = "NO";
    defparam add_17022_15.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35948), .COUT(n35949), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_17083_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_17083_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_17083_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n35948), .S1(n77[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_17083_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_17083_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_17083_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_17083_add_4_1.INJECT1_1 = "NO";
    CCU2D add_17022_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35928), .COUT(n35929), .S0(n15400[11]), 
          .S1(n15400[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_13.INIT0 = 16'h5999;
    defparam add_17022_13.INIT1 = 16'h5999;
    defparam add_17022_13.INJECT1_0 = "NO";
    defparam add_17022_13.INJECT1_1 = "NO";
    CCU2D add_17022_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35927), .COUT(n35928), .S0(n15400[9]), 
          .S1(n15400[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_11.INIT0 = 16'h5999;
    defparam add_17022_11.INIT1 = 16'h5999;
    defparam add_17022_11.INJECT1_0 = "NO";
    defparam add_17022_11.INJECT1_1 = "NO";
    CCU2D add_17022_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35926), .COUT(n35927), .S0(n15400[7]), 
          .S1(n15400[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_9.INIT0 = 16'h5999;
    defparam add_17022_9.INIT1 = 16'h5999;
    defparam add_17022_9.INJECT1_0 = "NO";
    defparam add_17022_9.INJECT1_1 = "NO";
    CCU2D add_17022_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35925), .COUT(n35926), .S0(n15400[5]), 
          .S1(n15400[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_7.INIT0 = 16'h5999;
    defparam add_17022_7.INIT1 = 16'h5999;
    defparam add_17022_7.INJECT1_0 = "NO";
    defparam add_17022_7.INJECT1_1 = "NO";
    CCU2D add_17022_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35924), .COUT(n35925), .S0(n15400[3]), 
          .S1(n15400[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_5.INIT0 = 16'h5999;
    defparam add_17022_5.INIT1 = 16'h5999;
    defparam add_17022_5.INJECT1_0 = "NO";
    defparam add_17022_5.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(n15400[12]), .B(n15400[7]), .C(n15400[0]), .D(n15400[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    CCU2D add_17022_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n35923), .COUT(n35924), .S0(n15400[1]), 
          .S1(n15400[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_17022_3.INIT0 = 16'h5999;
    defparam add_17022_3.INIT1 = 16'h5999;
    defparam add_17022_3.INJECT1_0 = "NO";
    defparam add_17022_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \uart_send(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  (GND_net, sys_clk_c, 
            uart_tx_busy, uart_send_en, uart_send_data, n36629, uart_txd_c, 
            n36190, n34496, n15, n36615) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    output uart_tx_busy;
    input uart_send_en;
    input [7:0]uart_send_data;
    input n36629;
    output uart_txd_c;
    output n36190;
    input n34496;
    output n15;
    output n36615;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n35942;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    wire [15:0]n69;
    
    wire n35943, n35941, n36249, n50, n36622, n36624, sys_clk_c_enable_50, 
        n36247, n35940;
    wire [15:0]n14969;
    
    wire n10, sys_clk_c_enable_26, n28215, n28216, n28210;
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(44[12:19])
    
    wire n33272, n28209, n32488, n36353;
    wire [0:0]n15364;
    
    wire n36356, n33273, uart_en_d1, uart_en_d0, n34485, n34480, 
        n36345, n35105, n36625, n35516, uart_tx_busy_N_7416, n34458, 
        n36199, n6, n36018, n6_adj_7659, n34454, n34482, n36621, 
        n34464, n34462, n34490, n35947, n35946, n35945, n35944;
    
    CCU2D clk_cnt_17082_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35942), .COUT(n35943), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_17082_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35941), .COUT(n35942), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n36249), .B(n50), .C(n36622), .D(n36624), .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0400;
    LUT4 i1_2_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .Z(n36247)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n50)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D clk_cnt_17082_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35940), .COUT(n35941), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_17082_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n35940), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_17082_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_17082_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_1.INJECT1_1 = "NO";
    LUT4 i39775_3_lut (.A(n14969[15]), .B(n10), .C(n14969[13]), .Z(sys_clk_c_enable_26)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i39775_3_lut.init = 16'h0101;
    LUT4 i4_4_lut (.A(n14969[14]), .B(n14969[12]), .C(n14969[11]), .D(n14969[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i38823_2_lut (.A(n28215), .B(n14969[0]), .Z(n28216)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i38823_2_lut.init = 16'h2222;
    LUT4 i36754_3_lut (.A(n28210), .B(tx_data[3]), .C(n14969[4]), .Z(n33272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i36754_3_lut.init = 16'hcaca;
    LUT4 i31718_3_lut (.A(tx_data[5]), .B(tx_data[4]), .C(n14969[5]), 
         .Z(n28210)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i31718_3_lut.init = 16'hcaca;
    LUT4 i39728_4_lut (.A(n28209), .B(n32488), .C(n14969[1]), .D(n36353), 
         .Z(n15364[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i39728_4_lut.init = 16'hcacc;
    PFUMX i31723 (.BLUT(n33272), .ALUT(n15364[0]), .C0(n36356), .Z(n28215));
    LUT4 i31717_4_lut (.A(tx_data[7]), .B(tx_data[6]), .C(n14969[7]), 
         .D(n14969[8]), .Z(n28209)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i31717_4_lut.init = 16'hcacf;
    LUT4 i35973_3_lut (.A(n33273), .B(tx_data[0]), .C(n14969[1]), .Z(n32488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i35973_3_lut.init = 16'hcaca;
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n34485), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n34480), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_send_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    LUT4 i39710_2_lut (.A(n14969[2]), .B(n14969[3]), .Z(n36353)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i39710_2_lut.init = 16'h1111;
    LUT4 i36755_3_lut (.A(tx_data[2]), .B(tx_data[1]), .C(n14969[2]), 
         .Z(n33273)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i36755_3_lut.init = 16'hcaca;
    LUT4 i39762_4_lut (.A(n14969[1]), .B(n14969[2]), .C(n14969[3]), .D(n36345), 
         .Z(n36356)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i39762_4_lut.init = 16'hfffe;
    LUT4 i39702_3_lut (.A(n14969[4]), .B(n14969[5]), .C(n14969[6]), .Z(n36345)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i39702_3_lut.init = 16'h0101;
    LUT4 i38986_4_lut (.A(n35105), .B(uart_send_data[1]), .C(n36625), 
         .D(tx_data[1]), .Z(n35516)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(29[19:31])
    defparam i38986_4_lut.init = 16'hcac0;
    FD1P3IX tx_cnt_FSM_i1 (.D(n14969[0]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n14969[1]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n14969[2]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n14969[3]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n14969[4]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n14969[5]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n14969[6]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n14969[7]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n14969[8]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_7416));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_7416), .SP(sys_clk_c_enable_50), 
            .CD(n36629), .CK(sys_clk_c), .Q(n14969[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n14969[10]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n14969[11]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n14969[12]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n14969[13]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n14969[14]), .SP(sys_clk_c_enable_50), .CD(n36629), 
            .CK(sys_clk_c), .Q(n14969[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3JX uart_txd_47 (.D(n28216), .SP(sys_clk_c_enable_26), .PD(n36629), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(123[10] 138[26])
    defparam uart_txd_47.GSR = "ENABLED";
    LUT4 i38583_4_lut (.A(n35105), .B(uart_send_data[2]), .C(n36625), 
         .D(tx_data[2]), .Z(n34458)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(29[19:31])
    defparam i38583_4_lut.init = 16'hcac0;
    LUT4 i4_4_lut_adj_2407 (.A(clk_cnt[2]), .B(n36199), .C(n36190), .D(n6), 
         .Z(n35105)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_2407.init = 16'hfffe;
    LUT4 i4_4_lut_adj_2408 (.A(n36624), .B(uart_tx_busy_N_7416), .C(n36018), 
         .D(n6_adj_7659), .Z(n36199)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i4_4_lut_adj_2408.init = 16'hfff7;
    LUT4 i1_2_lut_adj_2409 (.A(clk_cnt[0]), .B(clk_cnt[3]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_2409.init = 16'heeee;
    FD1S3IX clk_cnt_17082__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i1.GSR = "ENABLED";
    LUT4 i38589_4_lut (.A(n35105), .B(uart_send_data[3]), .C(n36625), 
         .D(tx_data[3]), .Z(n34454)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(29[19:31])
    defparam i38589_4_lut.init = 16'hcac0;
    LUT4 i37938_4_lut (.A(n35105), .B(uart_send_data[4]), .C(n36625), 
         .D(tx_data[4]), .Z(n34482)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i37938_4_lut.init = 16'hcac0;
    FD1S3IX clk_cnt_17082__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_77 (.A(clk_cnt[8]), .B(clk_cnt[10]), .Z(n36621)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_77.init = 16'heeee;
    LUT4 i1_2_lut_rep_78 (.A(clk_cnt[12]), .B(clk_cnt[15]), .Z(n36622)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_rep_78.init = 16'heeee;
    LUT4 i1_3_lut (.A(clk_cnt[4]), .B(clk_cnt[1]), .C(clk_cnt[9]), .Z(n6_adj_7659)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_cnt[12]), .B(clk_cnt[15]), .C(clk_cnt[10]), 
         .D(clk_cnt[8]), .Z(n36190)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i38577_4_lut (.A(n35105), .B(uart_send_data[5]), .C(n36625), 
         .D(tx_data[5]), .Z(n34464)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(29[19:31])
    defparam i38577_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_80 (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n36624)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_rep_80.init = 16'h8888;
    LUT4 i37918_4_lut (.A(n35105), .B(uart_send_data[6]), .C(n36625), 
         .D(tx_data[6]), .Z(n34462)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i37918_4_lut.init = 16'hcac0;
    LUT4 i89_3_lut_4_lut (.A(clk_cnt[5]), .B(clk_cnt[6]), .C(n36247), 
         .D(n50), .Z(n15)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i89_3_lut_4_lut.init = 16'h8880;
    LUT4 i3_4_lut (.A(clk_cnt[13]), .B(clk_cnt[14]), .C(clk_cnt[7]), .D(clk_cnt[11]), 
         .Z(n36018)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i37946_4_lut (.A(n35105), .B(uart_send_data[7]), .C(n36625), 
         .D(tx_data[7]), .Z(n34490)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i37946_4_lut.init = 16'hcac0;
    LUT4 en_flag_I_0_2_lut_rep_81 (.A(uart_en_d1), .B(uart_en_d0), .Z(n36625)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam en_flag_I_0_2_lut_rep_81.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(uart_tx_busy), 
         .D(n35105), .Z(n34485)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam i1_3_lut_4_lut.init = 16'hf444;
    LUT4 i38573_4_lut (.A(n35105), .B(uart_send_data[0]), .C(n36625), 
         .D(tx_data[0]), .Z(n34480)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(29[19:31])
    defparam i38573_4_lut.init = 16'hcac0;
    FD1S3AX tx_data_i1 (.D(n35516), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_17082__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n34496), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082__i0.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n14969[15]), .SP(sys_clk_c_enable_50), .PD(n36629), 
            .CK(sys_clk_c), .Q(n14969[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n34458), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n34454), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n34482), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n34464), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i6 (.D(n34462), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i7 (.D(n34490), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_71 (.A(clk_cnt[9]), .B(n36018), .Z(n36615)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_71.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_2410 (.A(clk_cnt[9]), .B(n36018), .C(n36621), 
         .D(n36247), .Z(n36249)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_2410.init = 16'hfffe;
    CCU2D clk_cnt_17082_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35947), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_17082_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_17082_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35946), .COUT(n35947), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_17082_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35945), .COUT(n35946), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_17082_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35944), .COUT(n35945), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_17082_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35943), .COUT(n35944), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_17082_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_17082_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_17082_add_4_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_loop
//

module uart_loop (uart_send_en, sys_clk_c, sys_clk_c_enable_1, clk_p_enable_30, 
            uart_tx_busy, n36629, n36615, n15, n36190, n34496, uart_send_data, 
            sys_clk_c_enable_48, uart_recv_data, recv_done_d0, uart_recv_done, 
            tx_ready, tx_ready_N_7437, recv_done_d1) /* synthesis syn_module_defined=1 */ ;
    output uart_send_en;
    input sys_clk_c;
    input sys_clk_c_enable_1;
    input clk_p_enable_30;
    input uart_tx_busy;
    output n36629;
    input n36615;
    input n15;
    input n36190;
    output n34496;
    output [7:0]uart_send_data;
    input sys_clk_c_enable_48;
    input [7:0]uart_recv_data;
    output recv_done_d0;
    input uart_recv_done;
    output tx_ready;
    input tx_ready_N_7437;
    output recv_done_d1;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    FD1P3AX send_en_25 (.D(clk_p_enable_30), .SP(sys_clk_c_enable_1), .CK(sys_clk_c), 
            .Q(uart_send_en));   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_en_25.GSR = "ENABLED";
    LUT4 tx_busy_I_0_1_lut_rep_85 (.A(uart_tx_busy), .Z(n36629)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(75[29:39])
    defparam tx_busy_I_0_1_lut_rep_85.init = 16'h5555;
    LUT4 i3_4_lut_4_lut (.A(uart_tx_busy), .B(n36615), .C(n15), .D(n36190), 
         .Z(n34496)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(75[29:39])
    defparam i3_4_lut_4_lut.init = 16'hfffd;
    FD1P3AX send_data_i0_i0 (.D(uart_recv_data[0]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i0.GSR = "ENABLED";
    FD1S3AX recv_done_d0_11985 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(127[10] 130[8])
    defparam recv_done_d0_11985.GSR = "ENABLED";
    FD1S3AX tx_ready_24 (.D(tx_ready_N_7437), .CK(sys_clk_c), .Q(tx_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam tx_ready_24.GSR = "ENABLED";
    FD1P3AX send_data_i0_i1 (.D(uart_recv_data[1]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i1.GSR = "ENABLED";
    FD1P3AX send_data_i0_i2 (.D(uart_recv_data[2]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i2.GSR = "ENABLED";
    FD1P3AX send_data_i0_i3 (.D(uart_recv_data[3]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i3.GSR = "ENABLED";
    FD1P3AX send_data_i0_i4 (.D(uart_recv_data[4]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i4.GSR = "ENABLED";
    FD1P3AX send_data_i0_i5 (.D(uart_recv_data[5]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i5.GSR = "ENABLED";
    FD1P3AX send_data_i0_i6 (.D(uart_recv_data[6]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i6.GSR = "ENABLED";
    FD1P3AX send_data_i0_i7 (.D(uart_recv_data[7]), .SP(sys_clk_c_enable_48), 
            .CK(sys_clk_c), .Q(uart_send_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=89, LSE_RLINE=99 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i7.GSR = "ENABLED";
    FD1S3AX recv_done_d1_11986 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(127[10] 130[8])
    defparam recv_done_d1_11986.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module divide
//

module divide (GND_net, clk_p, sys_clk_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_p;
    input sys_clk_c;
    
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n35957;
    wire [31:0]n200;
    wire [31:0]n101;
    
    wire n35958, n35991;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(18[13:18])
    
    wire n35992, n35990, n35989, n35981, n35982, n35980, n35988, 
        n35987, n35972, n36390, n19, n17, n18, n34497, n27, 
        n40, n36, n28, n35971, n35970, n35986, n35985, n38, 
        n32_adj_7658, clk_p_N_7652, n34, n24, n35984, n35969, n35968, 
        n35967, n35983, n35966, n35965, n35964, n35963, n35962, 
        n35961, n35960, n35959;
    
    CCU2D cnt_p_17084_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35957), .COUT(n35958), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_3.INJECT1_1 = "NO";
    CCU2D add_39350_26 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35991), .COUT(n35992));
    defparam add_39350_26.INIT0 = 16'h5555;
    defparam add_39350_26.INIT1 = 16'h5555;
    defparam add_39350_26.INJECT1_0 = "NO";
    defparam add_39350_26.INJECT1_1 = "NO";
    CCU2D add_39350_24 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35990), .COUT(n35991));
    defparam add_39350_24.INIT0 = 16'h5555;
    defparam add_39350_24.INIT1 = 16'h5555;
    defparam add_39350_24.INJECT1_0 = "NO";
    defparam add_39350_24.INJECT1_1 = "NO";
    CCU2D add_39350_22 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35989), .COUT(n35990));
    defparam add_39350_22.INIT0 = 16'h5555;
    defparam add_39350_22.INIT1 = 16'h5555;
    defparam add_39350_22.INJECT1_0 = "NO";
    defparam add_39350_22.INJECT1_1 = "NO";
    CCU2D add_39350_6 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35981), .COUT(n35982));
    defparam add_39350_6.INIT0 = 16'h5aaa;
    defparam add_39350_6.INIT1 = 16'h5aaa;
    defparam add_39350_6.INJECT1_0 = "NO";
    defparam add_39350_6.INJECT1_1 = "NO";
    CCU2D add_39350_4 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n35980), 
          .COUT(n35981));
    defparam add_39350_4.INIT0 = 16'h5555;
    defparam add_39350_4.INIT1 = 16'h5aaa;
    defparam add_39350_4.INJECT1_0 = "NO";
    defparam add_39350_4.INJECT1_1 = "NO";
    CCU2D add_39350_20 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35988), .COUT(n35989));
    defparam add_39350_20.INIT0 = 16'h5555;
    defparam add_39350_20.INIT1 = 16'h5555;
    defparam add_39350_20.INJECT1_0 = "NO";
    defparam add_39350_20.INJECT1_1 = "NO";
    CCU2D add_39350_18 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35987), .COUT(n35988));
    defparam add_39350_18.INIT0 = 16'h5555;
    defparam add_39350_18.INIT1 = 16'h5555;
    defparam add_39350_18.INJECT1_0 = "NO";
    defparam add_39350_18.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35972), .S0(n101[31]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_17084_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n35957), .S1(n101[0]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_17084_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_17084_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_1.INJECT1_1 = "NO";
    LUT4 i39764_4_lut (.A(n36390), .B(n19), .C(n17), .D(n18), .Z(n34497)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i39764_4_lut.init = 16'h8000;
    LUT4 i39763_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(n36390)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i39763_4_lut.init = 16'h0001;
    CCU2D add_39350_2 (.A0(cnt_p[5]), .B0(cnt_p[4]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n35980));
    defparam add_39350_2.INIT0 = 16'h7000;
    defparam add_39350_2.INIT1 = 16'h5aaa;
    defparam add_39350_2.INJECT1_0 = "NO";
    defparam add_39350_2.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(cnt_p[11]), .B(n200[1]), .C(cnt_p[10]), .D(cnt_p[4]), 
         .Z(n19)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    CCU2D cnt_p_17084_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35971), .COUT(n35972), .S0(n101[29]), 
          .S1(n101[30]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35970), .COUT(n35971), .S0(n101[27]), 
          .S1(n101[28]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_29.INJECT1_1 = "NO";
    CCU2D add_39350_16 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35986), .COUT(n35987));
    defparam add_39350_16.INIT0 = 16'h5555;
    defparam add_39350_16.INIT1 = 16'h5555;
    defparam add_39350_16.INJECT1_0 = "NO";
    defparam add_39350_16.INJECT1_1 = "NO";
    LUT4 i6_3_lut (.A(cnt_p[9]), .B(cnt_p[6]), .C(cnt_p[7]), .Z(n17)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6_3_lut.init = 16'h8080;
    LUT4 i7_4_lut (.A(cnt_p[13]), .B(n200[2]), .C(n200[3]), .D(n200[0]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    CCU2D add_39350_14 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35985), .COUT(n35986));
    defparam add_39350_14.INIT0 = 16'h5555;
    defparam add_39350_14.INIT1 = 16'h5555;
    defparam add_39350_14.INJECT1_0 = "NO";
    defparam add_39350_14.INJECT1_1 = "NO";
    LUT4 i6_2_lut (.A(cnt_p[28]), .B(cnt_p[12]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(cnt_p[5]), .B(n38), .C(n32_adj_7658), .D(cnt_p[20]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i15_4_lut (.A(cnt_p[8]), .B(cnt_p[25]), .C(cnt_p[15]), .D(cnt_p[26]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i15_4_lut.init = 16'hfffe;
    FD1S3AX clk_p_35 (.D(clk_p_N_7652), .CK(sys_clk_c), .Q(clk_p)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=110, LSE_RLINE=116 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(40[9] 43[14])
    defparam clk_p_35.GSR = "ENABLED";
    LUT4 i7_2_lut (.A(cnt_p[17]), .B(cnt_p[24]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(cnt_p[29]), .B(n34), .C(n24), .D(cnt_p[14]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i11_3_lut (.A(cnt_p[22]), .B(cnt_p[21]), .C(cnt_p[31]), .Z(n32_adj_7658)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i13_4_lut (.A(cnt_p[16]), .B(cnt_p[27]), .C(cnt_p[23]), .D(cnt_p[30]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(cnt_p[19]), .B(cnt_p[18]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D add_39350_12 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35984), .COUT(n35985));
    defparam add_39350_12.INIT0 = 16'h5555;
    defparam add_39350_12.INIT1 = 16'h5555;
    defparam add_39350_12.INJECT1_0 = "NO";
    defparam add_39350_12.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35969), .COUT(n35970), .S0(n101[25]), 
          .S1(n101[26]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35968), .COUT(n35969), .S0(n101[23]), 
          .S1(n101[24]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_25.INJECT1_1 = "NO";
    FD1S3IX cnt_p_17084__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n34497), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i0.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n34497), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i1.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n34497), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n34497), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_17084__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n34497), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084__i31.GSR = "ENABLED";
    CCU2D cnt_p_17084_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35967), .COUT(n35968), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_23.INJECT1_1 = "NO";
    CCU2D add_39350_10 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35983), .COUT(n35984));
    defparam add_39350_10.INIT0 = 16'h5555;
    defparam add_39350_10.INIT1 = 16'h5555;
    defparam add_39350_10.INJECT1_0 = "NO";
    defparam add_39350_10.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35966), .COUT(n35967), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35965), .COUT(n35966), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35964), .COUT(n35965), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35963), .COUT(n35964), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35962), .COUT(n35963), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_13.INJECT1_1 = "NO";
    CCU2D add_39350_8 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35982), .COUT(n35983));
    defparam add_39350_8.INIT0 = 16'h5555;
    defparam add_39350_8.INIT1 = 16'h5aaa;
    defparam add_39350_8.INJECT1_0 = "NO";
    defparam add_39350_8.INJECT1_1 = "NO";
    CCU2D add_39350_28 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n35992), 
          .S1(clk_p_N_7652));
    defparam add_39350_28.INIT0 = 16'h5555;
    defparam add_39350_28.INIT1 = 16'h0000;
    defparam add_39350_28.INJECT1_0 = "NO";
    defparam add_39350_28.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35961), .COUT(n35962), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35960), .COUT(n35961), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35959), .COUT(n35960), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_17084_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35958), .COUT(n35959), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_17084_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_17084_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_17084_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_17084_add_4_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, GND_net, 
            uart_recv_done, uart_rxd_c, uart_recv_data) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input GND_net;
    output uart_recv_done;
    input uart_rxd_c;
    output [7:0]uart_recv_data;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n36609, n34599, n36613, rx_flag, sys_clk_c_enable_2, uart_rxd_d1;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(43[12:18])
    wire [15:0]n14879;
    
    wire n36245, n34350, n36246, n34353, n36254, n34356, n36255, 
        n34335;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    
    wire n36627, n17, n36021, n36216, n34338, n36623, n34341, 
        uart_data_7__N_7348, n34500, n35939;
    wire [15:0]n69;
    
    wire uart_rxd_d0, n35938, n34488, n35937, n35936, sys_clk_c_enable_10, 
        n34344, n17_adj_7657, n35935, n36612, n36241, n36205, n23, 
        sys_clk_c_enable_49, n34347, n35934, n36232, n35933, n35932, 
        n36619, n36231, n34495, n36620, n36228, n7, n8, n15, 
        n14;
    
    LUT4 i21122_2_lut_4_lut (.A(n36609), .B(n34599), .C(n36613), .D(rx_flag), 
         .Z(sys_clk_c_enable_2)) /* synthesis lut_function=(!(A (B (D))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i21122_2_lut_4_lut.init = 16'h32ff;
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[3]), .C(n14879[4]), .D(n36245), 
         .Z(n34350)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_2390 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n14879[5]), 
         .D(n36246), .Z(n34353)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2390.init = 16'heca0;
    LUT4 i1_4_lut_adj_2391 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n14879[6]), 
         .D(n36254), .Z(n34356)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2391.init = 16'heca0;
    LUT4 i1_4_lut_adj_2392 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n14879[7]), 
         .D(n36255), .Z(n34335)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2392.init = 16'heca0;
    LUT4 i1_2_lut_rep_83 (.A(clk_cnt[4]), .B(clk_cnt[3]), .Z(n36627)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    defparam i1_2_lut_rep_83.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(n17), .Z(n36021)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_2393 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n14879[8]), 
         .D(n36216), .Z(n34338)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2393.init = 16'heca0;
    FD1P3IX rxdata__i0 (.D(n34341), .SP(sys_clk_c_enable_2), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    LUT4 i38069_1_lut (.A(uart_data_7__N_7348), .Z(n34500)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam i38069_1_lut.init = 16'h5555;
    CCU2D clk_cnt_17080_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35939), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_17080_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_17.INJECT1_1 = "NO";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    CCU2D clk_cnt_17080_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35938), .COUT(n35939), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_15.INJECT1_1 = "NO";
    FD1S3AX rx_flag_56 (.D(n34488), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    CCU2D clk_cnt_17080_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35937), .COUT(n35938), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_13.INJECT1_1 = "NO";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_7348), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    CCU2D clk_cnt_17080_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35936), .COUT(n35937), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_11.INJECT1_1 = "NO";
    FD1P3IX rxdata__i1 (.D(n34344), .SP(sys_clk_c_enable_10), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    LUT4 i48_4_lut (.A(uart_rxd_d1), .B(n17_adj_7657), .C(uart_rxd_d0), 
         .D(rx_flag), .Z(n34488)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(39[12:23])
    defparam i48_4_lut.init = 16'hce0a;
    LUT4 i1_2_lut (.A(uart_data_7__N_7348), .B(n34599), .Z(n17_adj_7657)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(29[23:32])
    defparam i1_2_lut.init = 16'hdddd;
    CCU2D clk_cnt_17080_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35935), .COUT(n35936), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_3_lut_rep_61_4_lut (.A(n36612), .B(n36241), .C(n36613), .D(n34599), 
         .Z(sys_clk_c_enable_10)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_3_lut_rep_61_4_lut.init = 16'h00fe;
    LUT4 i2_4_lut (.A(n36205), .B(n17), .C(n23), .D(n36627), .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i2_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_adj_2394 (.A(clk_cnt[6]), .B(clk_cnt[5]), .Z(n36205)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i1_2_lut_adj_2394.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n36612), .B(n36241), .C(n14879[7]), 
         .D(n14879[8]), .Z(n36254)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n17)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2395 (.A(n36612), .B(n36241), .C(n14879[6]), 
         .D(n14879[8]), .Z(n36255)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_2395.init = 16'hfffe;
    FD1P3IX rxdata__i2 (.D(n34347), .SP(sys_clk_c_enable_10), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n34350), .SP(sys_clk_c_enable_10), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n34353), .SP(sys_clk_c_enable_10), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n34356), .SP(sys_clk_c_enable_10), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i6 (.D(n34335), .SP(sys_clk_c_enable_10), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n34338), .SP(sys_clk_c_enable_10), .CD(n36623), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    CCU2D clk_cnt_17080_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35934), .COUT(n35935), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_2396 (.A(n36613), .B(n36241), .C(n14879[2]), 
         .D(n14879[3]), .Z(n36232)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_2396.init = 16'hfffe;
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n14879[0]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    CCU2D clk_cnt_17080_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35933), .COUT(n35934), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_17080_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n35932), .COUT(n35933), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_17080_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_75 (.A(n14879[2]), .B(n14879[1]), .Z(n36619)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_75.init = 16'heeee;
    LUT4 i1_2_lut_rep_68_3_lut (.A(n14879[2]), .B(n14879[1]), .C(n14879[3]), 
         .Z(n36612)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_68_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2397 (.A(n36613), .B(n36241), .C(n14879[1]), 
         .D(n14879[3]), .Z(n36231)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_2397.init = 16'hfffe;
    FD1P3IX rx_cnt_FSM_i2 (.D(n14879[1]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n14879[2]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n14879[3]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n14879[4]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n14879[5]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n14879[6]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n14879[7]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n14879[8]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(uart_data_7__N_7348));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_7348), .SP(sys_clk_c_enable_49), 
            .CD(n36623), .CK(sys_clk_c), .Q(n14879[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n14879[10]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n14879[11]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n14879[12]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n14879[13]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n14879[14]), .SP(sys_clk_c_enable_49), .CD(n36623), 
            .CK(sys_clk_c), .Q(n14879[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_17080__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(n14879[2]), .B(n14879[1]), .C(n36241), 
         .D(n14879[3]), .Z(n36609)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_76 (.A(n14879[6]), .B(n14879[7]), .Z(n36620)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_76.init = 16'heeee;
    LUT4 i1_2_lut_rep_69_3_lut (.A(n14879[6]), .B(n14879[7]), .C(n14879[8]), 
         .Z(n36613)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_69_3_lut.init = 16'hfefe;
    LUT4 i21120_1_lut_rep_79 (.A(rx_flag), .Z(n36623)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i21120_1_lut_rep_79.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(rx_flag), .B(n36205), .C(n23), .D(n36021), 
         .Z(n34495)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i2_4_lut_4_lut.init = 16'hfdf5;
    LUT4 i1_4_lut_adj_2398 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n14879[3]), 
         .D(n36228), .Z(n34347)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2398.init = 16'heca0;
    LUT4 i1_4_lut_adj_2399 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n14879[1]), 
         .D(n36232), .Z(n34341)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2399.init = 16'heca0;
    LUT4 i1_4_lut_adj_2400 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n14879[2]), 
         .D(n36231), .Z(n34344)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2400.init = 16'heca0;
    LUT4 i1_2_lut_adj_2401 (.A(n14879[4]), .B(n14879[5]), .Z(n36241)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_adj_2401.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2402 (.A(n14879[8]), .B(n36620), .C(n36619), 
         .D(n36241), .Z(n36228)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_2402.init = 16'hfffe;
    FD1S3IX clk_cnt_17080__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n34495), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080__i0.GSR = "ENABLED";
    FD1P3JX rx_cnt_FSM_i0 (.D(n14879[15]), .SP(sys_clk_c_enable_49), .PD(n36623), 
            .CK(sys_clk_c), .Q(n14879[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n34500), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=65, LSE_RLINE=72 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    CCU2D clk_cnt_17080_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n35932), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_17080_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_17080_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_17080_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_17080_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_2403 (.A(n14879[3]), .B(n36619), .C(n36620), 
         .D(n36241), .Z(n36216)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_2403.init = 16'hfffe;
    LUT4 i5_4_lut (.A(clk_cnt[3]), .B(n7), .C(n23), .D(n8), .Z(n34599)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_2404 (.A(clk_cnt[6]), .B(clk_cnt[5]), .C(clk_cnt[4]), 
         .D(clk_cnt[2]), .Z(n7)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i1_4_lut_adj_2404.init = 16'hbfff;
    LUT4 i2_2_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[12]), .C(n14), .D(clk_cnt[11]), 
         .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2405 (.A(n14879[3]), .B(n36619), .C(n14879[5]), 
         .D(n36613), .Z(n36245)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_2405.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2406 (.A(n14879[3]), .B(n36619), .C(n14879[4]), 
         .D(n36613), .Z(n36246)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_2406.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[13]), .B(clk_cnt[8]), .C(clk_cnt[15]), .D(clk_cnt[9]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[7]), .B(clk_cnt[14]), .C(clk_cnt[10]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam i5_3_lut.init = 16'hfefe;
    
endmodule
