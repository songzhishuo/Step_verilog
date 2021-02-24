// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sat Feb 20 16:14:00 2021
//
// Verilog Description of module KEY
//

module KEY (sys_clk, sys_rst_n, key, key_pulse) /* synthesis syn_module_defined=1 */ ;   // d:/new porject/top-xu/key.v(1[8:11])
    input sys_clk;   // d:/new porject/top-xu/key.v(3[8:15])
    input sys_rst_n;   // d:/new porject/top-xu/key.v(4[8:17])
    input key;   // d:/new porject/top-xu/key.v(6[8:11])
    output key_pulse;   // d:/new porject/top-xu/key.v(8[9:18])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/new porject/top-xu/key.v(3[8:15])
    
    wire sys_rst_n_c, key_c, key_pulse_c, key_rst_pre, key_rst, key_edge;
    wire [17:0]cnt;   // d:/new porject/top-xu/key.v(37[16:19])
    
    wire key_sec_pre, key_sec, sys_clk_c_enable_1, n192, n191, n190, 
        n189, n188, n187, n186, n185, n184, GND_net, n78, n79, 
        n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, 
        n90, n91, n92, n93, n94, n95, n34, n31, n30, n28, 
        n22, n21, VCC_net;
    
    VLO i25 (.Z(GND_net));
    LUT4 key_sec_pre_I_0_2_lut (.A(key_sec_pre), .B(key_sec), .Z(key_pulse_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut.init = 16'h2222;
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre));   // d:/new porject/top-xu/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    OB key_pulse_pad (.I(key_pulse_c), .O(key_pulse));   // d:/new porject/top-xu/key.v(8[9:18])
    FD1S3AY key_rst_26 (.D(key_c), .CK(sys_clk_c), .Q(key_rst));   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/new porject/top-xu/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    FD1S3IX cnt_36__i0 (.D(n95), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i0.GSR = "ENABLED";
    CCU2D cnt_36_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n192), 
          .S0(n78));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_19.INIT1 = 16'h0000;
    defparam cnt_36_add_4_19.INJECT1_0 = "NO";
    defparam cnt_36_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n191), 
          .COUT(n192), .S0(n80), .S1(n79));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_17.INJECT1_0 = "NO";
    defparam cnt_36_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n190), 
          .COUT(n191), .S0(n82), .S1(n81));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_15.INJECT1_0 = "NO";
    defparam cnt_36_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n189), 
          .COUT(n190), .S0(n84), .S1(n83));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_13.INJECT1_0 = "NO";
    defparam cnt_36_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n188), 
          .COUT(n189), .S0(n86), .S1(n85));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_11.INJECT1_0 = "NO";
    defparam cnt_36_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n187), 
          .COUT(n188), .S0(n88), .S1(n87));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_9.INJECT1_0 = "NO";
    defparam cnt_36_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n186), 
          .COUT(n187), .S0(n90), .S1(n89));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_7.INJECT1_0 = "NO";
    defparam cnt_36_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n185), 
          .COUT(n186), .S0(n92), .S1(n91));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_5.INJECT1_0 = "NO";
    defparam cnt_36_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_36_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n184), 
          .COUT(n185), .S0(n94), .S1(n93));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_36_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_36_add_4_3.INJECT1_0 = "NO";
    defparam cnt_36_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_36__i17 (.D(n78), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i17.GSR = "ENABLED";
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/new porject/top-xu/key.v(3[8:15])
    GSR GSR_INST (.GSR(sys_rst_n_c));
    FD1P3AY key_sec_29 (.D(key_c), .SP(sys_clk_c_enable_1), .CK(sys_clk_c), 
            .Q(key_sec));   // d:/new porject/top-xu/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre));   // d:/new porject/top-xu/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3IX cnt_36__i16 (.D(n79), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i16.GSR = "ENABLED";
    FD1S3IX cnt_36__i15 (.D(n80), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i15.GSR = "ENABLED";
    FD1S3IX cnt_36__i14 (.D(n81), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i14.GSR = "ENABLED";
    FD1S3IX cnt_36__i13 (.D(n82), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i13.GSR = "ENABLED";
    FD1S3IX cnt_36__i12 (.D(n83), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i12.GSR = "ENABLED";
    FD1S3IX cnt_36__i11 (.D(n84), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i11.GSR = "ENABLED";
    FD1S3IX cnt_36__i10 (.D(n85), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i10.GSR = "ENABLED";
    FD1S3IX cnt_36__i9 (.D(n86), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i9.GSR = "ENABLED";
    FD1S3IX cnt_36__i8 (.D(n87), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i8.GSR = "ENABLED";
    FD1S3IX cnt_36__i7 (.D(n88), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i7.GSR = "ENABLED";
    FD1S3IX cnt_36__i6 (.D(n89), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i6.GSR = "ENABLED";
    FD1S3IX cnt_36__i5 (.D(n90), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i5.GSR = "ENABLED";
    FD1S3IX cnt_36__i4 (.D(n91), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i4.GSR = "ENABLED";
    FD1S3IX cnt_36__i3 (.D(n92), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i3.GSR = "ENABLED";
    FD1S3IX cnt_36__i2 (.D(n93), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i2.GSR = "ENABLED";
    FD1S3IX cnt_36__i1 (.D(n94), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36__i1.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_1)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // d:/new porject/top-xu/key.v(4[8:17])
    IB key_pad (.I(key), .O(key_c));   // d:/new porject/top-xu/key.v(6[8:11])
    CCU2D cnt_36_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n184), 
          .S1(n95));   // d:/new porject/top-xu/key.v(46[12:23])
    defparam cnt_36_add_4_1.INIT0 = 16'hF000;
    defparam cnt_36_add_4_1.INIT1 = 16'h0555;
    defparam cnt_36_add_4_1.INJECT1_0 = "NO";
    defparam cnt_36_add_4_1.INJECT1_1 = "NO";
    VHI i138 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

