// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Jan 31 13:26:55 2021
//
// Verilog Description of module SPI_wirte8_bits
//

module SPI_wirte8_bits (sys_clk, sys_rst, spi_en, dc_comm, mosi_data, 
            SPI_CLK, SPI_MOSI, SPI_DC, SPI_CS, busy) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(342[8:23])
    input sys_clk;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(343[9:16])
    input sys_rst;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(344[9:16])
    input spi_en;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(346[9:15])
    input dc_comm;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(347[9:16])
    input [7:0]mosi_data;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    output SPI_CLK;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(349[15:22])
    output SPI_MOSI;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(350[18:26])
    output SPI_DC;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(352[18:24])
    output SPI_CS;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(353[18:24])
    output busy;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(354[15:19])
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(343[9:16])
    
    wire GND_net, n873, sys_rst_c, spi_en_c, dc_comm_c, mosi_data_c_7, 
        mosi_data_c_6, mosi_data_c_5, mosi_data_c_4, mosi_data_c_3, 
        mosi_data_c_2, mosi_data_c_1, mosi_data_c_0, SPI_CLK_c, SPI_MOSI_c, 
        SPI_DC_c, SPI_CS_c, busy_c;
    wire [7:0]cnt_write_com;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(362[13:26])
    
    wire n51, n52, n53, n54, n55, n56, n57, n58, SPI_CS_N_50, 
        busy_N_53, n24, SPI_CLK_N_20, SPI_MOSI_N_45, n486, n18, 
        VCC_net, n73, n879, n816, n878, n877, n876, n815, n490, 
        n913, n912, n911, n12, n910, n813, n890, n875, n14, 
        n865, n708, sys_clk_c_enable_1, n857, n814, n874, n909;
    
    VHI i771 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(n73), .B(n865), .C(n879), .D(cnt_write_com[4]), 
         .Z(SPI_MOSI_N_45)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut.init = 16'haaea;
    CCU2D add_22_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_write_com[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n813), .S1(n58));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(426[22:41])
    defparam add_22_1.INIT0 = 16'hF000;
    defparam add_22_1.INIT1 = 16'h5555;
    defparam add_22_1.INJECT1_0 = "NO";
    defparam add_22_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_rep_7_3_lut (.A(cnt_write_com[2]), .B(cnt_write_com[3]), 
         .C(cnt_write_com[1]), .Z(n910)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(430[5:9])
    defparam i2_2_lut_rep_7_3_lut.init = 16'hfefe;
    LUT4 i30_2_lut_3_lut_4_lut (.A(cnt_write_com[2]), .B(cnt_write_com[3]), 
         .C(cnt_write_com[4]), .D(cnt_write_com[1]), .Z(n14)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(430[5:9])
    defparam i30_2_lut_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i730_3_lut (.A(mosi_data_c_1), .B(mosi_data_c_0), .C(cnt_write_com[1]), 
         .Z(n876)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i730_3_lut.init = 16'hcaca;
    OB SPI_CLK_pad (.I(SPI_CLK_c), .O(SPI_CLK));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(349[15:22])
    LUT4 i742_4_lut (.A(cnt_write_com[4]), .B(spi_en_c), .C(n912), .D(n857), 
         .Z(sys_clk_c_enable_1)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam i742_4_lut.init = 16'h0004;
    LUT4 cnt_write_com_7__I_0_90_i10_2_lut_rep_9 (.A(cnt_write_com[2]), .B(cnt_write_com[3]), 
         .Z(n912)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(430[5:9])
    defparam cnt_write_com_7__I_0_90_i10_2_lut_rep_9.init = 16'heeee;
    LUT4 i1_4_lut_adj_1 (.A(n12), .B(cnt_write_com[0]), .C(n14), .D(n913), 
         .Z(SPI_CLK_N_20)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut_adj_1.init = 16'haaba;
    LUT4 i562_2_lut_3_lut (.A(cnt_write_com[2]), .B(cnt_write_com[3]), .C(cnt_write_com[0]), 
         .Z(n708)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(430[5:9])
    defparam i562_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_2 (.A(SPI_CLK_c), .B(n913), .C(cnt_write_com[4]), 
         .D(cnt_write_com[0]), .Z(n12)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut_adj_2.init = 16'ha8aa;
    CCU2D add_22_7 (.A0(cnt_write_com[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_write_com[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n815), .COUT(n816), .S0(n53), .S1(n52));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(426[22:41])
    defparam add_22_7.INIT0 = 16'h5aaa;
    defparam add_22_7.INIT1 = 16'h5aaa;
    defparam add_22_7.INJECT1_0 = "NO";
    defparam add_22_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(n913), .B(cnt_write_com[1]), .C(cnt_write_com[0]), 
         .Z(n857)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_3 (.A(n18), .B(SPI_CS_c), .C(n857), .D(n912), 
         .Z(SPI_CS_N_50)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut_adj_3.init = 16'heeea;
    FD1P3IX cnt_write_com__i7 (.D(n51), .SP(spi_en_c), .CD(n909), .CK(sys_clk_c), 
            .Q(cnt_write_com[7]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i7.GSR = "ENABLED";
    LUT4 i729_3_lut (.A(mosi_data_c_3), .B(mosi_data_c_2), .C(cnt_write_com[1]), 
         .Z(n875)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i729_3_lut.init = 16'hcaca;
    LUT4 n890_bdd_2_lut_rep_8_4_lut (.A(cnt_write_com[6]), .B(cnt_write_com[5]), 
         .C(cnt_write_com[7]), .D(n890), .Z(n911)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n890_bdd_2_lut_rep_8_4_lut.init = 16'hfffe;
    CCU2D add_22_5 (.A0(cnt_write_com[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_write_com[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n814), .COUT(n815), .S0(n55), .S1(n54));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(426[22:41])
    defparam add_22_5.INIT0 = 16'h5aaa;
    defparam add_22_5.INIT1 = 16'h5aaa;
    defparam add_22_5.INJECT1_0 = "NO";
    defparam add_22_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_4 (.A(cnt_write_com[4]), .B(n910), .C(SPI_CS_c), 
         .D(n865), .Z(n18)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut_adj_4.init = 16'ha2a0;
    LUT4 i727_3_lut (.A(mosi_data_c_7), .B(mosi_data_c_6), .C(cnt_write_com[1]), 
         .Z(n873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i727_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut (.A(cnt_write_com[6]), .B(cnt_write_com[5]), .C(cnt_write_com[7]), 
         .D(cnt_write_com[0]), .Z(n865)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i728_3_lut (.A(mosi_data_c_5), .B(mosi_data_c_4), .C(cnt_write_com[1]), 
         .Z(n874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i728_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_5 (.A(busy_c), .B(n913), .C(n24), .D(n708), .Z(busy_N_53)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut_adj_5.init = 16'h3032;
    FD1P3AY SPI_DC_83 (.D(dc_comm_c), .SP(sys_clk_c_enable_1), .CK(sys_clk_c), 
            .Q(SPI_DC_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam SPI_DC_83.GSR = "ENABLED";
    FD1P3IX cnt_write_com__i6 (.D(n52), .SP(spi_en_c), .CD(n909), .CK(sys_clk_c), 
            .Q(cnt_write_com[6]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i6.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_6 (.A(cnt_write_com[4]), .B(cnt_write_com[1]), .C(busy_c), 
         .D(n708), .Z(n24)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut_adj_6.init = 16'h5051;
    FD1P3IX cnt_write_com__i0 (.D(n58), .SP(spi_en_c), .CD(n909), .CK(sys_clk_c), 
            .Q(cnt_write_com[0]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i0.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut_adj_7 (.A(SPI_MOSI_c), .B(cnt_write_com[4]), .C(cnt_write_com[0]), 
         .D(n913), .Z(n73)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/6.spi/spi.v(429[4] 492[11])
    defparam i1_4_lut_adj_7.init = 16'haa8a;
    L6MUX21 i733 (.D0(n877), .D1(n878), .SD(cnt_write_com[3]), .Z(n879));
    GSR GSR_INST (.GSR(sys_rst_c));
    FD1P3IX cnt_write_com__i5 (.D(n53), .SP(spi_en_c), .CD(n909), .CK(sys_clk_c), 
            .Q(cnt_write_com[5]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i5.GSR = "ENABLED";
    FD1S3AY cnt_write_com__i4 (.D(n490), .CK(sys_clk_c), .Q(cnt_write_com[4]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i4.GSR = "ENABLED";
    FD1P3IX cnt_write_com__i3 (.D(n55), .SP(spi_en_c), .CD(n909), .CK(sys_clk_c), 
            .Q(cnt_write_com[3]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i3.GSR = "ENABLED";
    PFUMX i731 (.BLUT(n873), .ALUT(n874), .C0(cnt_write_com[2]), .Z(n877));
    FD1P3IX cnt_write_com__i2 (.D(n56), .SP(spi_en_c), .CD(n909), .CK(sys_clk_c), 
            .Q(cnt_write_com[2]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i2.GSR = "ENABLED";
    FD1S3AY cnt_write_com__i1 (.D(n486), .CK(sys_clk_c), .Q(cnt_write_com[1]));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam cnt_write_com__i1.GSR = "ENABLED";
    FD1P3AY SPI_MOSI_85 (.D(SPI_MOSI_N_45), .SP(spi_en_c), .CK(sys_clk_c), 
            .Q(SPI_MOSI_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam SPI_MOSI_85.GSR = "ENABLED";
    LUT4 i559_4_lut_4_lut (.A(n911), .B(spi_en_c), .C(n57), .D(cnt_write_com[1]), 
         .Z(n486)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam i559_4_lut_4_lut.init = 16'h7340;
    CCU2D add_22_3 (.A0(cnt_write_com[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_write_com[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n813), .COUT(n814), .S0(n57), .S1(n56));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(426[22:41])
    defparam add_22_3.INIT0 = 16'h5aaa;
    defparam add_22_3.INIT1 = 16'h5aaa;
    defparam add_22_3.INJECT1_0 = "NO";
    defparam add_22_3.INJECT1_1 = "NO";
    PFUMX i732 (.BLUT(n875), .ALUT(n876), .C0(cnt_write_com[2]), .Z(n878));
    IB mosi_data_pad_0 (.I(mosi_data[0]), .O(mosi_data_c_0));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    IB mosi_data_pad_1 (.I(mosi_data[1]), .O(mosi_data_c_1));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    IB mosi_data_pad_2 (.I(mosi_data[2]), .O(mosi_data_c_2));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    IB mosi_data_pad_3 (.I(mosi_data[3]), .O(mosi_data_c_3));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    CCU2D add_22_9 (.A0(cnt_write_com[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n816), .S0(n51));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(426[22:41])
    defparam add_22_9.INIT0 = 16'h5aaa;
    defparam add_22_9.INIT1 = 16'h0000;
    defparam add_22_9.INJECT1_0 = "NO";
    defparam add_22_9.INJECT1_1 = "NO";
    IB mosi_data_pad_4 (.I(mosi_data[4]), .O(mosi_data_c_4));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    IB mosi_data_pad_5 (.I(mosi_data[5]), .O(mosi_data_c_5));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    IB mosi_data_pad_6 (.I(mosi_data[6]), .O(mosi_data_c_6));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    IB mosi_data_pad_7 (.I(mosi_data[7]), .O(mosi_data_c_7));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(348[14:23])
    IB dc_comm_pad (.I(dc_comm), .O(dc_comm_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(347[9:16])
    IB spi_en_pad (.I(spi_en), .O(spi_en_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(346[9:15])
    IB sys_rst_pad (.I(sys_rst), .O(sys_rst_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(344[9:16])
    LUT4 n455_bdd_4_lut_746 (.A(cnt_write_com[1]), .B(cnt_write_com[2]), 
         .C(cnt_write_com[3]), .D(cnt_write_com[4]), .Z(n890)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam n455_bdd_4_lut_746.init = 16'hfe00;
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(343[9:16])
    OB busy_pad (.I(busy_c), .O(busy));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(354[15:19])
    OB SPI_CS_pad (.I(SPI_CS_c), .O(SPI_CS));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(353[18:24])
    OB SPI_DC_pad (.I(SPI_DC_c), .O(SPI_DC));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(352[18:24])
    OB SPI_MOSI_pad (.I(SPI_MOSI_c), .O(SPI_MOSI));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(350[18:26])
    FD1P3AY SPI_CLK_86 (.D(SPI_CLK_N_20), .SP(spi_en_c), .CK(sys_clk_c), 
            .Q(SPI_CLK_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam SPI_CLK_86.GSR = "ENABLED";
    FD1P3AY SPI_CS_84 (.D(SPI_CS_N_50), .SP(spi_en_c), .CK(sys_clk_c), 
            .Q(SPI_CS_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam SPI_CS_84.GSR = "ENABLED";
    FD1P3AX busy_87 (.D(busy_N_53), .SP(spi_en_c), .CK(sys_clk_c), .Q(busy_c));   // c:/users/argon/downloads/step/proj/6.spi/spi.v(419[7] 496[5])
    defparam busy_87.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_10 (.A(cnt_write_com[6]), .B(cnt_write_com[5]), .C(cnt_write_com[7]), 
         .Z(n913)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_10.init = 16'hfefe;
    LUT4 i556_4_lut_4_lut (.A(n911), .B(spi_en_c), .C(n54), .D(cnt_write_com[4]), 
         .Z(n490)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam i556_4_lut_4_lut.init = 16'h7340;
    LUT4 n176_bdd_2_lut_rep_6_3_lut (.A(n890), .B(n913), .C(spi_en_c), 
         .Z(n909)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n176_bdd_2_lut_rep_6_3_lut.init = 16'he0e0;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

