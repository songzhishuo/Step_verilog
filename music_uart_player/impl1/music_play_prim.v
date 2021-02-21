// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Feb 21 11:49:48 2021
//
// Verilog Description of module music_play
//

module music_play (sys_clk, sys_rst_n, clk_1ms, switch_2, uart_done, 
            uart_recv_data, blink, music_tone) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(1[9:19])
    input sys_clk;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(2[21:28])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(3[21:30])
    input clk_1ms;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(5[21:28])
    input switch_2;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(6[11:19])
    input uart_done;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(9[21:30])
    input [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(10[21:35])
    output blink;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(12[18:23])
    output [7:0]music_tone;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(2[21:28])
    wire clk_1ms_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_1ms_c */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(5[21:28])
    
    wire GND_net, VCC_net, sys_rst_n_c, switch_2_c, uart_done_c, uart_recv_data_c_7, 
        uart_recv_data_c_6, uart_recv_data_c_5, uart_recv_data_c_4, uart_recv_data_c_3, 
        blink_c, music_tone_c_4, music_tone_c_3, music_tone_c_2, music_tone_c_1, 
        music_tone_c_0;
    wire [7:0]cnt_run;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(25[11:18])
    wire [4:0]state;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(30[11:16])
    
    wire n2994;
    wire [2:0]state_back;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(31[12:22])
    wire [15:0]cnt_delay;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(33[12:21])
    
    wire n2285;
    wire [15:0]music_delay;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(34[12:23])
    wire [8:0]music_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(36[11:20])
    
    wire recv_done_d0, recv_done_d1, n112, n113, n114, n115, n121, 
        n122, n123, n124, n125, n126, n127, n128, n2898, n3087, 
        n4, n2270, n279, n282, n283, n284, n285, n286, n287, 
        n288, n289, n290, n3086, n4_adj_1, n2897, n2890, n2998, 
        n2896, n8, n369, n372, n373, n374, n375, n376, n377, 
        n378, n379, n380, n381, n382, n383, n384, n385, n386, 
        n387, clk_1ms_c_enable_27, n3017, n3085, n1579, n1571, n2883, 
        n3084, n3077, n3076, n2906, clk_1ms_c_enable_34, n2905, 
        n2889;
    wire [7:0]music_tone_7__N_81;
    
    wire blink_N_134, clk_1ms_c_enable_24, n15, n3089, n14, n4_adj_2, 
        n2904, clk_1ms_c_enable_10, clk_1ms_c_enable_16, n2909, n2903, 
        clk_1ms_c_enable_33, n2902, n3088, n3009, n2901, n2931, 
        n3082, n2895, n3074, n3002, n2900, n2888, clk_1ms_c_enable_45, 
        n9, n3072, n2885, clk_1ms_c_enable_42, n8_adj_3, clk_1ms_c_enable_14, 
        n8_adj_4, n53, n2894, n8_adj_5, n3127, clk_1ms_c_enable_13, 
        n2992, clk_1ms_c_enable_11, clk_1ms_c_enable_44, n2887, n2886, 
        n2893, clk_1ms_c_enable_12, n2892, n20, n2899, n1569, n2973, 
        n3080, n3092, n2884, n2612, n3079, clk_1ms_c_enable_31, 
        n2615, n3091, n7, n3090, n3078;
    
    VHI i2259 (.Z(VCC_net));
    LUT4 i2217_2_lut_rep_33_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(switch_2_c), 
         .Z(clk_1ms_c_enable_16)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i2217_2_lut_rep_33_3_lut.init = 16'hb0b0;
    FD1P3AX music_tone_i0_i1 (.D(music_tone_7__N_81[0]), .SP(clk_1ms_c_enable_31), 
            .CK(clk_1ms_c), .Q(music_tone_c_0));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n382), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[5]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX state_i0_i0 (.D(n1571), .SP(clk_1ms_c_enable_16), .CK(clk_1ms_c), 
            .Q(state[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1S3AX recv_done_d0_571 (.D(uart_done_c), .CK(sys_clk_c), .Q(recv_done_d0));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(54[10] 57[8])
    defparam recv_done_d0_571.GSR = "ENABLED";
    CCU2D add_143_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2896), .COUT(n2897), .S0(n378), .S1(n377));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_11.INIT0 = 16'h5aaa;
    defparam add_143_11.INIT1 = 16'h5aaa;
    defparam add_143_11.INJECT1_0 = "NO";
    defparam add_143_11.INJECT1_1 = "NO";
    FD1P3AX cnt_run_i0_i7 (.D(n2931), .SP(clk_1ms_c_enable_33), .CK(clk_1ms_c), 
            .Q(cnt_run[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    ROM128X1A mux_609_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n115)) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_609_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    CCU2D add_143_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2895), .COUT(n2896), .S0(n380), .S1(n379));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_9.INIT0 = 16'h5aaa;
    defparam add_143_9.INIT1 = 16'h5aaa;
    defparam add_143_9.INJECT1_0 = "NO";
    defparam add_143_9.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i13 (.D(n374), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[13]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n381), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i6.GSR = "DISABLED";
    GSR GSR_INST (.GSR(sys_rst_n_c));
    FD1P3IX music_cnt_i0_i3 (.D(n287), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i3.GSR = "DISABLED";
    CCU2D add_143_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2894), .COUT(n2895), .S0(n382), .S1(n381));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_7.INIT0 = 16'h5aaa;
    defparam add_143_7.INIT1 = 16'h5aaa;
    defparam add_143_7.INJECT1_0 = "NO";
    defparam add_143_7.INJECT1_1 = "NO";
    CCU2D add_129_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2888), .COUT(n2889), .S0(n287), .S1(n286));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_5.INIT0 = 16'h5aaa;
    defparam add_129_5.INIT1 = 16'h5aaa;
    defparam add_129_5.INJECT1_0 = "NO";
    defparam add_129_5.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i4 (.D(n286), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i4.GSR = "DISABLED";
    IB uart_recv_data_pad_3 (.I(uart_recv_data[3]), .O(uart_recv_data_c_3));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(10[21:35])
    IB uart_recv_data_pad_4 (.I(uart_recv_data[4]), .O(uart_recv_data_c_4));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(10[21:35])
    IB uart_recv_data_pad_5 (.I(uart_recv_data[5]), .O(uart_recv_data_c_5));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(10[21:35])
    IB uart_recv_data_pad_6 (.I(uart_recv_data[6]), .O(uart_recv_data_c_6));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(10[21:35])
    IB uart_recv_data_pad_7 (.I(uart_recv_data[7]), .O(uart_recv_data_c_7));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(10[21:35])
    IB uart_done_pad (.I(uart_done), .O(uart_done_c));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(9[21:30])
    IB switch_2_pad (.I(switch_2), .O(switch_2_c));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(6[11:19])
    IB clk_1ms_pad (.I(clk_1ms), .O(clk_1ms_c));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(5[21:28])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(3[21:30])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(2[21:28])
    OB music_tone_pad_0 (.I(music_tone_c_0), .O(music_tone[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    OB music_tone_pad_1 (.I(music_tone_c_1), .O(music_tone[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    OB music_tone_pad_2 (.I(music_tone_c_2), .O(music_tone[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    OB music_tone_pad_3 (.I(music_tone_c_3), .O(music_tone[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    OB music_tone_pad_4 (.I(music_tone_c_4), .O(music_tone[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    OB music_tone_pad_5 (.I(GND_net), .O(music_tone[5]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    OB music_tone_pad_6 (.I(GND_net), .O(music_tone[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    OB music_tone_pad_7 (.I(GND_net), .O(music_tone[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(14[29:39])
    FD1P3IX cnt_delay_i0_i7 (.D(n380), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i7.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n3127), .SP(clk_1ms_c_enable_10), .CK(clk_1ms_c), 
            .Q(cnt_run[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n3127), .SP(clk_1ms_c_enable_11), .CK(clk_1ms_c), 
            .Q(cnt_run[5]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n3127), .SP(clk_1ms_c_enable_12), .CK(clk_1ms_c), 
            .Q(cnt_run[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n3127), .SP(clk_1ms_c_enable_13), .CK(clk_1ms_c), 
            .Q(cnt_run[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n3127), .SP(clk_1ms_c_enable_14), .CK(clk_1ms_c), 
            .Q(cnt_run[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n3092), .SP(clk_1ms_c_enable_33), .CK(clk_1ms_c), 
            .Q(cnt_run[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n1569), .SP(clk_1ms_c_enable_16), .CK(clk_1ms_c), 
            .Q(state[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i1959_4_lut_then_3_lut (.A(cnt_run[0]), .B(n279), .C(n20), .Z(n3091)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1959_4_lut_then_3_lut.init = 16'hfefe;
    LUT4 i1959_4_lut_else_3_lut (.A(n127), .B(n20), .Z(n3090)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1959_4_lut_else_3_lut.init = 16'h2222;
    LUT4 blink_I_0_2_lut_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(blink_c), 
         .Z(blink_N_134)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam blink_I_0_2_lut_3_lut.init = 16'hb4b4;
    LUT4 i1387_4_lut (.A(clk_1ms_c_enable_33), .B(n8_adj_3), .C(n3009), 
         .D(n8), .Z(clk_1ms_c_enable_14)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1387_4_lut.init = 16'h8a88;
    LUT4 i2195_2_lut (.A(cnt_run[4]), .B(cnt_run[0]), .Z(n3009)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2195_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(n2992), 
         .D(sys_rst_n_c), .Z(clk_1ms_c_enable_31)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1_3_lut_4_lut.init = 16'hf400;
    LUT4 i2225_2_lut_rep_31_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(sys_rst_n_c), .D(switch_2_c), .Z(clk_1ms_c_enable_42)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i2225_2_lut_rep_31_3_lut_4_lut.init = 16'hb000;
    LUT4 i1_2_lut_rep_39 (.A(cnt_run[3]), .B(cnt_run[4]), .Z(n3089)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_39.init = 16'heeee;
    CCU2D add_129_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2887), .COUT(n2888), .S0(n289), .S1(n288));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_3.INIT0 = 16'h5aaa;
    defparam add_129_3.INIT1 = 16'h5aaa;
    defparam add_129_3.INJECT1_0 = "NO";
    defparam add_129_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_run[3]), .B(cnt_run[4]), .C(cnt_run[0]), 
         .D(cnt_run[2]), .Z(n2909)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2227_3_lut_rep_20_4_lut_4_lut (.A(clk_1ms_c_enable_42), .B(cnt_run[1]), 
         .C(n3078), .D(n3084), .Z(clk_1ms_c_enable_44)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2227_3_lut_rep_20_4_lut_4_lut.init = 16'h0008;
    LUT4 i4_4_lut (.A(n53), .B(n3089), .C(cnt_run[5]), .D(cnt_run[2]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i71_2_lut (.A(cnt_run[6]), .B(cnt_run[7]), .Z(n53)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i71_2_lut.init = 16'heeee;
    LUT4 i2213_3_lut_3_lut_4_lut_4_lut (.A(clk_1ms_c_enable_42), .B(n3074), 
         .C(n3082), .D(n3084), .Z(clk_1ms_c_enable_27)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2213_3_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_28 (.A(cnt_run[0]), .B(n20), .Z(n3078)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(247[7:11])
    defparam i1_2_lut_rep_28.init = 16'heeee;
    LUT4 i8_4_lut (.A(n15), .B(music_cnt[2]), .C(n14), .D(music_cnt[1]), 
         .Z(n279)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    CCU2D add_129_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2887), .S1(n290));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_1.INIT0 = 16'hF000;
    defparam add_129_1.INIT1 = 16'h5555;
    defparam add_129_1.INJECT1_0 = "NO";
    defparam add_129_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(music_cnt[3]), .B(music_cnt[0]), .C(music_cnt[5]), 
         .D(music_cnt[4]), .Z(n15)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0800;
    CCU2D add_111_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2886), 
          .S0(n121));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_9.INIT0 = 16'h5aaa;
    defparam add_111_9.INIT1 = 16'h0000;
    defparam add_111_9.INJECT1_0 = "NO";
    defparam add_111_9.INJECT1_1 = "NO";
    LUT4 i5_3_lut (.A(music_cnt[8]), .B(music_cnt[6]), .C(music_cnt[7]), 
         .Z(n14)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i5_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_26_3_lut (.A(cnt_run[0]), .B(n20), .C(cnt_run[1]), 
         .Z(n3076)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(247[7:11])
    defparam i1_2_lut_rep_26_3_lut.init = 16'hfefe;
    LUT4 i1493_2_lut_4_lut (.A(cnt_run[1]), .B(n3078), .C(n3072), .D(n279), 
         .Z(n2285)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1493_2_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_24_3_lut (.A(cnt_run[1]), .B(n20), .C(cnt_run[0]), 
         .Z(n3074)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i1_2_lut_rep_24_3_lut.init = 16'hefef;
    LUT4 i1485_2_lut_4_lut (.A(state[1]), .B(state[0]), .C(clk_1ms_c_enable_42), 
         .D(n369), .Z(n2270)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1485_2_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut (.A(state[0]), .B(state[1]), .C(n3074), .D(n369), 
         .Z(n1569)) /* synthesis lut_function=(A (B+!(C))+!A !((D)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(80[4] 276[11])
    defparam i1_4_lut.init = 16'h8ace;
    CCU2D sub_745_add_2_15 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2906), .S1(n369));
    defparam sub_745_add_2_15.INIT0 = 16'h5555;
    defparam sub_745_add_2_15.INIT1 = 16'h0000;
    defparam sub_745_add_2_15.INJECT1_0 = "NO";
    defparam sub_745_add_2_15.INJECT1_1 = "NO";
    LUT4 i3_3_lut_4_lut (.A(n3077), .B(n53), .C(cnt_run[2]), .D(cnt_run[3]), 
         .Z(n8)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i3_3_lut_4_lut.init = 16'h0020;
    FD1P3IX cnt_delay_i0_i8 (.D(n379), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i8.GSR = "DISABLED";
    LUT4 i1395_4_lut (.A(clk_1ms_c_enable_33), .B(n3079), .C(n2994), .D(n122), 
         .Z(clk_1ms_c_enable_10)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1395_4_lut.init = 16'ha2a0;
    CCU2D add_143_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2893), .COUT(n2894), .S0(n384), .S1(n383));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_5.INIT0 = 16'h5aaa;
    defparam add_143_5.INIT1 = 16'h5aaa;
    defparam add_143_5.INJECT1_0 = "NO";
    defparam add_143_5.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i2 (.D(n288), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n384), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i3.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(cnt_run[7]), .B(n3077), .C(n2909), .D(cnt_run[6]), 
         .Z(n2994)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i2_4_lut.init = 16'h0400;
    CCU2D sub_745_add_2_13 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2905), .COUT(n2906));
    defparam sub_745_add_2_13.INIT0 = 16'h5555;
    defparam sub_745_add_2_13.INIT1 = 16'h5555;
    defparam sub_745_add_2_13.INJECT1_0 = "NO";
    defparam sub_745_add_2_13.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_1 (.A(n3078), .B(switch_2_c), .C(n3084), .D(cnt_run[1]), 
         .Z(n2992)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_1.init = 16'h0004;
    LUT4 i1921_2_lut_rep_25_4_lut_4_lut_2_lut (.A(cnt_run[1]), .B(n20), 
         .Z(n3079)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i1921_2_lut_rep_25_4_lut_4_lut_2_lut.init = 16'heeee;
    LUT4 i2229_2_lut_3_lut_4_lut (.A(cnt_run[1]), .B(n20), .C(state[0]), 
         .D(cnt_run[0]), .Z(n9)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(228[6] 255[13])
    defparam i2229_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_rep_30 (.A(cnt_run[1]), .B(n279), .Z(n3080)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_rep_30.init = 16'h8888;
    LUT4 i1_2_lut_rep_27_3_lut (.A(cnt_run[1]), .B(n279), .C(cnt_run[5]), 
         .Z(n3077)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_rep_27_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(cnt_run[0]), .B(n3079), .C(n124), 
         .D(n3076), .Z(n8_adj_4)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(233[7:11])
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'h20f0;
    CCU2D sub_745_add_2_11 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2904), .COUT(n2905));
    defparam sub_745_add_2_11.INIT0 = 16'h5555;
    defparam sub_745_add_2_11.INIT1 = 16'h5555;
    defparam sub_745_add_2_11.INJECT1_0 = "NO";
    defparam sub_745_add_2_11.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_3 (.A(n7), .B(n3085), .C(clk_1ms_c_enable_42), .D(cnt_run[1]), 
         .Z(clk_1ms_c_enable_24)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut_adj_3.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(cnt_run[0]), .B(n3079), .C(n125), 
         .D(n3076), .Z(n8_adj_5)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(233[7:11])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h20f0;
    LUT4 i1393_4_lut (.A(clk_1ms_c_enable_33), .B(n3079), .C(n3002), .D(n123), 
         .Z(clk_1ms_c_enable_11)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1393_4_lut.init = 16'ha2a0;
    FD1P3IX cnt_delay_i0_i9 (.D(n378), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[9]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i9.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(cnt_run[0]), .B(n3079), .C(n126), 
         .D(n3076), .Z(n8_adj_3)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(233[7:11])
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h20f0;
    CCU2D sub_745_add_2_9 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2903), .COUT(n2904));
    defparam sub_745_add_2_9.INIT0 = 16'h5555;
    defparam sub_745_add_2_9.INIT1 = 16'h5555;
    defparam sub_745_add_2_9.INJECT1_0 = "NO";
    defparam sub_745_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_745_add_2_7 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(music_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2902), .COUT(n2903));
    defparam sub_745_add_2_7.INIT0 = 16'h5aaa;
    defparam sub_745_add_2_7.INIT1 = 16'h5999;
    defparam sub_745_add_2_7.INJECT1_0 = "NO";
    defparam sub_745_add_2_7.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i10 (.D(n377), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[10]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i10.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_6 (.A(n3080), .B(cnt_run[5]), .C(n53), .D(n2909), 
         .Z(n3002)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i2_4_lut_adj_6.init = 16'h0008;
    FD1P3AX music_delay_i0_i8 (.D(n3086), .SP(clk_1ms_c_enable_27), .CK(clk_1ms_c), 
            .Q(music_delay[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i8.GSR = "DISABLED";
    CCU2D sub_745_add_2_5 (.A0(cnt_delay[5]), .B0(music_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2901), .COUT(n2902));
    defparam sub_745_add_2_5.INIT0 = 16'h5999;
    defparam sub_745_add_2_5.INIT1 = 16'h5aaa;
    defparam sub_745_add_2_5.INJECT1_0 = "NO";
    defparam sub_745_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_7 (.A(n3076), .B(n3074), .C(n121), .D(cnt_run[7]), 
         .Z(n2931)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_7.init = 16'hff70;
    FD1P3IX cnt_delay_i0_i14 (.D(n373), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[14]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i14.GSR = "DISABLED";
    FD1P3AX music_delay_i0_i4 (.D(n2612), .SP(clk_1ms_c_enable_24), .CK(clk_1ms_c), 
            .Q(music_delay[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i4.GSR = "DISABLED";
    CCU2D sub_745_add_2_3 (.A0(cnt_delay[3]), .B0(music_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(music_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2900), .COUT(n2901));
    defparam sub_745_add_2_3.INIT0 = 16'h5999;
    defparam sub_745_add_2_3.INIT1 = 16'h5999;
    defparam sub_745_add_2_3.INJECT1_0 = "NO";
    defparam sub_745_add_2_3.INJECT1_1 = "NO";
    CCU2D add_111_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2883), .S1(n128));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_1.INIT0 = 16'hF000;
    defparam add_111_1.INIT1 = 16'h5555;
    defparam add_111_1.INJECT1_0 = "NO";
    defparam add_111_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i15 (.D(n372), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[15]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i15.GSR = "DISABLED";
    FD1P3AX music_delay_i0_i3 (.D(n2615), .SP(clk_1ms_c_enable_27), .CK(clk_1ms_c), 
            .Q(music_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i3.GSR = "DISABLED";
    FD1P3AX music_delay_i0_i2 (.D(n2612), .SP(clk_1ms_c_enable_27), .CK(clk_1ms_c), 
            .Q(music_delay[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_delay_i0_i2.GSR = "DISABLED";
    LUT4 i1391_4_lut (.A(clk_1ms_c_enable_33), .B(n8_adj_4), .C(n2998), 
         .D(n4), .Z(clk_1ms_c_enable_12)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1391_4_lut.init = 16'ha888;
    LUT4 i2219_3_lut_rep_23_4_lut (.A(sys_rst_n_c), .B(clk_1ms_c_enable_16), 
         .C(state[0]), .D(state[1]), .Z(clk_1ms_c_enable_45)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2219_3_lut_rep_23_4_lut.init = 16'h0800;
    FD1P3IX music_cnt_i0_i8 (.D(n282), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i8.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i4 (.D(music_tone_7__N_81[3]), .SP(clk_1ms_c_enable_31), 
            .CK(clk_1ms_c), .Q(music_tone_c_3));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i4.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i3 (.D(music_tone_7__N_81[2]), .SP(clk_1ms_c_enable_31), 
            .CK(clk_1ms_c), .Q(music_tone_c_2));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i3.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i2 (.D(music_tone_7__N_81[1]), .SP(clk_1ms_c_enable_31), 
            .CK(clk_1ms_c), .Q(music_tone_c_1));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i2.GSR = "DISABLED";
    FD1P3AX blink_576 (.D(blink_N_134), .SP(sys_rst_n_c), .CK(clk_1ms_c), 
            .Q(blink_c));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam blink_576.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(n3086), .B(n115), .C(n20), .D(cnt_run[0]), 
         .Z(n7)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0700;
    LUT4 i1_2_lut (.A(cnt_run[4]), .B(cnt_run[3]), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut.init = 16'h2222;
    CCU2D sub_745_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(music_delay[2]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2900));
    defparam sub_745_add_2_1.INIT0 = 16'h0000;
    defparam sub_745_add_2_1.INIT1 = 16'h5999;
    defparam sub_745_add_2_1.INJECT1_0 = "NO";
    defparam sub_745_add_2_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i0 (.D(n387), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i0.GSR = "DISABLED";
    LUT4 i1781_4_lut (.A(switch_2_c), .B(uart_recv_data_c_6), .C(n3088), 
         .D(n112), .Z(music_tone_7__N_81[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(41[13:27])
    defparam i1781_4_lut.init = 16'hcac0;
    LUT4 i1783_4_lut (.A(switch_2_c), .B(uart_recv_data_c_5), .C(n3088), 
         .D(n113), .Z(music_tone_7__N_81[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(41[13:27])
    defparam i1783_4_lut.init = 16'hcac0;
    CCU2D add_143_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2899), .S0(n372));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_17.INIT0 = 16'h5aaa;
    defparam add_143_17.INIT1 = 16'h0000;
    defparam add_143_17.INJECT1_0 = "NO";
    defparam add_143_17.INJECT1_1 = "NO";
    LUT4 i1779_4_lut (.A(switch_2_c), .B(uart_recv_data_c_4), .C(n3088), 
         .D(n114), .Z(music_tone_7__N_81[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(41[13:27])
    defparam i1779_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_4_lut (.A(cnt_run[0]), .B(n3079), .C(n3076), .D(n128), 
         .Z(n2973)) /* synthesis lut_function=(A (B+(D))+!A !(C+!(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(233[7:11])
    defparam i1_4_lut_4_lut.init = 16'haf88;
    LUT4 i1777_4_lut (.A(music_tone_c_4), .B(uart_recv_data_c_7), .C(n3088), 
         .D(n4_adj_2), .Z(music_tone_7__N_81[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(41[13:27])
    defparam i1777_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_22_2_lut_3_lut_4_lut (.A(n3088), .B(switch_2_c), .C(n3084), 
         .D(sys_rst_n_c), .Z(n3072)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1_2_lut_rep_22_2_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1834_4_lut (.A(switch_2_c), .B(uart_recv_data_c_3), .C(n3088), 
         .D(n115), .Z(music_tone_7__N_81[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(41[13:27])
    defparam i1834_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_32_3_lut (.A(music_cnt[6]), .B(music_cnt[5]), .C(n115), 
         .Z(n3082)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_rep_32_3_lut.init = 16'h8080;
    CCU2D add_143_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2892), .COUT(n2893), .S0(n386), .S1(n385));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_3.INIT0 = 16'h5aaa;
    defparam add_143_3.INIT1 = 16'h5aaa;
    defparam add_143_3.INJECT1_0 = "NO";
    defparam add_143_3.INJECT1_1 = "NO";
    LUT4 i2203_3_lut (.A(state[0]), .B(state_back[0]), .C(n369), .Z(n3017)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i2203_3_lut.init = 16'heaea;
    LUT4 i1_3_lut_4_lut_adj_8 (.A(n3078), .B(cnt_run[1]), .C(n3084), .D(switch_2_c), 
         .Z(n4_adj_2)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(229[7:11])
    defparam i1_3_lut_4_lut_adj_8.init = 16'hfe00;
    LUT4 i6_1_lut_2_lut (.A(music_cnt[6]), .B(music_cnt[5]), .Z(n2615)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i6_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_adj_9 (.A(cnt_run[4]), .B(cnt_run[3]), .Z(n4_adj_1)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_adj_9.init = 16'h4444;
    LUT4 i1389_4_lut (.A(clk_1ms_c_enable_33), .B(n8_adj_5), .C(n2998), 
         .D(n4_adj_1), .Z(clk_1ms_c_enable_13)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1389_4_lut.init = 16'ha888;
    FD1P3AX cnt_run_i0_i0 (.D(n2973), .SP(clk_1ms_c_enable_33), .CK(clk_1ms_c), 
            .Q(cnt_run[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    FD1P3AX music_tone_i0_i5 (.D(music_tone_7__N_81[4]), .SP(clk_1ms_c_enable_34), 
            .CK(clk_1ms_c), .Q(music_tone_c_4));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_tone_i0_i5.GSR = "DISABLED";
    LUT4 i2093_2_lut_rep_37 (.A(cnt_run[2]), .B(cnt_run[0]), .Z(n3087)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2093_2_lut_rep_37.init = 16'heeee;
    LUT4 recv_done_flag_I_0_2_lut_rep_38 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(n3088)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_38.init = 16'h4444;
    FD1P3IX cnt_delay_i0_i11 (.D(n376), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[11]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i11.GSR = "DISABLED";
    CCU2D add_143_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2892), .S1(n387));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_1.INIT0 = 16'hF000;
    defparam add_143_1.INIT1 = 16'h5555;
    defparam add_143_1.INJECT1_0 = "NO";
    defparam add_143_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(music_cnt[6]), .B(music_cnt[5]), .C(n115), 
         .Z(n2612)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_3_lut.init = 16'h0808;
    FD1P3IX music_cnt_i0_i0 (.D(n290), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i0.GSR = "DISABLED";
    CCU2D add_129_9 (.A0(music_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2890), .S0(n283), .S1(n282));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_9.INIT0 = 16'h5aaa;
    defparam add_129_9.INIT1 = 16'h5aaa;
    defparam add_129_9.INJECT1_0 = "NO";
    defparam add_129_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_36 (.A(music_cnt[6]), .B(music_cnt[5]), .Z(n3086)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_rep_36.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(cnt_run[5]), .B(n3080), .C(n3087), 
         .D(n53), .Z(n2998)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'h0004;
    FD1P3IX music_cnt_i0_i7 (.D(n283), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i7.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i1 (.D(n386), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i4 (.D(n383), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i4.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i1 (.D(n289), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_34 (.A(state[0]), .B(state[1]), .Z(n3084)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(257[5:10])
    defparam i1_2_lut_rep_34.init = 16'hdddd;
    LUT4 i1_3_lut_4_lut_adj_11 (.A(recv_done_d1), .B(recv_done_d0), .C(switch_2_c), 
         .D(sys_rst_n_c), .Z(clk_1ms_c_enable_34)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(45[25:55])
    defparam i1_3_lut_4_lut_adj_11.init = 16'hf400;
    LUT4 i1_4_lut_4_lut_adj_12 (.A(state[0]), .B(state[1]), .C(n3074), 
         .D(state_back[0]), .Z(n1579)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_12.init = 16'hee02;
    LUT4 i1_2_lut_rep_35 (.A(state[0]), .B(state[1]), .Z(n3085)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_35.init = 16'h2222;
    LUT4 i2221_2_lut_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(switch_2_c), 
         .D(n3088), .Z(clk_1ms_c_enable_33)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(257[5:10])
    defparam i2221_2_lut_2_lut_3_lut_4_lut.init = 16'h0020;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n3127)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D add_129_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2889), .COUT(n2890), .S0(n285), .S1(n284));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(251[23:39])
    defparam add_129_7.INIT0 = 16'h5aaa;
    defparam add_129_7.INIT1 = 16'h5aaa;
    defparam add_129_7.INJECT1_0 = "NO";
    defparam add_129_7.INJECT1_1 = "NO";
    PFUMX i22 (.BLUT(n9), .ALUT(n3017), .C0(state[1]), .Z(n1571));
    PFUMX i2241 (.BLUT(n3090), .ALUT(n3091), .C0(cnt_run[1]), .Z(n3092));
    CCU2D add_111_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2885), .COUT(n2886), .S0(n123), .S1(n122));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_7.INIT0 = 16'h5aaa;
    defparam add_111_7.INIT1 = 16'h5aaa;
    defparam add_111_7.INJECT1_0 = "NO";
    defparam add_111_7.INJECT1_1 = "NO";
    CCU2D add_143_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2898), .COUT(n2899), .S0(n374), .S1(n373));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_15.INIT0 = 16'h5aaa;
    defparam add_143_15.INIT1 = 16'h5aaa;
    defparam add_143_15.INJECT1_0 = "NO";
    defparam add_143_15.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i2 (.D(n385), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i2.GSR = "DISABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB blink_pad (.I(blink_c), .O(blink));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(12[18:23])
    CCU2D add_111_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2884), .COUT(n2885), .S0(n125), .S1(n124));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_5.INIT0 = 16'h5aaa;
    defparam add_111_5.INIT1 = 16'h5aaa;
    defparam add_111_5.INJECT1_0 = "NO";
    defparam add_111_5.INJECT1_1 = "NO";
    FD1P3AX state_back_i0_i0 (.D(n1579), .SP(clk_1ms_c_enable_42), .CK(clk_1ms_c), 
            .Q(state_back[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    ROM128X1A mux_609_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n112)) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_609_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    FD1S3AX recv_done_d1_572 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(54[10] 57[8])
    defparam recv_done_d1_572.GSR = "ENABLED";
    CCU2D add_143_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2897), .COUT(n2898), .S0(n376), .S1(n375));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(273[28:44])
    defparam add_143_13.INIT0 = 16'h5aaa;
    defparam add_143_13.INIT1 = 16'h5aaa;
    defparam add_143_13.INJECT1_0 = "NO";
    defparam add_143_13.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i6 (.D(n284), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i6.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i5 (.D(n285), .SP(clk_1ms_c_enable_44), .CD(n2285), 
            .CK(clk_1ms_c), .Q(music_cnt[5]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam music_cnt_i0_i5.GSR = "DISABLED";
    ROM128X1A mux_609_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n113)) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_609_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    ROM128X1A mux_609_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n114)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_609_Mux_2.initval = 128'h000000005994949451139113B7139113;
    FD1P3IX cnt_delay_i0_i12 (.D(n375), .SP(clk_1ms_c_enable_45), .CD(n2270), 
            .CK(clk_1ms_c), .Q(cnt_delay[12]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(68[10] 278[5])
    defparam cnt_delay_i0_i12.GSR = "DISABLED";
    CCU2D add_111_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2883), .COUT(n2884), .S0(n127), .S1(n126));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(231[17:29])
    defparam add_111_3.INIT0 = 16'h5aaa;
    defparam add_111_3.INIT1 = 16'h5aaa;
    defparam add_111_3.INJECT1_0 = "NO";
    defparam add_111_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

