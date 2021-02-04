// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Thu Feb 04 20:19:25 2021
//
// Verilog Description of module LCD_RGB
//

module LCD_RGB (clk_in, rst_n_in, clk_out, clk_out_1MHz, clk_out_1KHZ) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/program4/top.v(1[8:15])
    input clk_in;   // c:/users/argon/desktop/program4/top.v(3[11:17])
    input rst_n_in;   // c:/users/argon/desktop/program4/top.v(4[11:19])
    output clk_out;   // c:/users/argon/desktop/program4/top.v(6[12:19])
    output clk_out_1MHz;   // c:/users/argon/desktop/program4/top.v(7[13:25])
    output clk_out_1KHZ;   // c:/users/argon/desktop/program4/top.v(8[13:25])
    
    wire clk_out_c_c /* synthesis SET_AS_NETWORK=clk_out_c_c, is_clock=1 */ ;   // c:/users/argon/desktop/program4/top.v(3[11:17])
    
    wire GND_net, VCC_net, rst_n_in_c, clk_out_1MHz_c, clk_out_1KHZ_c;
    
    VHI i300 (.Z(VCC_net));
    OB clk_out_1MHz_pad (.I(clk_out_1MHz_c), .O(clk_out_1MHz));   // c:/users/argon/desktop/program4/top.v(7[13:25])
    OB clk_out_1KHZ_pad (.I(clk_out_1KHZ_c), .O(clk_out_1KHZ));   // c:/users/argon/desktop/program4/top.v(8[13:25])
    OB clk_out_pad (.I(clk_out_c_c), .O(clk_out));   // c:/users/argon/desktop/program4/top.v(6[12:19])
    divide divide_1MHz (.GND_net(GND_net), .clk_out_c_c(clk_out_c_c), .clk_out_1MHz_c(clk_out_1MHz_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/program4/top.v(20[8] 26[2])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(rst_n_in_c));
    TSALL TSALL_INST (.TSALL(GND_net));
    divide_U0 divide_1KHz (.clk_out_1KHZ_c(clk_out_1KHZ_c), .clk_out_c_c(clk_out_c_c), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/program4/top.v(28[8] 34[2])
    IB clk_out_c_pad (.I(clk_in), .O(clk_out_c_c));   // c:/users/argon/desktop/program4/top.v(3[11:17])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // c:/users/argon/desktop/program4/top.v(4[11:19])
    
endmodule
//
// Verilog Description of module divide
//

module divide (GND_net, clk_out_c_c, clk_out_1MHz_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_out_c_c;
    output clk_out_1MHz_c;
    
    wire clk_out_c_c /* synthesis SET_AS_NETWORK=clk_out_c_c, is_clock=1 */ ;   // c:/users/argon/desktop/program4/top.v(3[11:17])
    wire [31:0]cnt_p;   // c:/users/argon/desktop/program4/clock.v(18[13:18])
    
    wire n40, n377, n48, n46, n32, n50, n35, n128;
    wire [31:0]n101;
    
    wire n417, n418, n419, n420, n413, n414, n378, n412, n411, 
        n383, n384, clk_p_N_170, n54, n36, n56, n44, n55, n4, 
        n52, n392, n391, n390, n389, n388, n421, n422, n410, 
        n416, n382, n381, n387, n386, n385, n409, n415, n424, 
        n423, n380, n379;
    
    LUT4 i11_2_lut (.A(cnt_p[10]), .B(cnt_p[17]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i11_2_lut.init = 16'heeee;
    CCU2D sub_7_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n377));
    defparam sub_7_add_2_2.INIT0 = 16'h0000;
    defparam sub_7_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_7_add_2_2.INJECT1_0 = "NO";
    defparam sub_7_add_2_2.INJECT1_1 = "NO";
    LUT4 i19_4_lut (.A(cnt_p[7]), .B(cnt_p[19]), .C(cnt_p[11]), .D(cnt_p[21]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i17_4_lut (.A(cnt_p[26]), .B(cnt_p[12]), .C(cnt_p[28]), .D(cnt_p[18]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(cnt_p[13]), .B(cnt_p[22]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i21_4_lut (.A(cnt_p[2]), .B(cnt_p[27]), .C(cnt_p[23]), .D(cnt_p[30]), 
         .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(cnt_p[20]), .B(cnt_p[4]), .Z(n35)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i6_2_lut.init = 16'heeee;
    FD1S3IX cnt_p_15__i31 (.D(n101[31]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i31.GSR = "ENABLED";
    CCU2D cnt_p_15_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n417), .COUT(n418), .S0(n101[17]), .S1(n101[18]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n419), .COUT(n420), .S0(n101[21]), .S1(n101[22]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n413), .COUT(n414), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_11.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_4 (.A0(cnt_p[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n377), 
          .COUT(n378));
    defparam sub_7_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_7_add_2_4.INIT1 = 16'h5555;
    defparam sub_7_add_2_4.INJECT1_0 = "NO";
    defparam sub_7_add_2_4.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n412), .COUT(n413), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n411), .COUT(n412), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_16 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n383), .COUT(n384));
    defparam sub_7_add_2_16.INIT0 = 16'h5555;
    defparam sub_7_add_2_16.INIT1 = 16'h5555;
    defparam sub_7_add_2_16.INJECT1_0 = "NO";
    defparam sub_7_add_2_16.INJECT1_1 = "NO";
    FD1S3IX cnt_p_15__i0 (.D(n101[0]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i0.GSR = "ENABLED";
    FD1S3AX clk_p_35 (.D(clk_p_N_170), .CK(clk_out_c_c), .Q(clk_out_1MHz_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=20, LSE_RLINE=26 */ ;   // c:/users/argon/desktop/program4/clock.v(40[9] 43[14])
    defparam clk_p_35.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i30 (.D(n101[30]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i29 (.D(n101[29]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i28 (.D(n101[28]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i27 (.D(n101[27]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i26 (.D(n101[26]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i25 (.D(n101[25]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i24 (.D(n101[24]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i23 (.D(n101[23]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i22 (.D(n101[22]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i21 (.D(n101[21]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i20 (.D(n101[20]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i19 (.D(n101[19]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i18 (.D(n101[18]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i17 (.D(n101[17]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i16 (.D(n101[16]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i15 (.D(n101[15]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i14 (.D(n101[14]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i13 (.D(n101[13]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i12 (.D(n101[12]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i11 (.D(n101[11]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i10 (.D(n101[10]), .CK(clk_out_c_c), .CD(n128), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i9 (.D(n101[9]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i8 (.D(n101[8]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i7 (.D(n101[7]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i6 (.D(n101[6]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i5 (.D(n101[5]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i4 (.D(n101[4]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i3 (.D(n101[3]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_15__i2 (.D(n101[2]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i2.GSR = "ENABLED";
    LUT4 i27_4_lut (.A(n35), .B(n54), .C(n48), .D(n36), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i27_4_lut.init = 16'hfffe;
    LUT4 i15_3_lut (.A(cnt_p[15]), .B(cnt_p[31]), .C(cnt_p[5]), .Z(n44)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i15_3_lut.init = 16'hfefe;
    LUT4 i290_4_lut (.A(n55), .B(cnt_p[1]), .C(n56), .D(n4), .Z(n128)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i290_4_lut.init = 16'h0400;
    LUT4 i1_2_lut (.A(cnt_p[3]), .B(cnt_p[0]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i7_2_lut (.A(cnt_p[8]), .B(cnt_p[29]), .Z(n36)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i23_4_lut (.A(cnt_p[24]), .B(n46), .C(n32), .D(cnt_p[16]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i23_4_lut.init = 16'hfffe;
    LUT4 i26_4_lut (.A(cnt_p[14]), .B(n52), .C(n44), .D(cnt_p[6]), .Z(n55)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i26_4_lut.init = 16'hfffe;
    FD1S3IX cnt_p_15__i1 (.D(n101[1]), .CK(clk_out_c_c), .CD(n128), .Q(cnt_p[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15__i1.GSR = "ENABLED";
    CCU2D sub_7_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n392), .S0(clk_p_N_170));
    defparam sub_7_add_2_cout.INIT0 = 16'h0000;
    defparam sub_7_add_2_cout.INIT1 = 16'h0000;
    defparam sub_7_add_2_cout.INJECT1_0 = "NO";
    defparam sub_7_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_32 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n391), .COUT(n392));
    defparam sub_7_add_2_32.INIT0 = 16'h5555;
    defparam sub_7_add_2_32.INIT1 = 16'h5555;
    defparam sub_7_add_2_32.INJECT1_0 = "NO";
    defparam sub_7_add_2_32.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_30 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n390), .COUT(n391));
    defparam sub_7_add_2_30.INIT0 = 16'h5555;
    defparam sub_7_add_2_30.INIT1 = 16'h5555;
    defparam sub_7_add_2_30.INJECT1_0 = "NO";
    defparam sub_7_add_2_30.INJECT1_1 = "NO";
    LUT4 i25_4_lut (.A(cnt_p[25]), .B(n50), .C(n40), .D(cnt_p[9]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i25_4_lut.init = 16'hfffe;
    CCU2D sub_7_add_2_28 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n389), .COUT(n390));
    defparam sub_7_add_2_28.INIT0 = 16'h5555;
    defparam sub_7_add_2_28.INIT1 = 16'h5555;
    defparam sub_7_add_2_28.INJECT1_0 = "NO";
    defparam sub_7_add_2_28.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_26 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n388), .COUT(n389));
    defparam sub_7_add_2_26.INIT0 = 16'h5555;
    defparam sub_7_add_2_26.INIT1 = 16'h5555;
    defparam sub_7_add_2_26.INJECT1_0 = "NO";
    defparam sub_7_add_2_26.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n421), .COUT(n422), .S0(n101[25]), .S1(n101[26]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_5 (.A0(cnt_p[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n410), .COUT(n411), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n416), .COUT(n417), .S0(n101[15]), .S1(n101[16]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_14 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n382), .COUT(n383));
    defparam sub_7_add_2_14.INIT0 = 16'h5555;
    defparam sub_7_add_2_14.INIT1 = 16'h5555;
    defparam sub_7_add_2_14.INJECT1_0 = "NO";
    defparam sub_7_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_12 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n381), .COUT(n382));
    defparam sub_7_add_2_12.INIT0 = 16'h5555;
    defparam sub_7_add_2_12.INIT1 = 16'h5555;
    defparam sub_7_add_2_12.INJECT1_0 = "NO";
    defparam sub_7_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_24 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n387), .COUT(n388));
    defparam sub_7_add_2_24.INIT0 = 16'h5555;
    defparam sub_7_add_2_24.INIT1 = 16'h5555;
    defparam sub_7_add_2_24.INJECT1_0 = "NO";
    defparam sub_7_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_22 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n386), .COUT(n387));
    defparam sub_7_add_2_22.INIT0 = 16'h5555;
    defparam sub_7_add_2_22.INIT1 = 16'h5555;
    defparam sub_7_add_2_22.INJECT1_0 = "NO";
    defparam sub_7_add_2_22.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_20 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n385), .COUT(n386));
    defparam sub_7_add_2_20.INIT0 = 16'h5555;
    defparam sub_7_add_2_20.INIT1 = 16'h5555;
    defparam sub_7_add_2_20.INJECT1_0 = "NO";
    defparam sub_7_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_18 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n384), .COUT(n385));
    defparam sub_7_add_2_18.INIT0 = 16'h5555;
    defparam sub_7_add_2_18.INIT1 = 16'h5555;
    defparam sub_7_add_2_18.INJECT1_0 = "NO";
    defparam sub_7_add_2_18.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n420), .COUT(n421), .S0(n101[23]), .S1(n101[24]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_3 (.A0(cnt_p[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n409), .COUT(n410), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n415), .COUT(n416), .S0(n101[13]), .S1(n101[14]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n414), .COUT(n415), .S0(n101[11]), .S1(n101[12]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n418), .COUT(n419), .S0(n101[19]), .S1(n101[20]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n424), .S0(n101[31]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_15_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n409), .S1(n101[0]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_15_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_15_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n423), .COUT(n424), .S0(n101[29]), .S1(n101[30]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_15_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n422), .COUT(n423), .S0(n101[27]), .S1(n101[28]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_15_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_15_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_15_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_15_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_10 (.A0(cnt_p[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n380), 
          .COUT(n381));
    defparam sub_7_add_2_10.INIT0 = 16'h5555;
    defparam sub_7_add_2_10.INIT1 = 16'h5555;
    defparam sub_7_add_2_10.INJECT1_0 = "NO";
    defparam sub_7_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_8 (.A0(cnt_p[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n379), 
          .COUT(n380));
    defparam sub_7_add_2_8.INIT0 = 16'h5555;
    defparam sub_7_add_2_8.INIT1 = 16'h5555;
    defparam sub_7_add_2_8.INJECT1_0 = "NO";
    defparam sub_7_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_6 (.A0(cnt_p[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n378), 
          .COUT(n379));
    defparam sub_7_add_2_6.INIT0 = 16'h5555;
    defparam sub_7_add_2_6.INIT1 = 16'h5555;
    defparam sub_7_add_2_6.INJECT1_0 = "NO";
    defparam sub_7_add_2_6.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module divide_U0
//

module divide_U0 (clk_out_1KHZ_c, clk_out_c_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_out_1KHZ_c;
    input clk_out_c_c;
    input GND_net;
    
    wire clk_out_c_c /* synthesis SET_AS_NETWORK=clk_out_c_c, is_clock=1 */ ;   // c:/users/argon/desktop/program4/top.v(3[11:17])
    
    wire clk_p_N_170;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/program4/clock.v(18[13:18])
    
    wire n36, n447, n448, n127, n29, n42, n38, n30;
    wire [31:0]n200;
    
    wire n406;
    wire [31:0]n101;
    
    wire n407, n405, n40, n34, n458, n26, n404, n403, n402, 
        n401, n393, n394, n400, n437, n436, n452, n399, n398, 
        n397, n396, n435, n434, n433, n432, n431, n430, n395, 
        n429, n428, n427, n426, n425, n408;
    
    FD1S3AX clk_p_35 (.D(clk_p_N_170), .CK(clk_out_c_c), .Q(clk_out_1KHZ_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=34 */ ;   // c:/users/argon/desktop/program4/clock.v(40[9] 43[14])
    defparam clk_p_35.GSR = "ENABLED";
    LUT4 i14_4_lut (.A(cnt_p[17]), .B(cnt_p[27]), .C(cnt_p[24]), .D(cnt_p[30]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i288_4_lut (.A(n447), .B(cnt_p[9]), .C(n448), .D(cnt_p[6]), 
         .Z(n127)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i288_4_lut.init = 16'h4000;
    LUT4 i21_4_lut (.A(n29), .B(n42), .C(n38), .D(n30), .Z(n447)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i274_4_lut (.A(n200[2]), .B(cnt_p[11]), .C(n200[1]), .D(cnt_p[7]), 
         .Z(n448)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i274_4_lut.init = 16'h8000;
    CCU2D cnt_p_16_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n406), .COUT(n407), .S0(n101[27]), .S1(n101[28]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n405), .COUT(n406), .S0(n101[25]), .S1(n101[26]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_27.INJECT1_1 = "NO";
    LUT4 i7_2_lut (.A(cnt_p[14]), .B(cnt_p[19]), .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i20_4_lut (.A(cnt_p[31]), .B(n40), .C(n34), .D(n458), .Z(n42)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i20_4_lut.init = 16'hfeff;
    LUT4 i4_2_lut (.A(cnt_p[26]), .B(cnt_p[12]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i4_2_lut.init = 16'heeee;
    CCU2D cnt_p_16_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n404), .COUT(n405), .S0(n101[23]), .S1(n101[24]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n403), .COUT(n404), .S0(n101[21]), .S1(n101[22]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n402), .COUT(n403), .S0(n101[19]), .S1(n101[20]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n401), .COUT(n402), .S0(n101[17]), .S1(n101[18]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n393), .COUT(n394), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n400), .COUT(n401), .S0(n101[15]), .S1(n101[16]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_17.INJECT1_1 = "NO";
    FD1S3IX cnt_p_16__i1 (.D(n101[1]), .CK(clk_out_c_c), .CD(n127), .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i1.GSR = "ENABLED";
    LUT4 i16_4_lut (.A(cnt_p[20]), .B(cnt_p[23]), .C(cnt_p[15]), .D(cnt_p[29]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i16_4_lut.init = 16'hfffe;
    CCU2D add_261_28 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n437), 
          .S1(clk_p_N_170));
    defparam add_261_28.INIT0 = 16'h5555;
    defparam add_261_28.INIT1 = 16'h0000;
    defparam add_261_28.INJECT1_0 = "NO";
    defparam add_261_28.INJECT1_1 = "NO";
    FD1S3IX cnt_p_16__i0 (.D(n101[0]), .CK(clk_out_c_c), .CD(n127), .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i0.GSR = "ENABLED";
    LUT4 i8_2_lut (.A(cnt_p[22]), .B(cnt_p[5]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(cnt_p[21]), .B(n36), .C(n26), .D(cnt_p[25]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i18_4_lut.init = 16'hfffe;
    CCU2D add_261_26 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n436), .COUT(n437));
    defparam add_261_26.INIT0 = 16'h5555;
    defparam add_261_26.INIT1 = 16'h5555;
    defparam add_261_26.INJECT1_0 = "NO";
    defparam add_261_26.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(cnt_p[28]), .B(cnt_p[8]), .C(cnt_p[18]), .D(cnt_p[16]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i284_4_lut (.A(cnt_p[10]), .B(n200[3]), .C(cnt_p[13]), .D(n452), 
         .Z(n458)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i284_4_lut.init = 16'h8000;
    FD1S3IX cnt_p_16__i31 (.D(n101[31]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i31.GSR = "ENABLED";
    CCU2D cnt_p_16_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n399), .COUT(n400), .S0(n101[13]), .S1(n101[14]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n398), .COUT(n399), .S0(n101[11]), .S1(n101[12]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n397), .COUT(n398), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n396), .COUT(n397), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n393), .S1(n101[0]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_16_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_16_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_1.INJECT1_1 = "NO";
    CCU2D add_261_24 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n435), .COUT(n436));
    defparam add_261_24.INIT0 = 16'h5555;
    defparam add_261_24.INIT1 = 16'h5555;
    defparam add_261_24.INJECT1_0 = "NO";
    defparam add_261_24.INJECT1_1 = "NO";
    CCU2D add_261_22 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n434), .COUT(n435));
    defparam add_261_22.INIT0 = 16'h5555;
    defparam add_261_22.INIT1 = 16'h5555;
    defparam add_261_22.INJECT1_0 = "NO";
    defparam add_261_22.INJECT1_1 = "NO";
    CCU2D add_261_20 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n433), .COUT(n434));
    defparam add_261_20.INIT0 = 16'h5555;
    defparam add_261_20.INIT1 = 16'h5555;
    defparam add_261_20.INJECT1_0 = "NO";
    defparam add_261_20.INJECT1_1 = "NO";
    CCU2D add_261_18 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n432), .COUT(n433));
    defparam add_261_18.INIT0 = 16'h5555;
    defparam add_261_18.INIT1 = 16'h5555;
    defparam add_261_18.INJECT1_0 = "NO";
    defparam add_261_18.INJECT1_1 = "NO";
    CCU2D add_261_16 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n431), .COUT(n432));
    defparam add_261_16.INIT0 = 16'h5555;
    defparam add_261_16.INIT1 = 16'h5555;
    defparam add_261_16.INJECT1_0 = "NO";
    defparam add_261_16.INJECT1_1 = "NO";
    CCU2D add_261_14 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n430), .COUT(n431));
    defparam add_261_14.INIT0 = 16'h5555;
    defparam add_261_14.INIT1 = 16'h5555;
    defparam add_261_14.INJECT1_0 = "NO";
    defparam add_261_14.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n395), .COUT(n396), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n394), .COUT(n395), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_5.INJECT1_1 = "NO";
    CCU2D add_261_12 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n429), .COUT(n430));
    defparam add_261_12.INIT0 = 16'h5555;
    defparam add_261_12.INIT1 = 16'h5555;
    defparam add_261_12.INJECT1_0 = "NO";
    defparam add_261_12.INJECT1_1 = "NO";
    CCU2D add_261_10 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n428), .COUT(n429));
    defparam add_261_10.INIT0 = 16'h5555;
    defparam add_261_10.INIT1 = 16'h5555;
    defparam add_261_10.INJECT1_0 = "NO";
    defparam add_261_10.INJECT1_1 = "NO";
    CCU2D add_261_8 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n427), .COUT(n428));
    defparam add_261_8.INIT0 = 16'h5555;
    defparam add_261_8.INIT1 = 16'h5aaa;
    defparam add_261_8.INJECT1_0 = "NO";
    defparam add_261_8.INJECT1_1 = "NO";
    CCU2D add_261_6 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n426), .COUT(n427));
    defparam add_261_6.INIT0 = 16'h5aaa;
    defparam add_261_6.INIT1 = 16'h5aaa;
    defparam add_261_6.INJECT1_0 = "NO";
    defparam add_261_6.INJECT1_1 = "NO";
    CCU2D add_261_4 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n425), 
          .COUT(n426));
    defparam add_261_4.INIT0 = 16'h5555;
    defparam add_261_4.INIT1 = 16'h5aaa;
    defparam add_261_4.INJECT1_0 = "NO";
    defparam add_261_4.INJECT1_1 = "NO";
    CCU2D add_261_2 (.A0(cnt_p[5]), .B0(cnt_p[4]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n425));
    defparam add_261_2.INIT0 = 16'h7000;
    defparam add_261_2.INIT1 = 16'h5aaa;
    defparam add_261_2.INJECT1_0 = "NO";
    defparam add_261_2.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n408), .S0(n101[31]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_16_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_16_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n407), .COUT(n408), .S0(n101[29]), .S1(n101[30]));   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_16_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_16_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_16_add_4_31.INJECT1_1 = "NO";
    FD1S3IX cnt_p_16__i30 (.D(n101[30]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i29 (.D(n101[29]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i28 (.D(n101[28]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i27 (.D(n101[27]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i26 (.D(n101[26]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i25 (.D(n101[25]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i24 (.D(n101[24]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i23 (.D(n101[23]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i22 (.D(n101[22]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i21 (.D(n101[21]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i20 (.D(n101[20]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i19 (.D(n101[19]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i18 (.D(n101[18]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i17 (.D(n101[17]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i16 (.D(n101[16]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i15 (.D(n101[15]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i14 (.D(n101[14]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i13 (.D(n101[13]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i12 (.D(n101[12]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i11 (.D(n101[11]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i10 (.D(n101[10]), .CK(clk_out_c_c), .CD(n127), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i9 (.D(n101[9]), .CK(clk_out_c_c), .CD(n127), .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i8 (.D(n101[8]), .CK(clk_out_c_c), .CD(n127), .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i7 (.D(n101[7]), .CK(clk_out_c_c), .CD(n127), .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i6 (.D(n101[6]), .CK(clk_out_c_c), .CD(n127), .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i5 (.D(n101[5]), .CK(clk_out_c_c), .CD(n127), .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i4 (.D(n101[4]), .CK(clk_out_c_c), .CD(n127), .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i3 (.D(n101[3]), .CK(clk_out_c_c), .CD(n127), .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_16__i2 (.D(n101[2]), .CK(clk_out_c_c), .CD(n127), .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/program4/clock.v(32[16:23])
    defparam cnt_p_16__i2.GSR = "ENABLED";
    LUT4 i278_2_lut (.A(n200[0]), .B(cnt_p[4]), .Z(n452)) /* synthesis lut_function=(A (B)) */ ;
    defparam i278_2_lut.init = 16'h8888;
    
endmodule
