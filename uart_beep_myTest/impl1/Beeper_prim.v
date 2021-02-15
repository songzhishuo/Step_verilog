// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Feb 15 16:31:52 2021
//
// Verilog Description of module Beeper
//

module Beeper (clk_in, rst_n_in, tone_en, tone, piano_out) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(18[8:14])
    input clk_in;   // c:/users/argon/desktop/verilog/test_bink/beep.v(20[11:17])
    input rst_n_in;   // c:/users/argon/desktop/verilog/test_bink/beep.v(21[11:19])
    input tone_en;   // c:/users/argon/desktop/verilog/test_bink/beep.v(22[11:18])
    input [4:0]tone;   // c:/users/argon/desktop/verilog/test_bink/beep.v(23[15:19])
    output piano_out;   // c:/users/argon/desktop/verilog/test_bink/beep.v(24[15:24])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(20[11:17])
    
    wire GND_net, VCC_net, rst_n_in_c, tone_en_c, tone_c_4, tone_c_3, 
        tone_c_2, tone_c_1, tone_c_0, piano_out_c;
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/test_bink/beep.v(31[12:20])
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/test_bink/beep.v(64[12:20])
    
    wire n331, n93, n92, n336, n335, n334, n333, n332, n156, 
        n155, n330, n329, n95, n94, piano_out_N_41, n79, n85, 
        n83, n82, n328, n84, n31, n81, n587, n606, n585, n605, 
        n90, n584, n327, n582, n80, n342, n341, n30, n91, 
        n29, n78, n7, n15, n603, n28, n602, n340, n15_adj_1, 
        n600, n339, n599, n597, n30_adj_2, n89, n581, n596, 
        n88, n594, n593, n579, n338, n562, n561, n326, n591, 
        n87, n590, n555, n526, n554, n34, n588, n625, n525, 
        n624, n325, n86, n230, n133, n578, n157, n158, n159, 
        n160, n161, n162, n163, n164, n165, n166, n167, n168, 
        n169, n170, n171, n172, n173, n337;
    
    VHI i417 (.Z(VCC_net));
    LUT4 i12_4_lut (.A(n162), .B(n168), .C(n164), .D(n159), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    FD1S3IX time_cnt_86__i0 (.D(n95), .CK(clk_in_c), .CD(n133), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i0.GSR = "ENABLED";
    CCU2D add_31_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n330), .COUT(n331), .S0(n161), .S1(n160));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_13.INIT0 = 16'h5999;
    defparam add_31_13.INIT1 = 16'h5999;
    defparam add_31_13.INJECT1_0 = "NO";
    defparam add_31_13.INJECT1_1 = "NO";
    CCU2D add_31_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n332), .COUT(n333), .S0(n157), .S1(n156));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_17.INIT0 = 16'h5999;
    defparam add_31_17.INIT1 = 16'h5555;
    defparam add_31_17.INJECT1_0 = "NO";
    defparam add_31_17.INJECT1_1 = "NO";
    CCU2D add_31_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n326), .COUT(n327), .S0(n169), .S1(n168));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_5.INIT0 = 16'h5999;
    defparam add_31_5.INIT1 = 16'h5999;
    defparam add_31_5.INJECT1_0 = "NO";
    defparam add_31_5.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_3), .D(tone_c_2), .Z(n587)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'ha8a1;
    PFUMX i411 (.BLUT(n602), .ALUT(n603), .C0(tone_c_0), .Z(time_end[13]));
    CCU2D time_cnt_86_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n334), .COUT(n335), .S0(n94), .S1(n93));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_3.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_2), .D(tone_c_3), .Z(n579)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    CCU2D time_cnt_86_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n339), .COUT(n340), .S0(n84), .S1(n83));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_13.INJECT1_1 = "NO";
    PFUMX i409 (.BLUT(n599), .ALUT(n600), .C0(tone_c_0), .Z(time_end[11]));
    LUT4 tone_4__I_0_Mux_6_i14_3_lut_3_lut (.A(tone_c_0), .B(tone_c_1), 
         .C(tone_c_2), .Z(n230)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_6_i14_3_lut_3_lut.init = 16'h9393;
    CCU2D add_31_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n325), .COUT(n326), .S0(n171), .S1(n170));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_3.INIT0 = 16'h5999;
    defparam add_31_3.INIT1 = 16'h5999;
    defparam add_31_3.INJECT1_0 = "NO";
    defparam add_31_3.INJECT1_1 = "NO";
    FD1S3AX piano_out_20 (.D(piano_out_N_41), .CK(clk_in_c), .Q(piano_out_c));   // c:/users/argon/desktop/verilog/test_bink/beep.v(82[11] 86[5])
    defparam piano_out_20.GSR = "ENABLED";
    CCU2D time_cnt_86_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n334), .S1(n95));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_86_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_86_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_1.INJECT1_1 = "NO";
    CCU2D time_cnt_86_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n338), .COUT(n339), .S0(n86), .S1(n85));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_86_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n337), .COUT(n338), .S0(n88), .S1(n87));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_9.INJECT1_1 = "NO";
    PFUMX i407 (.BLUT(n596), .ALUT(n597), .C0(tone_c_0), .Z(time_end[2]));
    LUT4 tone_4__I_0_Mux_10_i31_then_4_lut (.A(tone_c_3), .B(tone_c_1), 
         .C(tone_c_2), .D(tone_c_4), .Z(n591)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B)) */ ;
    defparam tone_4__I_0_Mux_10_i31_then_4_lut.init = 16'heec6;
    CCU2D time_cnt_86_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n336), .COUT(n337), .S0(n90), .S1(n89));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_7.INJECT1_1 = "NO";
    PFUMX i405 (.BLUT(n593), .ALUT(n594), .C0(tone_c_0), .Z(time_end[5]));
    LUT4 n10_bdd_4_lut_383_4_lut (.A(tone_c_0), .B(tone_c_1), .C(tone_c_2), 
         .D(tone_c_4), .Z(n561)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam n10_bdd_4_lut_383_4_lut.init = 16'hff6a;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(tone_c_1), .B(tone_c_2), .C(tone_c_4), 
         .D(tone_c_3), .Z(n596)) /* synthesis lut_function=(A ((C)+!B)+!A (B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hf6a7;
    PFUMX i378 (.BLUT(n555), .ALUT(n554), .C0(tone_c_2), .Z(time_end[1]));
    LUT4 tone_c_4_bdd_4_lut (.A(tone_c_4), .B(tone_c_1), .C(tone_c_0), 
         .D(tone_c_3), .Z(n555)) /* synthesis lut_function=(A ((D)+!C)+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam tone_c_4_bdd_4_lut.init = 16'hba5b;
    LUT4 tone_4__I_0_Mux_10_i31_else_4_lut (.A(tone_c_3), .B(tone_c_1), 
         .C(tone_c_2), .D(tone_c_4), .Z(n590)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+!(D))+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_10_i31_else_4_lut.init = 16'hfae7;
    CCU2D add_31_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n329), .COUT(n330), .S0(n163), .S1(n162));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_11.INIT0 = 16'h5999;
    defparam add_31_11.INIT1 = 16'h5999;
    defparam add_31_11.INJECT1_0 = "NO";
    defparam add_31_11.INJECT1_1 = "NO";
    LUT4 n10_bdd_4_lut_391 (.A(tone_c_0), .B(tone_c_1), .C(tone_c_4), 
         .D(tone_c_2), .Z(n562)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (D)+!B !(C (D)))) */ ;
    defparam n10_bdd_4_lut_391.init = 16'hcfbb;
    CCU2D add_31_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n328), .COUT(n329), .S0(n165), .S1(n164));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_9.INIT0 = 16'h5999;
    defparam add_31_9.INIT1 = 16'h5999;
    defparam add_31_9.INJECT1_0 = "NO";
    defparam add_31_9.INJECT1_1 = "NO";
    CCU2D add_31_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(n15), .B1(tone_c_4), .C1(time_cnt[6]), .D1(GND_net), 
          .CIN(n327), .COUT(n328), .S0(n167), .S1(n166));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_7.INIT0 = 16'h5999;
    defparam add_31_7.INIT1 = 16'he1e1;
    defparam add_31_7.INJECT1_0 = "NO";
    defparam add_31_7.INJECT1_1 = "NO";
    CCU2D time_cnt_86_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n335), .COUT(n336), .S0(n92), .S1(n91));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_5.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(tone_c_1), .B(tone_c_2), 
         .C(tone_c_4), .D(tone_c_3), .Z(n600)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hf4ed;
    FD1S3IX time_cnt_86__i17 (.D(n78), .CK(clk_in_c), .CD(n133), .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i17.GSR = "ENABLED";
    PFUMX tone_4__I_0_Mux_8_i31 (.BLUT(n15_adj_1), .ALUT(n30_adj_2), .C0(tone_c_4), 
          .Z(time_end[8]));
    FD1S3IX time_cnt_86__i16 (.D(n79), .CK(clk_in_c), .CD(n133), .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i15 (.D(n80), .CK(clk_in_c), .CD(n133), .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i14 (.D(n81), .CK(clk_in_c), .CD(n133), .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i14.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(tone_c_1), .B(tone_c_2), 
         .C(tone_c_4), .D(tone_c_3), .Z(n599)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hf5c3;
    FD1S3IX time_cnt_86__i13 (.D(n82), .CK(clk_in_c), .CD(n133), .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i12 (.D(n83), .CK(clk_in_c), .CD(n133), .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i12.GSR = "ENABLED";
    PFUMX i413 (.BLUT(n605), .ALUT(n606), .C0(tone_c_0), .Z(time_end[4]));
    VLO i1 (.Z(GND_net));
    LUT4 tone_c_2_bdd_4_lut (.A(tone_c_2), .B(tone_c_0), .C(tone_c_4), 
         .D(tone_c_3), .Z(n525)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam tone_c_2_bdd_4_lut.init = 16'hf7f1;
    LUT4 tone_c_4_bdd_3_lut (.A(tone_c_4), .B(tone_c_1), .C(tone_c_3), 
         .Z(n554)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam tone_c_4_bdd_3_lut.init = 16'hacac;
    LUT4 tone_4__I_0_Mux_3_i31_3_lut_then_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_3), .D(tone_c_2), .Z(n582)) /* synthesis lut_function=(A (C+(D))+!A (B (C+!(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_3_i31_3_lut_then_4_lut.init = 16'hebe4;
    CCU2D time_cnt_86_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n342), .S0(n78));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_86_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_19.INJECT1_1 = "NO";
    PFUMX tone_4__I_0_Mux_6_i15 (.BLUT(n7), .ALUT(n230), .C0(tone_c_3), 
          .Z(n15));
    FD1S3IX time_cnt_86__i11 (.D(n84), .CK(clk_in_c), .CD(n133), .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i11.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_3), .D(tone_c_2), .Z(n603)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    FD1S3IX time_cnt_86__i10 (.D(n85), .CK(clk_in_c), .CD(n133), .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i10.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_3_i31_3_lut_else_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_3), .D(tone_c_2), .Z(n581)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C+!(D))+!B !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_3_i31_3_lut_else_4_lut.init = 16'he9f5;
    LUT4 tone_4__I_0_Mux_14_i31_3_lut_else_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_2), .D(tone_c_3), .Z(n624)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(B (C+(D))+!B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_14_i31_3_lut_else_4_lut.init = 16'haa95;
    PFUMX i403 (.BLUT(n590), .ALUT(n591), .C0(tone_c_0), .Z(time_end[10]));
    LUT4 tone_4__I_0_Mux_14_i31_3_lut_then_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_2), .D(tone_c_3), .Z(n625)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(C+(D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_14_i31_3_lut_then_4_lut.init = 16'haa85;
    CCU2D add_31_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n325), .S1(n172));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_1.INIT0 = 16'h0000;
    defparam add_31_1.INIT1 = 16'h5999;
    defparam add_31_1.INJECT1_0 = "NO";
    defparam add_31_1.INJECT1_1 = "NO";
    FD1S3IX time_cnt_86__i9 (.D(n86), .CK(clk_in_c), .CD(n133), .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i9.GSR = "ENABLED";
    LUT4 tone_c_2_bdd_3_lut (.A(tone_c_2), .B(tone_c_0), .C(tone_c_3), 
         .Z(n526)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam tone_c_2_bdd_3_lut.init = 16'hfdfd;
    LUT4 i134_2_lut_3_lut (.A(tone_c_2), .B(tone_c_3), .C(tone_c_1), .Z(n30_adj_2)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam i134_2_lut_3_lut.init = 16'hefef;
    FD1S3IX time_cnt_86__i8 (.D(n87), .CK(clk_in_c), .CD(n133), .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i8.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i155_4_lut_4_lut (.A(tone_c_0), .B(tone_c_1), .C(tone_c_2), .D(tone_c_3), 
         .Z(n15_adj_1)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;
    defparam i155_4_lut_4_lut.init = 16'h5eff;
    LUT4 tone_4__I_0_Mux_5_i31_then_4_lut (.A(tone_c_3), .B(tone_c_1), .C(tone_c_2), 
         .D(tone_c_4), .Z(n594)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D)))) */ ;
    defparam tone_4__I_0_Mux_5_i31_then_4_lut.init = 16'heee2;
    LUT4 tone_4__I_0_Mux_4_i31_then_4_lut (.A(tone_c_1), .B(tone_c_2), .C(tone_c_4), 
         .D(tone_c_3), .Z(n606)) /* synthesis lut_function=(A (C+!(D))+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_4_i31_then_4_lut.init = 16'hf0eb;
    LUT4 i1_4_lut (.A(piano_out_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_41)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/users/argon/desktop/verilog/test_bink/beep.v(20[11:17])
    CCU2D time_cnt_86_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n341), .COUT(n342), .S0(n80), .S1(n79));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_17.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_3), .D(tone_c_2), .Z(n602)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'hacf1;
    GSR GSR_INST (.GSR(rst_n_in_c));
    CCU2D time_cnt_86_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n340), .COUT(n341), .S0(n82), .S1(n81));   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_86_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_86_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_86_add_4_15.INJECT1_1 = "NO";
    IB tone_pad_0 (.I(tone[0]), .O(tone_c_0));   // c:/users/argon/desktop/verilog/test_bink/beep.v(23[15:19])
    IB tone_pad_1 (.I(tone[1]), .O(tone_c_1));   // c:/users/argon/desktop/verilog/test_bink/beep.v(23[15:19])
    IB tone_pad_2 (.I(tone[2]), .O(tone_c_2));   // c:/users/argon/desktop/verilog/test_bink/beep.v(23[15:19])
    IB tone_pad_3 (.I(tone[3]), .O(tone_c_3));   // c:/users/argon/desktop/verilog/test_bink/beep.v(23[15:19])
    IB tone_pad_4 (.I(tone[4]), .O(tone_c_4));   // c:/users/argon/desktop/verilog/test_bink/beep.v(23[15:19])
    IB tone_en_pad (.I(tone_en), .O(tone_en_c));   // c:/users/argon/desktop/verilog/test_bink/beep.v(22[11:18])
    FD1S3IX time_cnt_86__i7 (.D(n88), .CK(clk_in_c), .CD(n133), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i7.GSR = "ENABLED";
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // c:/users/argon/desktop/verilog/test_bink/beep.v(21[11:19])
    FD1S3IX time_cnt_86__i6 (.D(n89), .CK(clk_in_c), .CD(n133), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i5 (.D(n90), .CK(clk_in_c), .CD(n133), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i4 (.D(n91), .CK(clk_in_c), .CD(n133), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i3 (.D(n92), .CK(clk_in_c), .CD(n133), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i2 (.D(n93), .CK(clk_in_c), .CD(n133), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_86__i1 (.D(n94), .CK(clk_in_c), .CD(n133), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(74[15:30])
    defparam time_cnt_86__i1.GSR = "ENABLED";
    OB piano_out_pad (.I(piano_out_c), .O(piano_out));   // c:/users/argon/desktop/verilog/test_bink/beep.v(24[15:24])
    CCU2D add_31_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n331), .COUT(n332), .S0(n159), .S1(n158));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_15.INIT0 = 16'h5999;
    defparam add_31_15.INIT1 = 16'h5999;
    defparam add_31_15.INJECT1_0 = "NO";
    defparam add_31_15.INJECT1_1 = "NO";
    PFUMX i401 (.BLUT(n587), .ALUT(n588), .C0(tone_c_0), .Z(time_end[15]));
    LUT4 tone_4__I_0_Mux_6_i7_3_lut_3_lut (.A(tone_c_0), .B(tone_c_1), .C(tone_c_2), 
         .Z(n7)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;
    defparam tone_4__I_0_Mux_6_i7_3_lut_3_lut.init = 16'he5e5;
    CCU2D add_31_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n333), 
          .S0(n155), .S1(n173));   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[14:32])
    defparam add_31_19.INIT0 = 16'h5555;
    defparam add_31_19.INIT1 = 16'h0000;
    defparam add_31_19.INJECT1_0 = "NO";
    defparam add_31_19.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_4_i31_else_4_lut (.A(tone_c_1), .B(tone_c_2), .C(tone_c_4), 
         .D(tone_c_3), .Z(n605)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C+!(D))) */ ;
    defparam tone_4__I_0_Mux_4_i31_else_4_lut.init = 16'hf8d5;
    LUT4 i11_4_lut (.A(n171), .B(n166), .C(n156), .D(n170), .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i29_2_lut (.A(n173), .B(tone_en_c), .Z(n133)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(71[11] 75[5])
    defparam i29_2_lut.init = 16'hbbbb;
    LUT4 tone_4__I_0_Mux_5_i31_else_4_lut (.A(tone_c_3), .B(tone_c_1), .C(tone_c_2), 
         .D(tone_c_4), .Z(n593)) /* synthesis lut_function=(A (C+(D))+!A (B (C (D))+!B !(C))) */ ;
    defparam tone_4__I_0_Mux_5_i31_else_4_lut.init = 16'heba1;
    LUT4 i16_4_lut (.A(n31), .B(n167), .C(n28), .D(n161), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    PFUMX i399 (.BLUT(n584), .ALUT(n585), .C0(tone_c_0), .Z(time_end[9]));
    LUT4 i13_4_lut (.A(n158), .B(n155), .C(n157), .D(n163), .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    PFUMX i366 (.BLUT(n526), .ALUT(n525), .C0(tone_c_1), .Z(time_end[7]));
    PFUMX i384 (.BLUT(n562), .ALUT(n561), .C0(tone_c_3), .Z(time_end[0]));
    LUT4 tone_4__I_0_Mux_9_i31_then_4_lut (.A(tone_c_1), .B(tone_c_2), .C(tone_c_4), 
         .D(tone_c_3), .Z(n585)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(D))) */ ;
    defparam tone_4__I_0_Mux_9_i31_then_4_lut.init = 16'hfdee;
    PFUMX i397 (.BLUT(n581), .ALUT(n582), .C0(tone_c_0), .Z(time_end[3]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_2), .D(tone_c_3), .Z(n578)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfacb;
    LUT4 tone_4__I_0_Mux_9_i31_else_4_lut (.A(tone_c_1), .B(tone_c_2), .C(tone_c_4), 
         .D(tone_c_3), .Z(n584)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D)+!C !(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_9_i31_else_4_lut.init = 16'hfa97;
    LUT4 i10_4_lut (.A(n160), .B(n165), .C(n172), .D(n169), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    PFUMX i395 (.BLUT(n578), .ALUT(n579), .C0(tone_c_0), .Z(time_end[12]));
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(tone_c_4), .B(tone_c_1), 
         .C(tone_c_3), .D(tone_c_2), .Z(n588)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/test_bink/beep.v(37[2] 61[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'ha8a0;
    PFUMX i415 (.BLUT(n624), .ALUT(n625), .C0(tone_c_0), .Z(time_end[14]));
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(tone_c_1), .B(tone_c_2), .C(tone_c_4), 
         .D(tone_c_3), .Z(n597)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((C)+!B)) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfbd1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

