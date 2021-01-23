// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Fri Jan 22 19:06:29 2021
//
// Verilog Description of module LED
//

module LED (clk, led1, led2) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(1[8:11])
    input clk;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(2[13:16])
    output led1;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(3[13:17])
    output led2;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(4[9:13])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(2[13:16])
    
    wire led2_c, GND_net, VCC_net;
    
    VHI i5 (.Z(VCC_net));
    PWM LED1 (.GND_net(GND_net), .clk_c(clk_c), .led2_c(led2_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(7[5] 10[2])
    OB led2_pad (.I(led2_c), .O(led2));   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(4[9:13])
    GSR GSR_INST (.GSR(VCC_net));
    OB led1_pad (.I(led2_c), .O(led1));   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(3[13:17])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(2[13:16])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (GND_net, clk_c, led2_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_c;
    output led2_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(2[13:16])
    
    wire n344;
    wire [31:0]cnt;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(9[11:14])
    wire [13:0]n61;
    
    wire n343, n342, inc_dec_flag, clk_c_enable_1, n547, n341, n340, 
        n339, n558, n18, n17, n19, n262;
    wire [31:0]duty;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(12[11:15])
    
    wire clk_c_enable_33;
    wire [31:0]n144;
    
    wire n338;
    wire [31:0]duty_cnt;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(11[11:19])
    
    wire n6, n337;
    wire [13:0]n61_adj_222;
    
    wire n336, n335, n334, n10, n333, n4, n332, n331, n329, 
        n328, n327, n550, n555, n554, n11, n492, n326, n325, 
        n324, n323, n18_adj_213, n20, n322, n321, n12, n557, 
        n549, n480, n22, n320, n319, n318, n317, n316, n315, 
        n314, n556, n548, n553, n552, n466, n502, n12_adj_214, 
        n438, n11_adj_215, n12_adj_216, n21, n34, n30, n22_adj_217, 
        n255, n485, n13, n31, n28, n24, n26, n490, n28_adj_218, 
        n14, n14_adj_219, n8, n16, n551, n504, n20_adj_220, n19_adj_221, 
        n469, n456, n445;
    
    CCU2D cnt_55_56_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n344), .S0(n61[13]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_55_56_add_4_15.INIT1 = 16'h0000;
    defparam cnt_55_56_add_4_15.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_55_56_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n343), .COUT(n344), .S0(n61[11]), .S1(n61[12]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_55_56_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_55_56_add_4_13.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_55_56_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n342), .COUT(n343), .S0(n61[9]), .S1(n61[10]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_55_56_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_55_56_add_4_11.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_11.INJECT1_1 = "NO";
    FD1P3AX inc_dec_flag_29 (.D(n547), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(inc_dec_flag));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam inc_dec_flag_29.GSR = "ENABLED";
    CCU2D cnt_55_56_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n341), .COUT(n342), .S0(n61[7]), .S1(n61[8]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_55_56_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_55_56_add_4_9.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_55_56_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n340), .COUT(n341), .S0(n61[5]), .S1(n61[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_55_56_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_55_56_add_4_7.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_55_56_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n339), .COUT(n340), .S0(n61[3]), .S1(n61[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_55_56_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_55_56_add_4_5.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_5.INJECT1_1 = "NO";
    LUT4 i347_4_lut_4_lut (.A(n558), .B(n18), .C(n17), .D(n19), .Z(n262)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(20[6:22])
    defparam i347_4_lut_4_lut.init = 16'h4000;
    FD1P3AX duty_i0_i0 (.D(n144[0]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i0.GSR = "ENABLED";
    CCU2D cnt_55_56_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n338), .COUT(n339), .S0(n61[1]), .S1(n61[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_55_56_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_55_56_add_4_3.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_55_56_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n338), .S1(n61[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56_add_4_1.INIT0 = 16'hF000;
    defparam cnt_55_56_add_4_1.INIT1 = 16'h0555;
    defparam cnt_55_56_add_4_1.INJECT1_0 = "NO";
    defparam cnt_55_56_add_4_1.INJECT1_1 = "NO";
    LUT4 duty_31__I_0_33_i6_3_lut_3_lut (.A(duty[3]), .B(duty_cnt[3]), .C(duty_cnt[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i6_3_lut_3_lut.init = 16'hd4d4;
    CCU2D duty_cnt_57_58_add_4_15 (.A0(duty_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n337), .S0(n61_adj_222[13]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_15.INIT0 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_15.INIT1 = 16'h0000;
    defparam duty_cnt_57_58_add_4_15.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_15.INJECT1_1 = "NO";
    CCU2D duty_cnt_57_58_add_4_13 (.A0(duty_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(duty_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n336), .COUT(n337), .S0(n61_adj_222[11]), 
          .S1(n61_adj_222[12]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_13.INIT0 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_13.INIT1 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_13.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_13.INJECT1_1 = "NO";
    CCU2D duty_cnt_57_58_add_4_11 (.A0(duty_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(duty_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n335), .COUT(n336), .S0(n61_adj_222[9]), 
          .S1(n61_adj_222[10]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_11.INIT0 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_11.INIT1 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_11.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_11.INJECT1_1 = "NO";
    CCU2D duty_cnt_57_58_add_4_9 (.A0(duty_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(duty_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n334), .COUT(n335), .S0(n61_adj_222[7]), 
          .S1(n61_adj_222[8]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_9.INIT0 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_9.INIT1 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_9.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_9.INJECT1_1 = "NO";
    LUT4 duty_31__I_0_33_i10_3_lut_3_lut (.A(duty[6]), .B(duty_cnt[6]), 
         .C(duty_cnt[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i10_3_lut_3_lut.init = 16'hd4d4;
    CCU2D duty_cnt_57_58_add_4_7 (.A0(duty_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(duty_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n333), .COUT(n334), .S0(n61_adj_222[5]), 
          .S1(n61_adj_222[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_7.INIT0 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_7.INIT1 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_7.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_7.INJECT1_1 = "NO";
    LUT4 duty_31__I_0_33_i4_4_lut (.A(duty_cnt[0]), .B(duty_cnt[1]), .C(duty[1]), 
         .D(duty[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i4_4_lut.init = 16'h0c8e;
    CCU2D duty_cnt_57_58_add_4_5 (.A0(duty_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(duty_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n332), .COUT(n333), .S0(n61_adj_222[3]), 
          .S1(n61_adj_222[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_5.INIT0 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_5.INIT1 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_5.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_5.INJECT1_1 = "NO";
    CCU2D duty_cnt_57_58_add_4_3 (.A0(duty_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(duty_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n331), .COUT(n332), .S0(n61_adj_222[1]), 
          .S1(n61_adj_222[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_3.INIT0 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_3.INIT1 = 16'hfaaa;
    defparam duty_cnt_57_58_add_4_3.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_3.INJECT1_1 = "NO";
    CCU2D duty_cnt_57_58_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(duty_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n331), .S1(n61_adj_222[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58_add_4_1.INIT0 = 16'hF000;
    defparam duty_cnt_57_58_add_4_1.INIT1 = 16'h0555;
    defparam duty_cnt_57_58_add_4_1.INJECT1_0 = "NO";
    defparam duty_cnt_57_58_add_4_1.INJECT1_1 = "NO";
    CCU2D add_50_33 (.A0(duty[30]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[31]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n329), .S0(n144[30]), .S1(n144[31]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_33.INIT0 = 16'h5999;
    defparam add_50_33.INIT1 = 16'h5999;
    defparam add_50_33.INJECT1_0 = "NO";
    defparam add_50_33.INJECT1_1 = "NO";
    CCU2D add_50_31 (.A0(duty[28]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[29]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n328), .COUT(n329), .S0(n144[28]), .S1(n144[29]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_31.INIT0 = 16'h5999;
    defparam add_50_31.INIT1 = 16'h5999;
    defparam add_50_31.INJECT1_0 = "NO";
    defparam add_50_31.INJECT1_1 = "NO";
    CCU2D add_50_29 (.A0(duty[26]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[27]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n327), .COUT(n328), .S0(n144[26]), .S1(n144[27]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_29.INIT0 = 16'h5999;
    defparam add_50_29.INIT1 = 16'h5999;
    defparam add_50_29.INJECT1_0 = "NO";
    defparam add_50_29.INJECT1_1 = "NO";
    LUT4 i348_4_lut (.A(n550), .B(n555), .C(n554), .D(n11), .Z(n492)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i348_4_lut.init = 16'haaab;
    CCU2D add_50_27 (.A0(duty[24]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[25]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n326), .COUT(n327), .S0(n144[24]), .S1(n144[25]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_27.INIT0 = 16'h5999;
    defparam add_50_27.INIT1 = 16'h5999;
    defparam add_50_27.INJECT1_0 = "NO";
    defparam add_50_27.INJECT1_1 = "NO";
    CCU2D add_50_25 (.A0(duty[22]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[23]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n325), .COUT(n326), .S0(n144[22]), .S1(n144[23]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_25.INIT0 = 16'h5999;
    defparam add_50_25.INIT1 = 16'h5999;
    defparam add_50_25.INJECT1_0 = "NO";
    defparam add_50_25.INJECT1_1 = "NO";
    CCU2D add_50_23 (.A0(duty[20]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[21]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n324), .COUT(n325), .S0(n144[20]), .S1(n144[21]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_23.INIT0 = 16'h5999;
    defparam add_50_23.INIT1 = 16'h5999;
    defparam add_50_23.INJECT1_0 = "NO";
    defparam add_50_23.INJECT1_1 = "NO";
    CCU2D add_50_21 (.A0(duty[18]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[19]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n323), .COUT(n324), .S0(n144[18]), .S1(n144[19]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_21.INIT0 = 16'h5999;
    defparam add_50_21.INIT1 = 16'h5999;
    defparam add_50_21.INJECT1_0 = "NO";
    defparam add_50_21.INJECT1_1 = "NO";
    LUT4 duty_31__I_0_33_i20_3_lut_3_lut (.A(duty[12]), .B(duty_cnt[12]), 
         .C(n18_adj_213), .Z(n20)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i20_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_50_19 (.A0(duty[16]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[17]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n322), .COUT(n323), .S0(n144[16]), .S1(n144[17]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_19.INIT0 = 16'h5999;
    defparam add_50_19.INIT1 = 16'h5999;
    defparam add_50_19.INJECT1_0 = "NO";
    defparam add_50_19.INJECT1_1 = "NO";
    CCU2D add_50_17 (.A0(duty[14]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[15]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n321), .COUT(n322), .S0(n144[14]), .S1(n144[15]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_17.INIT0 = 16'h5999;
    defparam add_50_17.INIT1 = 16'h5999;
    defparam add_50_17.INJECT1_0 = "NO";
    defparam add_50_17.INJECT1_1 = "NO";
    FD1S3IX cnt_55_56__i14 (.D(n61[13]), .CK(clk_c), .CD(n262), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i14.GSR = "ENABLED";
    LUT4 duty_31__I_0_33_i15_2_lut_rep_20 (.A(duty[7]), .B(duty_cnt[7]), 
         .Z(n555)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i15_2_lut_rep_20.init = 16'h6666;
    LUT4 duty_31__I_0_33_i12_3_lut_3_lut (.A(duty[7]), .B(duty_cnt[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 duty_31__I_0_33_i9_2_lut_rep_22 (.A(duty[4]), .B(duty_cnt[4]), 
         .Z(n557)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i9_2_lut_rep_22.init = 16'h6666;
    LUT4 i343_4_lut (.A(n6), .B(n20), .C(n549), .D(n480), .Z(n22)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i343_4_lut.init = 16'hcacc;
    CCU2D add_50_15 (.A0(duty[12]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[13]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n320), .COUT(n321), .S0(n144[12]), .S1(n144[13]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_15.INIT0 = 16'h5999;
    defparam add_50_15.INIT1 = 16'h5999;
    defparam add_50_15.INJECT1_0 = "NO";
    defparam add_50_15.INJECT1_1 = "NO";
    CCU2D add_50_13 (.A0(duty[10]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[11]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n319), .COUT(n320), .S0(n144[10]), .S1(n144[11]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_13.INIT0 = 16'h5999;
    defparam add_50_13.INIT1 = 16'h5999;
    defparam add_50_13.INJECT1_0 = "NO";
    defparam add_50_13.INJECT1_1 = "NO";
    CCU2D add_50_11 (.A0(duty[8]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[9]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n318), .COUT(n319), .S0(n144[8]), .S1(n144[9]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_11.INIT0 = 16'h5999;
    defparam add_50_11.INIT1 = 16'h5999;
    defparam add_50_11.INJECT1_0 = "NO";
    defparam add_50_11.INJECT1_1 = "NO";
    CCU2D add_50_9 (.A0(duty[6]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[7]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n317), .COUT(n318), .S0(n144[6]), .S1(n144[7]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_9.INIT0 = 16'h5999;
    defparam add_50_9.INIT1 = 16'h5999;
    defparam add_50_9.INJECT1_0 = "NO";
    defparam add_50_9.INJECT1_1 = "NO";
    CCU2D add_50_7 (.A0(duty[4]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[5]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n316), .COUT(n317), .S0(n144[4]), .S1(n144[5]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_7.INIT0 = 16'h5999;
    defparam add_50_7.INIT1 = 16'h5999;
    defparam add_50_7.INJECT1_0 = "NO";
    defparam add_50_7.INJECT1_1 = "NO";
    CCU2D add_50_5 (.A0(duty[2]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[3]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n315), .COUT(n316), .S0(n144[2]), .S1(n144[3]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_5.INIT0 = 16'h5999;
    defparam add_50_5.INIT1 = 16'h5999;
    defparam add_50_5.INJECT1_0 = "NO";
    defparam add_50_5.INJECT1_1 = "NO";
    CCU2D add_50_3 (.A0(duty[0]), .B0(inc_dec_flag), .C0(GND_net), .D0(GND_net), 
          .A1(duty[1]), .B1(inc_dec_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n314), .COUT(n315), .S0(n144[0]), .S1(n144[1]));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_3.INIT0 = 16'h5666;
    defparam add_50_3.INIT1 = 16'h5999;
    defparam add_50_3.INJECT1_0 = "NO";
    defparam add_50_3.INJECT1_1 = "NO";
    CCU2D add_50_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(inc_dec_flag), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n314));   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[5] 35[8])
    defparam add_50_1.INIT0 = 16'hF000;
    defparam add_50_1.INIT1 = 16'h0aaa;
    defparam add_50_1.INJECT1_0 = "NO";
    defparam add_50_1.INJECT1_1 = "NO";
    FD1S3IX cnt_55_56__i13 (.D(n61[12]), .CK(clk_c), .CD(n262), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i13.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i1 (.D(n61_adj_222[0]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i1.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i12 (.D(n61[11]), .CK(clk_c), .CD(n262), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i12.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i11 (.D(n61[10]), .CK(clk_c), .CD(n262), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i11.GSR = "ENABLED";
    LUT4 duty_31__I_0_33_i7_2_lut_rep_21 (.A(duty[3]), .B(duty_cnt[3]), 
         .Z(n556)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i7_2_lut_rep_21.init = 16'h6666;
    FD1S3IX cnt_55_56__i10 (.D(n61[9]), .CK(clk_c), .CD(n262), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i10.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i9 (.D(n61[8]), .CK(clk_c), .CD(n262), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i9.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i8 (.D(n61[7]), .CK(clk_c), .CD(n262), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i8.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i1 (.D(n61[0]), .CK(clk_c), .CD(n262), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i1.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i7 (.D(n61[6]), .CK(clk_c), .CD(n262), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i7.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i6 (.D(n61[5]), .CK(clk_c), .CD(n262), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i6.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i5 (.D(n61[4]), .CK(clk_c), .CD(n262), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i5.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i4 (.D(n61[3]), .CK(clk_c), .CD(n262), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i4.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i3 (.D(n61[2]), .CK(clk_c), .CD(n262), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i3.GSR = "ENABLED";
    FD1S3IX cnt_55_56__i2 (.D(n61[1]), .CK(clk_c), .CD(n262), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(18[8:13])
    defparam cnt_55_56__i2.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i14 (.D(n61_adj_222[13]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i14.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i13 (.D(n61_adj_222[12]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i13.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i12 (.D(n61_adj_222[11]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i12.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i11 (.D(n61_adj_222[10]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i11.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i10 (.D(n61_adj_222[9]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i10.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i9 (.D(n61_adj_222[8]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i9.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i8 (.D(n61_adj_222[7]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i8.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i7 (.D(n61_adj_222[6]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i7.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i6 (.D(n61_adj_222[5]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i6.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i5 (.D(n61_adj_222[4]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i5.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i4 (.D(n61_adj_222[3]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i4.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i3 (.D(n61_adj_222[2]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i3.GSR = "ENABLED";
    FD1S3IX duty_cnt_57_58__i2 (.D(n61_adj_222[1]), .CK(clk_c), .CD(n262), 
            .Q(duty_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(19[16:26])
    defparam duty_cnt_57_58__i2.GSR = "ENABLED";
    FD1P3AX duty_i0_i31 (.D(n144[31]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i31.GSR = "ENABLED";
    FD1P3AX duty_i0_i30 (.D(n144[30]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i30.GSR = "ENABLED";
    FD1P3AX duty_i0_i29 (.D(n144[29]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i29.GSR = "ENABLED";
    FD1P3AX duty_i0_i28 (.D(n144[28]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i28.GSR = "ENABLED";
    FD1P3AX duty_i0_i27 (.D(n144[27]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i27.GSR = "ENABLED";
    FD1P3AX duty_i0_i26 (.D(n144[26]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i26.GSR = "ENABLED";
    FD1P3AX duty_i0_i25 (.D(n144[25]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i25.GSR = "ENABLED";
    FD1P3AX duty_i0_i24 (.D(n144[24]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i24.GSR = "ENABLED";
    FD1P3AX duty_i0_i23 (.D(n144[23]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i23.GSR = "ENABLED";
    FD1P3AX duty_i0_i22 (.D(n144[22]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i22.GSR = "ENABLED";
    FD1P3AX duty_i0_i21 (.D(n144[21]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i21.GSR = "ENABLED";
    FD1P3AX duty_i0_i20 (.D(n144[20]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i20.GSR = "ENABLED";
    FD1P3AX duty_i0_i19 (.D(n144[19]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i19.GSR = "ENABLED";
    FD1P3AX duty_i0_i18 (.D(n144[18]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i18.GSR = "ENABLED";
    FD1P3AX duty_i0_i17 (.D(n144[17]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i17.GSR = "ENABLED";
    FD1P3AX duty_i0_i16 (.D(n144[16]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i16.GSR = "ENABLED";
    FD1P3AX duty_i0_i15 (.D(n144[15]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i15.GSR = "ENABLED";
    FD1P3AX duty_i0_i14 (.D(n144[14]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i14.GSR = "ENABLED";
    FD1P3AX duty_i0_i13 (.D(n144[13]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i13.GSR = "ENABLED";
    FD1P3AX duty_i0_i12 (.D(n144[12]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i12.GSR = "ENABLED";
    FD1P3AX duty_i0_i11 (.D(n144[11]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i11.GSR = "ENABLED";
    FD1P3AX duty_i0_i10 (.D(n144[10]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i10.GSR = "ENABLED";
    FD1P3AX duty_i0_i9 (.D(n144[9]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i9.GSR = "ENABLED";
    FD1P3AX duty_i0_i8 (.D(n144[8]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i8.GSR = "ENABLED";
    FD1P3AX duty_i0_i7 (.D(n144[7]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i7.GSR = "ENABLED";
    FD1P3AX duty_i0_i6 (.D(n144[6]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i6.GSR = "ENABLED";
    FD1P3AX duty_i0_i5 (.D(n144[5]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i5.GSR = "ENABLED";
    FD1P3AX duty_i0_i4 (.D(n144[4]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i4.GSR = "ENABLED";
    FD1P3AX duty_i0_i3 (.D(n144[3]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i3.GSR = "ENABLED";
    FD1P3AX duty_i0_i2 (.D(n144[2]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i2.GSR = "ENABLED";
    FD1P3AX duty_i0_i1 (.D(n144[1]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(duty[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(27[8] 44[4])
    defparam duty_i0_i1.GSR = "ENABLED";
    LUT4 i353_4_lut (.A(n548), .B(n553), .C(n552), .D(n466), .Z(n502)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i353_4_lut.init = 16'hefee;
    LUT4 i313_2_lut_3_lut_4_lut (.A(duty[4]), .B(duty_cnt[4]), .C(duty_cnt[8]), 
         .D(duty[8]), .Z(n466)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i313_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i6_4_lut (.A(duty[2]), .B(n12_adj_214), .C(duty[0]), .D(duty[1]), 
         .Z(n438)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(37[9:26])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_23 (.A(cnt[5]), .B(cnt[12]), .C(cnt[8]), .Z(n558)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[9:20])
    defparam i2_3_lut_rep_23.init = 16'hfefe;
    LUT4 i5_4_lut (.A(duty[4]), .B(duty[3]), .C(duty[8]), .D(duty[12]), 
         .Z(n12_adj_214)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(37[9:26])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i4_3_lut (.A(duty[11]), .B(duty[7]), .C(duty[6]), .Z(n11_adj_215)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i5_4_lut_adj_1 (.A(duty[10]), .B(duty[5]), .C(duty[13]), .D(duty[9]), 
         .Z(n12_adj_216)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_1.init = 16'h8000;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22_adj_217), .Z(n255)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i354_2_lut_3_lut (.A(duty[12]), .B(duty_cnt[12]), .C(n502), .Z(n485)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i354_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i5_4_lut_adj_2 (.A(duty[10]), .B(duty[6]), .C(duty[13]), .D(duty[9]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(37[9:26])
    defparam i5_4_lut_adj_2.init = 16'hfffe;
    LUT4 i8_4_lut (.A(cnt[6]), .B(cnt[1]), .C(cnt[10]), .D(cnt[7]), 
         .Z(n19)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(duty[28]), .B(duty[15]), .Z(n21)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i6_3_lut (.A(cnt[4]), .B(cnt[2]), .C(cnt[13]), .Z(n17)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6_3_lut.init = 16'h8080;
    LUT4 i16_4_lut (.A(n31), .B(duty[16]), .C(n28), .D(duty[18]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i16_4_lut.init = 16'hfffe;
    L6MUX21 duty_31__I_0_33_i28 (.D0(n24), .D1(n26), .SD(n490), .Z(n28_adj_218)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;
    LUT4 i7_4_lut (.A(cnt[9]), .B(cnt[3]), .C(cnt[11]), .D(cnt[0]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 duty_31__I_0_33_i27_2_lut_rep_15 (.A(duty[13]), .B(duty_cnt[13]), 
         .Z(n550)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i27_2_lut_rep_15.init = 16'h6666;
    LUT4 i6_4_lut_adj_3 (.A(duty[7]), .B(duty[5]), .C(duty[11]), .D(n438), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(37[9:26])
    defparam i6_4_lut_adj_3.init = 16'hfffe;
    LUT4 i12_4_lut (.A(duty[19]), .B(duty[25]), .C(duty[21]), .D(duty[24]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 duty_31__I_0_33_i14_3_lut_3_lut (.A(duty[13]), .B(duty_cnt[13]), 
         .C(n4), .Z(n14_adj_219)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 duty_31__I_0_33_i19_2_lut_rep_17 (.A(duty[9]), .B(duty_cnt[9]), 
         .Z(n552)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i19_2_lut_rep_17.init = 16'h6666;
    LUT4 i4_2_lut (.A(duty[27]), .B(duty[29]), .Z(n22_adj_217)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i13_4_lut (.A(duty[31]), .B(duty[14]), .C(duty[23]), .D(duty[20]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 duty_31__I_0_33_i16_3_lut_3_lut (.A(duty[9]), .B(duty_cnt[9]), 
         .C(n8), .Z(n16)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i10_4_lut (.A(duty[17]), .B(duty[22]), .C(duty[30]), .D(duty[26]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 duty_31__I_0_33_i23_2_lut_rep_13 (.A(duty[11]), .B(duty_cnt[11]), 
         .Z(n548)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i23_2_lut_rep_13.init = 16'h6666;
    LUT4 duty_31__I_0_33_i17_2_lut_rep_16 (.A(duty[8]), .B(duty_cnt[8]), 
         .Z(n551)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i17_2_lut_rep_16.init = 16'h6666;
    LUT4 i355_4_lut (.A(cnt[2]), .B(cnt[1]), .C(cnt[4]), .D(n558), .Z(n504)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[9:20])
    defparam i355_4_lut.init = 16'h0001;
    LUT4 i8_4_lut_adj_4 (.A(cnt[10]), .B(cnt[7]), .C(cnt[3]), .D(cnt[13]), 
         .Z(n20_adj_220)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[9:20])
    defparam i8_4_lut_adj_4.init = 16'hfffe;
    LUT4 i357_3_lut (.A(n504), .B(n19_adj_221), .C(n20_adj_220), .Z(clk_c_enable_33)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[9:20])
    defparam i357_3_lut.init = 16'h0202;
    LUT4 i163_2_lut (.A(n28_adj_218), .B(n255), .Z(led2_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i163_2_lut.init = 16'h2222;
    LUT4 duty_31__I_0_33_i21_2_lut_rep_18 (.A(duty[10]), .B(duty_cnt[10]), 
         .Z(n553)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i21_2_lut_rep_18.init = 16'h6666;
    PFUMX duty_31__I_0_33_i26 (.BLUT(n12), .ALUT(n14_adj_219), .C0(n492), 
          .Z(n26)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;
    LUT4 i327_2_lut_3_lut_4_lut (.A(duty[10]), .B(duty_cnt[10]), .C(duty_cnt[11]), 
         .D(duty[11]), .Z(n480)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i327_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 duty_31__I_0_33_i13_2_lut_rep_19 (.A(duty[6]), .B(duty_cnt[6]), 
         .Z(n554)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i13_2_lut_rep_19.init = 16'h6666;
    LUT4 duty_31__I_0_33_i18_3_lut_3_lut (.A(duty[11]), .B(duty_cnt[11]), 
         .C(duty_cnt[10]), .Z(n18_adj_213)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 duty_31__I_0_33_i25_2_lut_rep_14 (.A(duty[12]), .B(duty_cnt[12]), 
         .Z(n549)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i25_2_lut_rep_14.init = 16'h6666;
    LUT4 i1_4_lut_rep_12 (.A(n438), .B(n11_adj_215), .C(n255), .D(n12_adj_216), 
         .Z(n547)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(37[9:26])
    defparam i1_4_lut_rep_12.init = 16'hfbff;
    LUT4 i352_4_lut_4_lut (.A(n547), .B(n14), .C(n255), .D(n13), .Z(clk_c_enable_1)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i352_4_lut_4_lut.init = 16'h5557;
    PFUMX duty_31__I_0_33_i24 (.BLUT(n16), .ALUT(n22), .C0(n485), .Z(n24)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=7, LSE_RLINE=10 */ ;
    LUT4 i349_4_lut (.A(n550), .B(n549), .C(n548), .D(n469), .Z(n490)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i349_4_lut.init = 16'habaa;
    LUT4 i316_4_lut (.A(n553), .B(n552), .C(n551), .D(n456), .Z(n469)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i316_4_lut.init = 16'h0001;
    LUT4 i303_4_lut (.A(n555), .B(n554), .C(n11), .D(n445), .Z(n456)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i303_4_lut.init = 16'h0001;
    LUT4 i292_4_lut (.A(n557), .B(n556), .C(duty[2]), .D(duty_cnt[2]), 
         .Z(n445)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam i292_4_lut.init = 16'h1001;
    LUT4 duty_31__I_0_33_i11_2_lut (.A(duty[5]), .B(duty_cnt[5]), .Z(n11)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i11_2_lut.init = 16'h6666;
    LUT4 duty_31__I_0_33_i8_3_lut_3_lut (.A(duty[8]), .B(duty_cnt[8]), .C(duty_cnt[4]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(15[14:27])
    defparam duty_31__I_0_33_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7_4_lut_adj_5 (.A(cnt[11]), .B(cnt[6]), .C(cnt[0]), .D(cnt[9]), 
         .Z(n19_adj_221)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/pwm.v(28[9:20])
    defparam i7_4_lut_adj_5.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

