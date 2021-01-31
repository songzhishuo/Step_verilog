// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Jan 31 13:38:53 2021
//
// Verilog Description of module top_mod
//

module top_mod (sys_clk, sys_rst, led, SPI_CLK, SPI_MOSI, SPI_RES, 
            SPI_DC, SPI_CS) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(1[8:15])
    input sys_clk;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(2[9:16])
    input sys_rst;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(3[9:16])
    output led;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(5[10:13])
    output SPI_CLK;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(9[13:20])
    output SPI_MOSI;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(10[16:24])
    output SPI_RES;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(11[16:23])
    output SPI_DC;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(12[16:22])
    output SPI_CS;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(13[16:22])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(2[9:16])
    
    wire GND_net, VCC_net, sys_rst_c, led_c, SPI_CLK_c, SPI_MOSI_c, 
        SPI_RES_c, SPI_CS_c, clk_1s;
    wire [7:0]mosi_data;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(23[11:20])
    wire [2:0]state;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(29[14:19])
    wire [2:0]state_back;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(30[14:24])
    wire [19:0]cnt_delay;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(33[14:23])
    wire [19:0]num_delay;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(34[14:23])
    wire [7:0]comm_cnt;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(37[11:19])
    wire [7:0]write_cnt;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    
    wire n4, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
        n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
        n4639, n55, n56, n57, n58, n59, n60, n61, n62, n2923, 
        n5012, n11_adj_459, n5011, SPI_RES_N_209, SPI_RES_N_211, SPI_RES_N_217, 
        SPI_RES_N_223, SPI_RES_N_225, n2797, SPI_RES_N_239, n15_adj_460;
    wire [7:0]mosi_data_7__N_101;
    wire [7:0]comm_cnt_7__N_90;
    
    wire n197, n198, n199, n200, n201, n202, n203, n204, SPI_CS_N_250, 
        SPI_CLK_N_151, SPI_MOSI_N_177;
    wire [2:0]state_2__N_11;
    
    wire n4692, n11_adj_461, n15_adj_462, n4659, n4664, n4679, n9_adj_463, 
        n2782, n4684, n11_adj_464, n4682, n2774, n137, n5010, 
        n4761, n113, n19_adj_465, n5, n3723, n10_adj_466, n3715, 
        n3725, n5009, n41, n138, n5235, n5233, n166, n3245, 
        sys_clk_c_enable_12, n4_adj_467, n3713, n4747, n4_adj_468, 
        n5_adj_469, n141, n15_adj_470, n35, n4720, n4_adj_471, n4_adj_472, 
        n5044, n15_adj_473, n6, n5043, n3664, n15_adj_474, n15_adj_475, 
        n26_adj_476, n2930, n11_adj_477, n4_adj_478, n5042, n5041, 
        n7_adj_479, n5040, n4285, n4284, n4283, n4282, n4759, 
        n4281, n6_adj_480, n4280, n15_adj_481, n4279, n4278, n4277, 
        sys_clk_c_enable_57, n15_adj_482, n4309, n4308, n99, n4970, 
        sys_clk_c_enable_56, sys_clk_c_enable_4, n3496, n5036, n4686, 
        n4276, n4275, n4274, n5035, n4273, sys_clk_c_enable_32, 
        n4758, n24_adj_483, n4757, n4307, n4730, n4_adj_484, n4272, 
        n5034, n5033, sys_clk_c_enable_28, n5031, n5030, n5029, 
        n26_adj_485, n4886, n2777, n4306, sys_clk_c_enable_49, n4271, 
        n5008, n4305, n4304, n129, n4672, n5027, n5026, sys_clk_c_enable_31, 
        n15_adj_486, n5007, n4971, n4303, n4270, n4302, n4269, 
        n4885, n4724, n5025, n4753, n5024, n105, n4884, n4756, 
        n4755, n5023, n5022, n5021, sys_clk_c_enable_9, n7_adj_487, 
        n4661, n5020, n4754, n6_adj_488, n5019, n5018, n5017, 
        n16_adj_489, n5006, n4614, n5005, n4573, n2932, n14_adj_490, 
        n4268, n4952, n5016, n4882, n5047, n5046, n5015, n5014, 
        n5045, n5013;
    
    VHI i4121 (.Z(VCC_net));
    LUT4 i4_4_lut (.A(n7_adj_479), .B(write_cnt[4]), .C(write_cnt[1]), 
         .D(n5044), .Z(n15_adj_486)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(221[6:10])
    defparam i4_4_lut.init = 16'hffbf;
    FD1P3IX write_cnt_i1 (.D(n203), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[1]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i1.GSR = "ENABLED";
    FD1P3IX write_cnt_i2 (.D(n202), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[2]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i2.GSR = "ENABLED";
    FD1P3IX write_cnt_i3 (.D(n201), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[3]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i3.GSR = "ENABLED";
    L6MUX21 i3931 (.D0(n4757), .D1(n4758), .SD(write_cnt[1]), .Z(n4759));
    FD1P3AX state_back_i0 (.D(n5235), .SP(sys_clk_c_enable_4), .CK(sys_clk_c), 
            .Q(state_back[0]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam state_back_i0.GSR = "ENABLED";
    PFUMX i3929 (.BLUT(n4753), .ALUT(n4754), .C0(write_cnt[2]), .Z(n4757));
    CCU2D add_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4268), .S1(n26));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_1.INIT0 = 16'hF000;
    defparam add_6_1.INIT1 = 16'h5555;
    defparam add_6_1.INJECT1_0 = "NO";
    defparam add_6_1.INJECT1_1 = "NO";
    FD1P3AX num_delay_i0_i16 (.D(n3725), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(num_delay[16]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam num_delay_i0_i16.GSR = "DISABLED";
    CCU2D add_10_3 (.A0(comm_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(comm_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4278), .COUT(n4279), .S0(n61), .S1(n60));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(96[20:35])
    defparam add_10_3.INIT0 = 16'h5aaa;
    defparam add_10_3.INIT1 = 16'h5aaa;
    defparam add_10_3.INJECT1_0 = "NO";
    defparam add_10_3.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i7 (.D(n19), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[7]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i7.GSR = "ENABLED";
    OB SPI_CLK_pad (.I(SPI_CLK_c), .O(SPI_CLK));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(9[13:20])
    LUT4 i2_4_lut (.A(SPI_RES_N_223), .B(SPI_RES_N_225), .C(n15_adj_475), 
         .D(n5014), .Z(n4573)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_4_lut.init = 16'hffef;
    OB led_pad (.I(led_c), .O(led));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(5[10:13])
    FD1P3IX cnt_delay_i10 (.D(n16), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[10]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i10.GSR = "ENABLED";
    FD1P3IX cnt_delay_i15 (.D(n11), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[15]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i15.GSR = "ENABLED";
    FD1P3AX state_i2 (.D(state_2__N_11[2]), .SP(sys_clk_c_enable_9), .CK(sys_clk_c), 
            .Q(state[2]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam state_i2.GSR = "ENABLED";
    FD1P3IX cnt_delay_i16 (.D(n10), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[16]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i16.GSR = "ENABLED";
    FD1P3IX cnt_delay_i1 (.D(n25), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[1]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i1.GSR = "ENABLED";
    FD1P3AX SPI_RES_172 (.D(n3664), .SP(sys_clk_c_enable_12), .CK(sys_clk_c), 
            .Q(SPI_RES_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam SPI_RES_172.GSR = "DISABLED";
    LUT4 i3932_3_lut_4_lut (.A(comm_cnt[3]), .B(n5013), .C(n5036), .D(n5018), 
         .Z(n15_adj_473)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i3932_3_lut_4_lut.init = 16'hdfd0;
    FD1P3IX cnt_delay_i2 (.D(n24), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[2]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i2.GSR = "ENABLED";
    FD1P3IX write_cnt_i4 (.D(n200), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[4]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i17 (.D(n9), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[17]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i17.GSR = "ENABLED";
    FD1P3IX write_cnt_i5 (.D(n199), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[5]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_98_4_lut (.A(write_cnt[7]), .B(write_cnt[6]), .C(write_cnt[5]), 
         .D(write_cnt[4]), .Z(n5029)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_98_4_lut.init = 16'h0100;
    LUT4 m1_lut (.Z(n5235)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i3_4_lut_else_2_lut (.A(n5233), .B(write_cnt[4]), .C(write_cnt[1]), 
         .D(write_cnt[2]), .Z(n5045)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(70[3] 278[10])
    defparam i3_4_lut_else_2_lut.init = 16'h1115;
    CCU2D add_6_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4274), .COUT(n4275), .S0(n13), .S1(n12));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_15.INIT0 = 16'h5aaa;
    defparam add_6_15.INIT1 = 16'h5aaa;
    defparam add_6_15.INJECT1_0 = "NO";
    defparam add_6_15.INJECT1_1 = "NO";
    LUT4 state_0__bdd_4_lut (.A(state[0]), .B(n2777), .C(n5009), .D(state[2]), 
         .Z(state_2__N_11[2])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam state_0__bdd_4_lut.init = 16'h0080;
    CCU2D add_6_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4272), .COUT(n4273), .S0(n17), .S1(n16));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_11.INIT0 = 16'h5aaa;
    defparam add_6_11.INIT1 = 16'h5aaa;
    defparam add_6_11.INJECT1_0 = "NO";
    defparam add_6_11.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(n11_adj_461), .B(SPI_RES_N_209), .C(n10_adj_466), 
         .D(n15_adj_482), .Z(mosi_data_7__N_101[7])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i6_4_lut.init = 16'hfeff;
    LUT4 i4_4_lut_adj_7 (.A(n4664), .B(n5020), .C(n2774), .D(n3245), 
         .Z(n11_adj_461)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i4_4_lut_adj_7.init = 16'hfbfa;
    LUT4 i3_4_lut (.A(n2782), .B(mosi_data[7]), .C(n4686), .D(n2777), 
         .Z(n10_adj_466)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;
    defparam i3_4_lut.init = 16'hfafe;
    FD1P3IX comm_cnt_i6 (.D(n56), .SP(sys_clk_c_enable_56), .CD(n2930), 
            .CK(sys_clk_c), .Q(comm_cnt[6]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i6.GSR = "ENABLED";
    FD1P3IX write_cnt_i7 (.D(n197), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[7]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i7.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_114 (.A(write_cnt[7]), .B(write_cnt[6]), .C(write_cnt[5]), 
         .Z(n5233)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i2_3_lut_rep_114.init = 16'hfefe;
    LUT4 i3947_2_lut (.A(comm_cnt[5]), .B(comm_cnt[0]), .Z(n3664)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3947_2_lut.init = 16'h1111;
    LUT4 i2_3_lut_4_lut (.A(comm_cnt[4]), .B(n5033), .C(comm_cnt[3]), 
         .D(comm_cnt[2]), .Z(n6_adj_480)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(147[7:12])
    defparam i2_3_lut_4_lut.init = 16'h0020;
    LUT4 i2897_2_lut_3_lut_4_lut (.A(comm_cnt[3]), .B(n5013), .C(n61), 
         .D(n5036), .Z(comm_cnt_7__N_90[1])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i2897_2_lut_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i2931_2_lut_3_lut_4_lut (.A(comm_cnt[3]), .B(n5013), .C(n57), 
         .D(n5036), .Z(comm_cnt_7__N_90[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i2931_2_lut_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i1_2_lut_rep_79_3_lut_4_lut (.A(comm_cnt[4]), .B(n5033), .C(n5036), 
         .D(n5043), .Z(n5010)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(147[7:12])
    defparam i1_2_lut_rep_79_3_lut_4_lut.init = 16'h0020;
    LUT4 i2895_2_lut_3_lut_4_lut (.A(comm_cnt[3]), .B(n5013), .C(n62), 
         .D(n5036), .Z(comm_cnt_7__N_90[0])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i2895_2_lut_3_lut_4_lut.init = 16'hf2f0;
    FD1P3IX cnt_delay_i11 (.D(n15), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[11]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i11.GSR = "ENABLED";
    LUT4 i3_4_lut_then_2_lut_4_lut (.A(write_cnt[7]), .B(write_cnt[6]), 
         .C(write_cnt[5]), .D(write_cnt[4]), .Z(n5046)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i3_4_lut_then_2_lut_4_lut.init = 16'h0001;
    LUT4 i2179_4_lut (.A(sys_clk_c_enable_56), .B(n5013), .C(n5036), .D(comm_cnt[3]), 
         .Z(n2930)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i2179_4_lut.init = 16'h2000;
    LUT4 i1_4_lut (.A(n15_adj_475), .B(SPI_RES_N_225), .C(n4692), .D(n5042), 
         .Z(n2782)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hdfdd;
    LUT4 comm_cnt_7__I_0_232_i15_2_lut_3_lut_4_lut (.A(comm_cnt[1]), .B(n5034), 
         .C(n5033), .D(comm_cnt[4]), .Z(n15_adj_474)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam comm_cnt_7__I_0_232_i15_2_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i2_3_lut_4_lut_adj_8 (.A(n5008), .B(n5042), .C(n3245), .D(n5020), 
         .Z(n11_adj_464)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_8.init = 16'h44f4;
    LUT4 i1_2_lut_3_lut_4_lut (.A(comm_cnt[4]), .B(n5026), .C(n166), .D(comm_cnt[2]), 
         .Z(SPI_RES_N_225)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 state_back_0__bdd_4_lut (.A(state_back[0]), .B(state[2]), .C(state[1]), 
         .D(n15_adj_486), .Z(n4952)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam state_back_0__bdd_4_lut.init = 16'h222a;
    LUT4 i1_2_lut_rep_81_3_lut_4_lut (.A(comm_cnt[4]), .B(n5026), .C(comm_cnt[3]), 
         .D(comm_cnt[2]), .Z(n5012)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_rep_81_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_6_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4269), .COUT(n4270), .S0(n23), .S1(n22));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_5.INIT0 = 16'h5aaa;
    defparam add_6_5.INIT1 = 16'h5aaa;
    defparam add_6_5.INJECT1_0 = "NO";
    defparam add_6_5.INJECT1_1 = "NO";
    LUT4 comm_cnt_7__I_0_248_i15_2_lut_3_lut_4_lut (.A(comm_cnt[4]), .B(n5026), 
         .C(n5034), .D(comm_cnt[1]), .Z(n15_adj_470)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam comm_cnt_7__I_0_248_i15_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_4_lut_adj_9 (.A(n5006), .B(n15_adj_481), .C(n4679), .D(n15_adj_460), 
         .Z(n4664)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_9.init = 16'hfbff;
    LUT4 i2975_3_lut_4_lut (.A(n5036), .B(n5018), .C(n5021), .D(num_delay[16]), 
         .Z(n3725)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i2975_3_lut_4_lut.init = 16'hf111;
    LUT4 i1_4_lut_adj_10 (.A(n113), .B(sys_clk_c_enable_49), .C(n5233), 
         .D(write_cnt[4]), .Z(n2923)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_10.init = 16'hc8c0;
    FD1P3IX cnt_delay_i3 (.D(n23), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[3]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(n5036), .B(n5018), .C(sys_clk_c_enable_56), 
         .D(n2777), .Z(sys_clk_c_enable_4)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'hf010;
    LUT4 i1_3_lut_4_lut (.A(n5036), .B(n5018), .C(n5021), .D(num_delay[15]), 
         .Z(n141)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf111;
    LUT4 i2967_3_lut_4_lut (.A(n5036), .B(n5018), .C(n5021), .D(num_delay[10]), 
         .Z(n3715)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i2967_3_lut_4_lut.init = 16'hf111;
    LUT4 comm_cnt_7__I_0_254_i15_2_lut_3_lut_4_lut (.A(n5035), .B(comm_cnt[5]), 
         .C(n11_adj_459), .D(comm_cnt[4]), .Z(n15_adj_460)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam comm_cnt_7__I_0_254_i15_2_lut_3_lut_4_lut.init = 16'hfbff;
    CCU2D add_10_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(comm_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4278), .S1(n62));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(96[20:35])
    defparam add_10_1.INIT0 = 16'hF000;
    defparam add_10_1.INIT1 = 16'h5555;
    defparam add_10_1.INJECT1_0 = "NO";
    defparam add_10_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_82_3_lut_4_lut (.A(n5035), .B(comm_cnt[5]), .C(comm_cnt[2]), 
         .D(comm_cnt[4]), .Z(n5013)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_rep_82_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_84_3_lut_4_lut (.A(n5035), .B(comm_cnt[5]), .C(n5040), 
         .D(comm_cnt[4]), .Z(n5015)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_rep_84_3_lut_4_lut.init = 16'h4000;
    CCU2D sub_649_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4309), .S0(n4));
    defparam sub_649_add_2_cout.INIT0 = 16'h0000;
    defparam sub_649_add_2_cout.INIT1 = 16'h0000;
    defparam sub_649_add_2_cout.INJECT1_0 = "NO";
    defparam sub_649_add_2_cout.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_86_3_lut_4_lut (.A(n5035), .B(comm_cnt[5]), .C(comm_cnt[2]), 
         .D(comm_cnt[4]), .Z(n5017)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_rep_86_3_lut_4_lut.init = 16'hfffb;
    LUT4 i2965_3_lut_4_lut (.A(n5036), .B(n5018), .C(n5021), .D(num_delay[9]), 
         .Z(n3713)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i2965_3_lut_4_lut.init = 16'hf111;
    CCU2D sub_649_add_2_15 (.A0(cnt_delay[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4308), .COUT(n4309));
    defparam sub_649_add_2_15.INIT0 = 16'h5555;
    defparam sub_649_add_2_15.INIT1 = 16'h5555;
    defparam sub_649_add_2_15.INJECT1_0 = "NO";
    defparam sub_649_add_2_15.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i8 (.D(n18), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[8]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_12 (.A(n5011), .B(n5013), .C(n4672), .D(n166), 
         .Z(n4679)) /* synthesis lut_function=(A+!(B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_12.init = 16'hbfaf;
    FD1P3IX cnt_delay_i18 (.D(n8), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[18]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i18.GSR = "ENABLED";
    LUT4 i3925_3_lut (.A(mosi_data[7]), .B(mosi_data[3]), .C(write_cnt[3]), 
         .Z(n4753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3925_3_lut.init = 16'hcaca;
    CCU2D add_6_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4271), .COUT(n4272), .S0(n19), .S1(n18));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_9.INIT0 = 16'h5aaa;
    defparam add_6_9.INIT1 = 16'h5aaa;
    defparam add_6_9.INJECT1_0 = "NO";
    defparam add_6_9.INJECT1_1 = "NO";
    CCU2D sub_649_add_2_13 (.A0(cnt_delay[16]), .B0(num_delay[16]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4307), .COUT(n4308));
    defparam sub_649_add_2_13.INIT0 = 16'h5999;
    defparam sub_649_add_2_13.INIT1 = 16'h5555;
    defparam sub_649_add_2_13.INJECT1_0 = "NO";
    defparam sub_649_add_2_13.INJECT1_1 = "NO";
    LUT4 n14_bdd_2_lut_3_lut_4_lut (.A(n5035), .B(comm_cnt[5]), .C(comm_cnt[2]), 
         .D(comm_cnt[4]), .Z(n4970)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam n14_bdd_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i3926_3_lut (.A(mosi_data[5]), .B(mosi_data[1]), .C(write_cnt[3]), 
         .Z(n4754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3926_3_lut.init = 16'hcaca;
    CCU2D add_6_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4268), .COUT(n4269), .S0(n25), .S1(n24));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_3.INIT0 = 16'h5aaa;
    defparam add_6_3.INIT1 = 16'h5aaa;
    defparam add_6_3.INJECT1_0 = "NO";
    defparam add_6_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(n5035), .B(comm_cnt[5]), .C(n5027), 
         .D(comm_cnt[4]), .Z(SPI_RES_N_223)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'h0040;
    LUT4 comm_cnt_7__I_0_238_i15_2_lut_3_lut_4_lut (.A(n5035), .B(comm_cnt[5]), 
         .C(n11_adj_459), .D(comm_cnt[4]), .Z(n15_adj_475)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam comm_cnt_7__I_0_238_i15_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(n5035), .B(comm_cnt[5]), .C(comm_cnt[2]), 
         .D(comm_cnt[4]), .Z(n4_adj_478)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'h0040;
    CCU2D add_90_9 (.A0(write_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4285), 
          .S0(n197));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(210[20:35])
    defparam add_90_9.INIT0 = 16'h5aaa;
    defparam add_90_9.INIT1 = 16'h0000;
    defparam add_90_9.INJECT1_0 = "NO";
    defparam add_90_9.INJECT1_1 = "NO";
    FD1P3IX comm_cnt_i7 (.D(n55), .SP(sys_clk_c_enable_56), .CD(n2930), 
            .CK(sys_clk_c), .Q(comm_cnt[7]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i7.GSR = "ENABLED";
    CCU2D add_6_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4277), 
          .S0(n7));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_21.INIT0 = 16'h5aaa;
    defparam add_6_21.INIT1 = 16'h0000;
    defparam add_6_21.INJECT1_0 = "NO";
    defparam add_6_21.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_99_4_lut (.A(write_cnt[7]), .B(write_cnt[6]), .C(write_cnt[5]), 
         .D(write_cnt[4]), .Z(n5030)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_99_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(n5014), .B(n5011), .C(n15_adj_482), 
         .D(n2782), .Z(n4_adj_472)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'hffef;
    LUT4 i1_3_lut_4_lut_adj_16 (.A(n5036), .B(n5018), .C(n5021), .D(num_delay[7]), 
         .Z(n138)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_16.init = 16'hf111;
    LUT4 n4952_bdd_3_lut (.A(n4952), .B(state[2]), .C(state[0]), .Z(state_2__N_11[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4952_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_83_3_lut_4_lut (.A(n5036), .B(n5040), .C(n5033), 
         .D(comm_cnt[4]), .Z(n5014)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_83_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_4_lut (.A(n5036), .B(n5040), .C(n5008), .D(n5020), 
         .Z(n4661)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_4_lut_4_lut.init = 16'h0a8a;
    LUT4 i2_2_lut_4_lut (.A(write_cnt[7]), .B(write_cnt[6]), .C(write_cnt[5]), 
         .D(write_cnt[0]), .Z(n7_adj_479)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i2_2_lut_4_lut.init = 16'hfffe;
    FD1P3AX num_delay_i0_i15 (.D(n141), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(num_delay[15]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam num_delay_i0_i15.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i10 (.D(n3715), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(num_delay[10]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam num_delay_i0_i10.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_17 (.A(n2782), .B(comm_cnt[1]), .C(n4_adj_467), 
         .D(n4971), .Z(mosi_data_7__N_101[6])) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hfbfa;
    LUT4 i1_4_lut_adj_18 (.A(n2777), .B(n5036), .C(mosi_data[6]), .D(n4970), 
         .Z(n4_adj_467)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_18.init = 16'hdc50;
    LUT4 i2973_3_lut_4_lut (.A(n5036), .B(n5018), .C(n5021), .D(num_delay[5]), 
         .Z(n3723)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i2973_3_lut_4_lut.init = 16'hf111;
    LUT4 n4886_bdd_3_lut_4_lut (.A(n4882), .B(state[1]), .C(state[0]), 
         .D(n4886), .Z(state_2__N_11[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n4886_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2_4_lut_adj_19 (.A(mosi_data[3]), .B(n4_adj_472), .C(n15_adj_462), 
         .D(n2777), .Z(mosi_data_7__N_101[3])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i2_4_lut_adj_19.init = 16'hfcfe;
    LUT4 i1_3_lut_4_lut_adj_20 (.A(n5233), .B(write_cnt[4]), .C(SPI_CS_c), 
         .D(n5044), .Z(n105)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i1_3_lut_4_lut_adj_20.init = 16'hf0e0;
    FD1P3AX num_delay_i0_i9 (.D(n3713), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(num_delay[9]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam num_delay_i0_i9.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i7 (.D(n138), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(num_delay[7]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam num_delay_i0_i7.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_21 (.A(n5016), .B(n5036), .C(n5020), .D(n11_adj_459), 
         .Z(n6)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+!(C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i2_3_lut_4_lut_adj_21.init = 16'h444f;
    LUT4 i1_2_lut_3_lut (.A(n5233), .B(write_cnt[4]), .C(SPI_CLK_c), .Z(n99)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(n5036), .B(n5018), .C(n4682), 
         .D(n5014), .Z(n4684)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'hfff2;
    FD1P3AX num_delay_i0_i5 (.D(n3723), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(num_delay[5]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX SPI_CS_169 (.D(SPI_CS_N_250), .SP(sys_clk_c_enable_31), .CK(sys_clk_c), 
            .Q(SPI_CS_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam SPI_CS_169.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_74_3_lut_4_lut (.A(n5036), .B(n5018), .C(n2782), 
         .D(n5014), .Z(n5005)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i1_2_lut_rep_74_3_lut_4_lut.init = 16'hfff2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(n5041), .B(n5042), .C(n5033), 
         .D(comm_cnt[4]), .Z(SPI_RES_N_209)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(147[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0800;
    LUT4 i3953_2_lut_2_lut_3_lut (.A(sys_rst_c), .B(sys_clk_c_enable_56), 
         .C(n5021), .Z(sys_clk_c_enable_12)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i3953_2_lut_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_87_3_lut_4_lut (.A(comm_cnt[5]), .B(n5035), .C(n5043), 
         .D(comm_cnt[4]), .Z(n5018)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i1_2_lut_rep_87_3_lut_4_lut.init = 16'hfffe;
    LUT4 n2729_bdd_3_lut_4_lut (.A(comm_cnt[5]), .B(n5035), .C(comm_cnt[3]), 
         .D(comm_cnt[0]), .Z(n4971)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam n2729_bdd_3_lut_4_lut.init = 16'h1000;
    CCU2D sub_649_add_2_11 (.A0(cnt_delay[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[15]), .B1(num_delay[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4306), .COUT(n4307));
    defparam sub_649_add_2_11.INIT0 = 16'h5555;
    defparam sub_649_add_2_11.INIT1 = 16'h5999;
    defparam sub_649_add_2_11.INJECT1_0 = "NO";
    defparam sub_649_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_649_add_2_9 (.A0(cnt_delay[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4305), .COUT(n4306));
    defparam sub_649_add_2_9.INIT0 = 16'h5555;
    defparam sub_649_add_2_9.INIT1 = 16'h5555;
    defparam sub_649_add_2_9.INJECT1_0 = "NO";
    defparam sub_649_add_2_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_24 (.A(n4684), .B(n2774), .C(mosi_data[5]), .D(n2777), 
         .Z(mosi_data_7__N_101[5])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i2_4_lut_adj_24.init = 16'heefe;
    CCU2D add_90_7 (.A0(write_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(write_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4284), .COUT(n4285), .S0(n199), .S1(n198));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(210[20:35])
    defparam add_90_7.INIT0 = 16'h5aaa;
    defparam add_90_7.INIT1 = 16'h5aaa;
    defparam add_90_7.INJECT1_0 = "NO";
    defparam add_90_7.INJECT1_1 = "NO";
    CCU2D add_90_5 (.A0(write_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(write_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4283), .COUT(n4284), .S0(n201), .S1(n200));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(210[20:35])
    defparam add_90_5.INIT0 = 16'h5aaa;
    defparam add_90_5.INIT1 = 16'h5aaa;
    defparam add_90_5.INJECT1_0 = "NO";
    defparam add_90_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_25 (.A(comm_cnt[5]), .B(n5035), .C(n3245), 
         .D(comm_cnt[4]), .Z(SPI_RES_N_211)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_25.init = 16'h1000;
    CCU2D sub_649_add_2_7 (.A0(cnt_delay[10]), .B0(num_delay[10]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4304), .COUT(n4305));
    defparam sub_649_add_2_7.INIT0 = 16'h5999;
    defparam sub_649_add_2_7.INIT1 = 16'h5555;
    defparam sub_649_add_2_7.INJECT1_0 = "NO";
    defparam sub_649_add_2_7.INJECT1_1 = "NO";
    CCU2D add_6_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4276), .COUT(n4277), .S0(n9), .S1(n8));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_19.INIT0 = 16'h5aaa;
    defparam add_6_19.INIT1 = 16'h5aaa;
    defparam add_6_19.INJECT1_0 = "NO";
    defparam add_6_19.INJECT1_1 = "NO";
    LUT4 i2930_3_lut_4_lut (.A(n5015), .B(n5016), .C(n5012), .D(n5036), 
         .Z(n2774)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i2930_3_lut_4_lut.init = 16'hbf00;
    CCU2D add_90_3 (.A0(write_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(write_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4282), .COUT(n4283), .S0(n203), .S1(n202));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(210[20:35])
    defparam add_90_3.INIT0 = 16'h5aaa;
    defparam add_90_3.INIT1 = 16'h5aaa;
    defparam add_90_3.INJECT1_0 = "NO";
    defparam add_90_3.INJECT1_1 = "NO";
    LUT4 comm_cnt_7__I_0_222_i15_2_lut_3_lut_4_lut (.A(comm_cnt[5]), .B(n5035), 
         .C(n11_adj_459), .D(comm_cnt[4]), .Z(n15_adj_482)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam comm_cnt_7__I_0_222_i15_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_adj_26 (.A(n5015), .B(n5016), .C(n5036), .D(SPI_RES_N_209), 
         .Z(n7_adj_487)) /* synthesis lut_function=(A (C+(D))+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_26.init = 16'hffb0;
    LUT4 state_2__bdd_3_lut (.A(state[1]), .B(n4), .C(state_back[0]), 
         .Z(n4885)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam state_2__bdd_3_lut.init = 16'ha2a2;
    CCU2D add_90_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(write_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4282), .S1(n204));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(210[20:35])
    defparam add_90_1.INIT0 = 16'hF000;
    defparam add_90_1.INIT1 = 16'h5555;
    defparam add_90_1.INJECT1_0 = "NO";
    defparam add_90_1.INJECT1_1 = "NO";
    CCU2D sub_649_add_2_5 (.A0(cnt_delay[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[9]), .B1(num_delay[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4303), .COUT(n4304));
    defparam sub_649_add_2_5.INIT0 = 16'h5555;
    defparam sub_649_add_2_5.INIT1 = 16'h5999;
    defparam sub_649_add_2_5.INJECT1_0 = "NO";
    defparam sub_649_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_649_add_2_3 (.A0(cnt_delay[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[7]), .B1(num_delay[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4302), .COUT(n4303));
    defparam sub_649_add_2_3.INIT0 = 16'h5555;
    defparam sub_649_add_2_3.INIT1 = 16'h5999;
    defparam sub_649_add_2_3.INJECT1_0 = "NO";
    defparam sub_649_add_2_3.INJECT1_1 = "NO";
    FD1P3AX SPI_CLK_170 (.D(SPI_CLK_N_151), .SP(sys_clk_c_enable_31), .CK(sys_clk_c), 
            .Q(SPI_CLK_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam SPI_CLK_170.GSR = "DISABLED";
    CCU2D sub_649_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[5]), .B1(num_delay[5]), .C1(GND_net), .D1(GND_net), 
          .COUT(n4302));
    defparam sub_649_add_2_1.INIT0 = 16'h0000;
    defparam sub_649_add_2_1.INIT1 = 16'h5999;
    defparam sub_649_add_2_1.INJECT1_0 = "NO";
    defparam sub_649_add_2_1.INJECT1_1 = "NO";
    CCU2D add_6_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4275), .COUT(n4276), .S0(n11), .S1(n10));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_17.INIT0 = 16'h5aaa;
    defparam add_6_17.INIT1 = 16'h5aaa;
    defparam add_6_17.INJECT1_0 = "NO";
    defparam add_6_17.INJECT1_1 = "NO";
    FD1P3AX SPI_MOSI_171 (.D(SPI_MOSI_N_177), .SP(sys_clk_c_enable_31), 
            .CK(sys_clk_c), .Q(SPI_MOSI_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam SPI_MOSI_171.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(write_cnt[7]), .B(write_cnt[6]), .C(write_cnt[5]), 
         .D(write_cnt[0]), .Z(n4_adj_468)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_85_3_lut_4_lut (.A(comm_cnt[5]), .B(n5035), .C(n5043), 
         .D(comm_cnt[4]), .Z(n5016)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i1_2_lut_rep_85_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2750_3_lut (.A(n3496), .B(SPI_CS_c), .C(write_cnt[1]), .Z(SPI_CS_N_250)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i2750_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_27 (.A(n166), .B(n4730), .C(n5013), .D(n4_adj_478), 
         .Z(n4682)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B)) */ ;
    defparam i3_4_lut_adj_27.init = 16'hbb3b;
    FD1P3AY state_i0 (.D(state_2__N_11[0]), .SP(sys_clk_c_enable_32), .CK(sys_clk_c), 
            .Q(state[0]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam state_i0.GSR = "ENABLED";
    LUT4 i3909_4_lut (.A(n15_adj_460), .B(n5024), .C(n15_adj_482), .D(n5020), 
         .Z(n4730)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;
    defparam i3909_4_lut.init = 16'ha020;
    FD1S3AY state_i1 (.D(state_2__N_11[1]), .CK(sys_clk_c), .Q(state[1]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AX comm_cnt_i5 (.D(comm_cnt_7__N_90[5]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(comm_cnt[5]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i5.GSR = "ENABLED";
    FD1P3AX comm_cnt_i4 (.D(comm_cnt_7__N_90[4]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(comm_cnt[4]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i4.GSR = "ENABLED";
    FD1P3AX comm_cnt_i3 (.D(comm_cnt_7__N_90[3]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(comm_cnt[3]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i3.GSR = "ENABLED";
    FD1P3AX comm_cnt_i1 (.D(comm_cnt_7__N_90[1]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(comm_cnt[1]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(comm_cnt[5]), .B(n5035), .C(n5034), 
         .D(comm_cnt[1]), .Z(n4686)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h1000;
    LUT4 comm_cnt_7__I_0_203_i13_2_lut_rep_104 (.A(comm_cnt[6]), .B(comm_cnt[7]), 
         .Z(n5035)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam comm_cnt_7__I_0_203_i13_2_lut_rep_104.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(comm_cnt[6]), .B(comm_cnt[7]), .C(comm_cnt[4]), 
         .Z(n6_adj_488)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_92_3_lut_4_lut (.A(comm_cnt[6]), .B(comm_cnt[7]), 
         .C(comm_cnt[4]), .D(comm_cnt[5]), .Z(n5023)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam i1_2_lut_rep_92_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_89_3_lut_4_lut (.A(comm_cnt[6]), .B(comm_cnt[7]), 
         .C(comm_cnt[4]), .D(comm_cnt[5]), .Z(n5020)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam i1_2_lut_rep_89_3_lut_4_lut.init = 16'hfffe;
    LUT4 state_2__bdd_3_lut_3973 (.A(state[1]), .B(state_back[0]), .C(n15_adj_486), 
         .Z(n4884)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam state_2__bdd_3_lut_3973.init = 16'haeae;
    LUT4 i2_3_lut_rep_107 (.A(state[2]), .B(state[1]), .C(state[0]), .Z(sys_clk_c_enable_56)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i2_3_lut_rep_107.init = 16'h4040;
    FD1P3AX mosi_data_i7 (.D(mosi_data_7__N_101[7]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[7]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i7.GSR = "ENABLED";
    FD1P3AX mosi_data_i6 (.D(mosi_data_7__N_101[6]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[6]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i6.GSR = "ENABLED";
    FD1P3AX mosi_data_i5 (.D(mosi_data_7__N_101[5]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[5]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i5.GSR = "ENABLED";
    FD1P3AX mosi_data_i4 (.D(mosi_data_7__N_101[4]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[4]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i4.GSR = "ENABLED";
    FD1P3AX mosi_data_i3 (.D(mosi_data_7__N_101[3]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[3]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i3.GSR = "ENABLED";
    FD1P3AX mosi_data_i2 (.D(mosi_data_7__N_101[2]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[2]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i2.GSR = "ENABLED";
    FD1P3AX mosi_data_i1 (.D(mosi_data_7__N_101[1]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[1]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_76_3_lut_4_lut (.A(comm_cnt[2]), .B(n5019), .C(n5036), 
         .D(comm_cnt[3]), .Z(n5007)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_76_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(comm_cnt[2]), .B(n5019), .C(n5042), 
         .D(comm_cnt[3]), .Z(n5006)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'h0010;
    OB SPI_MOSI_pad (.I(SPI_MOSI_c), .O(SPI_MOSI));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(10[16:24])
    OB SPI_RES_pad (.I(SPI_RES_c), .O(SPI_RES));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(11[16:23])
    OB SPI_DC_pad (.I(GND_net), .O(SPI_DC));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(12[16:22])
    OB SPI_CS_pad (.I(SPI_CS_c), .O(SPI_CS));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(13[16:22])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(2[9:16])
    IB sys_rst_pad (.I(sys_rst), .O(sys_rst_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(3[9:16])
    LUT4 i1_2_lut_rep_102_3_lut (.A(comm_cnt[6]), .B(comm_cnt[7]), .C(comm_cnt[5]), 
         .Z(n5033)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam i1_2_lut_rep_102_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_88_3_lut_4_lut (.A(comm_cnt[6]), .B(comm_cnt[7]), 
         .C(comm_cnt[4]), .D(comm_cnt[5]), .Z(n5019)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam i1_2_lut_rep_88_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_rep_94_3_lut_4_lut (.A(comm_cnt[6]), .B(comm_cnt[7]), 
         .C(comm_cnt[4]), .D(comm_cnt[5]), .Z(n5025)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam i1_2_lut_rep_94_3_lut_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut_adj_29 (.A(n5), .B(n26_adj_485), .C(n4661), .D(SPI_RES_N_217), 
         .Z(mosi_data_7__N_101[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_29.init = 16'hfffe;
    LUT4 i1_2_lut (.A(n2797), .B(n4573), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 select_301_Select_4_i26_2_lut (.A(mosi_data[4]), .B(n2777), .Z(n26_adj_485)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam select_301_Select_4_i26_2_lut.init = 16'h2222;
    LUT4 i2978_4_lut (.A(state[1]), .B(n4659), .C(state[2]), .D(n24_adj_483), 
         .Z(sys_clk_c_enable_9)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i2978_4_lut.init = 16'h303a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_30 (.A(comm_cnt[1]), .B(n5034), .C(n5033), 
         .D(comm_cnt[4]), .Z(n4672)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_30.init = 16'hfffb;
    LUT4 i1_4_lut_adj_31 (.A(SPI_RES_N_209), .B(n15_adj_481), .C(n5012), 
         .D(n5036), .Z(n2797)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_31.init = 16'hbfbb;
    FD1P3IX cnt_delay_i12 (.D(n14), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[12]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i12.GSR = "ENABLED";
    LUT4 i3944_2_lut_rep_97_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(sys_clk_c_enable_49)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(70[3] 278[10])
    defparam i3944_2_lut_rep_97_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_32 (.A(comm_cnt[4]), .B(n5026), .C(comm_cnt[0]), 
         .D(comm_cnt[2]), .Z(n4639)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_32.init = 16'h0020;
    LUT4 i1_4_lut_adj_33 (.A(comm_cnt[1]), .B(n4639), .C(n5020), .D(n5034), 
         .Z(n15_adj_462)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_33.init = 16'h4544;
    LUT4 i1_2_lut_rep_77_3_lut_4_lut (.A(comm_cnt[4]), .B(n5026), .C(comm_cnt[3]), 
         .D(comm_cnt[2]), .Z(n5008)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_rep_77_3_lut_4_lut.init = 16'hfffd;
    GSR GSR_INST (.GSR(sys_rst_c));
    LUT4 i7_4_lut (.A(n3245), .B(n14_adj_490), .C(n5005), .D(n5025), 
         .Z(n16_adj_489)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i7_4_lut.init = 16'hfcfe;
    FD1P3IX write_cnt_i0 (.D(n204), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[0]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i19 (.D(n7), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[19]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i19.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_34 (.A(state[0]), .B(state[1]), .C(sys_rst_c), 
         .D(state[2]), .Z(sys_clk_c_enable_31)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(70[3] 278[10])
    defparam i1_2_lut_3_lut_4_lut_adj_34.init = 16'h1000;
    PFUMX i2749 (.BLUT(n105), .ALUT(n129), .C0(write_cnt[0]), .Z(n3496));
    LUT4 i1_4_lut_adj_35 (.A(n15_adj_486), .B(state[0]), .C(n5047), .D(state[1]), 
         .Z(n4659)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(70[3] 278[10])
    defparam i1_4_lut_adj_35.init = 16'hffec;
    LUT4 i30_4_lut (.A(n4), .B(n2777), .C(state[0]), .D(n15_adj_473), 
         .Z(n24_adj_483)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i30_4_lut.init = 16'h3505;
    LUT4 i1_2_lut_3_lut_4_lut_adj_36 (.A(n5025), .B(comm_cnt[2]), .C(n5042), 
         .D(comm_cnt[3]), .Z(SPI_RES_N_217)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_36.init = 16'h0010;
    LUT4 i3_4_lut_adj_37 (.A(n5010), .B(n4614), .C(n5014), .D(n4664), 
         .Z(mosi_data_7__N_101[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_37.init = 16'hfffe;
    CCU2D add_10_9 (.A0(comm_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4281), 
          .S0(n55));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(96[20:35])
    defparam add_10_9.INIT0 = 16'h5aaa;
    defparam add_10_9.INIT1 = 16'h0000;
    defparam add_10_9.INJECT1_0 = "NO";
    defparam add_10_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_38 (.A(comm_cnt[1]), .B(comm_cnt[0]), .C(comm_cnt[3]), 
         .Z(n4_adj_484)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_38.init = 16'h0808;
    PFUMX i3974 (.BLUT(n4885), .ALUT(n4884), .C0(state[2]), .Z(n4886));
    LUT4 i1_4_lut_adj_39 (.A(mosi_data[2]), .B(n5019), .C(n2777), .D(n4_adj_484), 
         .Z(n4614)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;
    defparam i1_4_lut_adj_39.init = 16'h3b0a;
    LUT4 i2950_4_lut (.A(n4759), .B(SPI_MOSI_c), .C(write_cnt[4]), .D(n4_adj_468), 
         .Z(SPI_MOSI_N_177)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i2950_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_40 (.A(comm_cnt[4]), .B(n5033), .C(n5034), 
         .D(comm_cnt[1]), .Z(n15_adj_481)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(147[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_40.init = 16'hffdf;
    LUT4 i1_2_lut_rep_101_4_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(sys_rst_c), .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_101_4_lut.init = 16'h4000;
    LUT4 i3951_3_lut_rep_108 (.A(state[1]), .B(state[2]), .C(state[0]), 
         .Z(sys_clk_c_enable_57)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i3951_3_lut_rep_108.init = 16'h0202;
    PFUMX i3930 (.BLUT(n4755), .ALUT(n4756), .C0(write_cnt[2]), .Z(n4758));
    LUT4 i5_4_lut (.A(n9_adj_463), .B(n7_adj_487), .C(n26_adj_476), .D(n15_adj_470), 
         .Z(mosi_data_7__N_101[1])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i5_4_lut.init = 16'hfeff;
    LUT4 state_2__bdd_4_lut (.A(state[2]), .B(n5007), .C(n5009), .D(n2777), 
         .Z(n4882)) /* synthesis lut_function=(A+!(B (C (D))+!B (C))) */ ;
    defparam state_2__bdd_4_lut.init = 16'hafef;
    LUT4 i1_2_lut_rep_105 (.A(comm_cnt[1]), .B(comm_cnt[0]), .Z(n5036)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_105.init = 16'h8888;
    PFUMX i40 (.BLUT(n137), .ALUT(n99), .C0(write_cnt[0]), .Z(SPI_CLK_N_151));
    LUT4 i1_3_lut (.A(state[2]), .B(state[1]), .C(n11_adj_477), .Z(sys_clk_c_enable_32)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut.init = 16'heaea;
    LUT4 i1_2_lut_rep_95_3_lut (.A(comm_cnt[6]), .B(comm_cnt[7]), .C(comm_cnt[5]), 
         .Z(n5026)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(101[7:11])
    defparam i1_2_lut_rep_95_3_lut.init = 16'hefef;
    LUT4 i2198_2_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(n4), .Z(n2932)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2198_2_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_109 (.A(comm_cnt[2]), .B(comm_cnt[3]), .Z(n5040)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_109.init = 16'h2222;
    LUT4 i1_2_lut_rep_96_3_lut_4_lut (.A(comm_cnt[2]), .B(comm_cnt[3]), 
         .C(comm_cnt[0]), .D(comm_cnt[1]), .Z(n5027)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_96_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_110 (.A(comm_cnt[3]), .B(comm_cnt[2]), .Z(n5041)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_110.init = 16'h2222;
    LUT4 i26_4_lut (.A(n4), .B(n5009), .C(state[0]), .D(n4_adj_471), 
         .Z(n11_adj_477)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i26_4_lut.init = 16'hfa3a;
    LUT4 i1_4_lut_adj_41 (.A(n2777), .B(n4639), .C(comm_cnt[1]), .D(comm_cnt[3]), 
         .Z(n4_adj_471)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_41.init = 16'heaaa;
    LUT4 i1_2_lut_3_lut_4_lut_adj_42 (.A(comm_cnt[4]), .B(n5026), .C(n5036), 
         .D(n5040), .Z(SPI_RES_N_239)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(186[7:12])
    defparam i1_2_lut_3_lut_4_lut_adj_42.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_43 (.A(comm_cnt[3]), .B(comm_cnt[2]), 
         .C(comm_cnt[0]), .D(comm_cnt[1]), .Z(n3245)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_3_lut_4_lut_adj_43.init = 16'h2000;
    LUT4 i1_2_lut_rep_103_3_lut (.A(comm_cnt[0]), .B(comm_cnt[2]), .C(comm_cnt[3]), 
         .Z(n5034)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_103_3_lut.init = 16'h8080;
    LUT4 i3_2_lut (.A(n4573), .B(n4679), .Z(n9_adj_463)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_44 (.A(comm_cnt[0]), .B(comm_cnt[2]), .C(comm_cnt[1]), 
         .D(comm_cnt[3]), .Z(n11_adj_459)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_44.init = 16'hfff7;
    LUT4 i2_4_lut_adj_45 (.A(n15_adj_470), .B(n4724), .C(n6), .D(SPI_RES_N_223), 
         .Z(n2777)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_4_lut_adj_45.init = 16'hfffd;
    LUT4 i3912_2_lut_rep_78_3_lut_4_lut (.A(comm_cnt[4]), .B(n5033), .C(n5036), 
         .D(n5043), .Z(n5009)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i3912_2_lut_rep_78_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3903_4_lut (.A(n19_adj_465), .B(SPI_RES_N_239), .C(n4661), .D(SPI_RES_N_211), 
         .Z(n4724)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3903_4_lut.init = 16'hfffe;
    CCU2D add_10_7 (.A0(comm_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(comm_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4280), .COUT(n4281), .S0(n57), .S1(n56));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(96[20:35])
    defparam add_10_7.INIT0 = 16'h5aaa;
    defparam add_10_7.INIT1 = 16'h5aaa;
    defparam add_10_7.INJECT1_0 = "NO";
    defparam add_10_7.INJECT1_1 = "NO";
    LUT4 i2932_2_lut_3_lut_4_lut (.A(comm_cnt[3]), .B(n5013), .C(n58), 
         .D(n5036), .Z(comm_cnt_7__N_90[4])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i2932_2_lut_3_lut_4_lut.init = 16'hf2f0;
    FD1P3IX comm_cnt_i2 (.D(n60), .SP(sys_clk_c_enable_56), .CD(n2930), 
            .CK(sys_clk_c), .Q(comm_cnt[2]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_93_3_lut_4_lut (.A(comm_cnt[0]), .B(comm_cnt[2]), 
         .C(comm_cnt[1]), .D(comm_cnt[3]), .Z(n5024)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_93_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_80_3_lut_4_lut (.A(comm_cnt[4]), .B(n5033), .C(n5036), 
         .D(n5043), .Z(n5011)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i1_2_lut_rep_80_3_lut_4_lut.init = 16'h0010;
    FD1P3AX comm_cnt_i0 (.D(comm_cnt_7__N_90[0]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(comm_cnt[0]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam comm_cnt_i0.GSR = "ENABLED";
    LUT4 select_301_Select_1_i26_2_lut (.A(mosi_data[1]), .B(n2777), .Z(n26_adj_476)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam select_301_Select_1_i26_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_91_3_lut_4_lut (.A(comm_cnt[0]), .B(comm_cnt[2]), 
         .C(comm_cnt[1]), .D(comm_cnt[3]), .Z(n5022)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_91_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i3927_3_lut (.A(mosi_data[6]), .B(mosi_data[2]), .C(write_cnt[3]), 
         .Z(n4755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3927_3_lut.init = 16'hcaca;
    FD1P3IX write_cnt_i6 (.D(n198), .SP(sys_clk_c_enable_49), .CD(n2923), 
            .CK(sys_clk_c), .Q(write_cnt[6]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam write_cnt_i6.GSR = "ENABLED";
    LUT4 i3928_3_lut (.A(mosi_data[4]), .B(mosi_data[0]), .C(write_cnt[3]), 
         .Z(n4756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3928_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_46 (.A(SPI_CLK_c), .B(n5029), .C(n5030), .D(n113), 
         .Z(n137)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i1_4_lut_adj_46.init = 16'hafee;
    FD1P3IX cnt_delay_i13 (.D(n13), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[13]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i13.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_111 (.A(comm_cnt[0]), .B(comm_cnt[1]), .Z(n5042)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_111.init = 16'h2222;
    VLO i1 (.Z(GND_net));
    FD1P3IX cnt_delay_i4 (.D(n22), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[4]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i4.GSR = "ENABLED";
    CCU2D add_10_5 (.A0(comm_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(comm_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4279), .COUT(n4280), .S0(n59), .S1(n58));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(96[20:35])
    defparam add_10_5.INIT0 = 16'h5aaa;
    defparam add_10_5.INIT1 = 16'h5aaa;
    defparam add_10_5.INJECT1_0 = "NO";
    defparam add_10_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i5 (.D(n21), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[5]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i5.GSR = "ENABLED";
    CCU2D add_6_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4273), .COUT(n4274), .S0(n15), .S1(n14));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_13.INIT0 = 16'h5aaa;
    defparam add_6_13.INIT1 = 16'h5aaa;
    defparam add_6_13.INJECT1_0 = "NO";
    defparam add_6_13.INJECT1_1 = "NO";
    LUT4 i3899_3_lut_4_lut (.A(comm_cnt[4]), .B(n5033), .C(n5022), .D(n5024), 
         .Z(n4720)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(123[7:12])
    defparam i3899_3_lut_4_lut.init = 16'heefe;
    LUT4 i1_2_lut_3_lut_adj_47 (.A(comm_cnt[0]), .B(comm_cnt[1]), .C(comm_cnt[3]), 
         .Z(n166)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_47.init = 16'h2020;
    FD1P3IX cnt_delay_i9 (.D(n17), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[9]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_100_3_lut_4_lut (.A(comm_cnt[0]), .B(comm_cnt[1]), 
         .C(comm_cnt[2]), .D(comm_cnt[3]), .Z(n5031)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_100_3_lut_4_lut.init = 16'h0200;
    CCU2D add_6_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4270), .COUT(n4271), .S0(n21), .S1(n20));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(85[28:44])
    defparam add_6_7.INIT0 = 16'h5aaa;
    defparam add_6_7.INIT1 = 16'h5aaa;
    defparam add_6_7.INJECT1_0 = "NO";
    defparam add_6_7.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0 (.D(n26), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[0]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_48 (.A(write_cnt[3]), .B(n5029), .C(SPI_CS_c), 
         .D(write_cnt[2]), .Z(n129)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i1_3_lut_4_lut_adj_48.init = 16'hf0f4;
    LUT4 i1_2_lut_rep_112 (.A(comm_cnt[3]), .B(comm_cnt[2]), .Z(n5043)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i1_2_lut_rep_112.init = 16'heeee;
    LUT4 i3871_2_lut_3_lut_4_lut_4_lut (.A(comm_cnt[3]), .B(comm_cnt[2]), 
         .C(n5017), .D(n5023), .Z(n4692)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam i3871_2_lut_3_lut_4_lut_4_lut.init = 16'hfaea;
    FD1P3IX cnt_delay_i6 (.D(n20), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[6]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i6.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_2_lut_rep_113 (.A(write_cnt[3]), .B(write_cnt[2]), .Z(n5044)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i1_2_lut_rep_113.init = 16'heeee;
    LUT4 i1_4_lut_adj_49 (.A(n5014), .B(n5_adj_469), .C(n4720), .D(n41), 
         .Z(mosi_data_7__N_101[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_49.init = 16'hffef;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut_adj_50 (.A(mosi_data[0]), .B(n5036), .C(n2777), .D(n4747), 
         .Z(n5_adj_469)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_50.init = 16'h0ace;
    LUT4 i1_2_lut_3_lut_adj_51 (.A(write_cnt[3]), .B(write_cnt[2]), .C(write_cnt[1]), 
         .Z(n113)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(40[12:21])
    defparam i1_2_lut_3_lut_adj_51.init = 16'hfefe;
    FD1P3AX mosi_data_i0 (.D(mosi_data_7__N_101[0]), .SP(sys_clk_c_enable_56), 
            .CK(sys_clk_c), .Q(mosi_data[0]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam mosi_data_i0.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n11_adj_464), .B(n16_adj_489), .C(n2797), .D(n4672), 
         .Z(n19_adj_465)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i8_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_adj_52 (.A(comm_cnt[1]), .B(n5023), .C(n35), .D(n5034), 
         .Z(n41)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_52.init = 16'h5150;
    FD1P3IX cnt_delay_i14 (.D(n12), .SP(sys_clk_c_enable_57), .CD(n2932), 
            .CK(sys_clk_c), .Q(cnt_delay[14]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(69[7] 280[5])
    defparam cnt_delay_i14.GSR = "ENABLED";
    LUT4 i1_4_lut_rep_90 (.A(n5043), .B(n5036), .C(n6_adj_488), .D(comm_cnt[5]), 
         .Z(n5021)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(37[11:19])
    defparam i1_4_lut_rep_90.init = 16'hfffe;
    LUT4 i5_4_lut_adj_53 (.A(n4682), .B(n15_adj_474), .C(n5020), .D(n5031), 
         .Z(n14_adj_490)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;
    defparam i5_4_lut_adj_53.init = 16'hbfbb;
    blink m_blink (.led_c(led_c), .sys_clk_c(sys_clk_c), .clk_1s(clk_1s)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(286[7] 292[2])
    LUT4 i3921_4_lut (.A(comm_cnt[2]), .B(comm_cnt[4]), .C(n5035), .D(n4761), 
         .Z(n4747)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3921_4_lut.init = 16'hfeff;
    LUT4 i3941_2_lut (.A(comm_cnt[5]), .B(comm_cnt[3]), .Z(n4761)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i3941_2_lut.init = 16'h6666;
    LUT4 i2896_2_lut_3_lut_4_lut (.A(comm_cnt[3]), .B(n5013), .C(n59), 
         .D(n5036), .Z(comm_cnt_7__N_90[3])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i2896_2_lut_3_lut_4_lut.init = 16'hf2f0;
    PFUMX i4027 (.BLUT(n5045), .ALUT(n5046), .C0(write_cnt[3]), .Z(n5047));
    LUT4 i1_4_lut_adj_54 (.A(comm_cnt[0]), .B(n5017), .C(n6_adj_480), 
         .D(n5013), .Z(n35)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_54.init = 16'ha2aa;
    clock_1s u_clock_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(296[10] 301[2])
    
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
// Verilog Description of module blink
//

module blink (led_c, sys_clk_c, clk_1s) /* synthesis syn_module_defined=1 */ ;
    output led_c;
    input sys_clk_c;
    input clk_1s;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(2[9:16])
    
    wire blink_io_N_255;
    
    FD1S3AY blink_io_10 (.D(blink_io_N_255), .CK(sys_clk_c), .Q(led_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=286, LSE_RLINE=292 */ ;   // c:/users/argon/downloads/step/proj/6.spi/led.v(17[8] 20[6])
    defparam blink_io_10.GSR = "ENABLED";
    LUT4 blink_io_I_0_2_lut (.A(led_c), .B(clk_1s), .Z(blink_io_N_255)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/led.v(17[8] 20[6])
    defparam blink_io_I_0_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module clock_1s
//

module clock_1s (clk_1s, sys_clk_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(2[9:16])
    
    wire clk_cnt_31__N_324, n4316;
    wire [31:0]clk_cnt;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(8[12:19])
    
    wire n4317;
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n4292, n4293, n4315, n4314, n4291, n4290, n4289, n4313, 
        n4312, n4311, n4288, n4287, n4286, n4310, n4301, n4300, 
        n4299, n4298, n4297, n4296, n4295, n4294, n4320, n4319, 
        n4318;
    
    FD1S3AX clk_1s_12 (.D(clk_cnt_31__N_324), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=296, LSE_RLINE=301 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(18[7] 25[5])
    defparam clk_1s_12.GSR = "ENABLED";
    CCU2D add_3498_16 (.A0(clk_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4316), .COUT(n4317));
    defparam add_3498_16.INIT0 = 16'h5aaa;
    defparam add_3498_16.INIT1 = 16'h5555;
    defparam add_3498_16.INJECT1_0 = "NO";
    defparam add_3498_16.INJECT1_1 = "NO";
    FD1S3IX clk_cnt_730__i0 (.D(n133[0]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i0.GSR = "ENABLED";
    CCU2D clk_cnt_730_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4292), .COUT(n4293), .S0(n133[13]), .S1(n133[14]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_15.INJECT1_1 = "NO";
    CCU2D add_3498_14 (.A0(clk_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4315), .COUT(n4316));
    defparam add_3498_14.INIT0 = 16'h5aaa;
    defparam add_3498_14.INIT1 = 16'h5555;
    defparam add_3498_14.INJECT1_0 = "NO";
    defparam add_3498_14.INJECT1_1 = "NO";
    CCU2D add_3498_12 (.A0(clk_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4314), .COUT(n4315));
    defparam add_3498_12.INIT0 = 16'h5555;
    defparam add_3498_12.INIT1 = 16'h5aaa;
    defparam add_3498_12.INJECT1_0 = "NO";
    defparam add_3498_12.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4291), .COUT(n4292), .S0(n133[11]), .S1(n133[12]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4290), .COUT(n4291), .S0(n133[9]), .S1(n133[10]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_9 (.A0(n233[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4289), .COUT(n4290), .S0(n133[7]), .S1(n133[8]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_9.INJECT1_1 = "NO";
    CCU2D add_3498_10 (.A0(clk_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4313), .COUT(n4314));
    defparam add_3498_10.INIT0 = 16'h5aaa;
    defparam add_3498_10.INIT1 = 16'h5aaa;
    defparam add_3498_10.INJECT1_0 = "NO";
    defparam add_3498_10.INJECT1_1 = "NO";
    CCU2D add_3498_8 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4312), .COUT(n4313));
    defparam add_3498_8.INIT0 = 16'h5555;
    defparam add_3498_8.INIT1 = 16'h5aaa;
    defparam add_3498_8.INJECT1_0 = "NO";
    defparam add_3498_8.INJECT1_1 = "NO";
    CCU2D add_3498_6 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4311), .COUT(n4312));
    defparam add_3498_6.INIT0 = 16'h5555;
    defparam add_3498_6.INIT1 = 16'h5555;
    defparam add_3498_6.INJECT1_0 = "NO";
    defparam add_3498_6.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4288), .COUT(n4289), .S0(n133[5]), .S1(n133[6]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4287), .COUT(n4288), .S0(n133[3]), .S1(n133[4]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4286), .COUT(n4287), .S0(n133[1]), .S1(n133[2]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4286), .S1(n133[0]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_730_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_730_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_1.INJECT1_1 = "NO";
    CCU2D add_3498_4 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4310), .COUT(n4311));
    defparam add_3498_4.INIT0 = 16'h5aaa;
    defparam add_3498_4.INIT1 = 16'h5aaa;
    defparam add_3498_4.INJECT1_0 = "NO";
    defparam add_3498_4.INJECT1_1 = "NO";
    CCU2D add_3498_2 (.A0(clk_cnt[9]), .B0(clk_cnt[8]), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4310));
    defparam add_3498_2.INIT0 = 16'h7000;
    defparam add_3498_2.INIT1 = 16'h5555;
    defparam add_3498_2.INJECT1_0 = "NO";
    defparam add_3498_2.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_33 (.A0(clk_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4301), .S0(n133[31]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_33.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_33.INIT1 = 16'h0000;
    defparam clk_cnt_730_add_4_33.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_33.INJECT1_1 = "NO";
    FD1S3IX clk_cnt_730__i31 (.D(n133[31]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i31.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i30 (.D(n133[30]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i30.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i29 (.D(n133[29]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i29.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i28 (.D(n133[28]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i28.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i27 (.D(n133[27]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i27.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i26 (.D(n133[26]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i26.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i25 (.D(n133[25]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i25.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i24 (.D(n133[24]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i24.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i23 (.D(n133[23]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i23.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i22 (.D(n133[22]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i22.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i21 (.D(n133[21]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i21.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i20 (.D(n133[20]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i20.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i19 (.D(n133[19]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i19.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i18 (.D(n133[18]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i18.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i17 (.D(n133[17]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i17.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i16 (.D(n133[16]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i16.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i15 (.D(n133[15]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i14 (.D(n133[14]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i13 (.D(n133[13]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i12 (.D(n133[12]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i11 (.D(n133[11]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i10 (.D(n133[10]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i9 (.D(n133[9]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i8 (.D(n133[8]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i7 (.D(n133[7]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i6 (.D(n133[6]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i5 (.D(n133[5]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i4 (.D(n133[4]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i3 (.D(n133[3]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i2 (.D(n133[2]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_730__i1 (.D(n133[1]), .CK(sys_clk_c), .CD(clk_cnt_31__N_324), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730__i1.GSR = "ENABLED";
    CCU2D clk_cnt_730_add_4_31 (.A0(clk_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4300), .COUT(n4301), .S0(n133[29]), .S1(n133[30]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_31.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_31.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_31.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_31.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_29 (.A0(clk_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4299), .COUT(n4300), .S0(n133[27]), .S1(n133[28]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_29.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_29.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_29.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_29.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_27 (.A0(clk_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4298), .COUT(n4299), .S0(n133[25]), .S1(n133[26]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_27.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_27.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_27.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_27.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_25 (.A0(clk_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4297), .COUT(n4298), .S0(n133[23]), .S1(n133[24]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_25.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_25.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_25.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_25.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_23 (.A0(clk_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4296), .COUT(n4297), .S0(n133[21]), .S1(n133[22]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_23.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_23.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_23.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_23.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_21 (.A0(clk_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4295), .COUT(n4296), .S0(n133[19]), .S1(n133[20]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_21.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_21.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_21.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_21.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_19 (.A0(clk_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4294), .COUT(n4295), .S0(n133[17]), .S1(n133[18]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_19.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_19.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_19.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_19.INJECT1_1 = "NO";
    CCU2D clk_cnt_730_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4293), .COUT(n4294), .S0(n133[15]), .S1(n133[16]));   // c:/users/argon/downloads/step/proj/6.spi/clock.v(23[14:25])
    defparam clk_cnt_730_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_730_add_4_17.INIT1 = 16'hfaaa;
    defparam clk_cnt_730_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_730_add_4_17.INJECT1_1 = "NO";
    CCU2D add_3498_24 (.A0(clk_cnt[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4320), 
          .S1(clk_cnt_31__N_324));
    defparam add_3498_24.INIT0 = 16'h5555;
    defparam add_3498_24.INIT1 = 16'h0000;
    defparam add_3498_24.INJECT1_0 = "NO";
    defparam add_3498_24.INJECT1_1 = "NO";
    CCU2D add_3498_22 (.A0(clk_cnt[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4319), .COUT(n4320));
    defparam add_3498_22.INIT0 = 16'h5555;
    defparam add_3498_22.INIT1 = 16'h5555;
    defparam add_3498_22.INJECT1_0 = "NO";
    defparam add_3498_22.INJECT1_1 = "NO";
    CCU2D add_3498_20 (.A0(clk_cnt[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4318), .COUT(n4319));
    defparam add_3498_20.INIT0 = 16'h5555;
    defparam add_3498_20.INIT1 = 16'h5555;
    defparam add_3498_20.INJECT1_0 = "NO";
    defparam add_3498_20.INJECT1_1 = "NO";
    CCU2D add_3498_18 (.A0(clk_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4317), .COUT(n4318));
    defparam add_3498_18.INIT0 = 16'h5555;
    defparam add_3498_18.INIT1 = 16'h5555;
    defparam add_3498_18.INJECT1_0 = "NO";
    defparam add_3498_18.INJECT1_1 = "NO";
    
endmodule
