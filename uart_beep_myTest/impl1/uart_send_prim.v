// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Feb 15 01:40:26 2021
//
// Verilog Description of module uart_send
//

module uart_send (sys_clk, sys_rst_n, uart_en, uart_din, uart_tx_busy, 
            uart_txd) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(23[8:17])
    input sys_clk;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(24[17:24])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(25[19:28])
    input uart_en;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(27[19:26])
    input [7:0]uart_din;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    output uart_tx_busy;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(29[19:31])
    output uart_txd;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(30[19:27])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(24[17:24])
    
    wire GND_net, VCC_net, sys_rst_n_c, uart_en_c, uart_din_c_7, uart_din_c_6, 
        uart_din_c_5, uart_din_c_4, uart_din_c_3, uart_din_c_2, uart_din_c_1, 
        uart_din_c_0, uart_tx_busy_c, uart_txd_c, uart_en_d0, uart_en_d1;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    
    wire n497;
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(44[12:19])
    
    wire uart_tx_busy_N_62, n505, n503, sys_clk_c_enable_17, n507, 
        n886, n889, n464, n415, n413, n408, n407, n6, n913, 
        n4, sys_clk_c_enable_16, n10, n928, n883, n491, n204, 
        n205, n206, n207, n208, n209, n211, n212, n213, n214, 
        n215, n216, n217, n218, n219, n414, n885, n443, n444, 
        n14, n888, n432, n6_adj_1, n493, n506, n638, n70, n71, 
        n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
        n82, n83, n84, n85, n15, n884, n939, n489, n499, n501, 
        n495, n917, n970, n969, n890, n936, n887;
    
    VHI i770 (.Z(VCC_net));
    LUT4 i550_2_lut (.A(n414), .B(n219), .Z(n415)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i550_2_lut.init = 16'h2222;
    FD1S3AX tx_flag_42 (.D(n505), .CK(sys_clk_c), .Q(uart_tx_busy_c));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i8 (.D(n77), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i8.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n489), .CK(sys_clk_c), .Q(tx_data[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i7 (.D(n78), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i6 (.D(n79), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i5 (.D(n80), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i4 (.D(n81), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i3 (.D(n82), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i3.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en_c), .CK(sys_clk_c), .Q(uart_en_d0));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(64[10] 67[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    FD1S3IX clk_cnt_178__i2 (.D(n83), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i2.GSR = "ENABLED";
    OB uart_tx_busy_pad (.I(uart_tx_busy_c), .O(uart_tx_busy));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(29[19:31])
    FD1S3IX clk_cnt_178__i1 (.D(n84), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i0 (.D(n85), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i0.GSR = "ENABLED";
    LUT4 i253_3_lut (.A(tx_data[2]), .B(tx_data[1]), .C(n217), .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i253_3_lut.init = 16'hcaca;
    LUT4 i443_4_lut (.A(n638), .B(uart_din_c_7), .C(n969), .D(tx_data[7]), 
         .Z(n503)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(29[19:31])
    defparam i443_4_lut.init = 16'hcac0;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i308_4_lut (.A(tx_data[5]), .B(uart_din_c_5), .C(n969), .D(n638), 
         .Z(n499)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i308_4_lut.init = 16'hcac0;
    LUT4 i300_4_lut (.A(tx_data[1]), .B(uart_din_c_1), .C(n969), .D(n638), 
         .Z(n491)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i300_4_lut.init = 16'hcac0;
    FD1P3IX tx_cnt_FSM_i15 (.D(n205), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n204));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(30[19:27])
    FD1P3IX tx_cnt_FSM_i14 (.D(n206), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n205));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n207), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n206));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n208), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n207));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n209), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n208));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_62), .SP(sys_clk_c_enable_17), 
            .CD(n507), .CK(sys_clk_c), .Q(n209));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n211), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_62));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n212), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n211));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n213), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n212));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n214), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n213));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n215), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n214));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n216), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n215));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n217), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n216));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n218), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n217));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i1 (.D(n219), .SP(sys_clk_c_enable_17), .CD(n507), 
            .CK(sys_clk_c), .Q(n218));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1S3AX tx_data_i7 (.D(n503), .CK(sys_clk_c), .Q(tx_data[7]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i7.GSR = "ENABLED";
    FD1S3AX tx_data_i6 (.D(n501), .CK(sys_clk_c), .Q(tx_data[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n499), .CK(sys_clk_c), .Q(tx_data[5]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n497), .CK(sys_clk_c), .Q(tx_data[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n495), .CK(sys_clk_c), .Q(tx_data[3]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n493), .CK(sys_clk_c), .Q(tx_data[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n491), .CK(sys_clk_c), .Q(tx_data[1]));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i10 (.D(n75), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i10.GSR = "ENABLED";
    FD1P3JX uart_txd_47 (.D(n415), .SP(sys_clk_c_enable_16), .PD(n507), 
            .CK(sys_clk_c), .Q(uart_txd_c));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(123[10] 138[26])
    defparam uart_txd_47.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n204), .SP(sys_clk_c_enable_17), .PD(n507), 
            .CK(sys_clk_c), .Q(n219));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i9 (.D(n76), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i9.GSR = "ENABLED";
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(64[10] 67[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    CCU2D clk_cnt_178_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n883), .S1(n85));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_178_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_178_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_1.INJECT1_1 = "NO";
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(24[17:24])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(25[19:28])
    IB uart_en_pad (.I(uart_en), .O(uart_en_c));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(27[19:26])
    IB uart_din_pad_7 (.I(uart_din[7]), .O(uart_din_c_7));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    IB uart_din_pad_6 (.I(uart_din[6]), .O(uart_din_c_6));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    IB uart_din_pad_5 (.I(uart_din[5]), .O(uart_din_c_5));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    IB uart_din_pad_4 (.I(uart_din[4]), .O(uart_din_c_4));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    IB uart_din_pad_3 (.I(uart_din[3]), .O(uart_din_c_3));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    IB uart_din_pad_2 (.I(uart_din[2]), .O(uart_din_c_2));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    IB uart_din_pad_1 (.I(uart_din[1]), .O(uart_din_c_1));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    IB uart_din_pad_0 (.I(uart_din[0]), .O(uart_din_c_0));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(28[19:27])
    FD1S3IX clk_cnt_178__i11 (.D(n74), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i12 (.D(n73), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i13 (.D(n72), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i14 (.D(n71), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_178__i15 (.D(n70), .CK(sys_clk_c), .CD(n506), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178__i15.GSR = "ENABLED";
    CCU2D clk_cnt_178_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n885), .COUT(n886), .S0(n80), .S1(n79));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_178_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_178_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n888), .COUT(n889), .S0(n74), .S1(n73));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_178_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_178_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n890), .S0(n70));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_178_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_17.INJECT1_1 = "NO";
    LUT4 i743_2_lut (.A(n217), .B(n216), .Z(n936)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i743_2_lut.init = 16'h1111;
    CCU2D clk_cnt_178_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n884), .COUT(n885), .S0(n82), .S1(n81));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_178_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_178_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n889), .COUT(n890), .S0(n72), .S1(n71));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_178_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_15.INJECT1_1 = "NO";
    LUT4 i757_4_lut (.A(n218), .B(n217), .C(n216), .D(n928), .Z(n939)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i757_4_lut.init = 16'hfffe;
    LUT4 i755_3_lut (.A(n204), .B(n10), .C(n206), .Z(sys_clk_c_enable_16)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i755_3_lut.init = 16'h0101;
    LUT4 i1_2_lut (.A(clk_cnt[0]), .B(clk_cnt[2]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 i1_4_lut (.A(clk_cnt[4]), .B(n913), .C(n6_adj_1), .D(n464), 
         .Z(sys_clk_c_enable_17)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut.init = 16'h0040;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i735_3_lut (.A(n215), .B(n214), .C(n213), .Z(n928)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i735_3_lut.init = 16'h0101;
    LUT4 i252_3_lut (.A(n408), .B(tx_data[3]), .C(n215), .Z(n443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i252_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .C(n913), .D(clk_cnt[1]), 
         .Z(n917)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    defparam i1_3_lut_4_lut.init = 16'hfeee;
    LUT4 i241_3_lut (.A(n444), .B(tx_data[0]), .C(n218), .Z(n432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i241_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .C(clk_cnt[1]), 
         .D(n464), .Z(n6)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 en_flag_I_0_2_lut_rep_4 (.A(uart_en_d1), .B(uart_en_d0), .Z(n969)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(56[18:44])
    defparam en_flag_I_0_2_lut_rep_4.init = 16'h4444;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[11]), .C(n14), .D(clk_cnt[12]), 
         .Z(n464)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_1 (.A(uart_en_d1), .B(uart_en_d0), .C(n638), 
         .D(uart_tx_busy_c), .Z(n505)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(56[18:44])
    defparam i1_3_lut_4_lut_adj_1.init = 16'hf444;
    CCU2D clk_cnt_178_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n887), .COUT(n888), .S0(n76), .S1(n75));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_178_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_11.INJECT1_1 = "NO";
    LUT4 i470_4_lut (.A(n211), .B(tx_data[6]), .C(n212), .D(tx_data[7]), 
         .Z(n407)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(111[23:36])
    defparam i470_4_lut.init = 16'hcfc5;
    PFUMX i223 (.BLUT(n443), .ALUT(n413), .C0(n939), .Z(n414));
    LUT4 i4_4_lut (.A(n205), .B(n207), .C(n208), .D(n209), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(n464), .B(n970), .C(uart_tx_busy_c), .D(n917), 
         .Z(n506)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i2_4_lut.init = 16'hefaf;
    CCU2D clk_cnt_178_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n883), .COUT(n884), .S0(n84), .S1(n83));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_178_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_3.INJECT1_1 = "NO";
    LUT4 i451_1_lut (.A(uart_tx_busy_c), .Z(n507)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i451_1_lut.init = 16'h5555;
    LUT4 i217_3_lut (.A(tx_data[5]), .B(tx_data[4]), .C(n214), .Z(n408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i217_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_5 (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n970)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_5.init = 16'h8888;
    LUT4 i6_4_lut (.A(clk_cnt[13]), .B(clk_cnt[9]), .C(clk_cnt[15]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i751_4_lut (.A(n407), .B(n432), .C(n218), .D(n936), .Z(n413)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(124[9] 136[16])
    defparam i751_4_lut.init = 16'hcacc;
    LUT4 i306_4_lut (.A(tx_data[4]), .B(uart_din_c_4), .C(n969), .D(n638), 
         .Z(n497)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i306_4_lut.init = 16'hcac0;
    LUT4 i5_3_lut (.A(clk_cnt[14]), .B(clk_cnt[8]), .C(clk_cnt[10]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_2 (.A(clk_cnt[5]), .B(clk_cnt[6]), .C(clk_cnt[1]), 
         .D(clk_cnt[3]), .Z(n6_adj_1)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_2.init = 16'h0080;
    LUT4 i304_4_lut (.A(tx_data[3]), .B(uart_din_c_3), .C(n969), .D(n638), 
         .Z(n495)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i304_4_lut.init = 16'hcac0;
    LUT4 i302_4_lut (.A(tx_data[2]), .B(uart_din_c_2), .C(n969), .D(n638), 
         .Z(n493)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i302_4_lut.init = 16'hcac0;
    LUT4 i298_4_lut (.A(tx_data[0]), .B(uart_din_c_0), .C(n969), .D(n638), 
         .Z(n489)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(76[10] 88[12])
    defparam i298_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_3 (.A(clk_cnt[2]), .B(clk_cnt[0]), .Z(n913)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(41[12:19])
    defparam i1_2_lut_adj_3.init = 16'h8888;
    LUT4 i2_4_lut_adj_4 (.A(uart_tx_busy_N_62), .B(n4), .C(n6), .D(n970), 
         .Z(n638)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2_4_lut_adj_4.init = 16'hfdff;
    LUT4 i438_4_lut (.A(n638), .B(uart_din_c_6), .C(n969), .D(tx_data[6]), 
         .Z(n501)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(29[19:31])
    defparam i438_4_lut.init = 16'hcac0;
    CCU2D clk_cnt_178_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n886), .COUT(n887), .S0(n78), .S1(n77));   // c:/users/argon/desktop/verilog/test_bink/uart_send.v(97[24:38])
    defparam clk_cnt_178_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_178_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_178_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_178_add_4_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

