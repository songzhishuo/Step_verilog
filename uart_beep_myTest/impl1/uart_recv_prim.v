// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Feb 15 00:35:45 2021
//
// Verilog Description of module uart_recv
//

module uart_recv (sys_clk, sys_rst_n, uart_rxd, uart_done, uart_data) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(23[8:17])
    input sys_clk;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(24[15:22])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(25[23:32])
    input uart_rxd;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(27[23:31])
    output uart_done;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(28[23:32])
    output [7:0]uart_data;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(24[15:22])
    
    wire GND_net, VCC_net, sys_rst_n_c, uart_rxd_c, uart_done_c, uart_data_c_7, 
        uart_data_c_6, uart_data_c_5, uart_data_c_4, uart_data_c_3, 
        uart_data_c_2, uart_data_c_1, uart_data_c_0, uart_rxd_d0, uart_rxd_d1;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(40[12:19])
    
    wire n868, rx_flag;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(43[12:18])
    
    wire n916, rx_flag_N_68, n865, n543, n540, n915, n534, n530, 
        uart_data_7__N_67, sys_clk_c_enable_17, n614, n613, n880, 
        n250, n251, n252, n253, n254, n255, n257, n258, n259, 
        n260, n261, n262, n263, n264, n265, n818, n822, n6, 
        n821, n819, n820, n825, n862, n365, n537, n914, n592, 
        n913, n15, n14, n912, n70, n71, n72, n73, n74, n75, 
        n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
        n827, n911, n824, n910, sys_clk_c_enable_24, n823, n863, 
        n691, n909, n874, n871, n869, n859, n555, n552, n549, 
        n851, n546, sys_clk_c_enable_19;
    
    VHI i625 (.Z(VCC_net));
    LUT4 i342_1_lut (.A(uart_data_7__N_67), .Z(n614)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam i342_1_lut.init = 16'h5555;
    FD1S3AX rx_flag_56 (.D(n592), .CK(sys_clk_c), .Q(rx_flag));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i11 (.D(n74), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i10 (.D(n75), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i9 (.D(n76), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i8 (.D(n77), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i8.GSR = "ENABLED";
    FD1P3IX rxdata__i0 (.D(n555), .SP(sys_clk_c_enable_19), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_67), .CK(sys_clk_c), .Q(uart_done_c));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i7 (.D(n78), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i7.GSR = "ENABLED";
    OB uart_done_pad (.I(uart_done_c), .O(uart_done));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(28[23:32])
    FD1S3IX clk_cnt_131__i6 (.D(n79), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i5 (.D(n80), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i4 (.D(n81), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i3 (.D(n82), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i2 (.D(n83), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i1 (.D(n84), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i0 (.D(n85), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i0.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n827)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_8 (.A(n264), .B(n262), .Z(n915)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_8.init = 16'heeee;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[12]), .C(n14), .D(clk_cnt[14]), 
         .Z(n530)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_7_3_lut (.A(n264), .B(n262), .C(n263), .Z(n914)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_7_3_lut.init = 16'hfefe;
    LUT4 i6_4_lut (.A(clk_cnt[13]), .B(clk_cnt[15]), .C(clk_cnt[8]), .D(clk_cnt[9]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i320_4_lut (.A(uart_data_7__N_67), .B(rx_flag_N_68), .C(rx_flag), 
         .D(n910), .Z(n592)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(70[10] 78[8])
    defparam i320_4_lut.init = 16'hfcdc;
    CCU2D clk_cnt_131_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n821), .COUT(n822), .S0(n78), .S1(n77));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_131_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_9.INJECT1_1 = "NO";
    FD1P3IX rx_cnt_FSM_i15 (.D(n251), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n250));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    OB uart_data_pad_7 (.I(uart_data_c_7), .O(uart_data[7]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    LUT4 i1_2_lut_3_lut_4_lut (.A(n261), .B(n912), .C(n258), .D(n259), 
         .Z(n862)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[2]), .C(n262), .D(n868), 
         .Z(n549)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_68)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    FD1P3JX rx_cnt_FSM_i0 (.D(n250), .SP(sys_clk_c_enable_17), .PD(n365), 
            .CK(sys_clk_c), .Q(n265));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i620_3_lut_rep_1_3_lut_4_lut (.A(n261), .B(n912), .C(n913), .D(n910), 
         .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i620_3_lut_rep_1_3_lut_4_lut.init = 16'h00fe;
    LUT4 i1_2_lut_rep_5_3_lut_4_lut (.A(n264), .B(n262), .C(n260), .D(n263), 
         .Z(n912)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_5_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX uart_data__i1 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_0));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_1 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n257), .D(n862), 
         .Z(n537)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_1.init = 16'heca0;
    FD1S3IX clk_cnt_131__i12 (.D(n73), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i12.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_2 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n263), .D(n874), 
         .Z(n552)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_2.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(n261), .B(n912), .C(n257), .D(n259), 
         .Z(n863)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'hfffe;
    LUT4 i1_2_lut_rep_9 (.A(n258), .B(n257), .Z(n916)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_9.init = 16'heeee;
    CCU2D clk_cnt_131_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n820), .COUT(n821), .S0(n80), .S1(n79));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_131_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_6_3_lut (.A(n258), .B(n257), .C(n259), .Z(n913)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_6_3_lut.init = 16'hfefe;
    CCU2D clk_cnt_131_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n819), .COUT(n820), .S0(n82), .S1(n81));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_131_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(n260), .B(n911), .C(n264), .D(n263), 
         .Z(n868)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(n260), .B(n911), .C(n262), .D(n263), 
         .Z(n869)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'hfffe;
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    LUT4 i4_4_lut_rep_3 (.A(clk_cnt[0]), .B(n851), .C(clk_cnt[4]), .D(n6), 
         .Z(n910)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i4_4_lut_rep_3.init = 16'hffef;
    LUT4 i1_2_lut_rep_4_3_lut_4_lut (.A(n258), .B(n257), .C(n261), .D(n259), 
         .Z(n911)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_4_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_6 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n258), .D(n863), 
         .Z(n540)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_6.init = 16'heca0;
    LUT4 i617_2_lut_4_lut_4_lut (.A(n910), .B(rx_flag), .C(n913), .D(n909), 
         .Z(sys_clk_c_enable_24)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(128[13:30])
    defparam i617_2_lut_4_lut_4_lut.init = 16'h7773;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n261), .B(n913), .C(n915), .D(n260), 
         .Z(n874)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'hfffe;
    CCU2D clk_cnt_131_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n825), .S0(n70));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_131_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(n260), .B(n914), .C(n916), .D(n261), 
         .Z(n859)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'hfffe;
    LUT4 i614_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n530), .D(n880), 
         .Z(n613)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(92[9:26])
    defparam i614_4_lut.init = 16'hfdf5;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n530), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n851)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    CCU2D clk_cnt_131_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n824), .COUT(n825), .S0(n72), .S1(n71));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_131_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_131_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n818), .S1(n85));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_131_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_131_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_1.INJECT1_1 = "NO";
    LUT4 i622_4_lut (.A(clk_cnt[0]), .B(clk_cnt[4]), .C(n691), .D(n851), 
         .Z(sys_clk_c_enable_17)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i622_4_lut.init = 16'h0020;
    LUT4 i5_3_lut (.A(clk_cnt[7]), .B(clk_cnt[10]), .C(clk_cnt[11]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(100[13:35])
    defparam i5_3_lut.init = 16'hfefe;
    CCU2D clk_cnt_131_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n823), .COUT(n824), .S0(n74), .S1(n73));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_131_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n259), .B(n916), .C(n914), .D(n261), 
         .Z(n865)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(n259), .B(n916), .C(n914), .D(n260), 
         .Z(n871)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'hfffe;
    LUT4 i1_4_lut_adj_11 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n259), .D(n859), 
         .Z(n534)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_11.init = 16'heca0;
    CCU2D clk_cnt_131_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n818), .COUT(n819), .S0(n84), .S1(n83));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_131_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_12 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n260), .D(n865), 
         .Z(n543)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_12.init = 16'heca0;
    FD1P3IX rx_cnt_FSM_i14 (.D(n252), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n251));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n253), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n252));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n254), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n253));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n255), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n254));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_67), .SP(sys_clk_c_enable_17), 
            .CD(n365), .CK(sys_clk_c), .Q(n255));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n257), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(uart_data_7__N_67));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n258), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n257));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n259), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n258));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n260), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n259));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n261), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n260));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n262), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n261));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n263), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n262));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n264), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n263));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n265), .SP(sys_clk_c_enable_17), .CD(n365), 
            .CK(sys_clk_c), .Q(n264));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n537), .SP(sys_clk_c_enable_19), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[7]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    GSR GSR_INST (.GSR(sys_rst_n_c));
    FD1P3IX rxdata__i6 (.D(n540), .SP(sys_clk_c_enable_19), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n534), .SP(sys_clk_c_enable_24), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[5]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n543), .SP(sys_clk_c_enable_24), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n546), .SP(sys_clk_c_enable_24), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[3]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n549), .SP(sys_clk_c_enable_24), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n552), .SP(sys_clk_c_enable_24), .CD(n365), 
            .CK(sys_clk_c), .Q(rxdata[1]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i8 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_7));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i8.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_6));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_5));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_4));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_3));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_2));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n614), .Q(uart_data_c_1));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i13 (.D(n72), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i13.GSR = "ENABLED";
    OB uart_data_pad_6 (.I(uart_data_c_6), .O(uart_data[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    OB uart_data_pad_5 (.I(uart_data_c_5), .O(uart_data[5]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    OB uart_data_pad_4 (.I(uart_data_c_4), .O(uart_data[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    OB uart_data_pad_3 (.I(uart_data_c_3), .O(uart_data[3]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    OB uart_data_pad_2 (.I(uart_data_c_2), .O(uart_data[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    OB uart_data_pad_1 (.I(uart_data_c_1), .O(uart_data[1]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    OB uart_data_pad_0 (.I(uart_data_c_0), .O(uart_data[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(29[23:32])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(24[15:22])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(25[23:32])
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(27[23:31])
    FD1S3IX clk_cnt_131__i14 (.D(n71), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_131__i15 (.D(n70), .CK(sys_clk_c), .CD(n613), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131__i15.GSR = "ENABLED";
    LUT4 i420_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n691)) /* synthesis lut_function=(A (B)) */ ;
    defparam i420_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_13 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n261), .D(n871), 
         .Z(n546)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_13.init = 16'heca0;
    LUT4 i604_4_lut (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n827), .D(clk_cnt[3]), 
         .Z(n880)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i604_4_lut.init = 16'hccc8;
    LUT4 i133_1_lut (.A(rx_flag), .Z(n365)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(70[10] 78[8])
    defparam i133_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_14 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n264), .D(n869), 
         .Z(n555)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_14.init = 16'heca0;
    LUT4 i1_2_lut_rep_2_3_lut_4_lut (.A(n263), .B(n915), .C(n261), .D(n260), 
         .Z(n909)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_2_3_lut_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    CCU2D clk_cnt_131_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n822), .COUT(n823), .S0(n76), .S1(n75));   // c:/users/argon/desktop/verilog/test_bink/uart_recv.v(87[24:38])
    defparam clk_cnt_131_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_131_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_131_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_131_add_4_11.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

