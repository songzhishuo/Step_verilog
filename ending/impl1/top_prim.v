// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Tue Feb 23 21:58:53 2021
//
// Verilog Description of module top
//

module top (sys_clk, sys_rst_n, sw1, sw2, beep, uart_txd, one_wire, 
            uart_rxd, oled_res, key1, key2, key3, oled_cs, oled_dc, 
            oled_sck, oled_mosi, led) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(1[8:11])
    input sys_clk;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/ending/top.v(4[8:17])
    input sw1;   // c:/users/argon/desktop/verilog/ending/top.v(10[8:11])
    input sw2;   // c:/users/argon/desktop/verilog/ending/top.v(11[8:11])
    output beep;   // c:/users/argon/desktop/verilog/ending/top.v(19[18:22])
    output uart_txd;   // c:/users/argon/desktop/verilog/ending/top.v(20[10:18])
    inout one_wire;   // c:/users/argon/desktop/verilog/ending/top.v(22[8:16])
    input uart_rxd;   // c:/users/argon/desktop/verilog/ending/top.v(12[18:26])
    output oled_res;   // c:/users/argon/desktop/verilog/ending/top.v(14[9:17])
    input key1;   // c:/users/argon/desktop/verilog/ending/top.v(5[8:12])
    input key2;   // c:/users/argon/desktop/verilog/ending/top.v(6[8:12])
    input key3;   // c:/users/argon/desktop/verilog/ending/top.v(7[8:12])
    output oled_cs;   // c:/users/argon/desktop/verilog/ending/top.v(15[9:16])
    output oled_dc;   // c:/users/argon/desktop/verilog/ending/top.v(16[9:16])
    output oled_sck;   // c:/users/argon/desktop/verilog/ending/top.v(17[9:17])
    output oled_mosi;   // c:/users/argon/desktop/verilog/ending/top.v(18[9:18])
    output led;   // c:/users/argon/desktop/verilog/ending/top.v(9[13:16])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // c:/users/argon/desktop/verilog/ending/top.v(28[7:13])
    
    wire GND_net, VCC_net, sys_rst_n_c, key1_c, key2_c, key3_c, 
        led_c, sw1_c, sw2_c, uart_rxd_c, oled_res_c, oled_cs_c, 
        oled_dc_c, oled_sck_c, oled_mosi_c, beep_c, uart_txd_c, sys_clk_c_enable_60;
    wire [7:0]sec;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    wire [7:0]min;   // c:/users/argon/desktop/verilog/ending/top.v(25[14:17])
    wire [7:0]hour;   // c:/users/argon/desktop/verilog/ending/top.v(26[14:18])
    wire [7:0]sec_t;   // c:/users/argon/desktop/verilog/ending/top.v(61[16:21])
    wire [7:0]min_t;   // c:/users/argon/desktop/verilog/ending/top.v(62[16:21])
    wire [7:0]hour_t;   // c:/users/argon/desktop/verilog/ending/top.v(63[16:22])
    wire [2:0]key_mode;   // c:/users/argon/desktop/verilog/ending/top.v(64[16:24])
    wire [7:0]min_warning;   // c:/users/argon/desktop/verilog/ending/top.v(67[16:27])
    wire [7:0]hour_warning;   // c:/users/argon/desktop/verilog/ending/top.v(68[16:28])
    
    wire warning, time_set;
    wire [7:0]warning_time;   // c:/users/argon/desktop/verilog/ending/top.v(72[16:28])
    wire [3:0]sec_tens;   // c:/users/argon/desktop/verilog/ending/top.v(246[15:23])
    wire [3:0]min_tens;   // c:/users/argon/desktop/verilog/ending/top.v(251[15:23])
    wire [3:0]min_ones;   // c:/users/argon/desktop/verilog/ending/top.v(252[15:23])
    wire [3:0]hour_tens;   // c:/users/argon/desktop/verilog/ending/top.v(256[15:24])
    wire [3:0]hour_ones;   // c:/users/argon/desktop/verilog/ending/top.v(257[15:24])
    wire [3:0]min_warning_tens;   // c:/users/argon/desktop/verilog/ending/top.v(264[15:31])
    wire [3:0]min_warning_ones;   // c:/users/argon/desktop/verilog/ending/top.v(265[15:31])
    wire [3:0]hour_warning_tens;   // c:/users/argon/desktop/verilog/ending/top.v(268[15:32])
    wire [3:0]hour_warning_ones;   // c:/users/argon/desktop/verilog/ending/top.v(269[15:32])
    wire [15:0]ds18b20_data;   // c:/users/argon/desktop/verilog/ending/top.v(318[14:26])
    wire [3:0]Tem_lower;   // c:/users/argon/desktop/verilog/ending/top.v(321[12:21])
    wire [7:0]Temp_H;   // c:/users/argon/desktop/verilog/ending/top.v(339[11:17])
    
    wire uart_en;
    wire [7:0]uart_send_data;   // c:/users/argon/desktop/verilog/ending/top.v(369[12:26])
    
    wire warning_TEM, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/ending/top.v(451[13:27])
    wire [7:0]music_tone;   // c:/users/argon/desktop/verilog/ending/top.v(452[13:23])
    
    wire n37, n38, n39, n40, n41, n42, n43, n44, n57, n58, 
        n59, n60, n61, n62, n63, n64, n67, n68, n69, n70, 
        n71, n72, n73, n74, n5335, n5336, n5337, n5338, n5339, 
        n5349, n5350, n5351, n5352, n233, n234, n235, n236, 
        n237, n238, n239, n240, n244, n245, n252, n253, n254, 
        n255, n256, n257, n258, n259, n5373, n5372, n5371, n5370, 
        n5369, n5368, n5367, n5366, n5356, n5355, n5332, n5333, 
        n5353, n5354, n5164, n5163, n5162, n5161, n5160, n5159, 
        n5158, n5157, n5155, n5134, n5133, n5132, n5131, n5130, 
        n443, n444, n445, n446, n447, n448, n449, n450, n452, 
        n453, n454, n38408, n38409, n38410, n461, n462, n463, 
        n464, n465, n466, n467, n468, n5129, n5128, n5127, n5125, 
        n497, n498, n499, n500, n501, n502, n503, n504, n506, 
        n507, n508, n509, n510, n511, n512, n513, warning_time_7__N_144, 
        led_N_184, n695, n696, n697, n698, n699, n700, n701, 
        n702, led_N_181, n742, n743, n744, n745, n746, n747, 
        n748, n749, n752, n753, n754, n755, n756, n757, n758, 
        n759, n778, n797;
    wire [7:0]sec_7__N_1;
    wire [7:0]min_7__N_11;
    
    wire key_sec_pre, key_sec, n7, key_sec_pre_adj_1852, key_sec_adj_1853, 
        n38458, n20902, key_sec_pre_adj_1854, key_sec_adj_1855, n3;
    wire [3:0]hundres_0__N_313;
    wire [3:0]hundres_1__N_306_adj_1906;
    wire [3:0]hundres_0__N_313_adj_1910;
    wire [3:0]hundres_0__N_316_adj_1912;
    wire [3:0]hundres_0__N_316_adj_1937;
    
    wire hundres_0__N_321, n36194;
    wire [3:0]hundres_0__N_316_adj_1962;
    
    wire hundres_0__N_321_adj_1858;
    wire [3:0]hundres_1__N_306_adj_1981;
    wire [3:0]hundres_0__N_313_adj_1985;
    wire [3:0]hundres_0__N_316_adj_1987;
    wire [3:0]hundres_1__N_305_adj_2004;
    wire [3:0]hundres_0__N_313_adj_2010;
    wire [2:0]cnt_init;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(54[14:22])
    wire [2:0]state;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    wire [2:0]state_back_2__N_482;
    
    wire one_wire_N_631, n38457;
    wire [4:0]cnt_main_adj_2038;   // c:/users/argon/desktop/verilog/ending/oled.v(45[12:20])
    wire [15:0]cnt_adj_2043;   // c:/users/argon/desktop/verilog/ending/oled.v(46[35:38])
    
    wire n36059, sys_clk_c_enable_189, n6, n9120, n10, n22292, n9144, 
        n20858, n9147, n38455, n4, n33454, n33453, sys_clk_c_enable_188, 
        n38429, n19777, n33762, n2521, n2523, n2524, n2527, n2690, 
        n2691, n2692, n2693, n2694, n2695, n2696, n3068, n3069, 
        n3070, n3071, n3072, n3073, n3074, n3446, n3447, n3448, 
        n3449, n3450, n3451, n3452, n3824, n3825, n3826, n3827, 
        n3828, n3829, n3830, n4202, n4203, n4204, n4205, n4206, 
        n4207, n4208, n20875, n33452, n33451, n33450, n19, n18, 
        n33449, n33448, n33904, n27735, n38726, n38725, n37976, 
        n36183, n38448, n9269, n21135, n9272, n12162, n37978, 
        n37977, n11652, n11648, n11661, n6_adj_1863, n38714, n9927, 
        n9925, n34008, n38713, n38712, n38710, n38709, n38780;
    wire [8:0]music_cnt;   // c:/users/argon/desktop/verilog/ending/music_player.v(47[11:20])
    
    wire n125, n38407, n12, n9917, n11735, n11733, n5334, n38413, 
        n10_adj_1864, n11657, n11642, n28424, sys_clk_c_enable_133, 
        n5, n7_adj_1865, n33634, n33633, n33632, n33631, n33626, 
        n33625, n33624, n22276, n33623, n33619, n33447, n33446, 
        n33618, n33445, n23, n33444, n36573, n33443, n33617, n33616, 
        sys_clk_c_enable_117, n33615, n33614, n19982, n8, n33613, 
        n33612, n35440, n38679, n38676, sys_clk_c_enable_292, n36061, 
        n38667, n13515, n38420, n14378, n4_adj_1866, n38665, n22272, 
        n36041, n22, n22_adj_1867, n33320, n12_adj_1868, n11, n6_adj_1869, 
        n14, n6_adj_1870, n5_adj_1871, n15, n14_adj_1872, n38650, 
        n33798, n38642, n10_adj_1873, sys_clk_c_enable_166, n36082, 
        n3_adj_1874, n33822, n22274, n38631, n38630, n38629, n39914, 
        n36418, one_wire_out, n38625, sys_clk_c_enable_180, n22293, 
        n37693, n21133, n88, n38336, n4_adj_1875, n2, n36260, 
        n38608, n38607, n22264, n38606, sys_clk_c_enable_309, n124, 
        n37757, n37756, n4_adj_1876, n5_adj_1877, n38593, n6_adj_1878, 
        n5_adj_1879, n20911, n5_adj_1880, n4_adj_1881, n38580, n4_adj_1882, 
        n38573, n38338, n38337, n22266, n38561, n38560, n38557, 
        n10_adj_1883, n37_adj_1884, n38546, n38545, n38542, n38541, 
        n37692, sys_clk_c_enable_262, n38524, n37676, n37675, n37674, 
        n22270, n37663, n37662, n33487, n37649, n37648, n38508, 
        n33421, n33486, n33323, n33422, n33424, n33425, n33322, 
        n36257, n33946, n33949, n38753, n33419, n33485, n33423, 
        n33484, n33824, n38782, n26998, n38781, n33420, n49, n33321, 
        n33418, clk_1s_enable_2, clk_1s_enable_1, n4_adj_1885, n38432, 
        n4_adj_1886;
    
    VHI i29370 (.Z(VCC_net));
    LUT4 i13552_4_lut (.A(hour[5]), .B(hour_t[5]), .C(n38625), .D(n38557), 
         .Z(n22274)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam i13552_4_lut.init = 16'hc0ca;
    FD1P3AX min_t_i0_i3 (.D(n5131), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[3]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i3.GSR = "DISABLED";
    FD1P3AX hour_warning_i0_i0 (.D(n513), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[0]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i0.GSR = "DISABLED";
    FD1P3AX min_t_i0_i0 (.D(n5134), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[0]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i0.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i0 (.D(n5164), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[0]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i0.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i0 (.D(Temp_H[0]), .SP(sys_clk_c_enable_166), 
            .CK(sys_clk_c), .Q(uart_send_data[0]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_send_data_i0_i0.GSR = "DISABLED";
    FD1P3AX min_t_i0_i2 (.D(n5132), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[2]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i2.GSR = "DISABLED";
    FD1P3AX min_t_i0_i1 (.D(n5133), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[1]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i1.GSR = "DISABLED";
    FD1S3AX sec_i0 (.D(sec_7__N_1[0]), .CK(clk_1s), .Q(sec[0]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i0.GSR = "ENABLED";
    FD1S3AX min_i0 (.D(min_7__N_11[0]), .CK(clk_1s), .Q(min[0]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i0.GSR = "ENABLED";
    ROM128X1A mux_830_Mux_24 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3074)) /* synthesis initstate=0x001010012C1F82FDC3AD02CC0000FBAD */ ;
    defparam mux_830_Mux_24.initval = 128'h001010012C1F82FDC3AD02CC0000FBAD;
    FD1S3AX hour_i0 (.D(n22293), .CK(clk_1s), .Q(hour[0]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i0.GSR = "ENABLED";
    FD1P3AX Temp_H_i0 (.D(ds18b20_data[4]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[0]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam Temp_H_i0.GSR = "ENABLED";
    FD1S3AX uart_en_177 (.D(clk_1s), .CK(sys_clk_c), .Q(uart_en));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_en_177.GSR = "ENABLED";
    FD1P3AX hour_t_i0_i7 (.D(n497), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[7]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i7.GSR = "DISABLED";
    FD1P3AX hour_warning_i0_i7 (.D(n506), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[7]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i7.GSR = "DISABLED";
    FD1P3IX key_mode_2893__i0 (.D(n38710), .SP(sys_clk_c_enable_117), .CD(n26998), 
            .CK(sys_clk_c), .Q(key_mode[0]));   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam key_mode_2893__i0.GSR = "ENABLED";
    ROM128X1A mux_830_Mux_39 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n2690)) /* synthesis initstate=0x050D6D04950D7976000400200000EC04 */ ;
    defparam mux_830_Mux_39.initval = 128'h050D6D04950D7976000400200000EC04;
    ROM128X1A mux_830_Mux_37 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n2691)) /* synthesis initstate=0x00A5E93E05A7FDFF016980700000FD69 */ ;
    defparam mux_830_Mux_37.initval = 128'h00A5E93E05A7FDFF016980700000FD69;
    ROM128X1A mux_830_Mux_30 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3068)) /* synthesis initstate=0x04A8927EACAA96BD4BEF426800007BEF */ ;
    defparam mux_830_Mux_30.initval = 128'h04A8927EACAA96BD4BEF426800007BEF;
    FD1P3IX min_warning__i6 (.D(n5350), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[6]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i6.GSR = "DISABLED";
    FD1P3IX min_warning__i5 (.D(n5351), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[5]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i5.GSR = "DISABLED";
    FD1P3IX min_warning__i4 (.D(n5352), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[4]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i4.GSR = "DISABLED";
    FD1P3IX min_warning__i3 (.D(n5353), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[3]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i3.GSR = "DISABLED";
    FD1P3IX min_warning__i2 (.D(n5354), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[2]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i2.GSR = "DISABLED";
    FD1P3IX min_warning__i1 (.D(n5355), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[1]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i1.GSR = "DISABLED";
    FD1P3AX hour_warning_i0_i6 (.D(n507), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[6]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i6.GSR = "DISABLED";
    ROM128X1A mux_830_Mux_8 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3830)) /* synthesis initstate=0x000004402C1F86ED93FD012C0000DBFD */ ;
    defparam mux_830_Mux_8.initval = 128'h000004402C1F86ED93FD012C0000DBFD;
    ROM128X1A mux_830_Mux_9 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3829)) /* synthesis initstate=0x0000000070002C120018007C00002418 */ ;
    defparam mux_830_Mux_9.initval = 128'h0000000070002C120018007C00002418;
    ROM128X1A mux_830_Mux_10 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3828)) /* synthesis initstate=0x040DEDAF2500040060B1820C000000B1 */ ;
    defparam mux_830_Mux_10.initval = 128'h040DEDAF2500040060B1820C000000B1;
    ROM128X1A mux_830_Mux_11 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3827)) /* synthesis initstate=0x05020410320D05E4835C2E180000CB5C */ ;
    defparam mux_830_Mux_11.initval = 128'h05020410320D05E4835C2E180000CB5C;
    ROM128X1A mux_830_Mux_12 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3826)) /* synthesis initstate=0x000A0422210044036010022800000410 */ ;
    defparam mux_830_Mux_12.initval = 128'h000A0422210044036010022800000410;
    ROM128X1A mux_830_Mux_13 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3825)) /* synthesis initstate=0x0361048030460C100210105800002210 */ ;
    defparam mux_830_Mux_13.initval = 128'h0361048030460C100210105800002210;
    FD1P3AX hour_warning_i0_i5 (.D(n508), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[5]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i5.GSR = "DISABLED";
    ROM128X1A mux_830_Mux_17 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3451)) /* synthesis initstate=0x00001001001002005C120F9200000012 */ ;
    defparam mux_830_Mux_17.initval = 128'h00001001001002005C120F9200000012;
    FD1P3AX hour_warning_i0_i4 (.D(n509), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[4]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i4.GSR = "DISABLED";
    FD1P3AX hour_warning_i0_i3 (.D(n510), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[3]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i3.GSR = "DISABLED";
    FD1P3AX hour_warning_i0_i2 (.D(n511), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[2]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i2.GSR = "DISABLED";
    FD1P3IX warning_time__i0 (.D(n702), .SP(clk_1s_enable_1), .CD(n11735), 
            .CK(clk_1s), .Q(warning_time[0]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i0.GSR = "ENABLED";
    FD1P3AX hour_warning_i0_i1 (.D(n512), .SP(sys_clk_c_enable_60), .CK(sys_clk_c), 
            .Q(hour_warning[1]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_warning_i0_i1.GSR = "DISABLED";
    CCU2D add_18_5 (.A0(hour_warning[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_warning[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33423), .COUT(n33424), .S0(n61), .S1(n60));   // c:/users/argon/desktop/verilog/ending/top.v(109[25:44])
    defparam add_18_5.INIT0 = 16'h5aaa;
    defparam add_18_5.INIT1 = 16'h5aaa;
    defparam add_18_5.INJECT1_0 = "NO";
    defparam add_18_5.INJECT1_1 = "NO";
    CCU2D add_15_7 (.A0(hour_t[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hour_t[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33420), .COUT(n33421), .S0(n39), .S1(n38));   // c:/users/argon/desktop/verilog/ending/top.v(105[19:32])
    defparam add_15_7.INIT0 = 16'h5aaa;
    defparam add_15_7.INIT1 = 16'h5aaa;
    defparam add_15_7.INJECT1_0 = "NO";
    defparam add_15_7.INJECT1_1 = "NO";
    ROM128X1A mux_830_Mux_16 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3452)) /* synthesis initstate=0x000012407C1F86FF83EF00D20000FFEF */ ;
    defparam mux_830_Mux_16.initval = 128'h000012407C1F86FF83EF00D20000FFEF;
    ROM128X1A mux_830_Mux_18 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3450)) /* synthesis initstate=0x041FD7BE10102A002C2A0C5A0000002A */ ;
    defparam mux_830_Mux_18.initval = 128'h041FD7BE10102A002C2A0C5A0000002A;
    ROM128X1A mux_830_Mux_19 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3449)) /* synthesis initstate=0x00003A40059D63E503C3AC320000CBC3 */ ;
    defparam mux_830_Mux_19.initval = 128'h00003A40059D63E503C3AC320000CBC3;
    ROM128X1A mux_831_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n125)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_831_Mux_2.initval = 128'h000000005994949451139113B7139113;
    ROM128X1A mux_830_Mux_20 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3448)) /* synthesis initstate=0x0588322212960A03AC160C5800000416 */ ;
    defparam mux_830_Mux_20.initval = 128'h0588322212960A03AC160C5800000416;
    ROM128X1A mux_830_Mux_21 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3447)) /* synthesis initstate=0x02831A80029002005C025F1200000002 */ ;
    defparam mux_830_Mux_21.initval = 128'h02831A80029002005C025F1200000002;
    ROM128X1A mux_830_Mux_25 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3073)) /* synthesis initstate=0x00100040580020020C42001C00000442 */ ;
    defparam mux_830_Mux_25.initval = 128'h00100040580020020C42001C00000442;
    ROM128X1A mux_830_Mux_26 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3072)) /* synthesis initstate=0x041BA2FA090040003C3001AC00000030 */ ;
    defparam mux_830_Mux_26.initval = 128'h041BA2FA090040003C3001AC00000030;
    ROM128X1A mux_830_Mux_27 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3071)) /* synthesis initstate=0x011441441A0D096503402D580000CB40 */ ;
    defparam mux_830_Mux_27.initval = 128'h011441441A0D096503402D580000CB40;
    ROM128X1A mux_830_Mux_28 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3070)) /* synthesis initstate=0x001808620D0000023C91810800000491 */ ;
    defparam mux_830_Mux_28.initval = 128'h001808620D0000023C91810800000491;
    ROM128X1A mux_830_Mux_29 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3069)) /* synthesis initstate=0x075300C0184000000484403800000084 */ ;
    defparam mux_830_Mux_29.initval = 128'h075300C0184000000484403800000084;
    PFUMX i28319 (.BLUT(n37675), .ALUT(n37674), .C0(cnt_adj_2043[4]), 
          .Z(n37676));
    ROM128X1A mux_830_Mux_32 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n2696)) /* synthesis initstate=0x0000090417F5797400A800000000E8A8 */ ;
    defparam mux_830_Mux_32.initval = 128'h0000090417F5797400A800000000E8A8;
    ROM128X1A mux_830_Mux_33 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n2695)) /* synthesis initstate=0x0000090403EFF9FD832500600000FB25 */ ;
    defparam mux_830_Mux_33.initval = 128'h0000090403EFF9FD832500600000FB25;
    ROM128X1A mux_830_Mux_34 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n2694)) /* synthesis initstate=0x07F5690452EFF9FE236104580000FF61 */ ;
    defparam mux_830_Mux_34.initval = 128'h07F5690452EFF9FE236104580000FF61;
    ROM128X1A mux_830_Mux_35 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n2693)) /* synthesis initstate=0x02EFE9FC00E7F9FE105128000000FC51 */ ;
    defparam mux_830_Mux_35.initval = 128'h02EFE9FC00E7F9FE105128000000FC51;
    ROM128X1A mux_830_Mux_36 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n2692)) /* synthesis initstate=0x02E7E9BC10E7F9FF215104480000FD51 */ ;
    defparam mux_830_Mux_36.initval = 128'h02E7E9BC10E7F9FF215104480000FD51;
    LUT4 i28187_2_lut_2_lut (.A(warning_time_7__N_144), .B(led_N_184), .Z(clk_1s_enable_1)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i28187_2_lut_2_lut.init = 16'hdddd;
    LUT4 mux_266_Mux_1_i22_3_lut_4_lut_3_lut (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[1]), 
         .C(cnt_adj_2043[2]), .Z(n22)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam mux_266_Mux_1_i22_3_lut_4_lut_3_lut.init = 16'h1616;
    LUT4 mux_266_Mux_6_i14_3_lut_3_lut (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[1]), 
         .C(cnt_adj_2043[2]), .Z(n14_adj_1872)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;
    defparam mux_266_Mux_6_i14_3_lut_3_lut.init = 16'h5858;
    LUT4 cnt_1__bdd_4_lut (.A(cnt_adj_2043[1]), .B(cnt_adj_2043[3]), .C(cnt_adj_2043[0]), 
         .D(cnt_adj_2043[2]), .Z(n37692)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam cnt_1__bdd_4_lut.init = 16'hfcea;
    ROM128X1A mux_830_Mux_14 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3824)) /* synthesis initstate=0x04989E3EACA892AD117F11080000597F */ ;
    defparam mux_830_Mux_14.initval = 128'h04989E3EACA892AD117F11080000597F;
    ROM128X1A mux_830_Mux_0 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n4208)) /* synthesis initstate=0x0000001017F86D6000A800200000C0A8 */ ;
    defparam mux_830_Mux_0.initval = 128'h0000001017F86D6000A800200000C0A8;
    ROM128X1A mux_830_Mux_22 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n3446)) /* synthesis initstate=0x0478923EBE7A96BD836F405000007B6F */ ;
    defparam mux_830_Mux_22.initval = 128'h0478923EBE7A96BD836F405000007B6F;
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/ending/top.v(4[8:17])
    CCU2D add_15_9 (.A0(hour_t[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33421), 
          .S0(n37));   // c:/users/argon/desktop/verilog/ending/top.v(105[19:32])
    defparam add_15_9.INIT0 = 16'h5aaa;
    defparam add_15_9.INIT1 = 16'h0000;
    defparam add_15_9.INJECT1_0 = "NO";
    defparam add_15_9.INJECT1_1 = "NO";
    ROM128X1A mux_830_Mux_6 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n4202)) /* synthesis initstate=0x07226192950679A20004004000004404 */ ;
    defparam mux_830_Mux_6.initval = 128'h07226192950679A20004004000004404;
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    ROM128X1A mux_830_Mux_5 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n4203)) /* synthesis initstate=0x02BAE19E01A8E18F0169002000001D69 */ ;
    defparam mux_830_Mux_5.initval = 128'h02BAE19E01A8E18F0169002000001D69;
    OB led_pad (.I(led_c), .O(led));   // c:/users/argon/desktop/verilog/ending/top.v(9[13:16])
    OB oled_mosi_pad (.I(oled_mosi_c), .O(oled_mosi));   // c:/users/argon/desktop/verilog/ending/top.v(18[9:18])
    OB oled_sck_pad (.I(oled_sck_c), .O(oled_sck));   // c:/users/argon/desktop/verilog/ending/top.v(17[9:17])
    OB oled_dc_pad (.I(oled_dc_c), .O(oled_dc));   // c:/users/argon/desktop/verilog/ending/top.v(16[9:16])
    OB oled_cs_pad (.I(oled_cs_c), .O(oled_cs));   // c:/users/argon/desktop/verilog/ending/top.v(15[9:16])
    OB oled_res_pad (.I(oled_res_c), .O(oled_res));   // c:/users/argon/desktop/verilog/ending/top.v(14[9:17])
    FD1P3AX hour_t_i0_i0 (.D(n504), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[0]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i0.GSR = "DISABLED";
    LUT4 mux_266_Mux_7_i14_3_lut (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[2]), 
         .C(cnt_adj_2043[1]), .Z(n14)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam mux_266_Mux_7_i14_3_lut.init = 16'he7e7;
    PFUMX mux_82_i8 (.BLUT(n443), .ALUT(n33798), .C0(n38709), .Z(n452));
    PFUMX mux_82_i6 (.BLUT(n445), .ALUT(n245), .C0(n38709), .Z(n454));
    LUT4 i1_2_lut_rep_771 (.A(key_mode[1]), .B(key_mode[2]), .Z(n38676)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i1_2_lut_rep_771.init = 16'heeee;
    PFUMX mux_3160_i4 (.BLUT(n11648), .ALUT(n11652), .C0(cnt_main_adj_2038[2]), 
          .Z(n9269));
    PFUMX mux_3160_i3 (.BLUT(n4_adj_1885), .ALUT(n4_adj_1886), .C0(cnt_main_adj_2038[2]), 
          .Z(n21133));
    LUT4 i2_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(sw1_c), 
         .D(key_mode[0]), .Z(n3_adj_1874)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i19112_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[7]), 
         .D(key_mode[0]), .Z(n443)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19112_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_4_lut_adj_305 (.A(key_mode[1]), .B(key_mode[2]), .C(n36082), 
         .D(key_mode[0]), .Z(sys_clk_c_enable_60)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i2_3_lut_4_lut_adj_305.init = 16'h1000;
    PFUMX mux_3161_i4 (.BLUT(n11657), .ALUT(n11661), .C0(sw1_c), .Z(n9120));
    FD1P3AX warning_173 (.D(led_N_184), .SP(clk_1s_enable_2), .CK(clk_1s), 
            .Q(warning));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_173.GSR = "DISABLED";
    PFUMX mux_3161_i3 (.BLUT(n4), .ALUT(n4_adj_1882), .C0(sw1_c), .Z(n21135));
    LUT4 i19115_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[4]), 
         .D(key_mode[0]), .Z(n446)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19115_2_lut_3_lut_4_lut.init = 16'h0010;
    PFUMX mux_82_i7 (.BLUT(n444), .ALUT(n244), .C0(n38709), .Z(n453));
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/ending/top.v(20[10:18])
    PFUMX mux_88_i2 (.BLUT(n467), .ALUT(n73), .C0(n38714), .Z(n512));
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/ending/top.v(19[18:22])
    LUT4 i19120_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[2]), 
         .D(key_mode[0]), .Z(n448)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19120_2_lut_3_lut_4_lut.init = 16'h0010;
    BB one_wire_pad (.I(one_wire_N_631), .T(n13515), .B(one_wire), .O(one_wire_out));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(63[2] 264[5])
    CCU2D add_15_5 (.A0(hour_t[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hour_t[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33419), .COUT(n33420), .S0(n41), .S1(n40));   // c:/users/argon/desktop/verilog/ending/top.v(105[19:32])
    defparam add_15_5.INIT0 = 16'h5aaa;
    defparam add_15_5.INIT1 = 16'h5aaa;
    defparam add_15_5.INJECT1_0 = "NO";
    defparam add_15_5.INJECT1_1 = "NO";
    ROM128X1A mux_830_Mux_1 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n4207)) /* synthesis initstate=0x0000005007E7E18D8385803000001B85 */ ;
    defparam mux_830_Mux_1.initval = 128'h0000005007E7E18D8385803000001B85;
    ROM128X1A mux_830_Mux_2 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n4206)) /* synthesis initstate=0x07E2009052E7E117A305040800002F05 */ ;
    defparam mux_830_Mux_2.initval = 128'h07E2009052E7E117A305040800002F05;
    ROM128X1A mux_830_Mux_3 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n4205)) /* synthesis initstate=0x02E7E1B600E2E1934221280000002621 */ ;
    defparam mux_830_Mux_3.initval = 128'h02E7E1B600E2E1934221280000002621;
    ROM128X1A mux_830_Mux_4 (.AD0(n2527), .AD1(n38561), .AD2(n38546), 
            .AD3(n2524), .AD4(n2523), .AD5(n38560), .AD6(n2521), .DO0(n4204)) /* synthesis initstate=0x02E3E1B610EAE1972379045800002F79 */ ;
    defparam mux_830_Mux_4.initval = 128'h02E3E1B610EAE1972379045800002F79;
    FD1P3IX key_mode_2893__i1 (.D(n19), .SP(sys_clk_c_enable_117), .CD(n26998), 
            .CK(sys_clk_c), .Q(key_mode[1]));   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam key_mode_2893__i1.GSR = "ENABLED";
    FD1P3IX key_mode_2893__i2 (.D(n18), .SP(sys_clk_c_enable_117), .CD(n26998), 
            .CK(sys_clk_c), .Q(key_mode[2]));   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam key_mode_2893__i2.GSR = "ENABLED";
    FD1P3AX time_set_164 (.D(n38630), .SP(sys_clk_c_enable_117), .CK(sys_clk_c), 
            .Q(time_set));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam time_set_164.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_720_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n38625)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i1_2_lut_rep_720_3_lut.init = 16'hfefe;
    CCU2D add_133_9 (.A0(sec[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33454), 
          .S0(n752));   // c:/users/argon/desktop/verilog/ending/top.v(229[16:26])
    defparam add_133_9.INIT0 = 16'h5aaa;
    defparam add_133_9.INIT1 = 16'h0000;
    defparam add_133_9.INJECT1_0 = "NO";
    defparam add_133_9.INJECT1_1 = "NO";
    LUT4 i19114_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[5]), 
         .D(key_mode[0]), .Z(n445)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19114_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i24716_2_lut (.A(key_mode[1]), .B(key_mode[0]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i24716_2_lut.init = 16'h6666;
    PFUMX mux_88_i3 (.BLUT(n466), .ALUT(n72), .C0(n38714), .Z(n511));
    CCU2D add_133_7 (.A0(sec[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33453), 
          .COUT(n33454), .S0(n754), .S1(n753));   // c:/users/argon/desktop/verilog/ending/top.v(229[16:26])
    defparam add_133_7.INIT0 = 16'h5aaa;
    defparam add_133_7.INIT1 = 16'h5aaa;
    defparam add_133_7.INJECT1_0 = "NO";
    defparam add_133_7.INJECT1_1 = "NO";
    CCU2D add_133_5 (.A0(sec[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33452), 
          .COUT(n33453), .S0(n756), .S1(n755));   // c:/users/argon/desktop/verilog/ending/top.v(229[16:26])
    defparam add_133_5.INIT0 = 16'h5aaa;
    defparam add_133_5.INIT1 = 16'h5aaa;
    defparam add_133_5.INJECT1_0 = "NO";
    defparam add_133_5.INJECT1_1 = "NO";
    LUT4 i19113_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[6]), 
         .D(key_mode[0]), .Z(n444)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19113_2_lut_3_lut_4_lut.init = 16'h0010;
    CCU2D add_133_3 (.A0(sec[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33451), 
          .COUT(n33452), .S0(n758), .S1(n757));   // c:/users/argon/desktop/verilog/ending/top.v(229[16:26])
    defparam add_133_3.INIT0 = 16'h5aaa;
    defparam add_133_3.INIT1 = 16'h5aaa;
    defparam add_133_3.INJECT1_0 = "NO";
    defparam add_133_3.INJECT1_1 = "NO";
    CCU2D add_18_9 (.A0(hour_warning[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33425), .S0(n57));   // c:/users/argon/desktop/verilog/ending/top.v(109[25:44])
    defparam add_18_9.INIT0 = 16'h5aaa;
    defparam add_18_9.INIT1 = 16'h0000;
    defparam add_18_9.INJECT1_0 = "NO";
    defparam add_18_9.INJECT1_1 = "NO";
    CCU2D add_1796_9 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_t[6]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(min_t[7]), .D1(GND_net), .CIN(n33634), .S0(n5333), .S1(n5332));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1796_9.INIT0 = 16'h2d2d;
    defparam add_1796_9.INIT1 = 16'h2d2d;
    defparam add_1796_9.INJECT1_0 = "NO";
    defparam add_1796_9.INJECT1_1 = "NO";
    LUT4 i13550_4_lut (.A(hour[4]), .B(hour_t[4]), .C(n38625), .D(n38557), 
         .Z(n22272)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam i13550_4_lut.init = 16'hc0ca;
    LUT4 i13548_4_lut (.A(hour[3]), .B(hour_t[3]), .C(n38625), .D(n38557), 
         .Z(n22270)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam i13548_4_lut.init = 16'hc0ca;
    CCU2D add_133_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sec[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33451), 
          .S1(n759));   // c:/users/argon/desktop/verilog/ending/top.v(229[16:26])
    defparam add_133_1.INIT0 = 16'hF000;
    defparam add_133_1.INIT1 = 16'h5555;
    defparam add_133_1.INJECT1_0 = "NO";
    defparam add_133_1.INJECT1_1 = "NO";
    LUT4 i13545_4_lut (.A(hour[2]), .B(hour_t[2]), .C(n38625), .D(n38557), 
         .Z(n22266)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam i13545_4_lut.init = 16'hc0ca;
    LUT4 i3_4_lut (.A(min_t[4]), .B(min_t[0]), .C(min_t[3]), .D(min_t[2]), 
         .Z(n33949)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour_t[7]), 
         .D(key_mode[0]), .Z(n35440)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e0;
    IB key3_pad (.I(key3), .O(key3_c));   // c:/users/argon/desktop/verilog/ending/top.v(7[8:12])
    IB key2_pad (.I(key2), .O(key2_c));   // c:/users/argon/desktop/verilog/ending/top.v(6[8:12])
    IB key1_pad (.I(key1), .O(key1_c));   // c:/users/argon/desktop/verilog/ending/top.v(5[8:12])
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/ending/top.v(12[18:26])
    IB sw2_pad (.I(sw2), .O(sw2_c));   // c:/users/argon/desktop/verilog/ending/top.v(11[8:11])
    IB sw1_pad (.I(sw1), .O(sw1_c));   // c:/users/argon/desktop/verilog/ending/top.v(10[8:11])
    FD1P3AX Temp_H_i6 (.D(hundres_1__N_305_adj_2004[1]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[6]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam Temp_H_i6.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n7), .B(min_t[3]), .C(min_t[4]), .D(min_t[5]), 
         .Z(n33824)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam i4_4_lut.init = 16'h8000;
    FD1P3AX Temp_H_i5 (.D(hundres_1__N_305_adj_2004[0]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[5]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam Temp_H_i5.GSR = "ENABLED";
    FD1P3AX Temp_H_i4 (.D(ds18b20_data[8]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[4]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam Temp_H_i4.GSR = "ENABLED";
    FD1P3AX Temp_H_i3 (.D(ds18b20_data[7]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[3]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam Temp_H_i3.GSR = "ENABLED";
    FD1P3AX Temp_H_i2 (.D(ds18b20_data[6]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[2]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam Temp_H_i2.GSR = "ENABLED";
    LUT4 i13543_4_lut (.A(hour[1]), .B(hour_t[1]), .C(n38625), .D(n38557), 
         .Z(n22264)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam i13543_4_lut.init = 16'hc0ca;
    FD1P3AX Temp_H_i1 (.D(ds18b20_data[5]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[1]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam Temp_H_i1.GSR = "ENABLED";
    FD1S3AX hour_i7 (.D(n35440), .CK(clk_1s), .Q(hour[7]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i7.GSR = "ENABLED";
    FD1S3AX hour_i6 (.D(n22276), .CK(clk_1s), .Q(hour[6]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i6.GSR = "ENABLED";
    FD1S3AX hour_i5 (.D(n22274), .CK(clk_1s), .Q(hour[5]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i5.GSR = "ENABLED";
    FD1S3AX hour_i4 (.D(n22272), .CK(clk_1s), .Q(hour[4]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i4.GSR = "ENABLED";
    FD1S3AX hour_i3 (.D(n22270), .CK(clk_1s), .Q(hour[3]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i3.GSR = "ENABLED";
    FD1S3AX hour_i2 (.D(n22266), .CK(clk_1s), .Q(hour[2]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i2.GSR = "ENABLED";
    FD1S3AX hour_i1 (.D(n22264), .CK(clk_1s), .Q(hour[1]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam hour_i1.GSR = "ENABLED";
    LUT4 i18490_4_lut (.A(n778), .B(min_t[7]), .C(n38625), .D(n742), 
         .Z(min_7__N_11[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18490_4_lut.init = 16'hc5c0;
    FD1S3AX min_i7 (.D(min_7__N_11[7]), .CK(clk_1s), .Q(min[7]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i7.GSR = "ENABLED";
    FD1S3AX min_i6 (.D(min_7__N_11[6]), .CK(clk_1s), .Q(min[6]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i6.GSR = "ENABLED";
    FD1S3AX min_i5 (.D(min_7__N_11[5]), .CK(clk_1s), .Q(min[5]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i5.GSR = "ENABLED";
    FD1S3AX min_i4 (.D(min_7__N_11[4]), .CK(clk_1s), .Q(min[4]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i4.GSR = "ENABLED";
    LUT4 i19116_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[3]), 
         .D(key_mode[0]), .Z(n447)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19116_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1S3AX min_i3 (.D(min_7__N_11[3]), .CK(clk_1s), .Q(min[3]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i3.GSR = "ENABLED";
    FD1S3AX min_i2 (.D(min_7__N_11[2]), .CK(clk_1s), .Q(min[2]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i2.GSR = "ENABLED";
    FD1S3AX min_i1 (.D(min_7__N_11[1]), .CK(clk_1s), .Q(min[1]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam min_i1.GSR = "ENABLED";
    FD1S3AX sec_i7 (.D(sec_7__N_1[7]), .CK(clk_1s), .Q(sec[7]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i7.GSR = "ENABLED";
    FD1P3IX min_warning__i7 (.D(n5349), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[7]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i7.GSR = "DISABLED";
    LUT4 i18487_4_lut (.A(n778), .B(min_t[6]), .C(n38625), .D(n743), 
         .Z(min_7__N_11[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18487_4_lut.init = 16'hc5c0;
    LUT4 i18493_4_lut (.A(n778), .B(min_t[5]), .C(n38625), .D(n744), 
         .Z(min_7__N_11[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18493_4_lut.init = 16'hc5c0;
    LUT4 min_7__I_0_i5_4_lut (.A(n745), .B(min_t[4]), .C(n38625), .D(n778), 
         .Z(min_7__N_11[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(222[7] 239[10])
    defparam min_7__I_0_i5_4_lut.init = 16'hc0ca;
    FD1S3AX sec_i6 (.D(sec_7__N_1[6]), .CK(clk_1s), .Q(sec[6]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i6.GSR = "ENABLED";
    FD1S3AX sec_i5 (.D(sec_7__N_1[5]), .CK(clk_1s), .Q(sec[5]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i5.GSR = "ENABLED";
    FD1S3AX sec_i4 (.D(sec_7__N_1[4]), .CK(clk_1s), .Q(sec[4]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i4.GSR = "ENABLED";
    FD1S3AX sec_i3 (.D(sec_7__N_1[3]), .CK(clk_1s), .Q(sec[3]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i3.GSR = "ENABLED";
    FD1S3AX sec_i2 (.D(sec_7__N_1[2]), .CK(clk_1s), .Q(sec[2]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i2.GSR = "ENABLED";
    FD1S3AX sec_i1 (.D(sec_7__N_1[1]), .CK(clk_1s), .Q(sec[1]));   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam sec_i1.GSR = "ENABLED";
    FD1P3AX uart_send_data_i0_i6 (.D(Temp_H[6]), .SP(sys_clk_c_enable_166), 
            .CK(sys_clk_c), .Q(uart_send_data[6]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_send_data_i0_i6.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i5 (.D(Temp_H[5]), .SP(sys_clk_c_enable_166), 
            .CK(sys_clk_c), .Q(uart_send_data[5]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_send_data_i0_i5.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i4 (.D(Temp_H[4]), .SP(sys_clk_c_enable_166), 
            .CK(sys_clk_c), .Q(uart_send_data[4]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_send_data_i0_i4.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i3 (.D(Temp_H[3]), .SP(sys_clk_c_enable_166), 
            .CK(sys_clk_c), .Q(uart_send_data[3]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_send_data_i0_i3.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i2 (.D(Temp_H[2]), .SP(sys_clk_c_enable_166), 
            .CK(sys_clk_c), .Q(uart_send_data[2]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_send_data_i0_i2.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i1 (.D(Temp_H[1]), .SP(sys_clk_c_enable_166), 
            .CK(sys_clk_c), .Q(uart_send_data[1]));   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam uart_send_data_i0_i1.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i7 (.D(n5157), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[7]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i7.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i6 (.D(n5158), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[6]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i6.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i5 (.D(n5159), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[5]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i5.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i4 (.D(n5160), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[4]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i4.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i3 (.D(n5161), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[3]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i3.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i2 (.D(n5162), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[2]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i2.GSR = "DISABLED";
    FD1P3AX sec_t_i0_i1 (.D(n5163), .SP(sys_clk_c_enable_180), .CK(sys_clk_c), 
            .Q(sec_t[1]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam sec_t_i0_i1.GSR = "DISABLED";
    FD1P3AX min_t_i0_i7 (.D(n5127), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[7]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i7.GSR = "DISABLED";
    FD1P3AX min_t_i0_i6 (.D(n5128), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[6]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i6.GSR = "DISABLED";
    FD1P3AX min_t_i0_i5 (.D(n5129), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[5]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i5.GSR = "DISABLED";
    LUT4 i18499_4_lut (.A(n778), .B(min_t[3]), .C(n38625), .D(n746), 
         .Z(min_7__N_11[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18499_4_lut.init = 16'hc5c0;
    FD1P3IX warning_time__i7 (.D(n695), .SP(led_N_184), .CD(n11735), .CK(clk_1s), 
            .Q(warning_time[7]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i7.GSR = "ENABLED";
    FD1P3IX warning_time__i6 (.D(n696), .SP(led_N_184), .CD(n11735), .CK(clk_1s), 
            .Q(warning_time[6]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i6.GSR = "ENABLED";
    FD1P3IX warning_time__i5 (.D(n697), .SP(led_N_184), .CD(n11735), .CK(clk_1s), 
            .Q(warning_time[5]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i5.GSR = "ENABLED";
    FD1P3IX warning_time__i4 (.D(n698), .SP(led_N_184), .CD(n11735), .CK(clk_1s), 
            .Q(warning_time[4]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i4.GSR = "ENABLED";
    FD1P3IX warning_time__i3 (.D(n699), .SP(led_N_184), .CD(n11735), .CK(clk_1s), 
            .Q(warning_time[3]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i3.GSR = "ENABLED";
    FD1P3IX warning_time__i2 (.D(n700), .SP(led_N_184), .CD(n11735), .CK(clk_1s), 
            .Q(warning_time[2]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i2.GSR = "ENABLED";
    FD1P3IX warning_time__i1 (.D(n701), .SP(led_N_184), .CD(n11735), .CK(clk_1s), 
            .Q(warning_time[1]));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam warning_time__i1.GSR = "ENABLED";
    LUT4 min_7__I_0_i3_4_lut (.A(n747), .B(min_t[2]), .C(n38625), .D(n778), 
         .Z(min_7__N_11[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(222[7] 239[10])
    defparam min_7__I_0_i3_4_lut.init = 16'hc0ca;
    LUT4 i18496_4_lut (.A(n778), .B(min_t[1]), .C(n38625), .D(n748), 
         .Z(min_7__N_11[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18496_4_lut.init = 16'hc5c0;
    LUT4 i18582_4_lut (.A(n33904), .B(sec_t[7]), .C(n38625), .D(n752), 
         .Z(sec_7__N_1[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18582_4_lut.init = 16'hc5c0;
    LUT4 i28143_3_lut_3_lut_4_lut (.A(n38580), .B(n38629), .C(n38631), 
         .D(n3_adj_1874), .Z(sys_clk_c_enable_262)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i28143_3_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_306 (.A(n38580), .B(n38629), .C(n38625), 
         .D(n38631), .Z(n124)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i1_2_lut_3_lut_4_lut_adj_306.init = 16'hfffe;
    CCU2D add_1796_7 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_t[4]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(min_t[5]), .D1(GND_net), .CIN(n33633), .COUT(n33634), 
          .S0(n5335), .S1(n5334));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1796_7.INIT0 = 16'h2d2d;
    defparam add_1796_7.INIT1 = 16'h2d2d;
    defparam add_1796_7.INJECT1_0 = "NO";
    defparam add_1796_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut_then_3_lut (.A(sys_rst_n_c), .B(key_mode[0]), .C(sw1_c), 
         .Z(n38781)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i2_4_lut_then_3_lut.init = 16'h0808;
    LUT4 i2_4_lut_else_3_lut (.A(sys_rst_n_c), .B(key_mode[0]), .C(n38709), 
         .D(sw1_c), .Z(n38780)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i2_4_lut_else_3_lut.init = 16'h0080;
    CCU2D add_1796_5 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_t[2]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(min_t[3]), .D1(GND_net), .CIN(n33632), .COUT(n33633), 
          .S0(n5337), .S1(n5336));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1796_5.INIT0 = 16'h2d2d;
    defparam add_1796_5.INIT1 = 16'h2d2d;
    defparam add_1796_5.INJECT1_0 = "NO";
    defparam add_1796_5.INJECT1_1 = "NO";
    CCU2D add_1796_3 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_t[0]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(min_t[1]), .D1(GND_net), .CIN(n33631), .COUT(n33632), 
          .S0(n5339), .S1(n5338));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1796_3.INIT0 = 16'hd2d2;
    defparam add_1796_3.INIT1 = 16'h2d2d;
    defparam add_1796_3.INJECT1_0 = "NO";
    defparam add_1796_3.INJECT1_1 = "NO";
    CCU2D add_132_9 (.A0(min[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33450), 
          .S0(n742));   // c:/users/argon/desktop/verilog/ending/top.v(226[17:27])
    defparam add_132_9.INIT0 = 16'h5aaa;
    defparam add_132_9.INIT1 = 16'h0000;
    defparam add_132_9.INJECT1_0 = "NO";
    defparam add_132_9.INJECT1_1 = "NO";
    LUT4 sec_7__I_0_i7_4_lut (.A(n753), .B(sec_t[6]), .C(n38625), .D(n33904), 
         .Z(sec_7__N_1[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(222[7] 239[10])
    defparam sec_7__I_0_i7_4_lut.init = 16'hc0ca;
    CCU2D add_1796_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), .C1(GND_net), 
          .D1(GND_net), .COUT(n33631));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1796_1.INIT0 = 16'hF000;
    defparam add_1796_1.INIT1 = 16'h2222;
    defparam add_1796_1.INJECT1_0 = "NO";
    defparam add_1796_1.INJECT1_1 = "NO";
    CCU2D add_132_7 (.A0(min[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33449), 
          .COUT(n33450), .S0(n744), .S1(n743));   // c:/users/argon/desktop/verilog/ending/top.v(226[17:27])
    defparam add_132_7.INIT0 = 16'h5aaa;
    defparam add_132_7.INIT1 = 16'h5aaa;
    defparam add_132_7.INJECT1_0 = "NO";
    defparam add_132_7.INJECT1_1 = "NO";
    LUT4 i18583_4_lut (.A(n754), .B(sec_t[5]), .C(n38625), .D(n33904), 
         .Z(sec_7__N_1[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18583_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i5_4_lut (.A(n755), .B(sec_t[4]), .C(n38625), .D(n33904), 
         .Z(sec_7__N_1[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(222[7] 239[10])
    defparam sec_7__I_0_i5_4_lut.init = 16'hc0ca;
    LUT4 sec_7__I_0_i4_4_lut (.A(n756), .B(sec_t[3]), .C(n38625), .D(n33904), 
         .Z(sec_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(222[7] 239[10])
    defparam sec_7__I_0_i4_4_lut.init = 16'hc0ca;
    CCU2D add_1814_9 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(sec_t[6]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(sec_t[7]), .D1(GND_net), .CIN(n33626), .S0(n5367), .S1(n5366));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1814_9.INIT0 = 16'h2d2d;
    defparam add_1814_9.INIT1 = 16'h2d2d;
    defparam add_1814_9.INJECT1_0 = "NO";
    defparam add_1814_9.INJECT1_1 = "NO";
    CCU2D add_1814_7 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(sec_t[4]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(sec_t[5]), .D1(GND_net), .CIN(n33625), .COUT(n33626), 
          .S0(n5369), .S1(n5368));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1814_7.INIT0 = 16'h2d2d;
    defparam add_1814_7.INIT1 = 16'h2d2d;
    defparam add_1814_7.INJECT1_0 = "NO";
    defparam add_1814_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(min_t[1]), .B(sys_clk_c_enable_117), .C(min_t[2]), 
         .D(min_t[0]), .Z(n7)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam i2_4_lut.init = 16'h3230;
    CCU2D add_132_5 (.A0(min[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33448), 
          .COUT(n33449), .S0(n746), .S1(n745));   // c:/users/argon/desktop/verilog/ending/top.v(226[17:27])
    defparam add_132_5.INIT0 = 16'h5aaa;
    defparam add_132_5.INIT1 = 16'h5aaa;
    defparam add_132_5.INJECT1_0 = "NO";
    defparam add_132_5.INJECT1_1 = "NO";
    CCU2D add_132_3 (.A0(min[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33447), 
          .COUT(n33448), .S0(n748), .S1(n747));   // c:/users/argon/desktop/verilog/ending/top.v(226[17:27])
    defparam add_132_3.INIT0 = 16'h5aaa;
    defparam add_132_3.INIT1 = 16'h5aaa;
    defparam add_132_3.INJECT1_0 = "NO";
    defparam add_132_3.INJECT1_1 = "NO";
    LUT4 i18585_4_lut (.A(n757), .B(sec_t[2]), .C(n38625), .D(n33904), 
         .Z(sec_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18585_4_lut.init = 16'hc0ca;
    CCU2D add_1814_5 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(sec_t[2]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(sec_t[3]), .D1(GND_net), .CIN(n33624), .COUT(n33625), 
          .S0(n5371), .S1(n5370));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1814_5.INIT0 = 16'h2d2d;
    defparam add_1814_5.INIT1 = 16'h2d2d;
    defparam add_1814_5.INJECT1_0 = "NO";
    defparam add_1814_5.INJECT1_1 = "NO";
    CCU2D add_1814_3 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(sec_t[0]), .D0(GND_net), .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), 
          .C1(sec_t[1]), .D1(GND_net), .CIN(n33623), .COUT(n33624), 
          .S0(n5373), .S1(n5372));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1814_3.INIT0 = 16'hd2d2;
    defparam add_1814_3.INIT1 = 16'h2d2d;
    defparam add_1814_3.INJECT1_0 = "NO";
    defparam add_1814_3.INJECT1_1 = "NO";
    CCU2D add_1814_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), .C1(GND_net), 
          .D1(GND_net), .COUT(n33623));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1814_1.INIT0 = 16'hF000;
    defparam add_1814_1.INIT1 = 16'h2222;
    defparam add_1814_1.INJECT1_0 = "NO";
    defparam add_1814_1.INJECT1_1 = "NO";
    LUT4 sec_7__I_0_i2_4_lut (.A(n758), .B(sec_t[1]), .C(n38625), .D(n33904), 
         .Z(sec_7__N_1[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(222[7] 239[10])
    defparam sec_7__I_0_i2_4_lut.init = 16'hc0ca;
    CCU2D sub_47_add_2_9 (.A0(hour_t[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33619), .S0(n233));   // c:/users/argon/desktop/verilog/ending/top.v(138[19:32])
    defparam sub_47_add_2_9.INIT0 = 16'h5555;
    defparam sub_47_add_2_9.INIT1 = 16'h0000;
    defparam sub_47_add_2_9.INJECT1_0 = "NO";
    defparam sub_47_add_2_9.INJECT1_1 = "NO";
    LUT4 mux_1725_i8_4_lut (.A(n5366), .B(sec[7]), .C(n5155), .D(n124), 
         .Z(n5157)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i8_4_lut.init = 16'h0aca;
    CCU2D sub_47_add_2_7 (.A0(hour_t[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_t[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33618), .COUT(n33619), .S0(n235), .S1(n234));   // c:/users/argon/desktop/verilog/ending/top.v(138[19:32])
    defparam sub_47_add_2_7.INIT0 = 16'h5555;
    defparam sub_47_add_2_7.INIT1 = 16'h5555;
    defparam sub_47_add_2_7.INJECT1_0 = "NO";
    defparam sub_47_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n36257), .B(n38524), .C(n20911), .D(n4_adj_1875), 
         .Z(n5155)) /* synthesis lut_function=(A ((C (D))+!B)+!A !(B)) */ ;
    defparam i1_4_lut.init = 16'hb333;
    LUT4 i1_4_lut_adj_307 (.A(n11), .B(n2), .C(n20902), .D(n12_adj_1868), 
         .Z(n4_adj_1875)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_307.init = 16'hccdc;
    LUT4 i1_4_lut_adj_308 (.A(n33822), .B(n20875), .C(n49), .D(n38726), 
         .Z(n2)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_308.init = 16'hc888;
    LUT4 i5_4_lut (.A(sec_t[1]), .B(sec_t[4]), .C(sec_t[2]), .D(sec_t[5]), 
         .Z(n12_adj_1868)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    PFUMX mux_88_i4 (.BLUT(n465), .ALUT(n71), .C0(n38714), .Z(n510));
    LUT4 i4_4_lut_adj_309 (.A(sec_t[3]), .B(sec_t[4]), .C(sys_clk_c_enable_117), 
         .D(n6_adj_1870), .Z(n33822)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(61[16:21])
    defparam i4_4_lut_adj_309.init = 16'h0800;
    PFUMX mux_88_i5 (.BLUT(n464), .ALUT(n70), .C0(n38714), .Z(n509));
    LUT4 i1_4_lut_adj_310 (.A(sec_t[5]), .B(sec_t[2]), .C(sec_t[0]), .D(sec_t[1]), 
         .Z(n6_adj_1870)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(61[16:21])
    defparam i1_4_lut_adj_310.init = 16'ha888;
    LUT4 mux_1725_i7_4_lut (.A(n5367), .B(sec[6]), .C(n5155), .D(n124), 
         .Z(n5158)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i7_4_lut.init = 16'h0aca;
    LUT4 mux_1725_i6_4_lut (.A(n5368), .B(sec[5]), .C(n5155), .D(n124), 
         .Z(n5159)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i6_4_lut.init = 16'h0aca;
    PFUMX mux_88_i6 (.BLUT(n463), .ALUT(n69), .C0(n38714), .Z(n508));
    LUT4 mux_1725_i5_4_lut (.A(n5369), .B(sec[4]), .C(n5155), .D(n124), 
         .Z(n5160)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i5_4_lut.init = 16'h0aca;
    LUT4 mux_1725_i4_4_lut (.A(n5370), .B(sec[3]), .C(n5155), .D(n124), 
         .Z(n5161)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i4_4_lut.init = 16'h0aca;
    LUT4 mux_1725_i3_4_lut (.A(n5371), .B(sec[2]), .C(n5155), .D(n124), 
         .Z(n5162)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i3_4_lut.init = 16'h0aca;
    LUT4 mux_1725_i2_4_lut (.A(n5372), .B(sec[1]), .C(n5155), .D(n124), 
         .Z(n5163)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i2_4_lut.init = 16'h0aca;
    LUT4 mux_1717_i8_4_lut (.A(n5332), .B(min[7]), .C(n5125), .D(n124), 
         .Z(n5127)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i8_4_lut.init = 16'h0aca;
    CCU2D sub_47_add_2_5 (.A0(hour_t[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_t[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33617), .COUT(n33618), .S0(n237), .S1(n236));   // c:/users/argon/desktop/verilog/ending/top.v(138[19:32])
    defparam sub_47_add_2_5.INIT0 = 16'h5555;
    defparam sub_47_add_2_5.INIT1 = 16'h5555;
    defparam sub_47_add_2_5.INJECT1_0 = "NO";
    defparam sub_47_add_2_5.INJECT1_1 = "NO";
    LUT4 mux_1717_i7_4_lut (.A(n5333), .B(min[6]), .C(n5125), .D(n124), 
         .Z(n5128)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i7_4_lut.init = 16'h0aca;
    CCU2D sub_47_add_2_3 (.A0(hour_t[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_t[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33616), .COUT(n33617), .S0(n239), .S1(n238));   // c:/users/argon/desktop/verilog/ending/top.v(138[19:32])
    defparam sub_47_add_2_3.INIT0 = 16'h5555;
    defparam sub_47_add_2_3.INIT1 = 16'h5555;
    defparam sub_47_add_2_3.INJECT1_0 = "NO";
    defparam sub_47_add_2_3.INJECT1_1 = "NO";
    PFUMX mux_88_i7 (.BLUT(n462), .ALUT(n68), .C0(n38714), .Z(n507));
    LUT4 i3_4_lut_adj_311 (.A(n5_adj_1871), .B(n49), .C(key_sec_pre_adj_1852), 
         .D(key_sec_adj_1853), .Z(n20902)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i3_4_lut_adj_311.init = 16'h8808;
    CCU2D add_132_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[0]), .B1(sec[7]), .C1(n19982), .D1(sec[6]), .COUT(n33447), 
          .S1(n749));   // c:/users/argon/desktop/verilog/ending/top.v(226[17:27])
    defparam add_132_1.INIT0 = 16'hF000;
    defparam add_132_1.INIT1 = 16'h5556;
    defparam add_132_1.INJECT1_0 = "NO";
    defparam add_132_1.INJECT1_1 = "NO";
    LUT4 mux_1717_i6_4_lut (.A(n5334), .B(min[5]), .C(n5125), .D(n124), 
         .Z(n5129)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i6_4_lut.init = 16'h0aca;
    CCU2D sub_47_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hour_t[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33616), .S1(n240));   // c:/users/argon/desktop/verilog/ending/top.v(138[19:32])
    defparam sub_47_add_2_1.INIT0 = 16'hF000;
    defparam sub_47_add_2_1.INIT1 = 16'h5555;
    defparam sub_47_add_2_1.INJECT1_0 = "NO";
    defparam sub_47_add_2_1.INJECT1_1 = "NO";
    PFUMX mux_88_i8 (.BLUT(n461), .ALUT(n67), .C0(n38714), .Z(n506));
    PFUMX mux_88_i1 (.BLUT(n468), .ALUT(n74), .C0(n38714), .Z(n513));
    PFUMX i28702 (.BLUT(n38337), .ALUT(n38336), .C0(cnt_adj_2043[4]), 
          .Z(n38338));
    LUT4 i1_2_lut_rep_652 (.A(n778), .B(n797), .Z(n38557)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_652.init = 16'heeee;
    LUT4 i13570_3_lut_3_lut (.A(n778), .B(n797), .C(hour[0]), .Z(n22292)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i13570_3_lut_3_lut.init = 16'h3232;
    LUT4 i19121_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[1]), 
         .D(key_mode[0]), .Z(n449)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19121_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 n236_bdd_4_lut_29189 (.A(n236), .B(n38573), .C(n446), .D(n38709), 
         .Z(n38407)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n236_bdd_4_lut_29189.init = 16'h88f0;
    LUT4 n237_bdd_4_lut_29193 (.A(n237), .B(n38573), .C(n447), .D(n38709), 
         .Z(n38408)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n237_bdd_4_lut_29193.init = 16'h88f0;
    LUT4 i5_3_lut_rep_668 (.A(hour_t[1]), .B(n10_adj_1883), .C(hour_t[4]), 
         .Z(n38573)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_rep_668.init = 16'hfefe;
    LUT4 i19123_2_lut_4_lut (.A(hour_t[1]), .B(n10_adj_1883), .C(hour_t[4]), 
         .D(n235), .Z(n245)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i19123_2_lut_4_lut.init = 16'hfe00;
    LUT4 i19122_2_lut_4_lut (.A(hour_t[1]), .B(n10_adj_1883), .C(hour_t[4]), 
         .D(n234), .Z(n244)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i19122_2_lut_4_lut.init = 16'hfe00;
    LUT4 cnt_4__bdd_2_lut (.A(cnt_adj_2043[4]), .B(cnt_adj_2043[2]), .Z(n37976)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam cnt_4__bdd_2_lut.init = 16'h4444;
    CCU2D sub_50_add_2_9 (.A0(hour_warning[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33615), .S0(n252));   // c:/users/argon/desktop/verilog/ending/top.v(142[26:45])
    defparam sub_50_add_2_9.INIT0 = 16'h5555;
    defparam sub_50_add_2_9.INIT1 = 16'h0000;
    defparam sub_50_add_2_9.INJECT1_0 = "NO";
    defparam sub_50_add_2_9.INJECT1_1 = "NO";
    LUT4 cnt_4__bdd_4_lut_28848 (.A(cnt_adj_2043[4]), .B(cnt_adj_2043[2]), 
         .C(cnt_adj_2043[3]), .D(cnt_adj_2043[1]), .Z(n37977)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B+!(D)))) */ ;
    defparam cnt_4__bdd_4_lut_28848.init = 16'h4e7f;
    CCU2D sub_50_add_2_7 (.A0(hour_warning[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_warning[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33614), .COUT(n33615), .S0(n254), .S1(n253));   // c:/users/argon/desktop/verilog/ending/top.v(142[26:45])
    defparam sub_50_add_2_7.INIT0 = 16'h5555;
    defparam sub_50_add_2_7.INIT1 = 16'h5555;
    defparam sub_50_add_2_7.INJECT1_0 = "NO";
    defparam sub_50_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_50_add_2_5 (.A0(hour_warning[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_warning[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33613), .COUT(n33614), .S0(n256), .S1(n255));   // c:/users/argon/desktop/verilog/ending/top.v(142[26:45])
    defparam sub_50_add_2_5.INIT0 = 16'h5555;
    defparam sub_50_add_2_5.INIT1 = 16'h5555;
    defparam sub_50_add_2_5.INJECT1_0 = "NO";
    defparam sub_50_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_50_add_2_3 (.A0(hour_warning[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_warning[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33612), .COUT(n33613), .S0(n258), .S1(n257));   // c:/users/argon/desktop/verilog/ending/top.v(142[26:45])
    defparam sub_50_add_2_3.INIT0 = 16'h5555;
    defparam sub_50_add_2_3.INIT1 = 16'h5555;
    defparam sub_50_add_2_3.INJECT1_0 = "NO";
    defparam sub_50_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_50_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hour_warning[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33612), .S1(n259));   // c:/users/argon/desktop/verilog/ending/top.v(142[26:45])
    defparam sub_50_add_2_1.INIT0 = 16'hF000;
    defparam sub_50_add_2_1.INIT1 = 16'h5555;
    defparam sub_50_add_2_1.INJECT1_0 = "NO";
    defparam sub_50_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_312 (.A(sys_rst_n_c), .B(n38593), .C(state_back_2__N_482[2]), 
         .D(n10_adj_1873), .Z(n34008)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_adj_312.init = 16'h0200;
    LUT4 i2_3_lut_rep_636_4_lut (.A(sys_rst_n_c), .B(n38593), .C(state[1]), 
         .D(n36041), .Z(n38541)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_rep_636_4_lut.init = 16'hfffd;
    LUT4 i19682_2_lut (.A(n256), .B(n27735), .Z(n465)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19682_2_lut.init = 16'h8888;
    LUT4 i19293_2_lut (.A(n61), .B(n36061), .Z(n71)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19293_2_lut.init = 16'h2222;
    LUT4 i19681_2_lut (.A(n255), .B(n27735), .Z(n464)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19681_2_lut.init = 16'h8888;
    LUT4 n240_bdd_4_lut (.A(n240), .B(n38573), .C(n450), .D(n38709), 
         .Z(n38413)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n240_bdd_4_lut.init = 16'h88f0;
    LUT4 i19292_2_lut (.A(n60), .B(n36061), .Z(n70)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19292_2_lut.init = 16'h2222;
    LUT4 i19642_2_lut (.A(n254), .B(n27735), .Z(n463)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19642_2_lut.init = 16'h8888;
    LUT4 i19291_2_lut (.A(n59), .B(n36061), .Z(n69)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19291_2_lut.init = 16'h2222;
    LUT4 i19070_2_lut (.A(n253), .B(n27735), .Z(n462)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19070_2_lut.init = 16'h8888;
    LUT4 i19290_2_lut (.A(n58), .B(n36061), .Z(n68)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19290_2_lut.init = 16'h2222;
    LUT4 i19097_2_lut (.A(n252), .B(n27735), .Z(n461)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19097_2_lut.init = 16'h8888;
    LUT4 i19289_2_lut (.A(n57), .B(n36061), .Z(n67)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19289_2_lut.init = 16'h2222;
    LUT4 n238_bdd_4_lut (.A(n238), .B(n38573), .C(n448), .D(n38709), 
         .Z(n38409)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n238_bdd_4_lut.init = 16'h88f0;
    LUT4 i19479_2_lut (.A(n259), .B(n27735), .Z(n468)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19479_2_lut.init = 16'h8888;
    LUT4 i19021_2_lut (.A(n64), .B(n36061), .Z(n74)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19021_2_lut.init = 16'h2222;
    FD1P3AX hour_t_i0_i1 (.D(n503), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[1]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_640_4_lut (.A(n38714), .B(n38709), .C(n38625), .D(n38629), 
         .Z(n38545)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam i1_2_lut_rep_640_4_lut.init = 16'hff10;
    LUT4 i1_2_lut_4_lut (.A(n38714), .B(n38709), .C(n38625), .D(sys_rst_n_c), 
         .Z(n20911)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam i1_2_lut_4_lut.init = 16'hef00;
    LUT4 n239_bdd_4_lut (.A(n239), .B(n38573), .C(n449), .D(n38709), 
         .Z(n38410)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n239_bdd_4_lut.init = 16'h88f0;
    LUT4 i1_4_lut_adj_313 (.A(n38631), .B(n3), .C(n38629), .D(n20858), 
         .Z(sys_clk_c_enable_292)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i1_4_lut_adj_313.init = 16'h0008;
    LUT4 i2_4_lut_adj_314 (.A(n3), .B(n36082), .C(n23), .D(n38712), 
         .Z(n11733)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(135[7] 166[14])
    defparam i2_4_lut_adj_314.init = 16'h8000;
    LUT4 i1_4_lut_adj_315 (.A(n36183), .B(n20875), .C(min_warning[6]), 
         .D(n4_adj_1881), .Z(n23)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(135[7] 166[14])
    defparam i1_4_lut_adj_315.init = 16'heeea;
    LUT4 i6_4_lut (.A(n36573), .B(n12), .C(min_warning[4]), .D(min_warning[5]), 
         .Z(n36183)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(135[7] 166[14])
    defparam i6_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_316 (.A(n5_adj_1880), .B(min_warning[7]), .C(min_warning[5]), 
         .D(min_warning[3]), .Z(n4_adj_1881)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(135[7] 166[14])
    defparam i1_4_lut_adj_316.init = 16'heccc;
    FD1P3AX hour_t_i0_i2 (.D(n502), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[2]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i2.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i3 (.D(n501), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[3]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i3.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i4 (.D(n500), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[4]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i4.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i5 (.D(n499), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[5]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i5.GSR = "DISABLED";
    FD1P3AX hour_t_i0_i6 (.D(n498), .SP(sys_clk_c_enable_262), .CK(sys_clk_c), 
            .Q(hour_t[6]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam hour_t_i0_i6.GSR = "DISABLED";
    LUT4 i19025_2_lut_3_lut_4_lut (.A(key_mode[1]), .B(key_mode[2]), .C(hour[0]), 
         .D(key_mode[0]), .Z(n450)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i19025_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i27642_3_lut (.A(min_warning[6]), .B(min_warning[0]), .C(min_warning[7]), 
         .Z(n36573)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27642_3_lut.init = 16'hfefe;
    LUT4 i5_4_lut_adj_317 (.A(n20902), .B(min_warning[2]), .C(min_warning[3]), 
         .D(min_warning[1]), .Z(n12)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(135[7] 166[14])
    defparam i5_4_lut_adj_317.init = 16'h0002;
    LUT4 i1_4_lut_adj_318 (.A(min_warning[4]), .B(min_warning[2]), .C(min_warning[1]), 
         .D(min_warning[0]), .Z(n5_adj_1880)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(135[7] 166[14])
    defparam i1_4_lut_adj_318.init = 16'ha888;
    LUT4 mux_87_i2_4_lut (.A(n38410), .B(n43), .C(n38714), .D(n88), 
         .Z(n503)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i2_4_lut.init = 16'h0aca;
    LUT4 mux_87_i3_4_lut (.A(n38409), .B(n42), .C(n38714), .D(n88), 
         .Z(n502)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i3_4_lut.init = 16'h0aca;
    GSR GSR_INST (.GSR(sys_rst_n_c));
    LUT4 mux_87_i4_4_lut (.A(n38408), .B(n41), .C(n38714), .D(n88), 
         .Z(n501)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i4_4_lut.init = 16'h0aca;
    CCU2D add_118_9 (.A0(warning_time[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33446), .S0(n695));   // c:/users/argon/desktop/verilog/ending/top.v(190[23:42])
    defparam add_118_9.INIT0 = 16'h5aaa;
    defparam add_118_9.INIT1 = 16'h0000;
    defparam add_118_9.INJECT1_0 = "NO";
    defparam add_118_9.INJECT1_1 = "NO";
    CCU2D add_18_7 (.A0(hour_warning[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_warning[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33424), .COUT(n33425), .S0(n59), .S1(n58));   // c:/users/argon/desktop/verilog/ending/top.v(109[25:44])
    defparam add_18_7.INIT0 = 16'h5aaa;
    defparam add_18_7.INIT1 = 16'h5aaa;
    defparam add_18_7.INJECT1_0 = "NO";
    defparam add_18_7.INJECT1_1 = "NO";
    LUT4 mux_87_i5_4_lut (.A(n38407), .B(n40), .C(n38714), .D(n88), 
         .Z(n500)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i5_4_lut.init = 16'h0aca;
    CCU2D add_118_7 (.A0(warning_time[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33445), .COUT(n33446), .S0(n697), .S1(n696));   // c:/users/argon/desktop/verilog/ending/top.v(190[23:42])
    defparam add_118_7.INIT0 = 16'h5aaa;
    defparam add_118_7.INIT1 = 16'h5aaa;
    defparam add_118_7.INJECT1_0 = "NO";
    defparam add_118_7.INJECT1_1 = "NO";
    CCU2D add_118_5 (.A0(warning_time[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33444), .COUT(n33445), .S0(n699), .S1(n698));   // c:/users/argon/desktop/verilog/ending/top.v(190[23:42])
    defparam add_118_5.INIT0 = 16'h5aaa;
    defparam add_118_5.INIT1 = 16'h5aaa;
    defparam add_118_5.INJECT1_0 = "NO";
    defparam add_118_5.INJECT1_1 = "NO";
    LUT4 mux_87_i6_4_lut (.A(n454), .B(n88), .C(n38714), .D(n39), .Z(n499)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i6_4_lut.init = 16'h3a0a;
    LUT4 mux_87_i7_4_lut (.A(n453), .B(n88), .C(n38714), .D(n38), .Z(n498)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i7_4_lut.init = 16'h3a0a;
    CCU2D add_118_3 (.A0(warning_time[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(warning_time[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33443), .COUT(n33444), .S0(n701), .S1(n700));   // c:/users/argon/desktop/verilog/ending/top.v(190[23:42])
    defparam add_118_3.INIT0 = 16'h5aaa;
    defparam add_118_3.INIT1 = 16'h5aaa;
    defparam add_118_3.INJECT1_0 = "NO";
    defparam add_118_3.INJECT1_1 = "NO";
    LUT4 i30_4_lut (.A(n38545), .B(n5_adj_1877), .C(n38631), .D(n38782), 
         .Z(sys_clk_c_enable_180)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i30_4_lut.init = 16'hc505;
    LUT4 i3165_1_lut (.A(warning_time_7__N_144), .Z(n11735)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(186[8:28])
    defparam i3165_1_lut.init = 16'h5555;
    LUT4 i28192_4_lut (.A(warning_time[4]), .B(warning_time[6]), .C(warning_time[5]), 
         .D(n6_adj_1869), .Z(led_N_184)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i28192_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_319 (.A(warning_time[1]), .B(warning_time[7]), .C(warning_time[3]), 
         .D(warning_time[2]), .Z(n6_adj_1869)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_319.init = 16'hfcec;
    LUT4 mux_1725_i1_4_lut (.A(n5373), .B(sec[0]), .C(n5155), .D(n124), 
         .Z(n5164)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1725_i1_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut (.A(led_c), .B(led_N_184), .Z(led_N_181)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_adj_320 (.A(sw1_c), .B(key_mode[0]), .Z(n36257)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i1_2_lut_adj_320.init = 16'h4444;
    CCU2D add_1805_9 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_warning[6]), .D0(GND_net), .A1(key_sec_pre_adj_1852), 
          .B1(key_sec_adj_1853), .C1(min_warning[7]), .D1(GND_net), .CIN(n33487), 
          .S0(n5350), .S1(n5349));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1805_9.INIT0 = 16'h2d2d;
    defparam add_1805_9.INIT1 = 16'h2d2d;
    defparam add_1805_9.INJECT1_0 = "NO";
    defparam add_1805_9.INJECT1_1 = "NO";
    CCU2D add_1805_7 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_warning[4]), .D0(GND_net), .A1(key_sec_pre_adj_1852), 
          .B1(key_sec_adj_1853), .C1(min_warning[5]), .D1(GND_net), .CIN(n33486), 
          .COUT(n33487), .S0(n5352), .S1(n5351));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1805_7.INIT0 = 16'h2d2d;
    defparam add_1805_7.INIT1 = 16'h2d2d;
    defparam add_1805_7.INJECT1_0 = "NO";
    defparam add_1805_7.INJECT1_1 = "NO";
    CCU2D add_1805_5 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_warning[2]), .D0(GND_net), .A1(key_sec_pre_adj_1852), 
          .B1(key_sec_adj_1853), .C1(min_warning[3]), .D1(GND_net), .CIN(n33485), 
          .COUT(n33486), .S0(n5354), .S1(n5353));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1805_5.INIT0 = 16'h2d2d;
    defparam add_1805_5.INIT1 = 16'h2d2d;
    defparam add_1805_5.INJECT1_0 = "NO";
    defparam add_1805_5.INJECT1_1 = "NO";
    CCU2D add_118_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(warning_time[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33443), .S1(n702));   // c:/users/argon/desktop/verilog/ending/top.v(190[23:42])
    defparam add_118_1.INIT0 = 16'hF000;
    defparam add_118_1.INIT1 = 16'h5555;
    defparam add_118_1.INJECT1_0 = "NO";
    defparam add_118_1.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i3_4_lut_adj_321 (.A(sw1_c), .B(sys_rst_n_c), .C(n38631), .D(sys_clk_c_enable_117), 
         .Z(n36082)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam i3_4_lut_adj_321.init = 16'h0080;
    CCU2D add_1805_3 (.A0(key_sec_pre_adj_1852), .B0(key_sec_adj_1853), 
          .C0(min_warning[0]), .D0(GND_net), .A1(key_sec_pre_adj_1852), 
          .B1(key_sec_adj_1853), .C1(min_warning[1]), .D1(GND_net), .CIN(n33484), 
          .COUT(n33485), .S0(n5356), .S1(n5355));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1805_3.INIT0 = 16'hd2d2;
    defparam add_1805_3.INIT1 = 16'h2d2d;
    defparam add_1805_3.INJECT1_0 = "NO";
    defparam add_1805_3.INJECT1_1 = "NO";
    LUT4 i13554_4_lut (.A(hour[6]), .B(hour_t[6]), .C(n38625), .D(n38557), 
         .Z(n22276)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(214[5] 240[8])
    defparam i13554_4_lut.init = 16'hc0ca;
    LUT4 m1_lut (.Z(n39914)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D add_15_3 (.A0(hour_t[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hour_t[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33418), .COUT(n33419), .S0(n43), .S1(n42));   // c:/users/argon/desktop/verilog/ending/top.v(105[19:32])
    defparam add_15_3.INIT0 = 16'h5aaa;
    defparam add_15_3.INIT1 = 16'h5aaa;
    defparam add_15_3.INJECT1_0 = "NO";
    defparam add_15_3.INJECT1_1 = "NO";
    CCU2D add_18_3 (.A0(hour_warning[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hour_warning[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33422), .COUT(n33423), .S0(n63), .S1(n62));   // c:/users/argon/desktop/verilog/ending/top.v(109[25:44])
    defparam add_18_3.INIT0 = 16'h5aaa;
    defparam add_18_3.INIT1 = 16'h5aaa;
    defparam add_18_3.INJECT1_0 = "NO";
    defparam add_18_3.INJECT1_1 = "NO";
    LUT4 mux_1717_i5_4_lut (.A(n5335), .B(min[4]), .C(n5125), .D(n124), 
         .Z(n5130)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i5_4_lut.init = 16'h0aca;
    LUT4 i4_4_lut_adj_322 (.A(hour_t[0]), .B(hour_t[3]), .C(hour_t[2]), 
         .D(n38650), .Z(n10_adj_1883)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_322.init = 16'hfffe;
    LUT4 mux_87_i1_4_lut (.A(n38413), .B(n44), .C(n38714), .D(n88), 
         .Z(n504)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i1_4_lut.init = 16'h0aca;
    LUT4 i2_3_lut (.A(n38573), .B(n3_adj_1874), .C(n233), .Z(n33798)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut.init = 16'h2020;
    LUT4 i13571_3_lut_4_lut (.A(n38676), .B(key_mode[0]), .C(hour_t[0]), 
         .D(n22292), .Z(n22293)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i13571_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_3_lut_rep_675_4_lut (.A(n38676), .B(key_mode[0]), .C(n38709), 
         .D(n38714), .Z(n38580)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i2_3_lut_rep_675_4_lut.init = 16'h000e;
    LUT4 i1_2_lut_rep_619_3_lut_4_lut (.A(sys_rst_n_c), .B(sys_clk_c_enable_117), 
         .C(n38631), .D(n38580), .Z(n38524)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam i1_2_lut_rep_619_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_adj_323 (.A(n38545), .B(n38631), .C(sw1_c), .D(n3), 
         .Z(sys_clk_c_enable_309)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_323.init = 16'h1511;
    LUT4 i1_2_lut_2_lut_4_lut (.A(key_mode[2]), .B(n38712), .C(key_mode[1]), 
         .D(sys_clk_c_enable_117), .Z(n26998)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;
    defparam i1_2_lut_2_lut_4_lut.init = 16'hea00;
    LUT4 i1_3_lut_4_lut (.A(n38709), .B(n38714), .C(n38713), .D(n38712), 
         .Z(n20858)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(45[7:17])
    defparam i1_3_lut_4_lut.init = 16'h00e0;
    LUT4 i1034_2_lut (.A(clk_1s), .B(sys_rst_n_c), .Z(sys_clk_c_enable_166)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(346[8] 364[6])
    defparam i1034_2_lut.init = 16'h8888;
    LUT4 mux_1717_i3_4_lut (.A(n5337), .B(min[2]), .C(n5125), .D(n124), 
         .Z(n5132)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i3_4_lut.init = 16'h0aca;
    LUT4 mux_1717_i2_4_lut (.A(n5338), .B(min[1]), .C(n5125), .D(n124), 
         .Z(n5133)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i2_4_lut.init = 16'h0aca;
    LUT4 i17_2_lut_rep_737 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n38642)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(54[14:22])
    defparam i17_2_lut_rep_737.init = 16'h6666;
    LUT4 i18584_4_lut (.A(n759), .B(sec_t[0]), .C(n38625), .D(n33904), 
         .Z(sec_7__N_1[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18584_4_lut.init = 16'hc0ca;
    LUT4 i27504_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n36418)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(54[14:22])
    defparam i27504_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i2_3_lut_adj_324 (.A(sec[7]), .B(sec[6]), .C(n19982), .Z(n33904)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_324.init = 16'hfefe;
    LUT4 i3_4_lut_adj_325 (.A(n6_adj_1863), .B(sec[5]), .C(sec[4]), .D(sec[3]), 
         .Z(n19982)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_325.init = 16'h8000;
    LUT4 i3450_3_lut (.A(sec[0]), .B(sec[2]), .C(sec[1]), .Z(n6_adj_1863)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3450_3_lut.init = 16'hecec;
    LUT4 cnt_0__bdd_4_lut_28940 (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[3]), 
         .C(cnt_adj_2043[1]), .D(cnt_adj_2043[2]), .Z(n38336)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_28940.init = 16'h0311;
    LUT4 i18509_4_lut (.A(n778), .B(min_t[0]), .C(n38625), .D(n749), 
         .Z(min_7__N_11[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(24[14:17])
    defparam i18509_4_lut.init = 16'hc5c0;
    LUT4 cnt_0__bdd_3_lut (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[1]), .C(cnt_adj_2043[2]), 
         .Z(n38337)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_0__bdd_3_lut.init = 16'h4040;
    CCU2D add_1805_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(key_sec_pre_adj_1852), .B1(key_sec_adj_1853), .C1(GND_net), 
          .D1(GND_net), .COUT(n33484));   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam add_1805_1.INIT0 = 16'hF000;
    defparam add_1805_1.INIT1 = 16'h2222;
    defparam add_1805_1.INJECT1_0 = "NO";
    defparam add_1805_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_326 (.A(min[7]), .B(min[6]), .C(n5_adj_1879), .D(n6_adj_1878), 
         .Z(n778)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_326.init = 16'hfeee;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut_adj_327 (.A(min[0]), .B(min[4]), .C(min[2]), .D(min[1]), 
         .Z(n5_adj_1879)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_327.init = 16'hc8c0;
    LUT4 i2_3_lut_rep_745 (.A(hour_t[7]), .B(hour_t[5]), .C(hour_t[6]), 
         .Z(n38650)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_745.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_328 (.A(hour_t[7]), .B(hour_t[5]), .C(hour_t[6]), 
         .D(n10_adj_1864), .Z(n88)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_328.init = 16'hfffe;
    LUT4 i2_2_lut (.A(min[5]), .B(min[3]), .Z(n6_adj_1878)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 mux_1717_i4_4_lut (.A(n5336), .B(min[3]), .C(n5125), .D(n124), 
         .Z(n5131)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i4_4_lut.init = 16'h0aca;
    LUT4 i19689_2_lut (.A(n258), .B(n27735), .Z(n467)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19689_2_lut.init = 16'h8888;
    LUT4 i19300_2_lut (.A(n63), .B(n36061), .Z(n73)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19300_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_329 (.A(n33762), .B(n36059), .C(hour_warning[4]), 
         .D(hour_warning[3]), .Z(n36061)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_329.init = 16'hfcec;
    LUT4 i2_3_lut_adj_330 (.A(hour_warning[2]), .B(hour_warning[1]), .C(hour_warning[0]), 
         .Z(n33762)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_330.init = 16'h8080;
    LUT4 i19858_4_lut (.A(hour_warning[4]), .B(n38709), .C(n10), .D(n36059), 
         .Z(n27735)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i19858_4_lut.init = 16'hccc8;
    LUT4 i4_4_lut_adj_331 (.A(hour_warning[0]), .B(hour_warning[3]), .C(hour_warning[2]), 
         .D(hour_warning[1]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_331.init = 16'hfffe;
    LUT4 mux_3160_i1_4_lut (.A(n38448), .B(n9927), .C(cnt_main_adj_2038[2]), 
         .D(n12162), .Z(n9272)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_3160_i1_4_lut.init = 16'hc5ca;
    LUT4 mux_266_Mux_3_i30_4_lut_3_lut_4_lut (.A(cnt_adj_2043[1]), .B(cnt_adj_2043[2]), 
         .C(cnt_adj_2043[3]), .D(cnt_adj_2043[0]), .Z(n28424)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam mux_266_Mux_3_i30_4_lut_3_lut_4_lut.init = 16'hfee0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_332 (.A(cnt_adj_2043[1]), .B(cnt_adj_2043[2]), 
         .C(cnt_adj_2043[3]), .D(cnt_adj_2043[0]), .Z(n4_adj_1876)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam i1_2_lut_3_lut_4_lut_adj_332.init = 16'hf0e0;
    LUT4 i1_2_lut_rep_760 (.A(cnt_adj_2043[1]), .B(cnt_adj_2043[2]), .Z(n38665)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam i1_2_lut_rep_760.init = 16'heeee;
    LUT4 i24723_3_lut (.A(key_mode[2]), .B(key_mode[1]), .C(key_mode[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i24723_3_lut.init = 16'h6a6a;
    BCD_U5 bcd_hour_warning (.hundres_0__N_321(hundres_0__N_321_adj_1858), 
           .n9917(n9917), .\hundres_0__N_316[3] (hundres_0__N_316_adj_1962[3]), 
           .n4(n4_adj_1882), .\hour_warning[3] (hour_warning[3]), .n11661(n11661), 
           .\hour_warning[2] (hour_warning[2]), .\hour_warning[5] (hour_warning[5]), 
           .\hour_warning[6] (hour_warning[6]), .\hour_warning[7] (hour_warning[7]), 
           .\hour_warning[1] (hour_warning[1]), .\hour_warning_ones[1] (hour_warning_ones[1]), 
           .\hour_warning_tens[0] (hour_warning_tens[0]), .\hour_warning_ones[3] (hour_warning_ones[3]), 
           .\hour_warning_ones[2] (hour_warning_ones[2]), .n36059(n36059), 
           .\hour_warning[4] (hour_warning[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(301[7] 307[3])
    FD1P3AY led_172 (.D(led_N_181), .SP(warning_time_7__N_144), .CK(clk_1s), 
            .Q(led_c));   // c:/users/argon/desktop/verilog/ending/top.v(185[13] 199[7])
    defparam led_172.GSR = "ENABLED";
    FD1P3IX min_warning__i0 (.D(n5356), .SP(sys_clk_c_enable_292), .CD(n11733), 
            .CK(sys_clk_c), .Q(min_warning[0]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_warning__i0.GSR = "DISABLED";
    PFUMX i28487 (.BLUT(n37977), .ALUT(n37976), .C0(cnt_adj_2043[0]), 
          .Z(n37978));
    LUT4 mux_266_Mux_2_i22_3_lut (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[1]), 
         .C(cnt_adj_2043[2]), .Z(n22_adj_1867)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam mux_266_Mux_2_i22_3_lut.init = 16'hc2c2;
    LUT4 i2_4_lut_adj_333 (.A(hour[7]), .B(n8), .C(n38667), .D(hour[4]), 
         .Z(n797)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_333.init = 16'hfefa;
    LUT4 mux_1717_i1_4_lut (.A(n5339), .B(min[0]), .C(n5125), .D(n124), 
         .Z(n5134)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam mux_1717_i1_4_lut.init = 16'h0aca;
    LUT4 i5786_3_lut (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[2]), .C(cnt_adj_2043[1]), 
         .Z(n14378)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam i5786_3_lut.init = 16'hc5c5;
    CCU2D equal_2886_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(min[7]), .B1(min_warning[7]), .C1(min[6]), .D1(min_warning[6]), 
          .COUT(n33320));   // c:/users/argon/desktop/verilog/ending/top.v(186[8:28])
    defparam equal_2886_0.INIT0 = 16'hF000;
    defparam equal_2886_0.INIT1 = 16'h9009;
    defparam equal_2886_0.INJECT1_0 = "NO";
    defparam equal_2886_0.INJECT1_1 = "YES";
    LUT4 mux_266_Mux_5_i15_4_lut (.A(n38665), .B(cnt_adj_2043[0]), .C(cnt_adj_2043[4]), 
         .D(cnt_adj_2043[3]), .Z(n15)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(127[20] 130[14])
    defparam mux_266_Mux_5_i15_4_lut.init = 16'h1505;
    CCU2D equal_2886_16 (.A0(hour[1]), .B0(hour_warning[1]), .C0(hour[0]), 
          .D0(hour_warning[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33323), .S1(warning_time_7__N_144));
    defparam equal_2886_16.INIT0 = 16'h9009;
    defparam equal_2886_16.INIT1 = 16'hFFFF;
    defparam equal_2886_16.INJECT1_0 = "YES";
    defparam equal_2886_16.INJECT1_1 = "NO";
    CCU2D add_18_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hour_warning[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33422), .S1(n64));   // c:/users/argon/desktop/verilog/ending/top.v(109[25:44])
    defparam add_18_1.INIT0 = 16'hF000;
    defparam add_18_1.INIT1 = 16'h5555;
    defparam add_18_1.INJECT1_0 = "NO";
    defparam add_18_1.INJECT1_1 = "NO";
    LUT4 i3443_4_lut (.A(hour[2]), .B(hour[3]), .C(hour[1]), .D(hour[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i3443_4_lut.init = 16'heccc;
    LUT4 n37648_bdd_2_lut (.A(n37648), .B(cnt_adj_2043[0]), .Z(n37649)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37648_bdd_2_lut.init = 16'h2222;
    LUT4 cnt_1__bdd_4_lut_28307 (.A(cnt_adj_2043[1]), .B(cnt_adj_2043[4]), 
         .C(cnt_adj_2043[2]), .D(cnt_adj_2043[3]), .Z(n37648)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (C))) */ ;
    defparam cnt_1__bdd_4_lut_28307.init = 16'h2725;
    LUT4 i1_4_lut_adj_334 (.A(n7_adj_1865), .B(n38524), .C(n38712), .D(n20911), 
         .Z(n5125)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;
    defparam i1_4_lut_adj_334.init = 16'h3b33;
    KEY_U0 key_2 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre_adj_1852), 
           .key_sec(key_sec_adj_1853), .key2_c(key2_c), .GND_net(GND_net), 
           .n38714(n38714), .key_sec_adj_13(key_sec_adj_1855), .key_sec_pre_adj_14(key_sec_pre_adj_1854), 
           .n38631(n38631), .\key_mode[2] (key_mode[2]), .\key_mode[1] (key_mode[1]), 
           .n20875(n20875)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(46[6] 51[3])
    LUT4 n37662_bdd_2_lut (.A(n37662), .B(cnt_adj_2043[0]), .Z(n37663)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37662_bdd_2_lut.init = 16'h2222;
    LUT4 i2_1_lut_rep_805 (.A(key_mode[0]), .Z(n38710)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(101[10] 174[9])
    defparam i2_1_lut_rep_805.init = 16'h5555;
    LUT4 i27651_2_lut_rep_807 (.A(sw1_c), .B(key_mode[0]), .Z(n38712)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27651_2_lut_rep_807.init = 16'heeee;
    LUT4 i28184_3_lut_rep_725_4_lut (.A(sw1_c), .B(key_mode[0]), .C(key_mode[1]), 
         .D(key_mode[2]), .Z(n38630)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i28184_3_lut_rep_725_4_lut.init = 16'h001f;
    LUT4 i1_2_lut_rep_808 (.A(key_mode[1]), .B(key_mode[2]), .Z(n38713)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i1_2_lut_rep_808.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_335 (.A(key_mode[1]), .B(key_mode[2]), 
         .C(key_sec_pre), .D(key_sec), .Z(n5_adj_1877)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i1_2_lut_3_lut_4_lut_adj_335.init = 16'h2202;
    LUT4 cnt_0__bdd_4_lut_28328 (.A(cnt_adj_2043[4]), .B(cnt_adj_2043[3]), 
         .C(cnt_adj_2043[1]), .D(cnt_adj_2043[2]), .Z(n37662)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam cnt_0__bdd_4_lut_28328.init = 16'h144f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_336 (.A(key_mode[1]), .B(key_mode[2]), 
         .C(key_sec_adj_1855), .D(key_sec_pre_adj_1854), .Z(n5_adj_1871)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i1_2_lut_3_lut_4_lut_adj_336.init = 16'h0200;
    LUT4 i2_2_lut_2_lut_3_lut (.A(key_mode[1]), .B(key_mode[2]), .C(key_mode[0]), 
         .Z(n3)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(93[22:37])
    defparam i2_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_337 (.A(n20902), .B(n5), .C(n33946), .D(n33949), 
         .Z(n7_adj_1865)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_337.init = 16'hccce;
    LUT4 i1_4_lut_adj_338 (.A(n20875), .B(n33824), .C(n49), .D(n38725), 
         .Z(n5)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_338.init = 16'ha888;
    LUT4 i2_4_lut_4_lut (.A(state_back_2__N_482[2]), .B(n38542), .C(n38593), 
         .D(n19777), .Z(sys_clk_c_enable_188)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(62[15:25])
    defparam i2_4_lut_4_lut.init = 16'h0d08;
    KEY_U1 key_1 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre), .key_sec(key_sec), 
           .key1_c(key1_c), .n49(n49), .sys_clk_c_enable_117(sys_clk_c_enable_117), 
           .sys_rst_n_c(sys_rst_n_c), .n38629(n38629), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(38[6] 43[3])
    CCU2D equal_2886_15 (.A0(hour[5]), .B0(hour_warning[5]), .C0(hour[4]), 
          .D0(hour_warning[4]), .A1(hour[3]), .B1(hour_warning[3]), .C1(hour[2]), 
          .D1(hour_warning[2]), .CIN(n33322), .COUT(n33323));
    defparam equal_2886_15.INIT0 = 16'h9009;
    defparam equal_2886_15.INIT1 = 16'h9009;
    defparam equal_2886_15.INJECT1_0 = "YES";
    defparam equal_2886_15.INJECT1_1 = "YES";
    music_play m_music_play (.GND_net(GND_net), .sys_clk_c(sys_clk_c), .\music_tone[1] (music_tone[1]), 
            .\music_tone[4] (music_tone[4]), .music_cnt({Open_0, Open_1, 
            music_cnt[6:0]}), .\music_tone[0] (music_tone[0]), .uart_recv_done(uart_recv_done), 
            .warning(warning), .warning_TEM(warning_TEM), .n39914(n39914), 
            .\music_tone[3] (music_tone[3]), .\music_tone[2] (music_tone[2]), 
            .uart_recv_data({uart_recv_data}), .sys_rst_n_c(sys_rst_n_c), 
            .warning_time_7__N_144(warning_time_7__N_144), .clk_1s_enable_2(clk_1s_enable_2), 
            .n125(n125)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(486[13] 499[6])
    CCU2D equal_2886_13 (.A0(min[1]), .B0(min_warning[1]), .C0(min[0]), 
          .D0(min_warning[0]), .A1(hour[7]), .B1(hour_warning[7]), .C1(hour[6]), 
          .D1(hour_warning[6]), .CIN(n33321), .COUT(n33322));
    defparam equal_2886_13.INIT0 = 16'h9009;
    defparam equal_2886_13.INIT1 = 16'h9009;
    defparam equal_2886_13.INJECT1_0 = "YES";
    defparam equal_2886_13.INJECT1_1 = "YES";
    VLO i1 (.Z(GND_net));
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), .uart_recv_data({uart_recv_data}), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(460[1] 467[6])
    LUT4 i19683_2_lut (.A(n257), .B(n27735), .Z(n466)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19683_2_lut.init = 16'h8888;
    LUT4 i19298_2_lut (.A(n62), .B(n36061), .Z(n72)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(110[9] 111[28])
    defparam i19298_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_820 (.A(min_t[7]), .B(min_t[6]), .Z(n38725)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_820.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_339 (.A(min_t[7]), .B(min_t[6]), .C(min_t[5]), 
         .D(min_t[1]), .Z(n33946)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_339.init = 16'hfffe;
    LUT4 i1_2_lut_rep_821 (.A(sec_t[7]), .B(sec_t[6]), .Z(n38726)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_821.init = 16'heeee;
    FD1P3AX min_t_i0_i4 (.D(n5130), .SP(sys_clk_c_enable_309), .CK(sys_clk_c), 
            .Q(min_t[4]));   // c:/users/argon/desktop/verilog/ending/top.v(80[13] 175[7])
    defparam min_t_i0_i4.GSR = "DISABLED";
    LUT4 i4_3_lut_4_lut (.A(sec_t[7]), .B(sec_t[6]), .C(sec_t[0]), .D(sec_t[3]), 
         .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_3_lut_4_lut.init = 16'hfffe;
    BCD_U3 bcd_min_warning (.\min_warning[4] (min_warning[4]), .\min_warning[3] (min_warning[3]), 
           .\min_warning[1] (min_warning[1]), .\min_warning_ones[1] (min_warning_ones[1]), 
           .\min_warning[2] (min_warning[2]), .\hundres_0__N_316[3] (hundres_0__N_316_adj_1987[3]), 
           .n38458(n38458), .\min_warning[7] (min_warning[7]), .\hundres_1__N_306[3] (hundres_1__N_306_adj_1981[3]), 
           .n38457(n38457), .\hundres_1__N_306[3]_adj_12 (hundres_1__N_306_adj_1906[3]), 
           .\min[7] (min[7]), .n38679(n38679), .\min_warning_ones[3] (min_warning_ones[3]), 
           .\min_warning_tens[0] (min_warning_tens[0]), .n37756(n37756), 
           .\hundres_0__N_313[1] (hundres_0__N_313_adj_1985[1]), .sw1_c(sw1_c), 
           .n9925(n9925), .\min_warning[5] (min_warning[5]), .\min_warning[6] (min_warning[6]), 
           .n38608(n38608)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(309[7] 315[3])
    LUT4 i1_2_lut_4_lut_adj_340 (.A(n38508), .B(n38542), .C(state_back_2__N_482[2]), 
         .D(n6), .Z(sys_clk_c_enable_133)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(62[15:25])
    defparam i1_2_lut_4_lut_adj_340.init = 16'hca00;
    LUT4 i1_2_lut_4_lut_adj_341 (.A(n38508), .B(n38542), .C(state_back_2__N_482[2]), 
         .D(n36260), .Z(sys_clk_c_enable_189)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(62[15:25])
    defparam i1_2_lut_4_lut_adj_341.init = 16'hca00;
    LUT4 cnt_4__bdd_3_lut_28924 (.A(cnt_adj_2043[2]), .B(cnt_adj_2043[0]), 
         .C(cnt_adj_2043[1]), .Z(n37675)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam cnt_4__bdd_3_lut_28924.init = 16'h3232;
    LUT4 mux_87_i8_4_lut (.A(n452), .B(n3_adj_1874), .C(n38714), .D(n36194), 
         .Z(n497)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(133[14] 174[9])
    defparam mux_87_i8_4_lut.init = 16'h3a0a;
    LUT4 cnt_4__bdd_4_lut_28486 (.A(cnt_adj_2043[3]), .B(cnt_adj_2043[2]), 
         .C(cnt_adj_2043[0]), .D(cnt_adj_2043[1]), .Z(n37674)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam cnt_4__bdd_4_lut_28486.init = 16'h4115;
    LUT4 i2_3_lut_adj_342 (.A(n10_adj_1864), .B(n37), .C(n38650), .Z(n36194)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_342.init = 16'h0404;
    BCD_U4 bcd_min (.\min[1] (min[1]), .\min_tens[0] (min_tens[0]), .\min_ones[3] (min_ones[3]), 
           .\min_ones[1] (min_ones[1]), .n37757(n37757), .\min[2] (min[2]), 
           .\hundres_0__N_316[3] (hundres_0__N_316_adj_1912[3]), .\min[4] (min[4]), 
           .\min[6] (min[6]), .\min[5] (min[5]), .\min[7] (min[7]), .\hundres_1__N_306[3] (hundres_1__N_306_adj_1906[3]), 
           .\min[3] (min[3]), .n38457(n38457), .n38679(n38679), .\hundres_0__N_313[1] (hundres_0__N_313_adj_1910[1]), 
           .n38607(n38607)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(283[6] 290[3])
    \divide(WIDTH=32,N=12000000)_U2  devide_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(29[37] 35[3])
    LUT4 i3563_4_lut (.A(hour_t[2]), .B(hour_t[4]), .C(hour_t[3]), .D(n4_adj_1866), 
         .Z(n10_adj_1864)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i3563_4_lut.init = 16'hc8c0;
    PFUMX i28770 (.BLUT(n38780), .ALUT(n38781), .C0(n38714), .Z(n38782));
    uart_send u_uart_send (.sys_clk_c(sys_clk_c), .uart_en(uart_en), .\uart_send_data[0] (uart_send_data[0]), 
            .\uart_send_data[6] (uart_send_data[6]), .\uart_send_data[5] (uart_send_data[5]), 
            .\uart_send_data[4] (uart_send_data[4]), .\uart_send_data[3] (uart_send_data[3]), 
            .\uart_send_data[2] (uart_send_data[2]), .\uart_send_data[1] (uart_send_data[1]), 
            .GND_net(GND_net), .uart_txd_c(uart_txd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(371[11] 380[2])
    DS18B20Z u_DS18B20Z (.GND_net(GND_net), .sys_clk_c(sys_clk_c), .\state_back_2__N_482[2] (state_back_2__N_482[2]), 
            .one_wire_N_631(one_wire_N_631), .\state[1] (state[1]), .\hundres_1__N_305[1] (hundres_1__N_305_adj_2004[1]), 
            .\hundres_1__N_305[0] (hundres_1__N_305_adj_2004[0]), .\ds18b20_data[8] (ds18b20_data[8]), 
            .\ds18b20_data[7] (ds18b20_data[7]), .\ds18b20_data[6] (ds18b20_data[6]), 
            .\ds18b20_data[5] (ds18b20_data[5]), .\ds18b20_data[4] (ds18b20_data[4]), 
            .n13515(n13515), .n38541(n38541), .one_wire_out(one_wire_out), 
            .n10(n10_adj_1873), .sys_clk_c_enable_133(sys_clk_c_enable_133), 
            .n36041(n36041), .n19777(n19777), .sys_clk_c_enable_188(sys_clk_c_enable_188), 
            .sys_clk_c_enable_189(sys_clk_c_enable_189), .cnt_init({cnt_init}), 
            .n36260(n36260), .n6(n6), .sys_rst_n_c(sys_rst_n_c), .n38642(n38642), 
            .n38542(n38542), .n38593(n38593), .n34008(n34008), .n38508(n38508), 
            .n36418(n36418)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(332[11] 338[2])
    LUT4 i1_2_lut_adj_343 (.A(hour_t[1]), .B(hour_t[0]), .Z(n4_adj_1866)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_343.init = 16'h8888;
    CCU2D equal_2886_11 (.A0(min[5]), .B0(min_warning[5]), .C0(min[4]), 
          .D0(min_warning[4]), .A1(min[3]), .B1(min_warning[3]), .C1(min[2]), 
          .D1(min_warning[2]), .CIN(n33320), .COUT(n33321));
    defparam equal_2886_11.INIT0 = 16'h9009;
    defparam equal_2886_11.INIT1 = 16'h9009;
    defparam equal_2886_11.INJECT1_0 = "YES";
    defparam equal_2886_11.INJECT1_1 = "YES";
    OLED12832 oled1 (.sys_clk_c(sys_clk_c), .GND_net(GND_net), .oled_cs_c(oled_cs_c), 
            .oled_dc_c(oled_dc_c), .\sec[1] (sec[1]), .sw1_c(sw1_c), .n38420(n38420), 
            .warning_TEM(warning_TEM), .\cnt_main[2] (cnt_main_adj_2038[2]), 
            .n21133(n21133), .n38546(n38546), .n14(n14), .n38561(n38561), 
            .n38560(n38560), .n9269(n9269), .n9144(n9144), .n9272(n9272), 
            .\Tem_lower[3] (Tem_lower[3]), .n9147(n9147), .\Tem_lower[2] (Tem_lower[2]), 
            .\min_tens[0] (min_tens[0]), .\min_warning_tens[0] (min_warning_tens[0]), 
            .n9927(n9927), .n37(n37_adj_1884), .n2694(n2694), .hundres_0__N_321(hundres_0__N_321), 
            .hundres_0__N_321_adj_1(hundres_0__N_321_adj_1858), .n9917(n9917), 
            .n3072(n3072), .n3450(n3450), .\hour_ones[2] (hour_ones[2]), 
            .\hour_warning_ones[2] (hour_warning_ones[2]), .\hour_ones[3] (hour_ones[3]), 
            .\hour_warning_ones[3] (hour_warning_ones[3]), .n3828(n3828), 
            .n4206(n4206), .\min_ones[3] (min_ones[3]), .\min_warning_ones[3] (min_warning_ones[3]), 
            .\hour_ones[1] (hour_ones[1]), .\hour_warning_ones[1] (hour_warning_ones[1]), 
            .\min_ones[1] (min_ones[1]), .\min_warning_ones[1] (min_warning_ones[1]), 
            .\cnt[4] (cnt_adj_2043[4]), .\cnt[3] (cnt_adj_2043[3]), .\cnt[2] (cnt_adj_2043[2]), 
            .\cnt[1] (cnt_adj_2043[1]), .n2521(n2521), .time_set(time_set), 
            .oled_mosi_c(oled_mosi_c), .\hundres_0__N_313[0] (hundres_0__N_313_adj_2010[0]), 
            .n38455(n38455), .n38606(n38606), .n11648(n11648), .n37693(n37693), 
            .n2527(n2527), .n2524(n2524), .oled_sck_c(oled_sck_c), .oled_res_c(oled_res_c), 
            .n37978(n37978), .n2523(n2523), .n37692(n37692), .n37663(n37663), 
            .n9120(n9120), .n3070(n3070), .n3448(n3448), .n3826(n3826), 
            .n4204(n4204), .\hundres_0__N_313[0]_adj_2 (hundres_0__N_313[0]), 
            .n11642(n11642), .n38429(n38429), .n21135(n21135), .\min[0] (min[0]), 
            .\min_warning[0] (min_warning[0]), .\hour[0] (hour[0]), .\hour_warning[0] (hour_warning[0]), 
            .\sec_tens[3] (sec_tens[3]), .\hundres_0__N_313[1] (hundres_0__N_313_adj_1910[1]), 
            .\hundres_0__N_313[1]_adj_3 (hundres_0__N_313_adj_1985[1]), .n11652(n11652), 
            .n9925(n9925), .n38753(n38753), .\hundres_0__N_316[3] (hundres_0__N_316_adj_1912[3]), 
            .\hundres_0__N_316[3]_adj_4 (hundres_0__N_316_adj_1987[3]), .n4(n4_adj_1885), 
            .n4_adj_5(n4_adj_1886), .\hour_tens[0] (hour_tens[0]), .\hour_warning_tens[0] (hour_warning_tens[0]), 
            .\ds18b20_data[4] (ds18b20_data[4]), .\sec[0] (sec[0]), .n37649(n37649), 
            .\sec_tens[1] (sec_tens[1]), .n38432(n38432), .n28424(n28424), 
            .n15(n15), .n38338(n38338), .n37676(n37676), .n2693(n2693), 
            .n22(n22), .n4208(n4208), .n3830(n3830), .n3452(n3452), 
            .n3074(n3074), .n22_adj_6(n22_adj_1867), .\cnt[0] (cnt_adj_2043[0]), 
            .n14378(n14378), .n14_adj_7(n14_adj_1872), .n2690(n2690), 
            .\hundres_0__N_316[3]_adj_8 (hundres_0__N_316_adj_1962[3]), .\hundres_0__N_316[3]_adj_9 (hundres_0__N_316_adj_1937[3]), 
            .n3071(n3071), .n3449(n3449), .n3827(n3827), .n4205(n4205), 
            .n38607(n38607), .\hundres_1__N_306[3] (hundres_1__N_306_adj_1906[3]), 
            .n38457(n38457), .n38458(n38458), .n38608(n38608), .\hundres_1__N_306[3]_adj_10 (hundres_1__N_306_adj_1981[3]), 
            .n4_adj_11(n4_adj_1876), .n2692(n2692), .n2691(n2691), .n3069(n3069), 
            .n3447(n3447), .n3825(n3825), .n4203(n4203), .n3068(n3068), 
            .n3446(n3446), .n3824(n3824), .n4202(n4202), .n2696(n2696), 
            .n37757(n37757), .n37756(n37756), .n2695(n2695), .n3073(n3073), 
            .n3451(n3451), .n3829(n3829), .n4207(n4207), .sys_rst_n_c(sys_rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(412[12] 442[3])
    LUT4 cnt_0__bdd_4_lut_28335 (.A(cnt_adj_2043[0]), .B(cnt_adj_2043[3]), 
         .C(cnt_adj_2043[2]), .D(cnt_adj_2043[1]), .Z(n37693)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_28335.init = 16'h7460;
    BCD_U6 bcd_hour (.\hour[5] (hour[5]), .\hour[6] (hour[6]), .n38667(n38667), 
           .\hour[7] (hour[7]), .hundres_0__N_321(hundres_0__N_321), .\hour[4] (hour[4]), 
           .\hour[3] (hour[3]), .\hundres_0__N_316[3] (hundres_0__N_316_adj_1937[3]), 
           .n9917(n9917), .n11657(n11657), .\hour[2] (hour[2]), .\hour[1] (hour[1]), 
           .\hour_ones[3] (hour_ones[3]), .\hour_ones[1] (hour_ones[1]), 
           .\hour_tens[0] (hour_tens[0]), .\hour_ones[2] (hour_ones[2]), 
           .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(292[6] 299[3])
    CCU2D add_15_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(hour_t[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33418), .S1(n44));   // c:/users/argon/desktop/verilog/ending/top.v(105[19:32])
    defparam add_15_1.INIT0 = 16'hF000;
    defparam add_15_1.INIT1 = 16'h5555;
    defparam add_15_1.INJECT1_0 = "NO";
    defparam add_15_1.INJECT1_1 = "NO";
    KEY key_3 (.sys_clk_c(sys_clk_c), .key_sec_pre(key_sec_pre_adj_1854), 
        .key_sec(key_sec_adj_1855), .key3_c(key3_c), .GND_net(GND_net), 
        .n38709(n38709)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(54[6] 59[3])
    BCD bcd_sec (.\sec[2] (sec[2]), .\sec[1] (sec[1]), .n11642(n11642), 
        .\sec_tens[1] (sec_tens[1]), .\hundres_0__N_313[0] (hundres_0__N_313[0]), 
        .n38429(n38429), .\sec_tens[3] (sec_tens[3]), .sw1_c(sw1_c), .n9147(n9147), 
        .n38432(n38432), .n9144(n9144), .n38420(n38420), .\sec[4] (sec[4]), 
        .\sec[5] (sec[5]), .\sec[6] (sec[6]), .\sec[7] (sec[7]), .\sec[3] (sec[3])) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(274[6] 281[3])
    Beeper m_beep (.beep_c(beep_c), .sys_clk_c(sys_clk_c), .\music_tone[4] (music_tone[4]), 
           .\music_tone[1] (music_tone[1]), .\music_tone[2] (music_tone[2]), 
           .\music_tone[3] (music_tone[3]), .\music_tone[0] (music_tone[0]), 
           .GND_net(GND_net), .sw2_c(sw2_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(469[9] 475[2])
    BCD_U7 bcd_T (.\ds18b20_data[6] (ds18b20_data[6]), .n38448(n38448), 
           .n38455(n38455), .\ds18b20_data[7] (ds18b20_data[7]), .\hundres_0__N_313[0] (hundres_0__N_313_adj_2010[0]), 
           .\ds18b20_data[5] (ds18b20_data[5]), .\Tem_lower[3] (Tem_lower[3]), 
           .n37(n37_adj_1884), .n12162(n12162), .\Tem_lower[2] (Tem_lower[2]), 
           .\hundres_1__N_305[0] (hundres_1__N_305_adj_2004[0]), .\ds18b20_data[8] (ds18b20_data[8]), 
           .\hundres_1__N_305[1] (hundres_1__N_305_adj_2004[1]), .n38606(n38606), 
           .n38753(n38753)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(324[5] 330[3])
    
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
// Verilog Description of module BCD_U5
//

module BCD_U5 (hundres_0__N_321, n9917, \hundres_0__N_316[3] , n4, \hour_warning[3] , 
            n11661, \hour_warning[2] , \hour_warning[5] , \hour_warning[6] , 
            \hour_warning[7] , \hour_warning[1] , \hour_warning_ones[1] , 
            \hour_warning_tens[0] , \hour_warning_ones[3] , \hour_warning_ones[2] , 
            n36059, \hour_warning[4] ) /* synthesis syn_module_defined=1 */ ;
    output hundres_0__N_321;
    input n9917;
    output \hundres_0__N_316[3] ;
    output n4;
    input \hour_warning[3] ;
    output n11661;
    input \hour_warning[2] ;
    input \hour_warning[5] ;
    input \hour_warning[6] ;
    input \hour_warning[7] ;
    input \hour_warning[1] ;
    output \hour_warning_ones[1] ;
    output \hour_warning_tens[0] ;
    output \hour_warning_ones[3] ;
    output \hour_warning_ones[2] ;
    output n36059;
    input \hour_warning[4] ;
    
    
    wire n38423, n38762;
    wire [3:0]hundres_0__N_313;
    
    wire n38604, n38452, n38435;
    wire [3:0]hundres_1__N_305;
    
    wire n38564, n38761, n38760;
    wire [3:0]hundres_1__N_306;
    
    wire n38427, n38464;
    wire [3:0]hundres_1__N_307;
    
    wire n38433;
    wire [3:0]hundres_0__N_316;
    
    wire n38678, n38498;
    
    LUT4 i3382_4_lut (.A(n38423), .B(n38762), .C(hundres_0__N_313[1]), 
         .D(n38604), .Z(hundres_0__N_321)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3382_4_lut.init = 16'hb3a0;
    LUT4 i1_3_lut_4_lut (.A(n38452), .B(n38435), .C(n9917), .D(\hundres_0__N_316[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i3388_2_lut_rep_536_4_lut_4_lut_then_4_lut (.A(hundres_1__N_305[2]), 
         .B(hundres_1__N_305[1]), .C(n38564), .D(\hour_warning[3] ), .Z(n38761)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i3388_2_lut_rep_536_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i3388_2_lut_rep_536_4_lut_4_lut_else_4_lut (.A(hundres_1__N_305[2]), 
         .B(hundres_1__N_305[1]), .C(n38564), .D(\hour_warning[3] ), .Z(n38760)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i3388_2_lut_rep_536_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i3383_2_lut_rep_518_3_lut_4_lut_4_lut (.A(n38452), .B(hundres_1__N_306[3]), 
         .C(\hundres_0__N_316[3] ), .D(n38604), .Z(n38423)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3383_2_lut_rep_518_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i4083_3_lut_4_lut (.A(\hundres_0__N_316[3] ), .B(n38427), .C(n9917), 
         .D(hundres_0__N_313[1]), .Z(n11661)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4083_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4299_2_lut_rep_528_4_lut_4_lut (.A(\hour_warning[2] ), .B(n38464), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38433)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4299_2_lut_rep_528_4_lut_4_lut.init = 16'h554a;
    LUT4 i4321_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38464), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4321_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4314_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38464), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4314_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4307_3_lut_4_lut (.A(\hour_warning[2] ), .B(n38464), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4307_3_lut_4_lut.init = 16'h998c;
    LUT4 i3394_2_lut_rep_773 (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .Z(n38678)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3394_2_lut_rep_773.init = 16'heeee;
    LUT4 i3458_2_lut_rep_699_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38604)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3458_2_lut_rep_699_3_lut.init = 16'he0e0;
    LUT4 i4271_2_lut_4_lut_4_lut (.A(\hour_warning[1] ), .B(n38433), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_warning_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4271_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i3456_2_lut_rep_530_3_lut_4_lut (.A(n38678), .B(\hour_warning[7] ), 
         .C(hundres_1__N_306[3]), .D(n38452), .Z(n38435)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3456_2_lut_rep_530_3_lut_4_lut.init = 16'h8880;
    LUT4 i4335_3_lut_4_lut_3_lut_4_lut (.A(n38678), .B(\hour_warning[7] ), 
         .C(hundres_1__N_306[3]), .D(n38452), .Z(hundres_0__N_313[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4335_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4327_2_lut_rep_522_3_lut_3_lut_4_lut (.A(n38678), .B(\hour_warning[7] ), 
         .C(hundres_1__N_306[3]), .D(n38452), .Z(n38427)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4327_2_lut_rep_522_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4293_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n38433), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\hour_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4293_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4286_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[1] ), .B(n38433), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\hour_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4286_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4279_3_lut_4_lut (.A(\hour_warning[1] ), .B(n38433), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_warning_ones[2] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4279_3_lut_4_lut.init = 16'h998c;
    LUT4 i12414_2_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_305[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i12414_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_2_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), .C(\hour_warning[7] ), 
         .Z(n36059)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4258_3_lut_4_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(hundres_1__N_305[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4258_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4370_3_lut_rep_547_4_lut_3_lut_4_lut (.A(\hour_warning[3] ), .B(n38498), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38452)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4370_3_lut_rep_547_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4363_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[3] ), .B(n38498), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4363_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4348_2_lut_rep_559_4_lut_4_lut (.A(\hour_warning[3] ), .B(n38498), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38464)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4348_2_lut_rep_559_4_lut_4_lut.init = 16'h554a;
    LUT4 i4356_3_lut_4_lut (.A(\hour_warning[3] ), .B(n38498), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4356_3_lut_4_lut.init = 16'h998c;
    LUT4 i4250_2_lut_rep_659_3_lut_3_lut (.A(\hour_warning[5] ), .B(\hour_warning[6] ), 
         .C(\hour_warning[7] ), .Z(n38564)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4250_2_lut_rep_659_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4398_3_lut_4_lut_3_lut_4_lut (.A(\hour_warning[4] ), .B(n38564), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4398_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4391_2_lut_3_lut_3_lut_4_lut (.A(\hour_warning[4] ), .B(n38564), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4391_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4376_2_lut_rep_593_4_lut_4_lut (.A(\hour_warning[4] ), .B(n38564), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38498)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4376_2_lut_rep_593_4_lut_4_lut.init = 16'h554a;
    LUT4 i4384_3_lut_4_lut (.A(\hour_warning[4] ), .B(n38564), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4384_3_lut_4_lut.init = 16'h998c;
    PFUMX i28757 (.BLUT(n38760), .ALUT(n38761), .C0(\hour_warning[4] ), 
          .Z(n38762));
    
endmodule
//
// Verilog Description of module KEY_U0
//

module KEY_U0 (sys_clk_c, key_sec_pre, key_sec, key2_c, GND_net, n38714, 
            key_sec_adj_13, key_sec_pre_adj_14, n38631, \key_mode[2] , 
            \key_mode[1] , n20875) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key2_c;
    input GND_net;
    output n38714;
    input key_sec_adj_13;
    input key_sec_pre_adj_14;
    output n38631;
    input \key_mode[2] ;
    input \key_mode[1] ;
    output n20875;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // c:/users/argon/desktop/verilog/ending/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n21, n34, n30, n22, sys_clk_c_enable_268, n31, n28, n33551, 
        n33550, n33549, n33548, n33547, n33546, n33545, n33544, 
        n33543;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=51 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=51 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key2_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=51 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2897__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i0.GSR = "ENABLED";
    FD1S3IX cnt_2897__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i17.GSR = "ENABLED";
    FD1S3IX cnt_2897__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i16.GSR = "ENABLED";
    FD1S3IX cnt_2897__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i15.GSR = "ENABLED";
    FD1S3IX cnt_2897__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i14.GSR = "ENABLED";
    FD1S3IX cnt_2897__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i13.GSR = "ENABLED";
    FD1S3IX cnt_2897__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i12.GSR = "ENABLED";
    FD1S3IX cnt_2897__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i11.GSR = "ENABLED";
    FD1S3IX cnt_2897__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i10.GSR = "ENABLED";
    FD1S3IX cnt_2897__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i9.GSR = "ENABLED";
    FD1S3IX cnt_2897__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i8.GSR = "ENABLED";
    FD1S3IX cnt_2897__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i7.GSR = "ENABLED";
    FD1S3IX cnt_2897__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i6.GSR = "ENABLED";
    FD1S3IX cnt_2897__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i5.GSR = "ENABLED";
    FD1S3IX cnt_2897__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i4.GSR = "ENABLED";
    FD1S3IX cnt_2897__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i3.GSR = "ENABLED";
    FD1S3IX cnt_2897__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i2.GSR = "ENABLED";
    FD1S3IX cnt_2897__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897__i1.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_268)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    FD1P3AY key_sec_29 (.D(key2_c), .SP(sys_clk_c_enable_268), .CK(sys_clk_c), 
            .Q(key_sec));   // c:/users/argon/desktop/verilog/ending/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    CCU2D cnt_2897_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33551), .S0(n77[17]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2897_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33550), .COUT(n33551), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33549), .COUT(n33550), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33548), .COUT(n33549), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33547), .COUT(n33548), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33546), 
          .COUT(n33547), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33545), 
          .COUT(n33546), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_7.INJECT1_1 = "NO";
    LUT4 key_sec_pre_I_0_2_lut_rep_809 (.A(key_sec_pre), .B(key_sec), .Z(n38714)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_809.init = 16'h2222;
    LUT4 i1_2_lut_rep_726_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(key_sec_adj_13), 
         .D(key_sec_pre_adj_14), .Z(n38631)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(78[22:46])
    defparam i1_2_lut_rep_726_3_lut_4_lut.init = 16'h2f22;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_sec_pre), .B(key_sec), .C(\key_mode[2] ), 
         .D(\key_mode[1] ), .Z(n20875)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(78[22:46])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    CCU2D cnt_2897_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33544), 
          .COUT(n33545), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33543), 
          .COUT(n33544), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2897_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2897_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2897_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33543), .S1(n77[0]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2897_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2897_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2897_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2897_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module KEY_U1
//

module KEY_U1 (sys_clk_c, key_sec_pre, key_sec, key1_c, n49, sys_clk_c_enable_117, 
            sys_rst_n_c, n38629, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key1_c;
    output n49;
    output sys_clk_c_enable_117;
    input sys_rst_n_c;
    output n38629;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // c:/users/argon/desktop/verilog/ending/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n21, n34, n30, n22, sys_clk_c_enable_291, n31, n28, n33542, 
        n33541, n33540, n33539, n33538, n33537, n33536, n33535, 
        n33534;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=43 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=43 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key1_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=43 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2896__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i0.GSR = "ENABLED";
    FD1S3IX cnt_2896__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i17.GSR = "ENABLED";
    FD1S3IX cnt_2896__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i16.GSR = "ENABLED";
    FD1S3IX cnt_2896__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i15.GSR = "ENABLED";
    FD1S3IX cnt_2896__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i14.GSR = "ENABLED";
    FD1S3IX cnt_2896__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i13.GSR = "ENABLED";
    FD1S3IX cnt_2896__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i12.GSR = "ENABLED";
    FD1S3IX cnt_2896__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i11.GSR = "ENABLED";
    FD1S3IX cnt_2896__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i10.GSR = "ENABLED";
    FD1S3IX cnt_2896__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i9.GSR = "ENABLED";
    FD1S3IX cnt_2896__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i8.GSR = "ENABLED";
    FD1S3IX cnt_2896__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i7.GSR = "ENABLED";
    FD1S3IX cnt_2896__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i6.GSR = "ENABLED";
    FD1S3IX cnt_2896__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i5.GSR = "ENABLED";
    FD1S3IX cnt_2896__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i4.GSR = "ENABLED";
    FD1S3IX cnt_2896__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i3.GSR = "ENABLED";
    FD1S3IX cnt_2896__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i2.GSR = "ENABLED";
    FD1S3IX cnt_2896__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(key_sec), .B(key_sec_pre), .Z(n49)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(50[7:14])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_291)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    FD1P3AY key_sec_29 (.D(key1_c), .SP(sys_clk_c_enable_291), .CK(sys_clk_c), 
            .Q(key_sec));   // c:/users/argon/desktop/verilog/ending/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_787 (.A(key_sec), .B(key_sec_pre), .Z(sys_clk_c_enable_117)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(60[10] 63[9])
    defparam i1_2_lut_rep_787.init = 16'h4444;
    LUT4 i1_2_lut_rep_724_3_lut (.A(key_sec), .B(key_sec_pre), .C(sys_rst_n_c), 
         .Z(n38629)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(60[10] 63[9])
    defparam i1_2_lut_rep_724_3_lut.init = 16'h4f4f;
    CCU2D cnt_2896_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33542), .S0(n77[17]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2896_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33541), .COUT(n33542), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33540), .COUT(n33541), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33539), .COUT(n33540), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33538), .COUT(n33539), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33537), 
          .COUT(n33538), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33536), 
          .COUT(n33537), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33535), 
          .COUT(n33536), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33534), 
          .COUT(n33535), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2896_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2896_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2896_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33534), .S1(n77[0]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2896_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2896_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2896_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2896_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module music_play
//

module music_play (GND_net, sys_clk_c, \music_tone[1] , \music_tone[4] , 
            music_cnt, \music_tone[0] , uart_recv_done, warning, warning_TEM, 
            n39914, \music_tone[3] , \music_tone[2] , uart_recv_data, 
            sys_rst_n_c, warning_time_7__N_144, clk_1s_enable_2, n125) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    output \music_tone[1] ;
    output \music_tone[4] ;
    output [8:0]music_cnt;
    output \music_tone[0] ;
    input uart_recv_done;
    input warning;
    output warning_TEM;
    input n39914;
    output \music_tone[3] ;
    output \music_tone[2] ;
    input [7:0]uart_recv_data;
    input sys_rst_n_c;
    input warning_time_7__N_144;
    output clk_1s_enable_2;
    input n125;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire n33662;
    wire [15:0]cnt_delay;   // c:/users/argon/desktop/verilog/ending/music_player.v(44[12:21])
    
    wire n33663;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/ending/music_player.v(49[13:20])
    
    wire sys_clk_c_enable_234, sys_clk_c_enable_100;
    wire [15:0]n424;
    
    wire n33661, sys_clk_c_enable_12;
    wire [7:0]music_tone_7__N_1601;
    
    wire sys_clk_c_enable_14;
    wire [7:0]cnt_run;   // c:/users/argon/desktop/verilog/ending/music_player.v(36[11:18])
    
    wire sys_clk_c_enable_148, n36405, n22438;
    wire [15:0]n383;
    
    wire sys_clk_c_enable_77, n22487;
    wire [8:0]n292;
    wire [2:0]state_back;   // c:/users/argon/desktop/verilog/ending/music_player.v(42[12:22])
    
    wire sys_clk_c_enable_28, n11397, recv_done_d1, recv_done_d0, sys_clk_c_enable_187, 
        n33660;
    wire [4:0]state;   // c:/users/argon/desktop/verilog/ending/music_player.v(41[11:16])
    
    wire sys_clk_c_enable_192, n34588;
    wire [8:0]n120;
    wire [8:0]music_cnt_c;   // c:/users/argon/desktop/verilog/ending/music_player.v(47[11:20])
    
    wire uart_music_mode, n38528;
    wire [7:0]n670;
    
    wire n36310, n38551;
    wire [7:0]n131;
    
    wire sys_clk_c_enable_142, n5, n8, n6, sys_clk_c_enable_143, n33513, 
        n38729, n38730, n38591, n38731, n3, n36533, sys_clk_c_enable_138, 
        uart_data_busy_N_1670, n38589, sys_clk_c_enable_144, sys_clk_c_enable_145, 
        sys_clk_c_enable_146, sys_clk_c_enable_147, n33512, n33511, 
        n33510, n33509, n36272, n49, n4, n381, n36305, n24592, 
        n33508, n33507, n36402, n33506, n9384, n38656, n33505, 
        n33504, n50, n48, n47, n33503, n38475, n33502, n36613, 
        n17, n38628, n38175, n36607, n33501, n33500, n33499, n33498, 
        n33496, n33495, n33494, n33493, n33492, n9, n14, n38655, 
        n38654, n38653, n33491, n33490, n33489, n14_adj_1844, n38592, 
        n38708, n38578, n4_adj_1845, n36079, n4_adj_1846, n34054, 
        n12, n8_adj_1847, n4_adj_1848, n15, n14_adj_1849, n33665, 
        n33664;
    
    CCU2D sub_2284_add_2_8 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33662), .COUT(n33663));
    defparam sub_2284_add_2_8.INIT0 = 16'h5555;
    defparam sub_2284_add_2_8.INIT1 = 16'h5555;
    defparam sub_2284_add_2_8.INJECT1_0 = "NO";
    defparam sub_2284_add_2_8.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_i0_i13 (.D(n424[13]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i13.GSR = "DISABLED";
    CCU2D sub_2284_add_2_6 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33661), .COUT(n33662));
    defparam sub_2284_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_2284_add_2_6.INIT1 = 16'h5555;
    defparam sub_2284_add_2_6.INJECT1_0 = "NO";
    defparam sub_2284_add_2_6.INJECT1_1 = "NO";
    FD1P3AX music_tone_i0_i1 (.D(music_tone_7__N_1601[1]), .SP(sys_clk_c_enable_12), 
            .CK(sys_clk_c), .Q(\music_tone[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i1.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i4 (.D(music_tone_7__N_1601[4]), .SP(sys_clk_c_enable_14), 
            .CK(sys_clk_c), .Q(\music_tone[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i4.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i14 (.D(n424[14]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i14.GSR = "DISABLED";
    FD1P3AX cnt_run_i0_i0 (.D(n36405), .SP(sys_clk_c_enable_148), .CK(sys_clk_c), 
            .Q(cnt_run[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i0 (.D(n383[0]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i0.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i0 (.D(n424[0]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i0.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i0 (.D(n292[0]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i0.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(n11397), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i1 (.D(n292[1]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i1.GSR = "DISABLED";
    FD1S3AX recv_done_d1_586 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(66[10] 69[8])
    defparam recv_done_d1_586.GSR = "ENABLED";
    FD1P3AX music_tone_i0_i0 (.D(music_tone_7__N_1601[0]), .SP(sys_clk_c_enable_187), 
            .CK(sys_clk_c), .Q(\music_tone[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i0.GSR = "DISABLED";
    FD1S3AX recv_done_d0_585 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(66[10] 69[8])
    defparam recv_done_d0_585.GSR = "ENABLED";
    FD1P3IX clk_cnt_i0_i15 (.D(n424[15]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i15.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i2 (.D(n292[2]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i2.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i3 (.D(n292[3]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i3.GSR = "DISABLED";
    CCU2D sub_2284_add_2_4 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33660), .COUT(n33661));
    defparam sub_2284_add_2_4.INIT0 = 16'h5555;
    defparam sub_2284_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_2284_add_2_4.INJECT1_0 = "NO";
    defparam sub_2284_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_2284_add_2_2 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33660));
    defparam sub_2284_add_2_2.INIT0 = 16'h5000;
    defparam sub_2284_add_2_2.INIT1 = 16'h5555;
    defparam sub_2284_add_2_2.INJECT1_0 = "NO";
    defparam sub_2284_add_2_2.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i4 (.D(n292[4]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i4.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i5 (.D(n292[5]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i5.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i6 (.D(n292[6]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i6.GSR = "DISABLED";
    FD1P3AX state_i0_i0 (.D(n34588), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam state_i0_i0.GSR = "ENABLED";
    ROM128X1A mux_831_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n120[3])) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_831_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    ROM128X1A mux_831_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n120[5])) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_831_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    FD1P3IX music_cnt_i0_i7 (.D(n292[7]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i7.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i1 (.D(n383[1]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n383[2]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n383[3]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i3.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i4 (.D(n383[4]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n383[5]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i5.GSR = "DISABLED";
    LUT4 mux_262_i5_4_lut (.A(uart_music_mode), .B(n38528), .C(warning), 
         .D(\music_tone[4] ), .Z(n670[4])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(111[8] 323[6])
    defparam mux_262_i5_4_lut.init = 16'hc505;
    FD1P3IX music_cnt_i0_i8 (.D(n292[8]), .SP(sys_clk_c_enable_77), .CD(n22487), 
            .CK(sys_clk_c), .Q(music_cnt_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_cnt_i0_i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n383[6]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i6.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n383[7]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i7.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n383[8]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i8.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n383[9]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i9.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n383[10]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i10.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n383[11]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i11.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n383[12]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i12.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n383[13]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n383[14]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i14.GSR = "DISABLED";
    ROM128X1A mux_831_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n120[6])) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_831_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    FD1P3IX cnt_delay_i0_i15 (.D(n383[15]), .SP(sys_clk_c_enable_100), .CD(n22438), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_delay_i0_i15.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(sys_clk_c_enable_148), .B(n36310), .C(n38551), .D(n131[7]), 
         .Z(sys_clk_c_enable_142)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'h8a88;
    LUT4 i12459_4_lut (.A(sys_clk_c_enable_148), .B(n5), .C(n8), .D(n6), 
         .Z(sys_clk_c_enable_143)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i12459_4_lut.init = 16'ha8a0;
    CCU2D add_150_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33513), 
          .S0(n424[15]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_17.INIT0 = 16'h5aaa;
    defparam add_150_17.INIT1 = 16'h0000;
    defparam add_150_17.INJECT1_0 = "NO";
    defparam add_150_17.INJECT1_1 = "NO";
    PFUMX i28736 (.BLUT(n38729), .ALUT(n38730), .C0(n38591), .Z(n38731));
    LUT4 i1_2_lut (.A(cnt_run[6]), .B(cnt_run[7]), .Z(n5)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    PFUMX i23 (.BLUT(n3), .ALUT(n36533), .C0(state[1]), .Z(n34588));
    FD1P3AY uart_data_busy_591 (.D(uart_data_busy_N_1670), .SP(sys_clk_c_enable_138), 
            .CK(sys_clk_c), .Q(warning_TEM));   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam uart_data_busy_591.GSR = "ENABLED";
    FD1P3AX uart_music_mode_589 (.D(n38589), .SP(sys_clk_c_enable_138), 
            .CK(sys_clk_c), .Q(uart_music_mode));   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam uart_music_mode_589.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i7 (.D(n39914), .SP(sys_clk_c_enable_142), .CK(sys_clk_c), 
            .Q(cnt_run[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i6 (.D(n39914), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .Q(cnt_run[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n39914), .SP(sys_clk_c_enable_144), .CK(sys_clk_c), 
            .Q(cnt_run[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n39914), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .Q(cnt_run[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n39914), .SP(sys_clk_c_enable_146), .CK(sys_clk_c), 
            .Q(cnt_run[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i2 (.D(n39914), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .Q(cnt_run[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n38731), .SP(sys_clk_c_enable_148), .CK(sys_clk_c), 
            .Q(cnt_run[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    CCU2D add_150_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33512), .COUT(n33513), .S0(n424[13]), .S1(n424[14]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_15.INIT0 = 16'h5aaa;
    defparam add_150_15.INIT1 = 16'h5aaa;
    defparam add_150_15.INJECT1_0 = "NO";
    defparam add_150_15.INJECT1_1 = "NO";
    CCU2D add_150_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33511), .COUT(n33512), .S0(n424[11]), .S1(n424[12]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_13.INIT0 = 16'h5aaa;
    defparam add_150_13.INIT1 = 16'h5aaa;
    defparam add_150_13.INJECT1_0 = "NO";
    defparam add_150_13.INJECT1_1 = "NO";
    CCU2D add_150_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33510), .COUT(n33511), .S0(n424[9]), .S1(n424[10]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_11.INIT0 = 16'h5aaa;
    defparam add_150_11.INIT1 = 16'h5aaa;
    defparam add_150_11.INJECT1_0 = "NO";
    defparam add_150_11.INJECT1_1 = "NO";
    CCU2D add_150_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33509), .COUT(n33510), .S0(n424[7]), .S1(n424[8]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_9.INIT0 = 16'h5aaa;
    defparam add_150_9.INIT1 = 16'h5aaa;
    defparam add_150_9.INJECT1_0 = "NO";
    defparam add_150_9.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_i0_i1 (.D(n424[1]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i1.GSR = "DISABLED";
    LUT4 i12457_4_lut (.A(sys_clk_c_enable_148), .B(n36272), .C(n49), 
         .D(n4), .Z(sys_clk_c_enable_144)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i12457_4_lut.init = 16'ha8a0;
    FD1P3AX music_tone_i0_i3 (.D(music_tone_7__N_1601[3]), .SP(sys_clk_c_enable_187), 
            .CK(sys_clk_c), .Q(\music_tone[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i3.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i2 (.D(music_tone_7__N_1601[2]), .SP(sys_clk_c_enable_187), 
            .CK(sys_clk_c), .Q(\music_tone[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam music_tone_i0_i2.GSR = "DISABLED";
    LUT4 i13727_2_lut_4_lut_4_lut (.A(sys_clk_c_enable_28), .B(n381), .C(n36305), 
         .D(n24592), .Z(n22438)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i13727_2_lut_4_lut_4_lut.init = 16'h0080;
    CCU2D add_150_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33508), .COUT(n33509), .S0(n424[5]), .S1(n424[6]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_7.INIT0 = 16'h5aaa;
    defparam add_150_7.INIT1 = 16'h5aaa;
    defparam add_150_7.INJECT1_0 = "NO";
    defparam add_150_7.INJECT1_1 = "NO";
    CCU2D add_150_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33507), .COUT(n33508), .S0(n424[3]), .S1(n424[4]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_5.INIT0 = 16'h5aaa;
    defparam add_150_5.INIT1 = 16'h5aaa;
    defparam add_150_5.INJECT1_0 = "NO";
    defparam add_150_5.INJECT1_1 = "NO";
    FD1P3AX state_i0_i1 (.D(n36402), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam state_i0_i1.GSR = "ENABLED";
    CCU2D add_150_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33506), .COUT(n33507), .S0(n424[1]), .S1(n424[2]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_3.INIT0 = 16'h5aaa;
    defparam add_150_3.INIT1 = 16'h5aaa;
    defparam add_150_3.INJECT1_0 = "NO";
    defparam add_150_3.INJECT1_1 = "NO";
    CCU2D add_150_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33506), .S1(n424[0]));   // c:/users/argon/desktop/verilog/ending/music_player.v(315[36:50])
    defparam add_150_1.INIT0 = 16'hF000;
    defparam add_150_1.INIT1 = 16'h5555;
    defparam add_150_1.INJECT1_0 = "NO";
    defparam add_150_1.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_i0_i2 (.D(n424[2]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i2.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i3 (.D(n424[3]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i3.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i4 (.D(n424[4]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i4.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i5 (.D(n424[5]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i5.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i6 (.D(n424[6]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i6.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i7 (.D(n424[7]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i7.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i8 (.D(n424[8]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i8.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i9 (.D(n424[9]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i9.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i10 (.D(n424[10]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i10.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i11 (.D(n424[11]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i11.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i12 (.D(n424[12]), .SP(sys_clk_c_enable_234), .CD(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .Q(clk_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=486, LSE_RLINE=499 */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam clk_cnt_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(n38591), .B(cnt_run[1]), .C(cnt_run[0]), .Z(n9384)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 i27820_3_lut_4_lut (.A(n38591), .B(cnt_run[1]), .C(cnt_run[0]), 
         .D(n131[0]), .Z(n36405)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i27820_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i28094_3_lut_4_lut (.A(n38591), .B(cnt_run[1]), .C(cnt_run[0]), 
         .D(state[0]), .Z(n3)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i28094_3_lut_4_lut.init = 16'hefff;
    LUT4 i2_3_lut_rep_623_4_lut (.A(n38591), .B(cnt_run[1]), .C(cnt_run[0]), 
         .D(n38656), .Z(n38528)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_623_4_lut.init = 16'hfffe;
    CCU2D add_147_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33505), .S0(n383[15]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_17.INIT0 = 16'h5aaa;
    defparam add_147_17.INIT1 = 16'h0000;
    defparam add_147_17.INJECT1_0 = "NO";
    defparam add_147_17.INJECT1_1 = "NO";
    LUT4 mux_366_i4_4_lut (.A(n120[6]), .B(uart_recv_data[3]), .C(sys_clk_c_enable_138), 
         .D(warning), .Z(music_tone_7__N_1601[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(102[7] 324[5])
    defparam mux_366_i4_4_lut.init = 16'hcac0;
    CCU2D add_147_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33504), .COUT(n33505), .S0(n383[13]), 
          .S1(n383[14]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_15.INIT0 = 16'h5aaa;
    defparam add_147_15.INIT1 = 16'h5aaa;
    defparam add_147_15.INJECT1_0 = "NO";
    defparam add_147_15.INJECT1_1 = "NO";
    LUT4 mux_262_i3_3_lut (.A(uart_music_mode), .B(n120[5]), .C(warning), 
         .Z(n670[2])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(111[8] 323[6])
    defparam mux_262_i3_3_lut.init = 16'hc5c5;
    LUT4 i1_2_lut_3_lut_adj_287 (.A(n38591), .B(cnt_run[1]), .C(n131[6]), 
         .Z(n8)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_287.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_288 (.A(n38591), .B(cnt_run[1]), .C(n131[5]), 
         .Z(n49)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_288.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_289 (.A(n38591), .B(cnt_run[1]), .C(n131[4]), 
         .Z(n50)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_289.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_290 (.A(n38591), .B(cnt_run[1]), .C(n131[3]), 
         .Z(n48)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_290.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_291 (.A(n38591), .B(cnt_run[1]), .C(n131[2]), 
         .Z(n47)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_291.init = 16'h1010;
    CCU2D add_147_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33503), .COUT(n33504), .S0(n383[11]), 
          .S1(n383[12]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_13.INIT0 = 16'h5aaa;
    defparam add_147_13.INIT1 = 16'h5aaa;
    defparam add_147_13.INJECT1_0 = "NO";
    defparam add_147_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_rep_618_3_lut_4_lut (.A(sys_rst_n_c), .B(sys_clk_c_enable_192), 
         .C(n24592), .D(n36305), .Z(sys_clk_c_enable_100)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_3_lut_rep_618_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_adj_292 (.A(state[0]), .B(state[1]), .C(n9384), .D(n38475), 
         .Z(n36402)) /* synthesis lut_function=(A (B+!(C))+!A !((D)+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(112[4] 322[11])
    defparam i1_4_lut_adj_292.init = 16'h8ace;
    CCU2D add_147_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33502), .COUT(n33503), .S0(n383[9]), .S1(n383[10]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_11.INIT0 = 16'h5aaa;
    defparam add_147_11.INIT1 = 16'h5aaa;
    defparam add_147_11.INJECT1_0 = "NO";
    defparam add_147_11.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(music_cnt[5]), .B(music_cnt_c[7]), .C(music_cnt_c[8]), 
         .D(n36613), .Z(n17)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i13769_2_lut_3_lut_4_lut (.A(n38628), .B(cnt_run[6]), .C(n17), 
         .D(n38175), .Z(n22487)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i13769_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i27681_3_lut (.A(music_cnt[4]), .B(n36607), .C(music_cnt[1]), 
         .Z(n36613)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i27681_3_lut.init = 16'h8080;
    LUT4 i27675_4_lut (.A(music_cnt[6]), .B(music_cnt[3]), .C(music_cnt[0]), 
         .D(music_cnt[2]), .Z(n36607)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27675_4_lut.init = 16'h8000;
    LUT4 i16_4_lut_then_1_lut (.A(cnt_run[1]), .Z(n38730)) /* synthesis lut_function=(A) */ ;
    defparam i16_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 i15164_4_lut (.A(state[0]), .B(state_back[0]), .C(state[1]), 
         .D(n9384), .Z(n11397)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(41[11:16])
    defparam i15164_4_lut.init = 16'hc8ca;
    CCU2D add_147_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33501), .COUT(n33502), .S0(n383[7]), .S1(n383[8]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_9.INIT0 = 16'h5aaa;
    defparam add_147_9.INIT1 = 16'h5aaa;
    defparam add_147_9.INJECT1_0 = "NO";
    defparam add_147_9.INJECT1_1 = "NO";
    CCU2D add_147_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33500), .COUT(n33501), .S0(n383[5]), .S1(n383[6]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_7.INIT0 = 16'h5aaa;
    defparam add_147_7.INIT1 = 16'h5aaa;
    defparam add_147_7.INJECT1_0 = "NO";
    defparam add_147_7.INJECT1_1 = "NO";
    CCU2D add_147_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33499), .COUT(n33500), .S0(n383[3]), .S1(n383[4]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_5.INIT0 = 16'h5aaa;
    defparam add_147_5.INIT1 = 16'h5aaa;
    defparam add_147_5.INJECT1_0 = "NO";
    defparam add_147_5.INJECT1_1 = "NO";
    CCU2D add_147_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33498), .COUT(n33499), .S0(n383[1]), .S1(n383[2]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_3.INIT0 = 16'h5aaa;
    defparam add_147_3.INIT1 = 16'h5aaa;
    defparam add_147_3.INJECT1_0 = "NO";
    defparam add_147_3.INJECT1_1 = "NO";
    CCU2D add_147_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33498), .S1(n383[0]));   // c:/users/argon/desktop/verilog/ending/music_player.v(312[42:58])
    defparam add_147_1.INIT0 = 16'hF000;
    defparam add_147_1.INIT1 = 16'h5555;
    defparam add_147_1.INJECT1_0 = "NO";
    defparam add_147_1.INJECT1_1 = "NO";
    CCU2D add_132_9 (.A0(music_cnt_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33496), .S0(n292[7]), .S1(n292[8]));   // c:/users/argon/desktop/verilog/ending/music_player.v(283[23:39])
    defparam add_132_9.INIT0 = 16'h5aaa;
    defparam add_132_9.INIT1 = 16'h5aaa;
    defparam add_132_9.INJECT1_0 = "NO";
    defparam add_132_9.INJECT1_1 = "NO";
    CCU2D add_132_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33495), .COUT(n33496), .S0(n292[5]), .S1(n292[6]));   // c:/users/argon/desktop/verilog/ending/music_player.v(283[23:39])
    defparam add_132_7.INIT0 = 16'h5aaa;
    defparam add_132_7.INIT1 = 16'h5aaa;
    defparam add_132_7.INJECT1_0 = "NO";
    defparam add_132_7.INJECT1_1 = "NO";
    CCU2D add_132_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33494), .COUT(n33495), .S0(n292[3]), .S1(n292[4]));   // c:/users/argon/desktop/verilog/ending/music_player.v(283[23:39])
    defparam add_132_5.INIT0 = 16'h5aaa;
    defparam add_132_5.INIT1 = 16'h5aaa;
    defparam add_132_5.INJECT1_0 = "NO";
    defparam add_132_5.INJECT1_1 = "NO";
    CCU2D add_132_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33493), .COUT(n33494), .S0(n292[1]), .S1(n292[2]));   // c:/users/argon/desktop/verilog/ending/music_player.v(283[23:39])
    defparam add_132_3.INIT0 = 16'h5aaa;
    defparam add_132_3.INIT1 = 16'h5aaa;
    defparam add_132_3.INJECT1_0 = "NO";
    defparam add_132_3.INJECT1_1 = "NO";
    CCU2D add_132_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33493), .S1(n292[0]));   // c:/users/argon/desktop/verilog/ending/music_player.v(283[23:39])
    defparam add_132_1.INIT0 = 16'hF000;
    defparam add_132_1.INIT1 = 16'h5555;
    defparam add_132_1.INJECT1_0 = "NO";
    defparam add_132_1.INJECT1_1 = "NO";
    CCU2D add_114_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33492), 
          .S0(n131[7]));   // c:/users/argon/desktop/verilog/ending/music_player.v(263[17:29])
    defparam add_114_9.INIT0 = 16'h5aaa;
    defparam add_114_9.INIT1 = 16'h0000;
    defparam add_114_9.INJECT1_0 = "NO";
    defparam add_114_9.INJECT1_1 = "NO";
    LUT4 i7_4_lut_rep_684 (.A(n9), .B(n14), .C(uart_recv_data[4]), .D(uart_recv_data[7]), 
         .Z(n38589)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i7_4_lut_rep_684.init = 16'hffef;
    LUT4 uart_recv_data_7__I_0_i16_1_lut_4_lut (.A(n9), .B(n14), .C(uart_recv_data[4]), 
         .D(uart_recv_data[7]), .Z(uart_data_busy_N_1670)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam uart_recv_data_7__I_0_i16_1_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_293 (.A(cnt_run[5]), .B(cnt_run[4]), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(260[6] 287[13])
    defparam i1_2_lut_adj_293.init = 16'h2222;
    LUT4 i1_2_lut_rep_646_4_lut (.A(n38655), .B(n38654), .C(n38653), .D(cnt_run[1]), 
         .Z(n38551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_646_4_lut.init = 16'hfffe;
    LUT4 i28105_3_lut_4_lut (.A(uart_music_mode), .B(sys_clk_c_enable_138), 
         .C(sys_rst_n_c), .D(warning), .Z(sys_clk_c_enable_14)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i28105_3_lut_4_lut.init = 16'hf0d0;
    LUT4 i16_4_lut_else_1_lut (.A(cnt_run[0]), .B(cnt_run[1]), .C(n17), 
         .D(n131[1]), .Z(n38729)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B !(D))) */ ;
    defparam i16_4_lut_else_1_lut.init = 16'hbf8c;
    CCU2D add_114_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33491), .COUT(n33492), .S0(n131[5]), .S1(n131[6]));   // c:/users/argon/desktop/verilog/ending/music_player.v(263[17:29])
    defparam add_114_7.INIT0 = 16'h5aaa;
    defparam add_114_7.INIT1 = 16'h5aaa;
    defparam add_114_7.INJECT1_0 = "NO";
    defparam add_114_7.INJECT1_1 = "NO";
    CCU2D add_114_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33490), .COUT(n33491), .S0(n131[3]), .S1(n131[4]));   // c:/users/argon/desktop/verilog/ending/music_player.v(263[17:29])
    defparam add_114_5.INIT0 = 16'h5aaa;
    defparam add_114_5.INIT1 = 16'h5aaa;
    defparam add_114_5.INJECT1_0 = "NO";
    defparam add_114_5.INJECT1_1 = "NO";
    CCU2D add_114_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33489), .COUT(n33490), .S0(n131[1]), .S1(n131[2]));   // c:/users/argon/desktop/verilog/ending/music_player.v(263[17:29])
    defparam add_114_3.INIT0 = 16'h5aaa;
    defparam add_114_3.INIT1 = 16'h5aaa;
    defparam add_114_3.INJECT1_0 = "NO";
    defparam add_114_3.INJECT1_1 = "NO";
    CCU2D add_114_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33489), .S1(n131[0]));   // c:/users/argon/desktop/verilog/ending/music_player.v(263[17:29])
    defparam add_114_1.INIT0 = 16'hF000;
    defparam add_114_1.INIT1 = 16'h5555;
    defparam add_114_1.INJECT1_0 = "NO";
    defparam add_114_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_624_3_lut_4_lut (.A(warning), .B(sys_clk_c_enable_138), 
         .C(n36305), .D(sys_rst_n_c), .Z(sys_clk_c_enable_234)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(102[7] 324[5])
    defparam i1_2_lut_rep_624_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_294 (.A(sys_rst_n_c), .B(n14_adj_1844), .C(n38592), 
         .D(warning), .Z(sys_clk_c_enable_187)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam i1_4_lut_adj_294.init = 16'h880a;
    LUT4 mux_366_i1_4_lut (.A(n120[3]), .B(uart_recv_data[0]), .C(sys_clk_c_enable_138), 
         .D(warning), .Z(music_tone_7__N_1601[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(102[7] 324[5])
    defparam mux_366_i1_4_lut.init = 16'hcac0;
    LUT4 n36269_bdd_4_lut (.A(sys_clk_c_enable_148), .B(cnt_run[7]), .C(sys_rst_n_c), 
         .D(n38653), .Z(n38175)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam n36269_bdd_4_lut.init = 16'h0020;
    LUT4 i1120_2_lut_rep_570 (.A(n381), .B(n24592), .Z(n38475)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(314[26] 317[24])
    defparam i1120_2_lut_rep_570.init = 16'h2222;
    LUT4 i27603_3_lut_4_lut (.A(n381), .B(n24592), .C(state_back[0]), 
         .D(state[0]), .Z(n36533)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(314[26] 317[24])
    defparam i27603_3_lut_4_lut.init = 16'hff20;
    LUT4 gnd_bdd_2_lut_28614_rep_614_3_lut_4_lut (.A(n38654), .B(n38708), 
         .C(n38175), .D(cnt_run[6]), .Z(sys_clk_c_enable_77)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam gnd_bdd_2_lut_28614_rep_614_3_lut_4_lut.init = 16'h0040;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n38654), .B(n38708), .C(n38653), .D(n17), 
         .Z(n6)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n38654), .B(n38708), .C(n38655), .D(n17), 
         .Z(n36272)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_748 (.A(cnt_run[4]), .B(cnt_run[5]), .Z(n38653)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_748.init = 16'heeee;
    LUT4 i2_3_lut_rep_686_4_lut (.A(cnt_run[4]), .B(cnt_run[5]), .C(n38654), 
         .D(n38655), .Z(n38591)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_686_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_749 (.A(cnt_run[2]), .B(cnt_run[3]), .Z(n38654)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_2_lut_rep_749.init = 16'heeee;
    LUT4 i1_2_lut_rep_673_3_lut_4_lut (.A(cnt_run[2]), .B(cnt_run[3]), .C(cnt_run[6]), 
         .D(n38708), .Z(n38578)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_2_lut_rep_673_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_750 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n38655)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_750.init = 16'heeee;
    LUT4 i1_2_lut_adj_295 (.A(sys_rst_n_c), .B(warning_time_7__N_144), .Z(clk_1s_enable_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(4[8:17])
    defparam i1_2_lut_adj_295.init = 16'h8888;
    LUT4 i1_2_lut_rep_751 (.A(state[1]), .B(state[0]), .Z(n38656)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_2_lut_rep_751.init = 16'hbbbb;
    LUT4 i28092_2_lut_3_lut_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(warning), 
         .D(sys_clk_c_enable_138), .Z(sys_clk_c_enable_148)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i28092_2_lut_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 recv_done_flag_I_0_2_lut_rep_758 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_138)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(58[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_758.init = 16'h4444;
    LUT4 i28034_2_lut_rep_648_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(sys_rst_n_c), .D(warning), .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(58[25:55])
    defparam i28034_2_lut_rep_648_3_lut_4_lut.init = 16'hb000;
    LUT4 mux_366_i2_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[1]), 
         .D(n670[1]), .Z(music_tone_7__N_1601[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(58[25:55])
    defparam mux_366_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_366_i3_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[2]), 
         .D(n670[2]), .Z(music_tone_7__N_1601[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(58[25:55])
    defparam mux_366_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 i28196_2_lut_rep_692_3_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(warning), .Z(sys_clk_c_enable_192)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(58[25:55])
    defparam i28196_2_lut_rep_692_3_lut.init = 16'hb0b0;
    LUT4 mux_366_i5_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[4]), 
         .D(n670[4]), .Z(music_tone_7__N_1601[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(58[25:55])
    defparam mux_366_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_687_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_music_mode), 
         .Z(n38592)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(58[25:55])
    defparam i1_2_lut_rep_687_3_lut.init = 16'hb0b0;
    LUT4 i12455_4_lut (.A(sys_clk_c_enable_148), .B(n36272), .C(n50), 
         .D(n4_adj_1845), .Z(sys_clk_c_enable_145)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i12455_4_lut.init = 16'ha8a0;
    LUT4 i1_2_lut_adj_296 (.A(cnt_run[5]), .B(cnt_run[4]), .Z(n4_adj_1845)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_296.init = 16'h4444;
    LUT4 i1_2_lut_rep_803 (.A(cnt_run[1]), .B(cnt_run[0]), .Z(n38708)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_803.init = 16'h2222;
    LUT4 i1_2_lut_rep_723_3_lut_4_lut (.A(cnt_run[1]), .B(cnt_run[0]), .C(cnt_run[3]), 
         .D(cnt_run[2]), .Z(n38628)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_723_3_lut_4_lut.init = 16'h0002;
    LUT4 i12453_4_lut (.A(sys_clk_c_enable_148), .B(n36079), .C(n48), 
         .D(n4_adj_1846), .Z(sys_clk_c_enable_146)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i12453_4_lut.init = 16'ha8a0;
    LUT4 i1_2_lut_adj_297 (.A(cnt_run[2]), .B(cnt_run[3]), .Z(n4_adj_1846)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_2_lut_adj_297.init = 16'h4444;
    LUT4 i1_4_lut_adj_298 (.A(n34054), .B(clk_cnt[11]), .C(n12), .D(n8_adj_1847), 
         .Z(n24592)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(305[24:45])
    defparam i1_4_lut_adj_298.init = 16'hbfff;
    LUT4 i1_4_lut_adj_299 (.A(sys_clk_c_enable_148), .B(n36079), .C(n47), 
         .D(n4_adj_1848), .Z(sys_clk_c_enable_147)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_299.init = 16'ha8a0;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[8]), .C(n14_adj_1849), .D(clk_cnt[14]), 
         .Z(n34054)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(305[24:45])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(clk_cnt[10]), .B(clk_cnt[5]), .C(clk_cnt[13]), .D(clk_cnt[9]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_300 (.A(clk_cnt[7]), .B(clk_cnt[6]), .Z(n8_adj_1847)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_300.init = 16'h8888;
    LUT4 i1_2_lut_adj_301 (.A(cnt_run[2]), .B(cnt_run[3]), .Z(n4_adj_1848)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_2_lut_adj_301.init = 16'h2222;
    LUT4 i6_4_lut (.A(clk_cnt[0]), .B(clk_cnt[12]), .C(clk_cnt[3]), .D(clk_cnt[4]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(305[24:45])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[2]), .B(clk_cnt[15]), .C(clk_cnt[1]), .Z(n14_adj_1849)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(305[24:45])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_302 (.A(state[1]), .B(state[0]), .Z(n36305)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_2_lut_adj_302.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(n17), .B(n38655), .C(n38653), .D(n38708), 
         .Z(n36079)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_4_lut (.A(n17), .B(n38653), .C(n38578), .D(cnt_run[7]), 
         .Z(n36310)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i28107_4_lut (.A(warning), .B(sys_clk_c_enable_14), .C(n38528), 
         .D(sys_clk_c_enable_138), .Z(sys_clk_c_enable_12)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i28107_4_lut.init = 16'hcc4c;
    LUT4 i1_2_lut_4_lut (.A(n38551), .B(n38656), .C(cnt_run[0]), .D(sys_clk_c_enable_138), 
         .Z(n14_adj_1844)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(85[10] 324[5])
    defparam i1_2_lut_4_lut.init = 16'hff01;
    LUT4 mux_262_i2_4_lut (.A(uart_music_mode), .B(n125), .C(warning), 
         .D(n38528), .Z(n670[1])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/music_player.v(111[8] 323[6])
    defparam mux_262_i2_4_lut.init = 16'h05c5;
    LUT4 i1_2_lut_adj_303 (.A(uart_recv_data[5]), .B(uart_recv_data[0]), 
         .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_303.init = 16'heeee;
    LUT4 i6_4_lut_adj_304 (.A(uart_recv_data[3]), .B(uart_recv_data[6]), 
         .C(uart_recv_data[1]), .D(uart_recv_data[2]), .Z(n14)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i6_4_lut_adj_304.init = 16'hefff;
    CCU2D sub_2284_add_2_14 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33665), .S1(n381));
    defparam sub_2284_add_2_14.INIT0 = 16'h5555;
    defparam sub_2284_add_2_14.INIT1 = 16'h0000;
    defparam sub_2284_add_2_14.INJECT1_0 = "NO";
    defparam sub_2284_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_2284_add_2_12 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33664), .COUT(n33665));
    defparam sub_2284_add_2_12.INIT0 = 16'h5555;
    defparam sub_2284_add_2_12.INIT1 = 16'h5555;
    defparam sub_2284_add_2_12.INJECT1_0 = "NO";
    defparam sub_2284_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_2284_add_2_10 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33663), .COUT(n33664));
    defparam sub_2284_add_2_10.INIT0 = 16'h5555;
    defparam sub_2284_add_2_10.INIT1 = 16'h5555;
    defparam sub_2284_add_2_10.INJECT1_0 = "NO";
    defparam sub_2284_add_2_10.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, uart_recv_done, 
            uart_rxd_c, uart_recv_data, GND_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output uart_recv_done;
    input uart_rxd_c;
    output [7:0]uart_recv_data;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(43[12:18])
    
    wire sys_clk_c_enable_5, n38690, n21056, uart_rxd_d1, uart_rxd_d0, 
        rx_flag, n22281, uart_data_7__N_1456, n22347, sys_clk_c_enable_173, 
        n21053, n21050, n21047, n21044, n21059, n21041, n21068;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(40[12:19])
    
    wire n22391;
    wire [15:0]n69;
    wire [15:0]n1918;
    
    wire n36372, n36332, n36373, n36360, n36359, n36339, sys_clk_c_enable_306, 
        n36338, n38611, n38684, n38613, n31, n36318, n33951, n36296, 
        n36377, n4, n21, n33576, n33575, n33574, n33573, n33572, 
        n33571, n33570, n33569, n36353, n38685, n38683, n7, n28, 
        n15, n14, n38570;
    
    FD1P3IX rxdata__i0 (.D(n21056), .SP(sys_clk_c_enable_5), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n22281), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_1456), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n21053), .SP(sys_clk_c_enable_173), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    FD1P3IX rxdata__i6 (.D(n21050), .SP(sys_clk_c_enable_173), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n21047), .SP(sys_clk_c_enable_173), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n21044), .SP(sys_clk_c_enable_173), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n21059), .SP(sys_clk_c_enable_173), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n21041), .SP(sys_clk_c_enable_173), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n21068), .SP(sys_clk_c_enable_173), .CD(n38690), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_2903__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[7]), .C(n1918[8]), .D(n36372), 
         .Z(n21053)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_267 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n1918[7]), 
         .D(n36332), .Z(n21050)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_267.init = 16'heca0;
    LUT4 i1_4_lut_adj_268 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n1918[6]), 
         .D(n36373), .Z(n21047)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_268.init = 16'heca0;
    LUT4 i1_4_lut_adj_269 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n1918[5]), 
         .D(n36360), .Z(n21044)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_269.init = 16'heca0;
    LUT4 i1_4_lut_adj_270 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n1918[4]), 
         .D(n36359), .Z(n21059)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_270.init = 16'heca0;
    LUT4 i1_4_lut_adj_271 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n1918[3]), 
         .D(n36339), .Z(n21041)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_271.init = 16'heca0;
    FD1P3IX rx_cnt_FSM_i1 (.D(n1918[0]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[1]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_272 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n1918[2]), 
         .D(n36338), .Z(n21068)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_272.init = 16'heca0;
    FD1P3IX rx_cnt_FSM_i2 (.D(n1918[1]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[2]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n1918[2]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[3]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n1918[3]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[4]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n1918[4]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[5]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n1918[5]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[6]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n1918[6]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[7]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n1918[7]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[8]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n1918[8]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(uart_data_7__N_1456));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_1456), .SP(sys_clk_c_enable_306), 
            .CD(n38690), .CK(sys_clk_c), .Q(n1918[10]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n1918[10]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[11]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n1918[11]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[12]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n1918[12]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[13]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i14 (.D(n1918[13]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[14]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i15 (.D(n1918[14]), .SP(sys_clk_c_enable_306), .CD(n38690), 
            .CK(sys_clk_c), .Q(n1918[15]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_613_4_lut (.A(n38611), .B(n38684), .C(n38613), .D(n31), 
         .Z(sys_clk_c_enable_5)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_3_lut_rep_613_4_lut.init = 16'h00fe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n38611), .B(n38684), .C(n1918[6]), .D(n1918[7]), 
         .Z(n36372)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_273 (.A(n38611), .B(n38684), .C(n1918[8]), 
         .D(n1918[7]), .Z(n36373)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_273.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_274 (.A(n38613), .B(n38684), .C(n1918[2]), 
         .D(n1918[1]), .Z(n36339)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_274.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_275 (.A(n38613), .B(n38684), .C(n1918[3]), 
         .D(n1918[1]), .Z(n36338)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_275.init = 16'hfffe;
    LUT4 i2_4_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .C(clk_cnt[0]), .D(n36318), 
         .Z(n33951)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[2]), .Z(n36318)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_276 (.A(clk_cnt[6]), .B(clk_cnt[5]), .Z(n36296)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_276.init = 16'h8888;
    LUT4 i2_4_lut_adj_277 (.A(n36318), .B(n36377), .C(n36296), .D(n4), 
         .Z(sys_clk_c_enable_306)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i2_4_lut_adj_277.init = 16'h0020;
    LUT4 i1_2_lut_adj_278 (.A(clk_cnt[4]), .B(clk_cnt[0]), .Z(n4)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i1_2_lut_adj_278.init = 16'hbbbb;
    LUT4 i51_4_lut (.A(uart_rxd_d1), .B(n21), .C(uart_rxd_d0), .D(rx_flag), 
         .Z(n22281)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(39[12:23])
    defparam i51_4_lut.init = 16'hce0a;
    LUT4 i1_2_lut_adj_279 (.A(uart_data_7__N_1456), .B(n31), .Z(n21)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(29[23:32])
    defparam i1_2_lut_adj_279.init = 16'hdddd;
    CCU2D clk_cnt_2903_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33576), .S0(n69[15]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2903_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33575), .COUT(n33576), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33574), .COUT(n33575), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33573), .COUT(n33574), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33572), .COUT(n33573), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33571), .COUT(n33572), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33570), .COUT(n33571), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33569), .COUT(n33570), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2903_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2903_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33569), .S1(n69[0]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2903_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2903_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2903_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_280 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n1918[1]), 
         .D(n36353), .Z(n21056)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_280.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_281 (.A(n1918[1]), .B(n38685), .C(n38683), 
         .D(n38684), .Z(n36332)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_281.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_282 (.A(n1918[1]), .B(n38685), .C(n1918[4]), 
         .D(n38613), .Z(n36360)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_282.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_283 (.A(n1918[1]), .B(n38685), .C(n1918[5]), 
         .D(n38613), .Z(n36359)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_283.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_284 (.A(n1918[7]), .B(n38683), .C(n38685), 
         .D(n38684), .Z(n36353)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_284.init = 16'hfffe;
    LUT4 i4_4_lut (.A(n7), .B(n36377), .C(clk_cnt[0]), .D(clk_cnt[6]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_285 (.A(clk_cnt[1]), .B(clk_cnt[5]), .C(clk_cnt[2]), 
         .D(clk_cnt[4]), .Z(n7)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i2_4_lut_adj_285.init = 16'hbfff;
    LUT4 i1_2_lut_adj_286 (.A(clk_cnt[3]), .B(n28), .Z(n36377)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i1_2_lut_adj_286.init = 16'heeee;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[14]), .C(n14), .D(clk_cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[8]), .B(clk_cnt[12]), .C(clk_cnt[9]), .D(clk_cnt[13]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[7]), .B(clk_cnt[10]), .C(clk_cnt[15]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_778 (.A(n1918[6]), .B(n1918[8]), .Z(n38683)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_778.init = 16'heeee;
    LUT4 i1_2_lut_rep_708_3_lut (.A(n1918[6]), .B(n1918[8]), .C(n1918[7]), 
         .Z(n38613)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_708_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_779 (.A(n1918[4]), .B(n1918[5]), .Z(n38684)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_779.init = 16'heeee;
    LUT4 i1_2_lut_rep_665_3_lut_4_lut (.A(n1918[4]), .B(n1918[5]), .C(n38685), 
         .D(n1918[1]), .Z(n38570)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_665_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_780 (.A(n1918[2]), .B(n1918[3]), .Z(n38685)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_780.init = 16'heeee;
    LUT4 i1_2_lut_rep_706_3_lut (.A(n1918[2]), .B(n1918[3]), .C(n1918[1]), 
         .Z(n38611)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_706_3_lut.init = 16'hfefe;
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n22347), 
            .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=460, LSE_RLINE=467 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    LUT4 i3190_1_lut_rep_785 (.A(rx_flag), .Z(n38690)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(70[10] 78[8])
    defparam i3190_1_lut_rep_785.init = 16'h5555;
    LUT4 i3192_2_lut_4_lut_4_lut (.A(rx_flag), .B(n38613), .C(n38570), 
         .D(n31), .Z(sys_clk_c_enable_173)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(70[10] 78[8])
    defparam i3192_2_lut_4_lut_4_lut.init = 16'h55fd;
    LUT4 i2_4_lut_4_lut (.A(rx_flag), .B(n28), .C(n36296), .D(n33951), 
         .Z(n22391)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(70[10] 78[8])
    defparam i2_4_lut_4_lut.init = 16'hfddd;
    FD1P3JX rx_cnt_FSM_i0 (.D(n1918[15]), .SP(sys_clk_c_enable_306), .PD(n38690), 
            .CK(sys_clk_c), .Q(n1918[0]));   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i15128_1_lut (.A(uart_data_7__N_1456), .Z(n22347)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(101[23:36])
    defparam i15128_1_lut.init = 16'h5555;
    FD1S3IX clk_cnt_2903__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n22391), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart_recv.v(87[24:38])
    defparam clk_cnt_2903__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module BCD_U3
//

module BCD_U3 (\min_warning[4] , \min_warning[3] , \min_warning[1] , \min_warning_ones[1] , 
            \min_warning[2] , \hundres_0__N_316[3] , n38458, \min_warning[7] , 
            \hundres_1__N_306[3] , n38457, \hundres_1__N_306[3]_adj_12 , 
            \min[7] , n38679, \min_warning_ones[3] , \min_warning_tens[0] , 
            n37756, \hundres_0__N_313[1] , sw1_c, n9925, \min_warning[5] , 
            \min_warning[6] , n38608) /* synthesis syn_module_defined=1 */ ;
    input \min_warning[4] ;
    input \min_warning[3] ;
    input \min_warning[1] ;
    output \min_warning_ones[1] ;
    input \min_warning[2] ;
    output \hundres_0__N_316[3] ;
    output n38458;
    input \min_warning[7] ;
    output \hundres_1__N_306[3] ;
    input n38457;
    input \hundres_1__N_306[3]_adj_12 ;
    input \min[7] ;
    input n38679;
    output \min_warning_ones[3] ;
    output \min_warning_tens[0] ;
    output n37756;
    output \hundres_0__N_313[1] ;
    input sw1_c;
    output n9925;
    input \min_warning[5] ;
    input \min_warning[6] ;
    output n38608;
    
    
    wire n38569;
    wire [3:0]hundres_1__N_305;
    
    wire n38503, n38740, n38739, n38431;
    wire [3:0]hundres_0__N_316;
    
    wire n38472;
    wire [3:0]hundres_1__N_307;
    
    wire n38680, n38743, n38742, n38536;
    wire [3:0]hundres_1__N_306;
    
    wire n38481, n38492;
    
    LUT4 i10339_2_lut_rep_598_3_lut_4_lut (.A(\min_warning[4] ), .B(n38569), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(n38503)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10339_2_lut_rep_598_3_lut_4_lut.init = 16'heee0;
    LUT4 i4194_2_lut_rep_567_4_lut_4_lut_then_4_lut (.A(\min_warning[3] ), 
         .B(n38569), .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), 
         .Z(n38740)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4194_2_lut_rep_567_4_lut_4_lut_then_4_lut.init = 16'h2526;
    LUT4 i4194_2_lut_rep_567_4_lut_4_lut_else_4_lut (.A(\min_warning[3] ), 
         .B(n38569), .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), 
         .Z(n38739)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4194_2_lut_rep_567_4_lut_4_lut_else_4_lut.init = 16'h9592;
    LUT4 i3897_2_lut_4_lut_4_lut (.A(n38431), .B(\min_warning[1] ), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_warning_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3897_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4048_2_lut_3_lut_3_lut_4_lut (.A(n38472), .B(\min_warning[2] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4048_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4033_2_lut_rep_526_4_lut_4_lut (.A(n38472), .B(\min_warning[2] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38431)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4033_2_lut_rep_526_4_lut_4_lut.init = 16'h332c;
    LUT4 i4055_3_lut_4_lut_3_lut_4_lut (.A(n38472), .B(\min_warning[2] ), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4055_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 mux_2846_i3_3_lut_4_lut_then_4_lut (.A(n38458), .B(\min_warning[7] ), 
         .C(n38680), .D(\hundres_1__N_306[3] ), .Z(n38743)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(21[6] 22[23])
    defparam mux_2846_i3_3_lut_4_lut_then_4_lut.init = 16'h6a2a;
    LUT4 i4041_3_lut_4_lut (.A(n38472), .B(\min_warning[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4041_3_lut_4_lut.init = 16'h998a;
    LUT4 mux_2846_i3_3_lut_4_lut_else_4_lut (.A(n38457), .B(\hundres_1__N_306[3]_adj_12 ), 
         .C(\min[7] ), .D(n38679), .Z(n38742)) /* synthesis lut_function=(!(A (C (D))+!A !(B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(21[6] 22[23])
    defparam mux_2846_i3_3_lut_4_lut_else_4_lut.init = 16'h4aaa;
    LUT4 i3912_2_lut_3_lut_3_lut_4_lut (.A(n38431), .B(\min_warning[1] ), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\min_warning_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3912_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3919_3_lut_4_lut_3_lut_4_lut (.A(n38431), .B(\min_warning[1] ), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(\min_warning_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3919_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 hundres_0__N_316_0__bdd_3_lut_28357_4_lut (.A(n38431), .B(\min_warning[1] ), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(n37756)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam hundres_0__N_316_0__bdd_3_lut_28357_4_lut.init = 16'h998a;
    LUT4 i3307_3_lut_rep_631 (.A(\min_warning[4] ), .B(n38569), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38536)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3307_3_lut_rep_631.init = 16'hffe0;
    LUT4 i4230_3_lut_4_lut (.A(\min_warning[4] ), .B(n38569), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4230_3_lut_4_lut.init = 16'h998c;
    LUT4 i4181_3_lut_4_lut_3_lut_4_lut (.A(n38680), .B(\min_warning[7] ), 
         .C(n38458), .D(\hundres_1__N_306[3] ), .Z(\hundres_0__N_313[1] )) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i4181_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    PFUMX i28745 (.BLUT(n38742), .ALUT(n38743), .C0(sw1_c), .Z(n9925));
    PFUMX i28743 (.BLUT(n38739), .ALUT(n38740), .C0(\min_warning[4] ), 
          .Z(n38472));
    LUT4 i4202_3_lut_4_lut (.A(\min_warning[4] ), .B(n38536), .C(\min_warning[3] ), 
         .D(n38481), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4202_3_lut_4_lut.init = 16'h6966;
    LUT4 i4207_2_lut_rep_587_3_lut (.A(\min_warning[4] ), .B(n38536), .C(\min_warning[3] ), 
         .Z(n38492)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4207_2_lut_rep_587_3_lut.init = 16'hf6f6;
    LUT4 i3379_2_lut_rep_775 (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .Z(n38680)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3379_2_lut_rep_775.init = 16'heeee;
    LUT4 i3525_2_lut_rep_703_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n38608)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3525_2_lut_rep_703_3_lut.init = 16'he0e0;
    LUT4 i12409_2_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_305[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i12409_2_lut_3_lut.init = 16'h1010;
    LUT4 i3656_3_lut_4_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(hundres_1__N_305[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i3656_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i3648_2_lut_rep_664_3_lut_3_lut (.A(\min_warning[5] ), .B(\min_warning[6] ), 
         .C(\min_warning[7] ), .Z(n38569)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i3648_2_lut_rep_664_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i4209_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38503), 
         .C(hundres_1__N_306[1]), .D(n38492), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4209_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3461_3_lut_rep_576_4_lut (.A(hundres_1__N_305[1]), .B(n38503), 
         .C(hundres_1__N_306[1]), .D(n38492), .Z(n38481)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3461_3_lut_rep_576_4_lut.init = 16'hf666;
    LUT4 i4216_3_lut_rep_553_4_lut_3_lut_4_lut (.A(hundres_1__N_305[1]), .B(n38503), 
         .C(hundres_1__N_306[1]), .D(n38492), .Z(n38458)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4216_3_lut_rep_553_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4244_3_lut_4_lut_3_lut_4_lut (.A(\min_warning[4] ), .B(n38569), 
         .C(hundres_1__N_305[1]), .D(hundres_1__N_305[2]), .Z(\hundres_1__N_306[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4244_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    
endmodule
//
// Verilog Description of module BCD_U4
//

module BCD_U4 (\min[1] , \min_tens[0] , \min_ones[3] , \min_ones[1] , 
            n37757, \min[2] , \hundres_0__N_316[3] , \min[4] , \min[6] , 
            \min[5] , \min[7] , \hundres_1__N_306[3] , \min[3] , n38457, 
            n38679, \hundres_0__N_313[1] , n38607) /* synthesis syn_module_defined=1 */ ;
    input \min[1] ;
    output \min_tens[0] ;
    output \min_ones[3] ;
    output \min_ones[1] ;
    output n37757;
    input \min[2] ;
    output \hundres_0__N_316[3] ;
    input \min[4] ;
    input \min[6] ;
    input \min[5] ;
    input \min[7] ;
    output \hundres_1__N_306[3] ;
    input \min[3] ;
    output n38457;
    output n38679;
    output \hundres_0__N_313[1] ;
    output n38607;
    
    
    wire n38430;
    wire [3:0]hundres_0__N_316;
    
    wire n38469;
    wire [3:0]hundres_1__N_307;
    wire [3:0]hundres_1__N_306;
    
    wire n38501;
    
    LUT4 i4601_3_lut_4_lut_3_lut_4_lut (.A(n38430), .B(\min[1] ), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4601_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4594_2_lut_3_lut_3_lut_4_lut (.A(n38430), .B(\min[1] ), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4594_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4579_2_lut_4_lut_4_lut (.A(n38430), .B(\min[1] ), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\min_ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4579_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 hundres_0__N_316_0__bdd_3_lut_4_lut (.A(n38430), .B(\min[1] ), 
         .C(hundres_0__N_316[1]), .D(hundres_0__N_316[2]), .Z(n37757)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam hundres_0__N_316_0__bdd_3_lut_4_lut.init = 16'h998a;
    LUT4 i4622_2_lut_3_lut_3_lut_4_lut (.A(n38469), .B(\min[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4622_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4607_2_lut_rep_525_4_lut_4_lut (.A(n38469), .B(\min[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38430)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4607_2_lut_rep_525_4_lut_4_lut.init = 16'h332c;
    LUT4 i4629_3_lut_4_lut_3_lut_4_lut (.A(n38469), .B(\min[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4629_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 min_4__bdd_4_lut_28811 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam min_4__bdd_4_lut_28811.init = 16'h0db0;
    LUT4 i4615_3_lut_4_lut (.A(n38469), .B(\min[2] ), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4615_3_lut_4_lut.init = 16'h998a;
    LUT4 min_4__bdd_4_lut_28812 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(n38501)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam min_4__bdd_4_lut_28812.init = 16'h2962;
    LUT4 min_4__bdd_4_lut_28817 (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), 
         .D(\min[7] ), .Z(\hundres_1__N_306[3] )) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam min_4__bdd_4_lut_28817.init = 16'h83c8;
    LUT4 i4678_3_lut_rep_552_4_lut_3_lut_4_lut (.A(\min[3] ), .B(n38501), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38457)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4678_3_lut_rep_552_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4671_2_lut_3_lut_3_lut_4_lut (.A(\min[3] ), .B(n38501), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4671_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4643_3_lut_4_lut_3_lut_4_lut (.A(n38679), .B(\min[7] ), .C(\hundres_1__N_306[3] ), 
         .D(n38457), .Z(\hundres_0__N_313[1] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4643_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 min_4__bdd_4_lut (.A(\min[4] ), .B(\min[6] ), .C(\min[5] ), .D(\min[7] ), 
         .Z(hundres_1__N_306[2])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam min_4__bdd_4_lut.init = 16'h4204;
    LUT4 i4656_2_lut_rep_564_4_lut_4_lut (.A(\min[3] ), .B(n38501), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(n38469)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4656_2_lut_rep_564_4_lut_4_lut.init = 16'h554a;
    LUT4 i4571_2_lut_rep_774 (.A(\min[6] ), .B(\min[5] ), .Z(n38679)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4571_2_lut_rep_774.init = 16'heeee;
    LUT4 i3457_2_lut_rep_702_3_lut (.A(\min[6] ), .B(\min[5] ), .C(\min[7] ), 
         .Z(n38607)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3457_2_lut_rep_702_3_lut.init = 16'he0e0;
    LUT4 i4664_3_lut_4_lut (.A(\min[3] ), .B(n38501), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4664_3_lut_4_lut.init = 16'h998c;
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000)_U2 
//

module \divide(WIDTH=32,N=12000000)_U2  (clk_1s, sys_clk_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    
    wire clk_1s /* synthesis is_clock=1, SET_AS_NETWORK=clk_1s */ ;   // c:/users/argon/desktop/verilog/ending/top.v(28[7:13])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire clkout_N_259, n33528;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/verilog/ending/clock.v(11[19:24])
    wire [31:0]n101;
    
    wire n33529;
    wire [31:0]n200;
    
    wire n22389, n33527, n33659, n33658, n33657, n33656, n33526, 
        n33655, n33654, n33525, n33524, n33653, n33523, n33652, 
        n33651, n33650, n33522, n33649, n33521, n33648, n33520, 
        n33519, n33518, n36823, n27_adj_1836, n32_adj_1837, n28_adj_1838, 
        n28_adj_1839, n24, n16, n29_adj_1840, n26_adj_1841, n26_adj_1842, 
        n20, n33533, n33532, n33531, n33530;
    
    FD1S3AX clk_p_29 (.D(clkout_N_259), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=37, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=35 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_2895_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33528), .COUT(n33529), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_23.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2895__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n22389), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i0.GSR = "ENABLED";
    CCU2D cnt_p_2895_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33527), .COUT(n33528), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_21.INJECT1_1 = "NO";
    CCU2D add_24704_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33659), 
          .S0(clkout_N_259));
    defparam add_24704_cout.INIT0 = 16'h0000;
    defparam add_24704_cout.INIT1 = 16'h0000;
    defparam add_24704_cout.INJECT1_0 = "NO";
    defparam add_24704_cout.INJECT1_1 = "NO";
    CCU2D add_24704_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33658), .COUT(n33659));
    defparam add_24704_24.INIT0 = 16'h5555;
    defparam add_24704_24.INIT1 = 16'h5555;
    defparam add_24704_24.INJECT1_0 = "NO";
    defparam add_24704_24.INJECT1_1 = "NO";
    CCU2D add_24704_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33657), .COUT(n33658));
    defparam add_24704_22.INIT0 = 16'h5555;
    defparam add_24704_22.INIT1 = 16'h5555;
    defparam add_24704_22.INJECT1_0 = "NO";
    defparam add_24704_22.INJECT1_1 = "NO";
    CCU2D add_24704_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33656), .COUT(n33657));
    defparam add_24704_20.INIT0 = 16'h5555;
    defparam add_24704_20.INIT1 = 16'h5555;
    defparam add_24704_20.INJECT1_0 = "NO";
    defparam add_24704_20.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33526), .COUT(n33527), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_19.INJECT1_1 = "NO";
    CCU2D add_24704_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33655), .COUT(n33656));
    defparam add_24704_18.INIT0 = 16'h5555;
    defparam add_24704_18.INIT1 = 16'h5555;
    defparam add_24704_18.INJECT1_0 = "NO";
    defparam add_24704_18.INJECT1_1 = "NO";
    CCU2D add_24704_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33654), .COUT(n33655));
    defparam add_24704_16.INIT0 = 16'h5aaa;
    defparam add_24704_16.INIT1 = 16'h5555;
    defparam add_24704_16.INJECT1_0 = "NO";
    defparam add_24704_16.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33525), .COUT(n33526), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33524), .COUT(n33525), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_15.INJECT1_1 = "NO";
    CCU2D add_24704_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33653), .COUT(n33654));
    defparam add_24704_14.INIT0 = 16'h5aaa;
    defparam add_24704_14.INIT1 = 16'h5555;
    defparam add_24704_14.INJECT1_0 = "NO";
    defparam add_24704_14.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33523), .COUT(n33524), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_13.INJECT1_1 = "NO";
    CCU2D add_24704_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33652), .COUT(n33653));
    defparam add_24704_12.INIT0 = 16'h5555;
    defparam add_24704_12.INIT1 = 16'h5aaa;
    defparam add_24704_12.INJECT1_0 = "NO";
    defparam add_24704_12.INJECT1_1 = "NO";
    CCU2D add_24704_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33651), .COUT(n33652));
    defparam add_24704_10.INIT0 = 16'h5aaa;
    defparam add_24704_10.INIT1 = 16'h5aaa;
    defparam add_24704_10.INJECT1_0 = "NO";
    defparam add_24704_10.INJECT1_1 = "NO";
    CCU2D add_24704_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33650), .COUT(n33651));
    defparam add_24704_8.INIT0 = 16'h5555;
    defparam add_24704_8.INIT1 = 16'h5aaa;
    defparam add_24704_8.INJECT1_0 = "NO";
    defparam add_24704_8.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33522), .COUT(n33523), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_11.INJECT1_1 = "NO";
    CCU2D add_24704_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33649), .COUT(n33650));
    defparam add_24704_6.INIT0 = 16'h5555;
    defparam add_24704_6.INIT1 = 16'h5555;
    defparam add_24704_6.INJECT1_0 = "NO";
    defparam add_24704_6.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33521), .COUT(n33522), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_9.INJECT1_1 = "NO";
    CCU2D add_24704_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33648), .COUT(n33649));
    defparam add_24704_4.INIT0 = 16'h5aaa;
    defparam add_24704_4.INIT1 = 16'h5aaa;
    defparam add_24704_4.INJECT1_0 = "NO";
    defparam add_24704_4.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33520), .COUT(n33521), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_7.INJECT1_1 = "NO";
    CCU2D add_24704_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33648));
    defparam add_24704_2.INIT0 = 16'h7000;
    defparam add_24704_2.INIT1 = 16'h5555;
    defparam add_24704_2.INJECT1_0 = "NO";
    defparam add_24704_2.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33519), .COUT(n33520), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33518), .COUT(n33519), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33518), .S1(n101[0]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_2895_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_2895_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_1.INJECT1_1 = "NO";
    LUT4 i28040_4_lut (.A(n36823), .B(n27_adj_1836), .C(n32_adj_1837), 
         .D(n28_adj_1838), .Z(n22389)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i28040_4_lut.init = 16'h8000;
    LUT4 i28039_4_lut (.A(cnt_p[19]), .B(n28_adj_1839), .C(n24), .D(n16), 
         .Z(n36823)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i28039_4_lut.init = 16'h0001;
    LUT4 i10_4_lut (.A(cnt_p[18]), .B(n200[2]), .C(n200[1]), .D(cnt_p[11]), 
         .Z(n27_adj_1836)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 i15_4_lut (.A(n29_adj_1840), .B(cnt_p[9]), .C(n26_adj_1841), 
         .D(n200[0]), .Z(n32_adj_1837)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    LUT4 i11_4_lut (.A(n200[3]), .B(cnt_p[12]), .C(n200[5]), .D(cnt_p[17]), 
         .Z(n28_adj_1838)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    LUT4 i13_4_lut (.A(cnt_p[30]), .B(n26_adj_1842), .C(n20), .D(cnt_p[13]), 
         .Z(n28_adj_1839)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(cnt_p[8]), .B(cnt_p[14]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i11_4_lut_adj_266 (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), 
         .D(cnt_p[29]), .Z(n26_adj_1842)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i11_4_lut_adj_266.init = 16'hfffe;
    LUT4 i5_2_lut (.A(cnt_p[22]), .B(cnt_p[25]), .Z(n20)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i12_4_lut (.A(cnt_p[20]), .B(cnt_p[7]), .C(cnt_p[23]), .D(cnt_p[21]), 
         .Z(n29_adj_1840)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i9_3_lut (.A(cnt_p[16]), .B(n200[4]), .C(n200[6]), .Z(n26_adj_1841)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9_3_lut.init = 16'h8080;
    FD1S3IX cnt_p_2895__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n22389), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n22389), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n22389), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n22389), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n22389), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n22389), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_2895__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n22389), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895__i1.GSR = "ENABLED";
    CCU2D cnt_p_2895_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33533), .S0(n101[31]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_2895_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33532), .COUT(n33533), .S0(n101[29]), 
          .S1(n101[30]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33531), .COUT(n33532), .S0(n101[27]), 
          .S1(n101[28]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33530), .COUT(n33531), .S0(n101[25]), 
          .S1(n101[26]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_2895_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33529), .COUT(n33530), .S0(n101[23]), 
          .S1(n101[24]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2895_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_2895_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_2895_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_2895_add_4_25.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_send
//

module uart_send (sys_clk_c, uart_en, \uart_send_data[0] , \uart_send_data[6] , 
            \uart_send_data[5] , \uart_send_data[4] , \uart_send_data[3] , 
            \uart_send_data[2] , \uart_send_data[1] , GND_net, uart_txd_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input uart_en;
    input \uart_send_data[0] ;
    input \uart_send_data[6] ;
    input \uart_send_data[5] ;
    input \uart_send_data[4] ;
    input \uart_send_data[3] ;
    input \uart_send_data[2] ;
    input \uart_send_data[1] ;
    input GND_net;
    output uart_txd_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/ending/uart.v(19[12:19])
    
    wire n22390;
    wire [15:0]n69;
    
    wire uart_en_d1, uart_en_d0, uart_tx_busy, n22335;
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/ending/uart.v(22[12:19])
    
    wire n22332, n22327, n22325, n22302, n22298, n22287, n22285, 
        n38670, n36380, n6, n26327, n38641, n36253, n36037, n5, 
        n36497, n8;
    wire [15:0]n2008;
    
    wire sys_clk_c_enable_308, n22353, uart_tx_busy_N_709, n36251, n36109, 
        n10, sys_clk_c_enable_285, n14826, n14827, n14831, n19913, 
        n14830, n19525, n36701;
    wire [0:0]n5217;
    
    wire n19914, n36693, n36704, n33568, n33567, n33566, n33565, 
        n33564, n33563, n33562, n33561;
    
    FD1S3IX clk_cnt_2901__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i0.GSR = "ENABLED";
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(42[10] 45[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n22335), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n22332), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(42[10] 45[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    FD1S3AX tx_data_i6 (.D(n22327), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n22325), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n22302), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n22298), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n22287), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n22285), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam tx_data_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_765 (.A(clk_cnt[7]), .B(clk_cnt[8]), .Z(n38670)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_765.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(clk_cnt[7]), .B(clk_cnt[8]), .C(n36380), .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i13610_4_lut (.A(n26327), .B(\uart_send_data[0] ), .C(n38641), 
         .D(tx_data[0]), .Z(n22332)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam i13610_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut (.A(uart_tx_busy), .B(n36253), .C(n6), .D(n36037), 
         .Z(n22390)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(19[12:19])
    defparam i1_4_lut.init = 16'hfffd;
    LUT4 i3_4_lut (.A(n5), .B(n36037), .C(n36497), .D(n8), .Z(n26327)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut.init = 16'hffef;
    FD1S3IX clk_cnt_2901__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_2901__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n22390), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901__i1.GSR = "ENABLED";
    LUT4 i17644_4_lut (.A(n26327), .B(\uart_send_data[6] ), .C(n38641), 
         .D(tx_data[6]), .Z(n22327)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(7[19:31])
    defparam i17644_4_lut.init = 16'hcac0;
    LUT4 i17639_4_lut (.A(n26327), .B(\uart_send_data[5] ), .C(n38641), 
         .D(tx_data[5]), .Z(n22325)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(7[19:31])
    defparam i17639_4_lut.init = 16'hcac0;
    FD1P3IX tx_cnt_FSM_i1 (.D(n2008[0]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[1]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n2008[1]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[2]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n2008[2]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[3]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n2008[3]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[4]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n2008[4]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[5]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n2008[5]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[6]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n2008[6]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[7]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n2008[7]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[8]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n2008[8]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_709));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_709), .SP(sys_clk_c_enable_308), 
            .CD(n22353), .CK(sys_clk_c), .Q(n2008[10]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n2008[10]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[11]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n2008[11]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[12]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n2008[12]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[13]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n2008[13]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[14]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n2008[14]), .SP(sys_clk_c_enable_308), .CD(n22353), 
            .CK(sys_clk_c), .Q(n2008[15]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i17652_4_lut (.A(n26327), .B(\uart_send_data[4] ), .C(n38641), 
         .D(tx_data[4]), .Z(n22302)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(7[19:31])
    defparam i17652_4_lut.init = 16'hcac0;
    LUT4 i17648_4_lut (.A(n26327), .B(\uart_send_data[3] ), .C(n38641), 
         .D(tx_data[3]), .Z(n22298)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(7[19:31])
    defparam i17648_4_lut.init = 16'hcac0;
    LUT4 i13565_4_lut (.A(n26327), .B(\uart_send_data[2] ), .C(n38641), 
         .D(tx_data[2]), .Z(n22287)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam i13565_4_lut.init = 16'hcac0;
    LUT4 i13563_4_lut (.A(n26327), .B(\uart_send_data[1] ), .C(n38641), 
         .D(tx_data[1]), .Z(n22285)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam i13563_4_lut.init = 16'hcac0;
    LUT4 i2_4_lut (.A(n36251), .B(n36109), .C(n36037), .D(n5), .Z(sys_clk_c_enable_308)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam i2_4_lut.init = 16'h0008;
    LUT4 i13629_1_lut (.A(uart_tx_busy), .Z(n22353)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(54[10] 66[12])
    defparam i13629_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_261 (.A(clk_cnt[3]), .B(n36251), .C(clk_cnt[4]), 
         .D(n36109), .Z(n36253)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(19[12:19])
    defparam i1_4_lut_adj_261.init = 16'hccc8;
    LUT4 i28156_3_lut (.A(n2008[15]), .B(n10), .C(n2008[13]), .Z(sys_clk_c_enable_285)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i28156_3_lut.init = 16'h0101;
    LUT4 i4_4_lut (.A(n2008[14]), .B(n2008[12]), .C(n2008[11]), .D(n2008[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i19629_2_lut (.A(n14826), .B(n2008[0]), .Z(n14827)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i19629_2_lut.init = 16'h2222;
    LUT4 i2_3_lut (.A(clk_cnt[13]), .B(clk_cnt[9]), .C(clk_cnt[15]), .Z(n36380)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i11221_3_lut (.A(n14831), .B(tx_data[3]), .C(n2008[4]), .Z(n19913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i11221_3_lut.init = 16'hcaca;
    LUT4 i6205_3_lut (.A(tx_data[5]), .B(tx_data[4]), .C(n2008[5]), .Z(n14831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i6205_3_lut.init = 16'hcaca;
    LUT4 i27880_4_lut (.A(n14830), .B(n19525), .C(n2008[1]), .D(n36701), 
         .Z(n5217[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i27880_4_lut.init = 16'hcacc;
    LUT4 i6204_3_lut (.A(n2008[8]), .B(tx_data[6]), .C(n2008[7]), .Z(n14830)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i6204_3_lut.init = 16'hc5c5;
    LUT4 i10853_3_lut (.A(n19914), .B(tx_data[0]), .C(n2008[1]), .Z(n19525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i10853_3_lut.init = 16'hcaca;
    LUT4 i27769_2_lut (.A(n2008[2]), .B(n2008[3]), .Z(n36701)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i27769_2_lut.init = 16'h1111;
    LUT4 i11222_3_lut (.A(tx_data[2]), .B(tx_data[1]), .C(n2008[2]), .Z(n19914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i11222_3_lut.init = 16'hcaca;
    LUT4 i28068_4_lut (.A(n2008[1]), .B(n2008[2]), .C(n2008[3]), .D(n36693), 
         .Z(n36704)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i28068_4_lut.init = 16'hfffe;
    LUT4 i27761_3_lut (.A(n2008[4]), .B(n2008[5]), .C(n2008[6]), .Z(n36693)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(102[9] 114[16])
    defparam i27761_3_lut.init = 16'h0101;
    CCU2D clk_cnt_2901_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33568), .S0(n69[15]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_2901_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_17.INJECT1_1 = "NO";
    LUT4 i27567_2_lut (.A(clk_cnt[6]), .B(clk_cnt[1]), .Z(n36497)) /* synthesis lut_function=(A (B)) */ ;
    defparam i27567_2_lut.init = 16'h8888;
    CCU2D clk_cnt_2901_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33567), .COUT(n33568), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_15.INJECT1_1 = "NO";
    LUT4 en_flag_I_0_2_lut_rep_736 (.A(uart_en_d1), .B(uart_en_d0), .Z(n38641)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(34[18:44])
    defparam en_flag_I_0_2_lut_rep_736.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(uart_tx_busy), 
         .D(n26327), .Z(n22335)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(34[18:44])
    defparam i1_3_lut_4_lut.init = 16'hf444;
    FD1P3JX uart_txd_47 (.D(n14827), .SP(sys_clk_c_enable_285), .PD(n22353), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=371, LSE_RLINE=380 */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(101[10] 116[26])
    defparam uart_txd_47.GSR = "ENABLED";
    CCU2D clk_cnt_2901_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33566), .COUT(n33567), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_2901_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33565), .COUT(n33566), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_2901_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33564), .COUT(n33565), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_2901_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33563), .COUT(n33564), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_2901_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33562), .COUT(n33563), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_2901_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33561), .COUT(n33562), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_2901_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_2901_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33561), .S1(n69[0]));   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam clk_cnt_2901_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_2901_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_2901_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_2901_add_4_1.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_262 (.A(clk_cnt[5]), .B(clk_cnt[2]), .C(uart_tx_busy_N_709), 
         .D(clk_cnt[0]), .Z(n8)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i3_4_lut_adj_262.init = 16'hffdf;
    LUT4 i1_2_lut (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n36251)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_adj_263 (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), 
         .Z(n36109)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/uart.v(75[24:38])
    defparam i2_3_lut_adj_263.init = 16'h8080;
    LUT4 i3_4_lut_adj_264 (.A(clk_cnt[14]), .B(clk_cnt[10]), .C(clk_cnt[11]), 
         .D(clk_cnt[12]), .Z(n36037)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_264.init = 16'hfffe;
    LUT4 i1_4_lut_adj_265 (.A(n36380), .B(clk_cnt[4]), .C(clk_cnt[3]), 
         .D(n38670), .Z(n5)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_265.init = 16'hfffe;
    PFUMX i6200 (.BLUT(n19913), .ALUT(n5217[0]), .C0(n36704), .Z(n14826));
    FD1P3JX tx_cnt_FSM_i0 (.D(n2008[15]), .SP(sys_clk_c_enable_308), .PD(n22353), 
            .CK(sys_clk_c), .Q(n2008[0]));   // c:/users/argon/desktop/verilog/ending/uart.v(89[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (GND_net, sys_clk_c, \state_back_2__N_482[2] , one_wire_N_631, 
            \state[1] , \hundres_1__N_305[1] , \hundres_1__N_305[0] , 
            \ds18b20_data[8] , \ds18b20_data[7] , \ds18b20_data[6] , \ds18b20_data[5] , 
            \ds18b20_data[4] , n13515, n38541, one_wire_out, n10, 
            sys_clk_c_enable_133, n36041, n19777, sys_clk_c_enable_188, 
            sys_clk_c_enable_189, cnt_init, n36260, n6, sys_rst_n_c, 
            n38642, n38542, n38593, n34008, n38508, n36418) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    output \state_back_2__N_482[2] ;
    output one_wire_N_631;
    output \state[1] ;
    output \hundres_1__N_305[1] ;
    output \hundres_1__N_305[0] ;
    output \ds18b20_data[8] ;
    output \ds18b20_data[7] ;
    output \ds18b20_data[6] ;
    output \ds18b20_data[5] ;
    output \ds18b20_data[4] ;
    output n13515;
    input n38541;
    input one_wire_out;
    output n10;
    input sys_clk_c_enable_133;
    output n36041;
    output n19777;
    input sys_clk_c_enable_188;
    input sys_clk_c_enable_189;
    output [2:0]cnt_init;
    output n36260;
    output n6;
    input sys_rst_n_c;
    input n38642;
    output n38542;
    output n38593;
    input n34008;
    output n38508;
    input n36418;
    
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(36[10:18])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire n33462;
    wire [19:0]cnt_delay;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(55[15:24])
    wire [19:0]n263;
    
    wire n33463;
    wire [5:0]cnt_write;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(57[14:23])
    
    wire n16029, clk_1mhz_N_633, n20, n23;
    wire [2:0]state_2__N_479;
    
    wire sys_clk_c_enable_15, one_wire_N_634, sys_clk_c_enable_16;
    wire [5:0]cnt_read;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(58[14:22])
    
    wire n38668, n38415;
    wire [2:0]state;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    
    wire n3;
    wire [2:0]state_back;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(62[15:25])
    
    wire sys_clk_c_enable_36;
    wire [2:0]state_back_2__N_482;
    wire [7:0]data_wr;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(52[14:21])
    
    wire sys_clk_c_enable_40, n7, n7_adj_1820, n38701, sys_clk_c_enable_47;
    wire [15:0]temperature;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(59[15:26])
    wire [7:0]data_wr_buffer;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(53[14:28])
    
    wire sys_clk_c_enable_50, one_wire_N_632, sys_clk_c_enable_150, n14014, 
        n38645, sys_clk_c_enable_98;
    wire [7:0]temperature_buffer;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(60[14:32])
    
    wire sys_clk_c_enable_63;
    wire [2:0]cnt_1mhz;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(37[14:22])
    
    wire n38657;
    wire [2:0]n17;
    
    wire n33461, n33460, n33459, n33458, n36284, n38576, n38577, 
        n24264, n24080, n3_adj_1822, n36687, one_wire_N_644, n22469, 
        n38647, n36031, n21, n26, n38643, one_wire_N_639, n4, 
        n38539, n33457, sys_clk_c_enable_106, sys_clk_c_enable_112, 
        sys_clk_c_enable_114, sys_clk_c_enable_116, n33456, sys_clk_c_enable_304, 
        n22410;
    wire [5:0]n153;
    
    wire sys_clk_c_enable_317, n26041, n33455;
    wire [19:0]num_delay;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(56[15:24])
    
    wire n38646, sys_clk_c_enable_134;
    wire [19:0]num_delay_19__N_571;
    
    wire sys_clk_c_enable_135, n38575, n38510, n16017;
    wire [3:0]cnt_main;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(51[14:22])
    
    wire sys_clk_c_enable_307, n26142;
    wire [3:0]n25;
    
    wire n27895, n49, n38584, n38704, n22408, n68, n36099, sys_clk_c_enable_247, 
        n38649, n38772, n16, n16_adj_1823, n38779, n36032, n38526, 
        n22344, n38516, n261, n23_adj_1824, n38648, n38377, n38378, 
        sys_clk_c_enable_244, n39284, n39285, n39287, n36742, n36743, 
        n36744, n37901, n37900, n19_adj_1825, n128, n27;
    wire [2:0]state_2__N_521;
    
    wire n28558, n44, n36536, n38585, n15927, n38412, n38644, 
        n37974, n36511, n11, n38614;
    wire [5:0]n208;
    
    wire n33611, n146, n33610, n33609, n33608, n33607, n33606, 
        n33605, n33604, n38700, n38544, n33603, n33602, n19492, 
        n38622, n38520, n38624, n39831, n39829, n28357, n36745;
    wire [19:0]n2845;
    
    wire n19459, n38705, n36595, n4_adj_1826, n38292, n38031, n38032, 
        n39289, n36245, n6_c, n36263, n19036, n38623, sys_clk_c_enable_295, 
        n37984, sys_clk_c_enable_289;
    wire [2:0]n109;
    
    wire n38572, n38380, n22222, sys_clk_c_enable_296, n38687, n14972, 
        n2, sys_clk_c_enable_275, n36585, n38703, n28017, n38620, 
        sys_clk_c_enable_277, n38707, n21770, n4_adj_1828, n36024, 
        n15915, n33131, n38549, n36853, n36446, sys_clk_c_enable_288, 
        n12, n36150, n162, n36239, n4_adj_1829, n4_adj_1830, n36102, 
        n36466, n23750, n4_adj_1831, n36089, sys_clk_c_enable_294, 
        n32301, n11_adj_1832, n38586, n10_adj_1833, n21362, sys_clk_c_enable_297;
    wire [19:0]n2824;
    
    wire n38416, n39286, n37862, n39902, n138, n33668, n37902, 
        n36661, n38691, n38698, n38688, n38033, n19906, n37975, 
        n37980, n37979, n38379, n19583, n38616, n38497, n39830, 
        n37983, n37981, n37982, n19925, n38696, n21814, n33464;
    
    CCU2D add_48_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33462), .COUT(n33463), .S0(n263[15]), .S1(n263[16]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_17.INIT0 = 16'h5aaa;
    defparam add_48_17.INIT1 = 16'h5aaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    LUT4 i19566_4_lut_4_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[0]), .Z(n16029)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i19566_4_lut_4_lut_4_lut.init = 16'h006b;
    FD1S3AX clk_1mhz_112 (.D(clk_1mhz_N_633), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(42[12] 47[6])
    defparam clk_1mhz_112.GSR = "ENABLED";
    PFUMX i42 (.BLUT(n20), .ALUT(n23), .C0(\state_back_2__N_482[2] ), 
          .Z(state_2__N_479[0]));
    FD1P3AX state_i0_i2 (.D(state_2__N_479[2]), .SP(sys_clk_c_enable_15), 
            .CK(sys_clk_c), .Q(\state_back_2__N_482[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1S3AX one_wire_buffer_121 (.D(one_wire_N_634), .CK(clk_1mhz), .Q(one_wire_N_631)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam one_wire_buffer_121.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_479[1]), .SP(sys_clk_c_enable_16), 
            .CK(sys_clk_c), .Q(\state[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i3798_1_lut_rep_763 (.A(cnt_read[0]), .Z(n38668)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3798_1_lut_rep_763.init = 16'h5555;
    LUT4 state_2__I_0_144_i3_4_lut_4_lut (.A(cnt_read[0]), .B(n38415), .C(\state_back_2__N_482[2] ), 
         .D(state[0]), .Z(n3)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam state_2__I_0_144_i3_4_lut_4_lut.init = 16'h404f;
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_482[0]), .SP(sys_clk_c_enable_36), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    FD1P3AX data_wr_i0_i7 (.D(n7), .SP(sys_clk_c_enable_40), .CK(sys_clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7_adj_1820), .SP(sys_clk_c_enable_40), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n38701), .SP(sys_clk_c_enable_40), .CK(sys_clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(\hundres_1__N_305[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(\hundres_1__N_305[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(\ds18b20_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(\ds18b20_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(\ds18b20_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(\ds18b20_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_47), 
            .CK(sys_clk_c), .Q(\ds18b20_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(sys_clk_c_enable_50), 
            .CK(sys_clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_50), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(sys_clk_c_enable_50), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    LUT4 i4962_1_lut (.A(one_wire_N_632), .Z(n13515)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(63[2] 264[5])
    defparam i4962_1_lut.init = 16'h5555;
    FD1P3AX cnt_delay_i0_i0 (.D(n14014), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 i28066_4_lut (.A(cnt_read[5]), .B(n38541), .C(cnt_read[4]), .D(n38645), 
         .Z(sys_clk_c_enable_98)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i28066_4_lut.init = 16'h0010;
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_63), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    FD1S3IX cnt_1mhz_2899__i0 (.D(n17[0]), .CK(sys_clk_c), .CD(n38657), 
            .Q(cnt_1mhz[0]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2899__i0.GSR = "ENABLED";
    CCU2D add_48_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33461), .COUT(n33462), .S0(n263[13]), .S1(n263[14]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_15.INIT0 = 16'h5aaa;
    defparam add_48_15.INIT1 = 16'h5aaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    CCU2D add_48_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33460), .COUT(n33461), .S0(n263[11]), .S1(n263[12]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_13.INIT0 = 16'h5aaa;
    defparam add_48_13.INIT1 = 16'h5aaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    CCU2D add_48_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33459), .COUT(n33460), .S0(n263[9]), .S1(n263[10]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_11.INIT0 = 16'h5aaa;
    defparam add_48_11.INIT1 = 16'h5aaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    CCU2D add_48_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33458), .COUT(n33459), .S0(n263[7]), .S1(n263[8]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_9.INIT0 = 16'h5aaa;
    defparam add_48_9.INIT1 = 16'h5aaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(cnt_read[2]), .B(cnt_read[1]), .C(cnt_read[5]), 
         .Z(n36284)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i15550_3_lut_4_lut (.A(state[0]), .B(n38576), .C(\state_back_2__N_482[2] ), 
         .D(n38577), .Z(n24264)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i15550_3_lut_4_lut.init = 16'hf808;
    PFUMX state_2__I_0_i7 (.BLUT(n24080), .ALUT(n3_adj_1822), .C0(n36687), 
          .Z(one_wire_N_644)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;
    FD1P3IX cnt_delay_i0_i1 (.D(n263[1]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n263[2]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i43_4_lut (.A(n38647), .B(state_back[0]), .C(state[0]), .D(n36031), 
         .Z(n23)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i43_4_lut.init = 16'hc5cf;
    PFUMX i15551 (.BLUT(n24264), .ALUT(n21), .C0(\state[1] ), .Z(n26));
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n38643), .C(one_wire_N_639), 
         .D(n4), .Z(one_wire_N_634)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam one_wire_I_0_4_lut.init = 16'hca0a;
    FD1P3IX cnt_delay_i0_i3 (.D(n263[3]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    LUT4 i24_3_lut_4_lut (.A(state[0]), .B(n38576), .C(\state[1] ), .D(n38539), 
         .Z(n10)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i24_3_lut_4_lut.init = 16'hf808;
    FD1P3IX cnt_delay_i0_i4 (.D(n263[4]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n263[5]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n263[6]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n263[7]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n263[8]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n263[9]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    CCU2D add_48_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33457), .COUT(n33458), .S0(n263[5]), .S1(n263[6]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_7.INIT0 = 16'h5aaa;
    defparam add_48_7.INIT1 = 16'h5aaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i10 (.D(n263[10]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_106), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n263[11]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i12 (.D(n263[12]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n263[13]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_112), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_114), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_116), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    CCU2D add_48_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33456), .COUT(n33457), .S0(n263[3]), .S1(n263[4]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_5.INIT0 = 16'h5aaa;
    defparam add_48_5.INIT1 = 16'h5aaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    FD1P3IX cnt_write_i0_i1 (.D(n153[1]), .SP(sys_clk_c_enable_304), .CD(n22410), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n263[14]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(n153[2]), .SP(sys_clk_c_enable_304), .CD(n22410), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i0 (.D(n38668), .SP(sys_clk_c_enable_317), .CD(n26041), 
            .CK(sys_clk_c), .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    CCU2D add_48_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33455), .COUT(n33456), .S0(n263[1]), .S1(n263[2]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_3.INIT0 = 16'h5aaa;
    defparam add_48_3.INIT1 = 16'h5aaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    CCU2D add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33455), .S1(n263[0]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_1.INIT0 = 16'hF000;
    defparam add_48_1.INIT1 = 16'h5555;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i15 (.D(n263[15]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i12 (.D(n38646), .SP(sys_clk_c_enable_133), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i12.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_571[8]), .SP(sys_clk_c_enable_134), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_571[5]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i16 (.D(n263[16]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3AX i107_128 (.D(one_wire_N_644), .SP(one_wire_N_639), .CK(clk_1mhz), 
            .Q(one_wire_N_632));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i107_128.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_605_4_lut (.A(n36041), .B(\state[1] ), .C(n38575), 
         .D(cnt_read[3]), .Z(n38510)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_2_lut_rep_605_4_lut.init = 16'hefff;
    LUT4 i19567_4_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n16017)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(126[7] 189[14])
    defparam i19567_4_lut_4_lut.init = 16'h0d06;
    FD1P3IX cnt_delay_i0_i17 (.D(n263[17]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    LUT4 i11097_3_lut_4_lut (.A(state[0]), .B(n38576), .C(\state[1] ), 
         .D(n38539), .Z(n19777)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam i11097_3_lut_4_lut.init = 16'hfd0d;
    FD1P3IX cnt_delay_i0_i18 (.D(n263[18]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i19 (.D(n263[19]), .SP(sys_clk_c_enable_150), .CD(n22469), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i0 (.D(n25[0]), .SP(sys_clk_c_enable_307), .CD(n26142), 
            .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i57_4_lut_4_lut (.A(\state[1] ), .B(n38577), .C(n27895), .D(\state_back_2__N_482[2] ), 
         .Z(n49)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i57_4_lut_4_lut.init = 16'h445f;
    LUT4 i13684_3_lut_4_lut (.A(state[0]), .B(n38584), .C(\state[1] ), 
         .D(n38704), .Z(n22408)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i13684_3_lut_4_lut.init = 16'h1101;
    LUT4 i2_3_lut_4_lut (.A(cnt_main[0]), .B(n38584), .C(n68), .D(n36099), 
         .Z(sys_clk_c_enable_247)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    FD1P3AX state_back_i0_i2 (.D(\state_back_2__N_482[2] ), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(n38649), .SP(sys_clk_c_enable_189), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    LUT4 cnt_read_1__bdd_4_lut (.A(cnt_read[1]), .B(cnt_read[4]), .C(cnt_read[2]), 
         .D(cnt_read[3]), .Z(n38772)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam cnt_read_1__bdd_4_lut.init = 16'hd6bd;
    LUT4 i1_4_lut (.A(state[0]), .B(n16), .C(\state_back_2__N_482[2] ), 
         .D(n16_adj_1823), .Z(state_2__N_479[1])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    defparam i1_4_lut.init = 16'heccc;
    LUT4 cnt_read_2__bdd_4_lut (.A(cnt_read[2]), .B(cnt_read[1]), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n38779)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam cnt_read_2__bdd_4_lut.init = 16'hdb6d;
    LUT4 gnd_bdd_2_lut_28259_3_lut_4_lut (.A(n36032), .B(n38526), .C(n22344), 
         .D(n38516), .Z(sys_clk_c_enable_15)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_28259_3_lut_4_lut.init = 16'he000;
    LUT4 i1_2_lut (.A(n261), .B(state_back[1]), .Z(n16_adj_1823)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_224 (.A(\state[1] ), .B(n23_adj_1824), .C(n38584), 
         .D(state[0]), .Z(n26142)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_adj_224.init = 16'h0405;
    LUT4 i3704_1_lut (.A(cnt_main[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(88[24:39])
    defparam i3704_1_lut.init = 16'h5555;
    FD1S3IX cnt_1mhz_2899__i2 (.D(n17[2]), .CK(sys_clk_c), .CD(n38657), 
            .Q(cnt_1mhz[2]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2899__i2.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_2899__i1 (.D(n17[1]), .CK(sys_clk_c), .CD(n38657), 
            .Q(cnt_1mhz[1]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(46[16:31])
    defparam cnt_1mhz_2899__i1.GSR = "ENABLED";
    PFUMX i28728 (.BLUT(n38648), .ALUT(n38377), .C0(state[0]), .Z(n38378));
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_244), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    LUT4 i19513_2_lut_3_lut (.A(\state_back_2__N_482[2] ), .B(n261), .C(n263[0]), 
         .Z(n14014)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i19513_2_lut_3_lut.init = 16'h2020;
    LUT4 data_wr_buffer_6__bdd_4_lut_29032 (.A(data_wr_buffer[6]), .B(cnt_write[5]), 
         .C(cnt_write[4]), .D(cnt_write[3]), .Z(n39284)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam data_wr_buffer_6__bdd_4_lut_29032.init = 16'h0308;
    LUT4 data_wr_buffer_6__bdd_4_lut (.A(cnt_write[5]), .B(cnt_write[4]), 
         .C(cnt_write[3]), .D(data_wr_buffer[7]), .Z(n39285)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+!(D))+!B))) */ ;
    defparam data_wr_buffer_6__bdd_4_lut.init = 16'h2400;
    LUT4 cnt_write_5__bdd_4_lut_29128 (.A(cnt_write[5]), .B(cnt_write[4]), 
         .C(cnt_write[3]), .D(cnt_write[1]), .Z(n39287)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam cnt_write_5__bdd_4_lut_29128.init = 16'h4012;
    L6MUX21 i27812 (.D0(n36742), .D1(n36743), .SD(cnt_write[5]), .Z(n36744));
    LUT4 cnt_write_5__bdd_4_lut_28506 (.A(cnt_write[4]), .B(cnt_write[2]), 
         .C(cnt_write[3]), .D(cnt_write[1]), .Z(n37901)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+!(D))) */ ;
    defparam cnt_write_5__bdd_4_lut_28506.init = 16'he67d;
    LUT4 cnt_write_5__bdd_3_lut_29123 (.A(cnt_write[4]), .B(cnt_write[2]), 
         .C(cnt_write[1]), .Z(n37900)) /* synthesis lut_function=(A+!(B (C)+!B !(C))) */ ;
    defparam cnt_write_5__bdd_3_lut_29123.init = 16'hbebe;
    PFUMX i15341 (.BLUT(n19_adj_1825), .ALUT(n128), .C0(cnt_write[0]), 
          .Z(n27));
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_244), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_244), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_244), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_247), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_247), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_247), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    PFUMX i44 (.BLUT(state_2__N_521[0]), .ALUT(n28558), .C0(\state[1] ), 
          .Z(n44));
    PFUMX i27810 (.BLUT(n36536), .ALUT(n16017), .C0(cnt_write[4]), .Z(n36742));
    LUT4 cnt_write_0__bdd_4_lut_29059 (.A(cnt_write[0]), .B(n38585), .C(n15927), 
         .D(cnt_write[4]), .Z(n38412)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam cnt_write_0__bdd_4_lut_29059.init = 16'h22f0;
    LUT4 n19906_bdd_4_lut (.A(n38644), .B(cnt_write[4]), .C(cnt_write[0]), 
         .D(cnt_write[1]), .Z(n37974)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam n19906_bdd_4_lut.init = 16'hf0f1;
    PFUMX i23 (.BLUT(n36511), .ALUT(n11), .C0(\state[1] ), .Z(n16));
    LUT4 i3828_3_lut_4_lut (.A(cnt_read[3]), .B(n38614), .C(cnt_read[4]), 
         .D(cnt_read[5]), .Z(n208[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3828_3_lut_4_lut.init = 16'h7f80;
    CCU2D sub_2282_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33611), .S1(n261));
    defparam sub_2282_add_2_21.INIT0 = 16'h5999;
    defparam sub_2282_add_2_21.INIT1 = 16'h0000;
    defparam sub_2282_add_2_21.INJECT1_0 = "NO";
    defparam sub_2282_add_2_21.INJECT1_1 = "NO";
    PFUMX i27811 (.BLUT(n16029), .ALUT(n146), .C0(cnt_write[4]), .Z(n36743));
    LUT4 i24745_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(46[16:31])
    defparam i24745_3_lut.init = 16'h6a6a;
    CCU2D sub_2282_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33610), .COUT(n33611));
    defparam sub_2282_add_2_19.INIT0 = 16'h5999;
    defparam sub_2282_add_2_19.INIT1 = 16'h5555;
    defparam sub_2282_add_2_19.INJECT1_0 = "NO";
    defparam sub_2282_add_2_19.INJECT1_1 = "NO";
    LUT4 i24738_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(46[16:31])
    defparam i24738_2_lut.init = 16'h6666;
    CCU2D sub_2282_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33609), .COUT(n33610));
    defparam sub_2282_add_2_17.INIT0 = 16'h5555;
    defparam sub_2282_add_2_17.INIT1 = 16'h5999;
    defparam sub_2282_add_2_17.INJECT1_0 = "NO";
    defparam sub_2282_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_2282_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33608), .COUT(n33609));
    defparam sub_2282_add_2_15.INIT0 = 16'h5999;
    defparam sub_2282_add_2_15.INIT1 = 16'h5999;
    defparam sub_2282_add_2_15.INJECT1_0 = "NO";
    defparam sub_2282_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_2282_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33607), .COUT(n33608));
    defparam sub_2282_add_2_13.INIT0 = 16'h5555;
    defparam sub_2282_add_2_13.INIT1 = 16'h5999;
    defparam sub_2282_add_2_13.INJECT1_0 = "NO";
    defparam sub_2282_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_2282_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33606), .COUT(n33607));
    defparam sub_2282_add_2_11.INIT0 = 16'h5555;
    defparam sub_2282_add_2_11.INIT1 = 16'h5555;
    defparam sub_2282_add_2_11.INJECT1_0 = "NO";
    defparam sub_2282_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_2282_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33605), .COUT(n33606));
    defparam sub_2282_add_2_9.INIT0 = 16'h5999;
    defparam sub_2282_add_2_9.INIT1 = 16'h5999;
    defparam sub_2282_add_2_9.INJECT1_0 = "NO";
    defparam sub_2282_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_2282_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33604), .COUT(n33605));
    defparam sub_2282_add_2_7.INIT0 = 16'h5999;
    defparam sub_2282_add_2_7.INIT1 = 16'h5999;
    defparam sub_2282_add_2_7.INJECT1_0 = "NO";
    defparam sub_2282_add_2_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n38700), .B(n68), .C(cnt_main[1]), .D(n38544), 
         .Z(sys_clk_c_enable_244)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut.init = 16'h0002;
    LUT4 i87_2_lut (.A(\state[1] ), .B(state[0]), .Z(n68)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i87_2_lut.init = 16'hbbbb;
    CCU2D sub_2282_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33603), .COUT(n33604));
    defparam sub_2282_add_2_5.INIT0 = 16'h5999;
    defparam sub_2282_add_2_5.INIT1 = 16'h5999;
    defparam sub_2282_add_2_5.INJECT1_0 = "NO";
    defparam sub_2282_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_2282_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33602), .COUT(n33603));
    defparam sub_2282_add_2_3.INIT0 = 16'h5999;
    defparam sub_2282_add_2_3.INIT1 = 16'h5999;
    defparam sub_2282_add_2_3.INJECT1_0 = "NO";
    defparam sub_2282_add_2_3.INJECT1_1 = "NO";
    LUT4 i28048_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n19492)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(194[7] 254[14])
    defparam i28048_2_lut_4_lut_4_lut.init = 16'h006d;
    CCU2D sub_2282_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n33602));
    defparam sub_2282_add_2_1.INIT0 = 16'h0000;
    defparam sub_2282_add_2_1.INIT1 = 16'h5999;
    defparam sub_2282_add_2_1.INJECT1_0 = "NO";
    defparam sub_2282_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_615_3_lut_4_lut (.A(cnt_read[0]), .B(n38622), .C(\state_back_2__N_482[2] ), 
         .D(\state[1] ), .Z(n38520)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;
    defparam i1_2_lut_rep_615_3_lut_4_lut.init = 16'h0f2f;
    LUT4 i3785_3_lut_4_lut (.A(cnt_write[3]), .B(n38624), .C(cnt_write[4]), 
         .D(cnt_write[5]), .Z(n153[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(125[25:41])
    defparam i3785_3_lut_4_lut.init = 16'h7f80;
    LUT4 i15337_4_lut (.A(n38643), .B(cnt_write[4]), .C(n38585), .D(cnt_write[5]), 
         .Z(n19_adj_1825)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(57[14:23])
    defparam i15337_4_lut.init = 16'h7ffd;
    LUT4 i28077_4_lut (.A(cnt_write[5]), .B(n38643), .C(n38585), .D(cnt_write[4]), 
         .Z(n128)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;
    defparam i28077_4_lut.init = 16'h3b33;
    LUT4 cnt_main_3__bdd_4_lut (.A(cnt_main[3]), .B(state[0]), .C(cnt_main[1]), 
         .D(cnt_main[2]), .Z(n39831)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C)))) */ ;
    defparam cnt_main_3__bdd_4_lut.init = 16'h4048;
    LUT4 n38623_bdd_4_lut (.A(n38585), .B(cnt_write[0]), .C(cnt_write[5]), 
         .D(cnt_write[4]), .Z(n39829)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(((D)+!C)+!B))) */ ;
    defparam n38623_bdd_4_lut.init = 16'h5f3f;
    LUT4 i19868_4_lut (.A(cnt_write[0]), .B(cnt_write[5]), .C(n28357), 
         .D(cnt_write[4]), .Z(n28558)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i19868_4_lut.init = 16'hc088;
    L6MUX21 i27815 (.D0(n36745), .D1(n38412), .SD(cnt_write[5]), .Z(n2845[6]));
    LUT4 i10802_2_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n19459)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(194[7] 254[14])
    defparam i10802_2_lut_4_lut_4_lut.init = 16'hffb6;
    LUT4 i1_2_lut_rep_621_3_lut_4_lut (.A(cnt_write[1]), .B(n38644), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n38526)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_2_lut_rep_621_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i28117_4_lut (.A(\state_back_2__N_482[2] ), .B(n38705), .C(cnt_main[3]), 
         .D(state[0]), .Z(n36511)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i28117_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_225 (.A(\state_back_2__N_482[2] ), .B(cnt_init[2]), 
         .C(n36595), .D(cnt_init[0]), .Z(n11)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_225.init = 16'haaae;
    LUT4 i27663_3_lut (.A(cnt_init[1]), .B(state[0]), .C(one_wire_out), 
         .Z(n36595)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27663_3_lut.init = 16'hfefe;
    LUT4 n38293_bdd_2_lut_rep_611_3_lut_4_lut (.A(n36041), .B(n38647), .C(n4_adj_1826), 
         .D(n38292), .Z(n38516)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam n38293_bdd_2_lut_rep_611_3_lut_4_lut.init = 16'h0e00;
    LUT4 cnt_read_1__bdd_3_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .Z(n38031)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)+!B !(C)))) */ ;
    defparam cnt_read_1__bdd_3_lut.init = 16'h4949;
    LUT4 cnt_read_1__bdd_4_lut_28740 (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(cnt_read[4]), .D(cnt_read[3]), .Z(n38032)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam cnt_read_1__bdd_4_lut_28740.init = 16'h2942;
    LUT4 i1_2_lut_3_lut_adj_226 (.A(n39289), .B(cnt_write[0]), .C(\state_back_2__N_482[2] ), 
         .Z(n4)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_226.init = 16'h0808;
    LUT4 i2_4_lut_adj_227 (.A(n36260), .B(n27895), .C(n36245), .D(n6_c), 
         .Z(sys_clk_c_enable_36)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;
    defparam i2_4_lut_adj_227.init = 16'ha020;
    FD1P3IX cnt_write_i0_i3 (.D(n153[3]), .SP(sys_clk_c_enable_304), .CD(n22410), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(n38646), .B(n38575), .C(n38576), .D(state[0]), 
         .Z(n6)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hc444;
    LUT4 i28134_2_lut_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(state[0]), 
         .D(\state[1] ), .Z(sys_clk_c_enable_317)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i28134_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(state[0]), 
         .D(sys_rst_n_c), .Z(n36263)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1136_2_lut_rep_670_3_lut (.A(n38657), .B(clk_1mhz), .C(sys_rst_n_c), 
         .Z(n38575)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1136_2_lut_rep_670_3_lut.init = 16'h2020;
    LUT4 i19227_2_lut (.A(n19036), .B(state[0]), .Z(n27895)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19227_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_228 (.A(n38520), .B(state[0]), .C(n38623), .D(n6_c), 
         .Z(n36245)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_228.init = 16'haaa8;
    LUT4 i9286_2_lut_rep_679_3_lut (.A(n38657), .B(clk_1mhz), .C(\state_back_2__N_482[2] ), 
         .Z(n38584)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i9286_2_lut_rep_679_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_229 (.A(n38657), .B(clk_1mhz), .C(n26), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_295)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_229.init = 16'h2000;
    LUT4 i28096_2_lut_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(n37984), 
         .D(sys_rst_n_c), .Z(sys_clk_c_enable_289)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i28096_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i2_2_lut (.A(\state[1] ), .B(\state_back_2__N_482[2] ), .Z(n6_c)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2_2_lut.init = 16'hdddd;
    LUT4 i3742_3_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(cnt_init[1]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(111[24:39])
    defparam i3742_3_lut.init = 16'h6a6a;
    LUT4 i27544_2_lut_rep_667_3_lut (.A(n38657), .B(clk_1mhz), .C(\state[1] ), 
         .Z(n38572)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i27544_2_lut_rep_667_3_lut.init = 16'hfdfd;
    LUT4 n38381_bdd_2_lut_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(\state_back_2__N_482[2] ), 
         .D(n38380), .Z(sys_clk_c_enable_16)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam n38381_bdd_2_lut_3_lut_4_lut.init = 16'h2220;
    LUT4 i1_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(n22222), .D(n38649), 
         .Z(n4_adj_1826)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfddd;
    LUT4 cnt_write_0__bdd_4_lut_28735 (.A(cnt_write[0]), .B(cnt_write[5]), 
         .C(cnt_write[4]), .D(n38585), .Z(n19036)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam cnt_write_0__bdd_4_lut_28735.init = 16'hea2b;
    LUT4 i28124_2_lut_rep_638_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(state[0]), 
         .D(\state_back_2__N_482[2] ), .Z(sys_clk_c_enable_296)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i28124_2_lut_rep_638_3_lut_4_lut.init = 16'h0002;
    LUT4 i28121_2_lut_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(\state[1] ), 
         .D(\state_back_2__N_482[2] ), .Z(sys_clk_c_enable_307)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i28121_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 n19496_bdd_4_lut (.A(n38779), .B(n19492), .C(cnt_read[5]), .D(n38687), 
         .Z(n38415)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n19496_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_rep_639_3_lut_4_lut (.A(n38657), .B(clk_1mhz), .C(cnt_main[0]), 
         .D(\state_back_2__N_482[2] ), .Z(n38544)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_rep_639_3_lut_4_lut.init = 16'hfffd;
    LUT4 state_2__I_0_144_i2_4_lut (.A(n38648), .B(cnt_write[0]), .C(state[0]), 
         .D(n14972), .Z(n2)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_144_i2_4_lut.init = 16'h05c5;
    LUT4 i6344_2_lut (.A(cnt_write[4]), .B(cnt_write[5]), .Z(n14972)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(126[7] 189[14])
    defparam i6344_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_230 (.A(n36245), .B(\state_back_2__N_482[2] ), .C(n6), 
         .D(n27), .Z(sys_clk_c_enable_275)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_230.init = 16'ha080;
    LUT4 i4_4_lut (.A(n36585), .B(n36263), .C(n38703), .D(\state_back_2__N_482[2] ), 
         .Z(sys_clk_c_enable_40)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i4_4_lut.init = 16'h0040;
    FD1P3IX cnt_write_i0_i4 (.D(n153[4]), .SP(sys_clk_c_enable_304), .CD(n22410), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i5 (.D(n153[5]), .SP(sys_clk_c_enable_304), .CD(n22410), 
            .CK(sys_clk_c), .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    LUT4 i27653_2_lut (.A(\state[1] ), .B(cnt_main[3]), .Z(n36585)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27653_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_231 (.A(n6), .B(n28017), .C(n49), .D(n38620), 
         .Z(sys_clk_c_enable_277)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_adj_231.init = 16'ha020;
    FD1P3IX cnt_init_i0_i1 (.D(n38642), .SP(sys_clk_c_enable_296), .CD(n22408), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_232 (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n7)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_232.init = 16'hbbbb;
    LUT4 mux_54_Mux_2_i7_4_lut (.A(n38707), .B(n21770), .C(\state_back_2__N_482[2] ), 
         .D(n4_adj_1828), .Z(num_delay_19__N_571[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_2_i7_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_233 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n4_adj_1828)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_233.init = 16'h2222;
    PFUMX i27813 (.BLUT(n36024), .ALUT(n15915), .C0(cnt_write[4]), .Z(n36745));
    LUT4 i3_4_lut (.A(n38646), .B(n36099), .C(cnt_main[0]), .D(n36263), 
         .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_234 (.A(cnt_main[3]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(n38646), .Z(n33131)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i3_4_lut_adj_234.init = 16'hfdff;
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(sys_clk_c_enable_296), .CD(n22408), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    LUT4 i28063_4_lut (.A(cnt_write[0]), .B(n36032), .C(n38549), .D(n38575), 
         .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i28063_4_lut.init = 16'h0100;
    LUT4 i28070_4_lut (.A(n36853), .B(n6), .C(n38542), .D(n36446), .Z(sys_clk_c_enable_288)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i28070_4_lut.init = 16'h8880;
    LUT4 i28069_4_lut (.A(n38649), .B(n12), .C(n22222), .D(n36150), 
         .Z(n36853)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i28069_4_lut.init = 16'h5557;
    LUT4 i1_4_lut_adj_235 (.A(n162), .B(cnt_write[2]), .C(n36239), .D(n4_adj_1829), 
         .Z(n12)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_235.init = 16'heca0;
    LUT4 i2_4_lut_adj_236 (.A(cnt_write[5]), .B(n4_adj_1830), .C(n162), 
         .D(cnt_write[0]), .Z(n36150)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_236.init = 16'hdccc;
    LUT4 i1_3_lut (.A(cnt_write[0]), .B(cnt_write[3]), .C(n36102), .Z(n4_adj_1829)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_adj_237 (.A(n36102), .B(cnt_write[3]), .C(n36466), .D(cnt_write[0]), 
         .Z(n4_adj_1830)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut_adj_237.init = 16'h8a0a;
    LUT4 mux_54_Mux_4_i7_4_lut (.A(n23750), .B(n21770), .C(\state_back_2__N_482[2] ), 
         .D(n4_adj_1831), .Z(num_delay_19__N_571[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_4_i7_4_lut.init = 16'hcfca;
    LUT4 i1_3_lut_adj_238 (.A(state[0]), .B(\state[1] ), .C(n2845[6]), 
         .Z(n4_adj_1831)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i1_3_lut_adj_238.init = 16'hb3b3;
    LUT4 i2_3_lut (.A(cnt_write[4]), .B(state[0]), .C(cnt_write[5]), .Z(n36102)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_adj_239 (.A(cnt_write[4]), .B(state[0]), .Z(n162)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_adj_239.init = 16'h8888;
    LUT4 i1_4_lut_adj_240 (.A(cnt_init[2]), .B(n38649), .C(n2845[6]), 
         .D(state[0]), .Z(num_delay_19__N_571[6])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_240.init = 16'hc044;
    LUT4 i2_3_lut_adj_241 (.A(n36089), .B(cnt_read[3]), .C(cnt_read[5]), 
         .Z(sys_clk_c_enable_63)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_241.init = 16'h0808;
    LUT4 i24736_1_lut (.A(cnt_1mhz[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(46[16:31])
    defparam i24736_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_adj_242 (.A(n36284), .B(cnt_read[3]), .C(cnt_read[4]), 
         .D(n38541), .Z(sys_clk_c_enable_294)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut_adj_242.init = 16'h0002;
    LUT4 i23676_1_lut (.A(cnt_init[0]), .Z(n32301)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i23676_1_lut.init = 16'h5555;
    LUT4 i6_4_lut (.A(n11_adj_1832), .B(n38586), .C(n10_adj_1833), .D(n21362), 
         .Z(sys_clk_c_enable_297)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i3_3_lut (.A(state[0]), .B(n22344), .C(n33131), .Z(n10_adj_1833)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i3_3_lut.init = 16'hc4c4;
    LUT4 i15350_1_lut (.A(cnt_write[0]), .Z(n2824[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i15350_1_lut.init = 16'h5555;
    PFUMX state_2__I_0_144_i7 (.BLUT(n2), .ALUT(n3), .C0(n36687), .Z(one_wire_N_639)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_571[1]), .SP(sys_clk_c_enable_275), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(n38623), .B(n19036), .C(state[0]), .D(\state_back_2__N_482[2] ), 
         .Z(n21)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_4_lut.init = 16'h003a;
    LUT4 i3800_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n208[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3800_2_lut.init = 16'h6666;
    LUT4 n19462_bdd_4_lut (.A(n38772), .B(n19459), .C(cnt_read[5]), .D(cnt_read[0]), 
         .Z(n38416)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n19462_bdd_4_lut.init = 16'hffca;
    LUT4 n39288_bdd_3_lut_4_lut (.A(n39287), .B(data_wr_buffer[4]), .C(cnt_write[2]), 
         .D(n39286), .Z(n39289)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n39288_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 n39831_bdd_4_lut (.A(n39831), .B(cnt_main[0]), .C(n37862), .D(\state_back_2__N_482[2] ), 
         .Z(n39902)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n39831_bdd_4_lut.init = 16'hf088;
    LUT4 i27910_4_lut (.A(cnt_init[1]), .B(n138), .C(state[0]), .D(n38648), 
         .Z(n24080)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i27910_4_lut.init = 16'hcfc5;
    LUT4 i1_4_lut_adj_243 (.A(cnt_write[0]), .B(n33668), .C(n37902), .D(n36661), 
         .Z(n138)) /* synthesis lut_function=((B (C+(D))+!B !((D)+!C))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_4_lut_adj_243.init = 16'hddf5;
    LUT4 i27729_2_lut (.A(cnt_write[4]), .B(cnt_write[3]), .Z(n36661)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(57[14:23])
    defparam i27729_2_lut.init = 16'h1111;
    LUT4 i3821_2_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n38691), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n208[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3821_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut_4_lut_adj_244 (.A(n38657), .B(clk_1mhz), .C(n38698), 
         .D(\state[1] ), .Z(sys_clk_c_enable_150)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_244.init = 16'h0002;
    LUT4 i1_2_lut_rep_637_3_lut_4_lut (.A(state[0]), .B(n38647), .C(\state[1] ), 
         .D(cnt_read[0]), .Z(n38542)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_637_3_lut_4_lut.init = 16'h0100;
    LUT4 i11135_3_lut_rep_634_4_lut (.A(cnt_init[0]), .B(n38704), .C(state[0]), 
         .D(n19036), .Z(n38539)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;
    defparam i11135_3_lut_rep_634_4_lut.init = 16'h02f2;
    LUT4 i27527_3_lut_4_lut (.A(cnt_init[0]), .B(n38704), .C(\state_back_2__N_482[2] ), 
         .D(n38707), .Z(n36446)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;
    defparam i27527_3_lut_4_lut.init = 16'h0f02;
    LUT4 i1_3_lut_4_lut_4_lut_adj_245 (.A(n38646), .B(n38593), .C(n38576), 
         .D(state[0]), .Z(n36260)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_245.init = 16'h3133;
    LUT4 i3778_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(n38688), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n153[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(125[25:41])
    defparam i3778_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_571[2]), .SP(sys_clk_c_enable_277), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i3 (.D(n38033), .SP(sys_clk_c_enable_295), .CD(n34008), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    LUT4 n33131_bdd_4_lut_29082 (.A(n33131), .B(n38648), .C(n38649), .D(state[0]), 
         .Z(n38292)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (D)+!B (C+(D)))) */ ;
    defparam n33131_bdd_4_lut_29082.init = 16'haacf;
    LUT4 i2_3_lut_4_lut_adj_246 (.A(cnt_write[0]), .B(cnt_write[4]), .C(state[0]), 
         .D(cnt_write[5]), .Z(n22222)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_adj_246.init = 16'h2000;
    LUT4 i1_3_lut_4_lut_4_lut_adj_247 (.A(cnt_write[0]), .B(cnt_write[4]), 
         .C(n38644), .D(cnt_write[1]), .Z(n19906)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_4_lut_adj_247.init = 16'heee2;
    LUT4 i1_2_lut_rep_738 (.A(state[0]), .B(\state[1] ), .Z(n38643)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_rep_738.init = 16'h8888;
    LUT4 i3_3_lut_4_lut (.A(state[0]), .B(\state[1] ), .C(\state_back_2__N_482[2] ), 
         .D(cnt_write[5]), .Z(n36032)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i3_3_lut_4_lut.init = 16'hfff7;
    LUT4 i19536_3_lut_4_lut (.A(state[0]), .B(\state[1] ), .C(\state_back_2__N_482[2] ), 
         .D(n36744), .Z(num_delay_19__N_571[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i19536_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_2_lut_rep_739 (.A(cnt_write[2]), .B(cnt_write[3]), .Z(n38644)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_739.init = 16'heeee;
    LUT4 i27539_3_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[0]), .Z(n36466)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i27539_3_lut_4_lut.init = 16'heefe;
    LUT4 i1_2_lut_rep_680_3_lut (.A(cnt_write[2]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .Z(n38585)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_680_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_248 (.A(cnt_write[2]), .B(cnt_write[3]), 
         .C(cnt_write[5]), .D(cnt_write[1]), .Z(n36239)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut_adj_248.init = 16'hf0e0;
    LUT4 i28073_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[3]), .C(cnt_write[0]), 
         .D(cnt_write[1]), .Z(n146)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i28073_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_644_3_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[3]), 
         .C(cnt_write[4]), .D(cnt_write[1]), .Z(n38549)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_644_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_740 (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .Z(n38645)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_740.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_249 (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .D(cnt_read[0]), .Z(n36031)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_249.init = 16'hfffe;
    LUT4 i28140_2_lut_rep_741 (.A(\state[1] ), .B(\state_back_2__N_482[2] ), 
         .Z(n38646)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i28140_2_lut_rep_741.init = 16'h1111;
    LUT4 i1_2_lut_rep_742 (.A(cnt_read[4]), .B(cnt_read[5]), .Z(n38647)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_742.init = 16'h8888;
    LUT4 i19572_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n15927)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(126[7] 189[14])
    defparam i19572_4_lut_4_lut.init = 16'h0902;
    LUT4 i27557_2_lut_rep_717_3_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(state[0]), 
         .Z(n38622)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i27557_2_lut_rep_717_3_lut.init = 16'hf8f8;
    LUT4 n17_bdd_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(state_back[2]), 
         .D(state[0]), .Z(n37862)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam n17_bdd_3_lut_4_lut.init = 16'hf077;
    LUT4 i1_2_lut_rep_681_3_lut (.A(cnt_read[4]), .B(cnt_read[5]), .C(n36041), 
         .Z(n38586)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_681_3_lut.init = 16'hf8f8;
    LUT4 i2_2_lut_rep_672_3_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[5]), 
         .C(cnt_read[0]), .D(state[0]), .Z(n38577)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i2_2_lut_rep_672_3_lut_4_lut.init = 16'h0070;
    LUT4 i19736_2_lut_rep_743 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n38648)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19736_2_lut_rep_743.init = 16'heeee;
    LUT4 i3_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(\state_back_2__N_482[2] ), 
         .D(n38707), .Z(n21362)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i89_4_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(cnt_init[1]), 
         .Z(n28017)) /* synthesis lut_function=((B (C))+!A) */ ;
    defparam i89_4_lut_3_lut.init = 16'hd5d5;
    LUT4 i27754_2_lut_rep_744 (.A(\state_back_2__N_482[2] ), .B(\state[1] ), 
         .Z(n38649)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    defparam i27754_2_lut_rep_744.init = 16'h4444;
    LUT4 n37975_bdd_4_lut_28496_4_lut (.A(\state_back_2__N_482[2] ), .B(\state[1] ), 
         .C(n38576), .D(n37975), .Z(n37980)) /* synthesis lut_function=(A (B+(C))+!A !(B (D)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    defparam n37975_bdd_4_lut_28496_4_lut.init = 16'hb8fc;
    LUT4 i27755_1_lut_2_lut (.A(\state_back_2__N_482[2] ), .B(\state[1] ), 
         .Z(n36687)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    defparam i27755_1_lut_2_lut.init = 16'hbbbb;
    LUT4 n37975_bdd_3_lut_28495_4_lut_2_lut (.A(\state[1] ), .B(n38577), 
         .Z(n37979)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(61[15:20])
    defparam n37975_bdd_3_lut_28495_4_lut_2_lut.init = 16'h4444;
    LUT4 n38379_bdd_3_lut_29155 (.A(n38379), .B(n38378), .C(\state[1] ), 
         .Z(n38380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38379_bdd_3_lut_29155.init = 16'hcaca;
    LUT4 i17882_3_lut_4_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[3]), 
         .Z(n19583)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(194[7] 254[14])
    defparam i17882_3_lut_4_lut_3_lut.init = 16'h9292;
    LUT4 i19573_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n15915)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(126[7] 189[14])
    defparam i19573_4_lut_4_lut.init = 16'h0409;
    LUT4 i3576_3_lut_rep_752 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n38657)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3576_3_lut_rep_752.init = 16'hc8c8;
    LUT4 i1_3_lut_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_633)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1_3_lut_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1_2_lut_rep_688_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n38593)) /* synthesis lut_function=(A ((D)+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i1_2_lut_rep_688_4_lut.init = 16'hff37;
    LUT4 n151_bdd_4_lut (.A(n38585), .B(cnt_write[4]), .C(cnt_write[5]), 
         .D(cnt_write[0]), .Z(n38377)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C+!(D))+!B !((D)+!C))) */ ;
    defparam n151_bdd_4_lut.init = 16'hc0fe;
    LUT4 i1_2_lut_rep_711_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n38616)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_711_4_lut.init = 16'h00c8;
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_571[4]), .SP(sys_clk_c_enable_288), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_571[6]), .SP(sys_clk_c_enable_289), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n36024)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(126[7] 189[14])
    defparam i1_4_lut_4_lut.init = 16'h0410;
    PFUMX i28527 (.BLUT(n38032), .ALUT(n38031), .C0(cnt_read[5]), .Z(n38033));
    LUT4 i2_3_lut_adj_250 (.A(n36089), .B(cnt_read[5]), .C(cnt_read[3]), 
         .Z(sys_clk_c_enable_112)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_250.init = 16'h0808;
    LUT4 i3_4_lut_adj_251 (.A(cnt_read[4]), .B(cnt_read[1]), .C(cnt_read[2]), 
         .D(n38497), .Z(sys_clk_c_enable_116)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i3_4_lut_adj_251.init = 16'h0040;
    L6MUX21 i29331 (.D0(n39902), .D1(n39830), .SD(n38649), .Z(state_2__N_479[2]));
    PFUMX i29327 (.BLUT(n38623), .ALUT(n39829), .C0(state[0]), .Z(n39830));
    L6MUX21 i28493 (.D0(n37983), .D1(n37981), .SD(state[0]), .Z(n37984));
    LUT4 i1_2_lut_rep_592_3_lut (.A(n38541), .B(cnt_read[3]), .C(cnt_read[5]), 
         .Z(n38497)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_592_3_lut.init = 16'hbfbf;
    LUT4 i27605_4_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[0]), .Z(n36536)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i27605_4_lut_4_lut.init = 16'h00bc;
    LUT4 i1_3_lut_4_lut_adj_252 (.A(n38541), .B(cnt_read[3]), .C(n36284), 
         .D(cnt_read[4]), .Z(sys_clk_c_enable_106)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_252.init = 16'h4000;
    LUT4 i2_3_lut_adj_253 (.A(\state_back_2__N_482[2] ), .B(cnt_read[0]), 
         .C(state[0]), .Z(n36041)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_adj_253.init = 16'hfdfd;
    LUT4 i19618_2_lut_rep_782 (.A(\state[1] ), .B(state[0]), .Z(n38687)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19618_2_lut_rep_782.init = 16'heeee;
    LUT4 state_2__I_0_i3_4_lut_4_lut (.A(\state[1] ), .B(state[0]), .C(n38416), 
         .D(\state_back_2__N_482[2] ), .Z(n3_adj_1822)) /* synthesis lut_function=(A (B+(D))+!A (B+(C (D)))) */ ;
    defparam state_2__I_0_i3_4_lut_4_lut.init = 16'hfecc;
    LUT4 i1_2_lut_rep_783 (.A(cnt_write[0]), .B(cnt_write[1]), .Z(n38688)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_783.init = 16'h8888;
    LUT4 i3771_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n153[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i3771_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i19684_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n28357)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i19684_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 i3766_2_lut_rep_719_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[2]), .Z(n38624)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3766_2_lut_rep_719_3_lut.init = 16'h8080;
    PFUMX i28491 (.BLUT(n37982), .ALUT(n38542), .C0(\state_back_2__N_482[2] ), 
          .Z(n37983));
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_294), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i0 (.D(n21770), .SP(sys_clk_c_enable_295), .CD(n34008), 
            .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    FD1P3IX cnt_init_i0_i0 (.D(n32301), .SP(sys_clk_c_enable_296), .CD(n22408), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_254 (.A(n38616), .B(\state_back_2__N_482[2] ), .C(\state[1] ), 
         .D(state[0]), .Z(sys_clk_c_enable_304)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam i2_4_lut_adj_254.init = 16'h2002;
    LUT4 i3764_2_lut_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .Z(n153[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i3764_2_lut_3_lut.init = 16'h7878;
    LUT4 i24759_3_lut_4_lut_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[5]), 
         .Z(n33668)) /* synthesis lut_function=(A (B+(C))+!A !(B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i24759_3_lut_4_lut_3_lut.init = 16'hbdbd;
    LUT4 i13710_4_lut (.A(sys_clk_c_enable_304), .B(cnt_write[4]), .C(\state[1] ), 
         .D(n36239), .Z(n22410)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i13710_4_lut.init = 16'h8a0a;
    LUT4 i3757_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n153[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(125[25:41])
    defparam i3757_2_lut.init = 16'h6666;
    PFUMX i28489 (.BLUT(n37980), .ALUT(n37979), .C0(\state_back_2__N_482[2] ), 
          .Z(n37981));
    LUT4 i3802_2_lut_rep_786 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n38691)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3802_2_lut_rep_786.init = 16'h8888;
    LUT4 i3807_2_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n208[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3807_2_lut_3_lut.init = 16'h7878;
    LUT4 i3809_2_lut_rep_709_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n38614)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3809_2_lut_rep_709_3_lut.init = 16'h8080;
    LUT4 i3814_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n208[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(193[24:39])
    defparam i3814_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i28484 (.BLUT(n37974), .ALUT(n19906), .C0(cnt_write[5]), .Z(n37975));
    LUT4 cnt_read_1__bdd_4_lut_28765 (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(cnt_read[4]), .D(cnt_read[3]), .Z(n19925)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;
    defparam cnt_read_1__bdd_4_lut_28765.init = 16'h4294;
    FD1P3AX state_i0_i0 (.D(state_2__N_479[0]), .SP(sys_clk_c_enable_297), 
            .CK(sys_clk_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_603_4_lut (.A(n38623), .B(n19036), .C(state[0]), 
         .D(\state[1] ), .Z(n38508)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_rep_603_4_lut.init = 16'h3aff;
    LUT4 i1_2_lut_rep_791 (.A(cnt_read[2]), .B(cnt_read[4]), .Z(n38696)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_791.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_255 (.A(cnt_read[2]), .B(cnt_read[4]), .C(n38541), 
         .D(cnt_read[1]), .Z(n36089)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_255.init = 16'h0100;
    LUT4 i28022_2_lut_rep_793 (.A(\state_back_2__N_482[2] ), .B(state[0]), 
         .Z(n38698)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i28022_2_lut_rep_793.init = 16'h6666;
    LUT4 i13761_2_lut_3_lut_4_lut_4_lut (.A(\state_back_2__N_482[2] ), .B(state[0]), 
         .C(n261), .D(n38572), .Z(n22469)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(D)))) */ ;
    defparam i13761_2_lut_3_lut_4_lut_4_lut.init = 16'h0091;
    LUT4 i2_4_lut_adj_256 (.A(n38572), .B(state[0]), .C(\state_back_2__N_482[2] ), 
         .D(n38647), .Z(n26041)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut_adj_256.init = 16'h1101;
    LUT4 i1_2_lut_rep_795 (.A(cnt_main[3]), .B(cnt_main[2]), .Z(n38700)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_795.init = 16'h2222;
    LUT4 n151_bdd_3_lut_4_lut (.A(cnt_main[3]), .B(cnt_main[2]), .C(state[0]), 
         .D(cnt_main[0]), .Z(n38379)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam n151_bdd_3_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_3_lut_adj_257 (.A(cnt_main[3]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .Z(n36099)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_257.init = 16'h2020;
    LUT4 i1_2_lut_rep_796 (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n38701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_796.init = 16'h8888;
    LUT4 i26_1_lut_2_lut (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n7_adj_1820)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i26_1_lut_2_lut.init = 16'h7777;
    FD1P3IX cnt_main_i0_i1 (.D(n38703), .SP(sys_clk_c_enable_307), .CD(n26142), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 i5_2_lut_rep_798 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n38703)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(51[14:22])
    defparam i5_2_lut_rep_798.init = 16'h6666;
    FD1P3IX cnt_main_i0_i2 (.D(n25[2]), .SP(sys_clk_c_enable_307), .CD(n26142), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    LUT4 i28129_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(state_2__N_521[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A ((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(51[14:22])
    defparam i28129_4_lut_4_lut.init = 16'hf9f1;
    FD1P3IX cnt_write_i0_i0 (.D(n2824[1]), .SP(sys_clk_c_enable_304), .CD(n22410), 
            .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_799 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38704)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_799.init = 16'h8888;
    LUT4 i1_2_lut_rep_718_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n38623)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_718_3_lut.init = 16'h7070;
    LUT4 n20519_bdd_3_lut_28499_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(cnt_init[0]), .D(\state[1] ), .Z(n37982)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam n20519_bdd_3_lut_28499_4_lut.init = 16'h7000;
    LUT4 i3708_2_lut_rep_800 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n38705)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(88[24:39])
    defparam i3708_2_lut_rep_800.init = 16'h8888;
    PFUMX i28443 (.BLUT(n37901), .ALUT(n37900), .C0(cnt_write[5]), .Z(n37902));
    LUT4 i1_2_lut_rep_671_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(cnt_main[2]), .D(cnt_main[3]), .Z(n38576)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(88[24:39])
    defparam i1_2_lut_rep_671_3_lut_4_lut.init = 16'h0008;
    LUT4 i3574_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n23_adj_1824)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(88[24:39])
    defparam i3574_3_lut_4_lut.init = 16'hf800;
    LUT4 i3713_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(88[24:39])
    defparam i3713_2_lut_3_lut.init = 16'h7878;
    LUT4 i3720_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(88[24:39])
    defparam i3720_3_lut_4_lut.init = 16'h7f80;
    LUT4 i19119_2_lut_rep_802 (.A(state[0]), .B(\state[1] ), .Z(n38707)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i19119_2_lut_rep_802.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_715_3_lut (.A(state[0]), .B(\state[1] ), .C(\state_back_2__N_482[2] ), 
         .Z(n38620)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_rep_715_3_lut.init = 16'hfbfb;
    LUT4 i19098_2_lut_3_lut (.A(state[0]), .B(\state[1] ), .C(\state_back_2__N_482[2] ), 
         .Z(state_back_2__N_482[0])) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i19098_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i1_4_lut_adj_258 (.A(\state_back_2__N_482[2] ), .B(\state[1] ), 
         .C(state[0]), .D(n261), .Z(n22344)) /* synthesis lut_function=(!(A (B+!((D)+!C)))) */ ;
    defparam i1_4_lut_adj_258.init = 16'h7757;
    FD1P3IX cnt_main_i0_i3 (.D(n25[3]), .SP(sys_clk_c_enable_307), .CD(n26142), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    PFUMX i29033 (.BLUT(n39285), .ALUT(n39284), .C0(cnt_write[1]), .Z(n39286));
    LUT4 i4_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(n38549), .C(n4_adj_1826), 
         .D(n36032), .Z(n11_adj_1832)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i4_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 i1_4_lut_adj_259 (.A(n38575), .B(n10), .C(n38542), .D(\state_back_2__N_482[2] ), 
         .Z(sys_clk_c_enable_134)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_259.init = 16'ha088;
    LUT4 i19534_3_lut (.A(n23750), .B(\state_back_2__N_482[2] ), .C(\state[1] ), 
         .Z(num_delay_19__N_571[8])) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i19534_3_lut.init = 16'h2323;
    LUT4 i1_3_lut_adj_260 (.A(state[0]), .B(cnt_init[1]), .C(cnt_init[2]), 
         .Z(n23750)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_adj_260.init = 16'h5151;
    LUT4 i86_4_lut (.A(n6), .B(\state_back_2__N_482[2] ), .C(n38542), 
         .D(n38508), .Z(sys_clk_c_enable_135)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i86_4_lut.init = 16'ha2a0;
    LUT4 mux_54_Mux_5_i7_4_lut (.A(n21814), .B(n21770), .C(\state_back_2__N_482[2] ), 
         .D(\state[1] ), .Z(num_delay_19__N_571[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 i13093_2_lut (.A(cnt_init[2]), .B(state[0]), .Z(n21814)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i13093_2_lut.init = 16'heeee;
    LUT4 i13049_3_lut (.A(n19925), .B(n19583), .C(cnt_read[5]), .Z(n21770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(194[7] 254[14])
    defparam i13049_3_lut.init = 16'hcaca;
    LUT4 i28057_3_lut_4_lut (.A(cnt_read[5]), .B(n38510), .C(cnt_read[1]), 
         .D(n38696), .Z(sys_clk_c_enable_114)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i28057_3_lut_4_lut.init = 16'h0002;
    LUT4 i45_4_lut (.A(\state[1] ), .B(n44), .C(state[0]), .D(n36418), 
         .Z(n20)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(75[4] 262[11])
    defparam i45_4_lut.init = 16'h3f35;
    FD1P3IX cnt_read_i0_i1 (.D(n208[1]), .SP(sys_clk_c_enable_317), .CD(n26041), 
            .CK(sys_clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i2 (.D(n208[2]), .SP(sys_clk_c_enable_317), .CD(n26041), 
            .CK(sys_clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    CCU2D add_48_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33464), 
          .S0(n263[19]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_21.INIT0 = 16'h5aaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    CCU2D add_48_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33463), .COUT(n33464), .S0(n263[17]), .S1(n263[18]));   // c:/users/argon/desktop/verilog/ending/ds18b20.v(260[29:45])
    defparam add_48_19.INIT0 = 16'h5aaa;
    defparam add_48_19.INIT1 = 16'h5aaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    FD1P3IX cnt_read_i0_i3 (.D(n208[3]), .SP(sys_clk_c_enable_317), .CD(n26041), 
            .CK(sys_clk_c), .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i4 (.D(n208[4]), .SP(sys_clk_c_enable_317), .CD(n26041), 
            .CK(sys_clk_c), .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i5 (.D(n208[5]), .SP(sys_clk_c_enable_317), .CD(n26041), 
            .CK(sys_clk_c), .Q(cnt_read[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=332, LSE_RLINE=338 */ ;   // c:/users/argon/desktop/verilog/ending/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module OLED12832
//

module OLED12832 (sys_clk_c, GND_net, oled_cs_c, oled_dc_c, \sec[1] , 
            sw1_c, n38420, warning_TEM, \cnt_main[2] , n21133, n38546, 
            n14, n38561, n38560, n9269, n9144, n9272, \Tem_lower[3] , 
            n9147, \Tem_lower[2] , \min_tens[0] , \min_warning_tens[0] , 
            n9927, n37, n2694, hundres_0__N_321, hundres_0__N_321_adj_1, 
            n9917, n3072, n3450, \hour_ones[2] , \hour_warning_ones[2] , 
            \hour_ones[3] , \hour_warning_ones[3] , n3828, n4206, \min_ones[3] , 
            \min_warning_ones[3] , \hour_ones[1] , \hour_warning_ones[1] , 
            \min_ones[1] , \min_warning_ones[1] , \cnt[4] , \cnt[3] , 
            \cnt[2] , \cnt[1] , n2521, time_set, oled_mosi_c, \hundres_0__N_313[0] , 
            n38455, n38606, n11648, n37693, n2527, n2524, oled_sck_c, 
            oled_res_c, n37978, n2523, n37692, n37663, n9120, n3070, 
            n3448, n3826, n4204, \hundres_0__N_313[0]_adj_2 , n11642, 
            n38429, n21135, \min[0] , \min_warning[0] , \hour[0] , 
            \hour_warning[0] , \sec_tens[3] , \hundres_0__N_313[1] , \hundres_0__N_313[1]_adj_3 , 
            n11652, n9925, n38753, \hundres_0__N_316[3] , \hundres_0__N_316[3]_adj_4 , 
            n4, n4_adj_5, \hour_tens[0] , \hour_warning_tens[0] , \ds18b20_data[4] , 
            \sec[0] , n37649, \sec_tens[1] , n38432, n28424, n15, 
            n38338, n37676, n2693, n22, n4208, n3830, n3452, n3074, 
            n22_adj_6, \cnt[0] , n14378, n14_adj_7, n2690, \hundres_0__N_316[3]_adj_8 , 
            \hundres_0__N_316[3]_adj_9 , n3071, n3449, n3827, n4205, 
            n38607, \hundres_1__N_306[3] , n38457, n38458, n38608, 
            \hundres_1__N_306[3]_adj_10 , n4_adj_11, n2692, n2691, n3069, 
            n3447, n3825, n4203, n3068, n3446, n3824, n4202, n2696, 
            n37757, n37756, n2695, n3073, n3451, n3829, n4207, 
            sys_rst_n_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input GND_net;
    output oled_cs_c;
    output oled_dc_c;
    input \sec[1] ;
    input sw1_c;
    input n38420;
    input warning_TEM;
    output \cnt_main[2] ;
    input n21133;
    output n38546;
    input n14;
    output n38561;
    output n38560;
    input n9269;
    input n9144;
    input n9272;
    input \Tem_lower[3] ;
    input n9147;
    input \Tem_lower[2] ;
    input \min_tens[0] ;
    input \min_warning_tens[0] ;
    output n9927;
    input n37;
    input n2694;
    input hundres_0__N_321;
    input hundres_0__N_321_adj_1;
    output n9917;
    input n3072;
    input n3450;
    input \hour_ones[2] ;
    input \hour_warning_ones[2] ;
    input \hour_ones[3] ;
    input \hour_warning_ones[3] ;
    input n3828;
    input n4206;
    input \min_ones[3] ;
    input \min_warning_ones[3] ;
    input \hour_ones[1] ;
    input \hour_warning_ones[1] ;
    input \min_ones[1] ;
    input \min_warning_ones[1] ;
    output \cnt[4] ;
    output \cnt[3] ;
    output \cnt[2] ;
    output \cnt[1] ;
    output n2521;
    input time_set;
    output oled_mosi_c;
    input \hundres_0__N_313[0] ;
    input n38455;
    input n38606;
    output n11648;
    input n37693;
    output n2527;
    output n2524;
    output oled_sck_c;
    output oled_res_c;
    input n37978;
    output n2523;
    input n37692;
    input n37663;
    input n9120;
    input n3070;
    input n3448;
    input n3826;
    input n4204;
    input \hundres_0__N_313[0]_adj_2 ;
    input n11642;
    input n38429;
    input n21135;
    input \min[0] ;
    input \min_warning[0] ;
    input \hour[0] ;
    input \hour_warning[0] ;
    input \sec_tens[3] ;
    input \hundres_0__N_313[1] ;
    input \hundres_0__N_313[1]_adj_3 ;
    output n11652;
    input n9925;
    input n38753;
    input \hundres_0__N_316[3] ;
    input \hundres_0__N_316[3]_adj_4 ;
    output n4;
    output n4_adj_5;
    input \hour_tens[0] ;
    input \hour_warning_tens[0] ;
    input \ds18b20_data[4] ;
    input \sec[0] ;
    input n37649;
    input \sec_tens[1] ;
    input n38432;
    input n28424;
    input n15;
    input n38338;
    input n37676;
    input n2693;
    input n22;
    input n4208;
    input n3830;
    input n3452;
    input n3074;
    input n22_adj_6;
    output \cnt[0] ;
    input n14378;
    input n14_adj_7;
    input n2690;
    input \hundres_0__N_316[3]_adj_8 ;
    input \hundres_0__N_316[3]_adj_9 ;
    input n3071;
    input n3449;
    input n3827;
    input n4205;
    input n38607;
    input \hundres_1__N_306[3] ;
    input n38457;
    input n38458;
    input n38608;
    input \hundres_1__N_306[3]_adj_10 ;
    input n4_adj_11;
    input n2692;
    input n2691;
    input n3069;
    input n3447;
    input n3825;
    input n4203;
    input n3068;
    input n3446;
    input n3824;
    input n4202;
    input n2696;
    input n37757;
    input n37756;
    input n2695;
    input n3073;
    input n3451;
    input n3829;
    input n4207;
    input sys_rst_n_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(51[9:19])
    wire [15:0]cnt;   // c:/users/argon/desktop/verilog/ending/oled.v(46[35:38])
    
    wire sys_clk_c_enable_303, n22515;
    wire [15:0]n2184;
    
    wire n33430;
    wire [15:0]cnt_delay;   // c:/users/argon/desktop/verilog/ending/oled.v(46[24:33])
    wire [15:0]num_delay;   // c:/users/argon/desktop/verilog/ending/oled.v(46[13:22])
    
    wire n33431;
    wire [4:0]cnt_main;   // c:/users/argon/desktop/verilog/ending/oled.v(45[12:20])
    
    wire n27950, n38638, n36488;
    wire [4:0]cnt_init;   // c:/users/argon/desktop/verilog/ending/oled.v(45[22:30])
    
    wire sys_clk_c_enable_159;
    wire [4:0]n6673;
    
    wire n8, n27906;
    wire [5:0]state;   // c:/users/argon/desktop/verilog/ending/oled.v(47[13:18])
    
    wire n23;
    wire [7:0]y_p;   // c:/users/argon/desktop/verilog/ending/oled.v(42[12:15])
    
    wire sys_clk_c_enable_151, n28472;
    wire [7:0]x_ph;   // c:/users/argon/desktop/verilog/ending/oled.v(42[17:21])
    wire [7:0]x_ph_7__N_725;
    wire [7:0]char_reg;   // c:/users/argon/desktop/verilog/ending/oled.v(44[17:25])
    wire [7:0]char_reg_7__N_917;
    wire [5:0]state_back;   // c:/users/argon/desktop/verilog/ending/oled.v(47[20:30])
    wire [5:0]state_back_5__N_999;
    
    wire sys_clk_c_enable_22, n35642, sys_clk_c_enable_23, n35700;
    wire [15:0]num_delay_15__N_945;
    wire [4:0]n9145;
    wire [4:0]cnt_write;   // c:/users/argon/desktop/verilog/ending/oled.v(45[42:51])
    
    wire n38669, flash_bit, rst_n_in_N_1482, flash_bit_N_1389;
    wire [7:0]num;   // c:/users/argon/desktop/verilog/ending/oled.v(44[12:15])
    
    wire sys_clk_c_enable_300;
    wire [7:0]n47;
    wire [4:0]n4261;
    
    wire n37758;
    wire [5:0]n9397;
    
    wire n36681;
    wire [21:0]n9459;
    
    wire n38671, n38599, n33429;
    wire [4:0]n1;
    
    wire n36279, n24760, n15_c, n37668, n37667, n37669, n16, n38547, 
        n16_adj_1689;
    wire [4:0]n9262;
    wire [3:0]n9124;
    
    wire n8290, n36302, n36721, n36722, oled_dat_N_1386;
    wire [4:0]n9256;
    wire [3:0]n9941;
    wire [4:0]n9391;
    
    wire n24, n38635, n27, n36179, n38636, n38673;
    wire [7:0]x_ph_7__N_1040;
    
    wire n36178, n28369, n28362, n36711, n36712;
    wire [4:0]cnt_scan;   // c:/users/argon/desktop/verilog/ending/oled.v(45[32:40])
    
    wire n36713, n38675, n38601, n38674, n37823;
    wire [7:0]n1575;
    
    wire n36629, n6;
    wire [167:0]char;   // c:/users/argon/desktop/verilog/ending/oled.v(43[19:23])
    
    wire n38602;
    wire [4:0]n9139;
    wire [5:0]n9274;
    
    wire n38632;
    wire [167:0]char_167__N_1072;
    wire [3:0]n9134;
    
    wire n55_adj_1691, n63, n12;
    wire [21:0]n9404;
    
    wire n36726, n3795, n38732, n38733, n38734, n45, n57, sys_clk_c_enable_318, 
        n34578, n39338, n4_c, n85, n34, n52, n46, n36733, n36734, 
        n61, n38548, n28434, n3549, n28540, n17, n13, n33428, 
        n33427, n24_adj_1693, n6_adj_1694, n12_adj_1695, n24_adj_1696, 
        n33426, n6_adj_1697, n12_adj_1698, n24_adj_1699, sys_clk_c_enable_293, 
        n22350;
    wire [4:0]cnt_main_4__N_1012;
    
    wire n6_adj_1700, n12_adj_1701, n33517, n20638;
    wire [7:0]n3;
    
    wire n22375, n33516, n33515, n6_adj_1702, n12_adj_1703, n24_adj_1704, 
        sys_clk_c_enable_282, n22430, n6_adj_1705, n12_adj_1706, n24_adj_1707, 
        n6_adj_1708, n12_adj_1709, n24_adj_1710, n6_adj_1711, n12_adj_1712, 
        n24_adj_1713, n33514, n57_adj_1715, n61_adj_1716;
    wire [7:0]x_pl;   // c:/users/argon/desktop/verilog/ending/oled.v(42[23:27])
    
    wire sys_clk_c_enable_130, n28502, n6_adj_1717, n36236, n24_adj_1718, 
        n6_adj_1719, n12_adj_1720, n24_adj_1721, n6_adj_1722, n36237, 
        n24_adj_1723, n6_adj_1724, n36238, n24_adj_1725, n36341, n126, 
        n13939, n45_adj_1726, n57_adj_1727, n36615, n63_adj_1728, 
        n2, n36159, n15_adj_1730, n33726, n12_adj_1731, n32, n13_adj_1732, 
        n11, n35038, n57_adj_1733, n61_adj_1734, n63_adj_1735, n36208, 
        n61_adj_1736, n63_adj_1737, sys_clk_c_enable_279, n22414;
    wire [15:0]n4285;
    
    wire n45_adj_1738, n57_adj_1739, n63_adj_1740, n57_adj_1741, n61_adj_1742, 
        n63_adj_1743, n38748, n63_adj_1744, n34215, n61_adj_1745, 
        n63_adj_1746, n22367;
    wire [4:0]n2122;
    wire [15:0]n2158;
    
    wire oled_dcn_N_1364, n38595, n38587, n42_adj_1748, n62, n38555, 
        n38716, n50, n38596, sys_clk_c_enable_190, n36169, n20648, 
        n38786, n38791, n38790, n38794, n38793, n38640, n38719, 
        n38800, n38583, n38521, n38799, n38634, n38804, n38803, 
        n38807, n38806, n38810, n38566, n38809, n38559, n38531, 
        n4283, n38558, n38525, n38590, n36667, n38552, n38588, 
        n11490, n37821, n37820, n16_adj_1749, n16_adj_1750, n27_adj_1751;
    wire [15:0]num_delay_15__N_1256;
    
    wire n38579, n36416, n38633, n39380, n39382, n16_adj_1752, n38554, 
        n16_adj_1753, n38664, n5, n39552, n39554, n16_adj_1754, 
        n16_adj_1755, n16_adj_1756, n21, sys_clk_c_enable_305, n22511, 
        n33982, n38615, n39907, n8_adj_1757, n8_adj_1758, n38662, 
        n39908, n38722, n38715, n16_adj_1759, n16_adj_1760, n36085, 
        n36185, n38582, n37865, n37866, n6_adj_1761, n16_adj_1762, 
        n36154, n16_adj_1763, n16_adj_1764, n16_adj_1765, n16_adj_1766, 
        n16_adj_1767, n37881, n10, n16_adj_1768, n38530, n6197, 
        n9752, n35572, n38581, n16_adj_1769, n16_adj_1770, n39551, 
        n39548, n38721, n38639, n38603, n16_adj_1771, n27_adj_1772, 
        n39550, n16_adj_1773, n16_adj_1774, n39549, n38574, n37570, 
        n24_adj_1775, n4_adj_1776, n38651, n15_adj_1777, n16_adj_1778, 
        n36278, n36322, n36357, n36028, n36323, n20795, n35, n31;
    wire [5:0]state_back_5__N_1334;
    
    wire n38658, n24_adj_1779, n39906, n24_adj_1780, n36198, n15_adj_1781, 
        n6_adj_1782;
    wire [7:0]num_7__N_1056;
    
    wire n38745, n38746, n10_adj_1783, n35890, n37557, n36317, n7, 
        n38505, n38660, n11_adj_1784, sys_clk_c_enable_287, n38677, 
        sys_clk_c_enable_264, n39909, n39302, n38507, n22504, sys_clk_c_enable_276, 
        oled_rst_N_1351;
    wire [0:0]n6089;
    
    wire n36503, n36985, n22358, n2323;
    wire [4:0]n2332;
    
    wire n38617;
    wire [4:0]cnt_scan_4__N_1022;
    
    wire n4_adj_1785, n4_adj_1786, n12539, n36165, n34214, n38666, 
        n36256, n36730, n36731, n38600, n17_adj_1787, n34165, n13794, 
        n38718, n38697, n38550, n36549, n55_adj_1788, n37822, n36717, 
        n36718, n36719, n36720, n36643, n18, n34794, n22532, n20873, 
        n39_adj_1789, n38681, n36725, n38711, n38720, n38626, n38609, 
        n36724, n21105;
    wire [3:0]n9923;
    
    wire n38296, n38728, n36057, n38450, n44_adj_1795, n17_adj_1796, 
        n38563, n38594, n22536, n36522, n33480, n38562, n38661, 
        n31_adj_1797, n36729, n36525, n36727, n38750, n38556, n40_adj_1798, 
        n1477, n38598, n39_adj_1800, n36633, n16_adj_1801, n37614, 
        n55_adj_1802, n36499, n55_adj_1803, n33479, n33478, n33477, 
        n55_adj_1805, n37637, n55_adj_1806, n91, n33476, n55_adj_1807, 
        n55_adj_1809, n20650, n36254, n36312, n19858, n33749, n9, 
        n33713, n33475, n33474, n38749, n33473, n33472, n33471, 
        n33470, n33469, n33468, n8974, n33467, n19, n20, n15_adj_1814, 
        n33433, n18_adj_1815, n33432, n16_adj_1816, n16_adj_1817, 
        n36951, n36314, n20818, n4_adj_1818, n36708, n36709, n33466, 
        n36748, n36749, n33465, n45_adj_1819, n36736, n36737;
    
    FD1P3IX cnt_i0_i11 (.D(n2184[11]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i11.GSR = "ENABLED";
    CCU2D sub_2283_add_2_11 (.A0(cnt_delay[9]), .B0(num_delay[9]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(num_delay[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33430), .COUT(n33431));
    defparam sub_2283_add_2_11.INIT0 = 16'h5999;
    defparam sub_2283_add_2_11.INIT1 = 16'h5999;
    defparam sub_2283_add_2_11.INJECT1_0 = "NO";
    defparam sub_2283_add_2_11.INJECT1_1 = "NO";
    LUT4 i27559_2_lut_3_lut_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(n27950), .D(n38638), .Z(n36488)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;
    defparam i27559_2_lut_3_lut_4_lut_4_lut.init = 16'hf090;
    FD1P3AX cnt_init_i0_i0 (.D(n6673[0]), .SP(sys_clk_c_enable_159), .CK(sys_clk_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_i0_i10 (.D(n2184[10]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i10.GSR = "ENABLED";
    PFUMX i40 (.BLUT(n8), .ALUT(n27906), .C0(state[5]), .Z(n23));
    FD1P3AX y_p_i0_i0 (.D(n28472), .SP(sys_clk_c_enable_151), .CK(sys_clk_c), 
            .Q(y_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam y_p_i0_i0.GSR = "ENABLED";
    FD1S3AX x_ph_i0 (.D(x_ph_7__N_725[0]), .CK(sys_clk_c), .Q(x_ph[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam x_ph_i0.GSR = "ENABLED";
    FD1S3AX char_reg_i0 (.D(char_reg_7__N_917[0]), .CK(sys_clk_c), .Q(char_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i0.GSR = "ENABLED";
    FD1S3AY state_back_i0 (.D(state_back_5__N_999[0]), .CK(sys_clk_c), .Q(state_back[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AY oled_csn_334 (.D(n35642), .SP(sys_clk_c_enable_22), .CK(sys_clk_c), 
            .Q(oled_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam oled_csn_334.GSR = "ENABLED";
    FD1P3AX oled_dcn_336 (.D(n35700), .SP(sys_clk_c_enable_23), .CK(sys_clk_c), 
            .Q(oled_dc_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam oled_dcn_336.GSR = "ENABLED";
    FD1S3AY num_delay_i0 (.D(num_delay_15__N_945[0]), .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i0.GSR = "ENABLED";
    LUT4 i19061_3_lut (.A(\sec[1] ), .B(sw1_c), .C(n38420), .Z(n9145[1])) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(109[121:133])
    defparam i19061_3_lut.init = 16'h1212;
    LUT4 i4008_2_lut_rep_764 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n38669)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(162[25:41])
    defparam i4008_2_lut_rep_764.init = 16'h8888;
    FD1S3AX char_reg_i2 (.D(char_reg_7__N_917[2]), .CK(sys_clk_c), .Q(char_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i2.GSR = "ENABLED";
    FD1S3IX flash_bit_319 (.D(flash_bit_N_1389), .CK(clk_in_1Hz), .CD(rst_n_in_N_1482), 
            .Q(flash_bit));   // c:/users/argon/desktop/verilog/ending/oled.v(59[8] 64[5])
    defparam flash_bit_319.GSR = "DISABLED";
    FD1P3AX num_2894__i0 (.D(n47[0]), .SP(sys_clk_c_enable_300), .CK(sys_clk_c), 
            .Q(num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i0.GSR = "ENABLED";
    LUT4 i4013_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n4261[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(162[25:41])
    defparam i4013_2_lut_3_lut.init = 16'h7878;
    LUT4 i4020_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n4261[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(162[25:41])
    defparam i4020_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i28008_3_lut (.A(n37758), .B(n9397[2]), .C(n36681), .Z(n9459[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28008_3_lut.init = 16'hcaca;
    FD1P3IX cnt_i0_i15 (.D(n2184[15]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i15.GSR = "ENABLED";
    FD1P3IX cnt_i0_i14 (.D(n2184[14]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_i0_i13 (.D(n2184[13]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i13.GSR = "ENABLED";
    FD1P3IX cnt_i0_i12 (.D(n2184[12]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i12.GSR = "ENABLED";
    LUT4 i3864_2_lut_rep_766 (.A(cnt_main[0]), .B(warning_TEM), .Z(n38671)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(91[40:55])
    defparam i3864_2_lut_rep_766.init = 16'h8888;
    LUT4 i3872_2_lut_rep_694_3_lut (.A(cnt_main[0]), .B(warning_TEM), .C(cnt_main[1]), 
         .Z(n38599)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(91[40:55])
    defparam i3872_2_lut_rep_694_3_lut.init = 16'h8080;
    CCU2D sub_2283_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33429), .COUT(n33430));
    defparam sub_2283_add_2_9.INIT0 = 16'h5999;
    defparam sub_2283_add_2_9.INIT1 = 16'h5999;
    defparam sub_2283_add_2_9.INJECT1_0 = "NO";
    defparam sub_2283_add_2_9.INJECT1_1 = "NO";
    LUT4 i3877_2_lut_3_lut_4_lut (.A(cnt_main[0]), .B(warning_TEM), .C(\cnt_main[2] ), 
         .D(cnt_main[1]), .Z(n1[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(91[40:55])
    defparam i3877_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i39 (.BLUT(n36279), .ALUT(n24760), .C0(state[5]), .Z(n15_c));
    PFUMX i28314 (.BLUT(n37668), .ALUT(n37667), .C0(sw1_c), .Z(n37669));
    LUT4 i1_4_lut (.A(state[0]), .B(x_ph[1]), .C(n16), .D(n38547), .Z(x_ph_7__N_725[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'hdc50;
    LUT4 i1_4_lut_adj_16 (.A(state[0]), .B(x_ph[4]), .C(n16_adj_1689), 
         .D(n38547), .Z(x_ph_7__N_725[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_16.init = 16'hdc50;
    LUT4 mux_2476_i3_4_lut (.A(n9262[2]), .B(n9124[2]), .C(n8290), .D(n36302), 
         .Z(n9397[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_2476_i3_4_lut.init = 16'haca0;
    L6MUX21 i27791 (.D0(n36721), .D1(n36722), .SD(cnt_write[3]), .Z(oled_dat_N_1386));
    LUT4 mux_2475_i3_4_lut (.A(n9256[2]), .B(n9941[2]), .C(cnt_main[0]), 
         .D(n21133), .Z(n9391[2])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam mux_2475_i3_4_lut.init = 16'h3aca;
    LUT4 i1_4_lut_adj_17 (.A(n24), .B(char_reg[1]), .C(n38635), .D(n27), 
         .Z(char_reg_7__N_917[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hce0a;
    LUT4 i33_4_lut (.A(x_ph[4]), .B(n36179), .C(state[1]), .D(n38636), 
         .Z(n16_adj_1689)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i33_4_lut.init = 16'h0a3a;
    LUT4 i2_3_lut_rep_768 (.A(num[4]), .B(num[3]), .C(num[2]), .Z(n38673)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i2_3_lut_rep_768.init = 16'hfefe;
    LUT4 i33_4_lut_adj_18 (.A(x_ph[1]), .B(x_ph_7__N_1040[1]), .C(state[1]), 
         .D(n38636), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_18.init = 16'h0aca;
    LUT4 i4_4_lut (.A(n36488), .B(n36178), .C(n28369), .D(n28362), .Z(n36179)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    PFUMX i27781 (.BLUT(n36711), .ALUT(n36712), .C0(cnt_scan[1]), .Z(n36713));
    FD1P3IX cnt_i0_i9 (.D(n2184[9]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i9.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_696_4_lut (.A(num[4]), .B(num[3]), .C(num[2]), .D(n38675), 
         .Z(n38601)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i2_2_lut_rep_696_4_lut.init = 16'hfffe;
    FD1P3IX cnt_i0_i8 (.D(n2184[8]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i8.GSR = "ENABLED";
    LUT4 i10914_2_lut_rep_769 (.A(num[3]), .B(num[4]), .Z(n38674)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i10914_2_lut_rep_769.init = 16'heeee;
    LUT4 n37823_bdd_2_lut_rep_641_3_lut (.A(num[3]), .B(num[4]), .C(n37823), 
         .Z(n38546)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam n37823_bdd_2_lut_rep_641_3_lut.init = 16'h1010;
    LUT4 i10878_2_lut_rep_770 (.A(num[0]), .B(num[1]), .Z(n38675)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i10878_2_lut_rep_770.init = 16'heeee;
    LUT4 i1_4_lut_adj_19 (.A(state[2]), .B(n14), .C(n1575[7]), .D(n36629), 
         .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_19.init = 16'h88a0;
    LUT4 i19387_2_lut_rep_656_3_lut_4_lut (.A(num[0]), .B(num[1]), .C(char[1]), 
         .D(n38673), .Z(n38561)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i19387_2_lut_rep_656_3_lut_4_lut.init = 16'h0010;
    LUT4 i19356_2_lut_rep_655_3_lut_4_lut (.A(num[0]), .B(num[1]), .C(char[5]), 
         .D(n38673), .Z(n38560)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i19356_2_lut_rep_655_3_lut_4_lut.init = 16'h0010;
    LUT4 i19350_2_lut_rep_697_3_lut (.A(num[0]), .B(num[1]), .C(char[38]), 
         .Z(n38602)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i19350_2_lut_rep_697_3_lut.init = 16'h1010;
    PFUMX mux_2419_i3 (.BLUT(n9139[2]), .ALUT(n9274[2]), .C0(\cnt_main[2] ), 
          .Z(n9262[2]));
    L6MUX21 mux_2488_i1 (.D0(n9459[0]), .D1(n9391[0]), .SD(n38632), .Z(char_167__N_1072[0]));
    L6MUX21 mux_2475_i4 (.D0(n9256[3]), .D1(n9269), .SD(cnt_main[0]), 
            .Z(n9391[3]));
    PFUMX mux_2486_i1 (.BLUT(n9134[0]), .ALUT(n9397[0]), .C0(n36681), 
          .Z(n9459[0]));
    LUT4 i1_4_lut_adj_20 (.A(state[2]), .B(n55_adj_1691), .C(cnt_scan[4]), 
         .D(n63), .Z(n12)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_20.init = 16'h4544;
    PFUMX mux_2486_i4 (.BLUT(n9404[3]), .ALUT(n36726), .C0(n8290), .Z(n9459[3]));
    LUT4 i1_2_lut (.A(char_reg[7]), .B(n3795), .Z(n55_adj_1691)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i28738 (.BLUT(n38732), .ALUT(n38733), .C0(cnt_scan[1]), .Z(n38734));
    LUT4 i19035_2_lut (.A(n45), .B(cnt_scan[1]), .Z(n57)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19035_2_lut.init = 16'h8888;
    FD1P3IX cnt_i0_i7 (.D(n2184[7]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i7.GSR = "ENABLED";
    FD1P3AY state_i0_i0 (.D(n34578), .SP(sys_clk_c_enable_318), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_21 (.A(n39338), .B(cnt_main[0]), .C(n4_c), .D(n85), 
         .Z(n36178)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_21.init = 16'ha2a0;
    PFUMX mux_2419_i1 (.BLUT(n9144), .ALUT(n9274[0]), .C0(\cnt_main[2] ), 
          .Z(n9262[0]));
    PFUMX mux_2475_i1 (.BLUT(n9256[0]), .ALUT(n9272), .C0(cnt_main[0]), 
          .Z(n9391[0]));
    PFUMX i79 (.BLUT(n34), .ALUT(n52), .C0(n38632), .Z(char_167__N_1072[1]));
    PFUMX mux_2418_i4 (.BLUT(\Tem_lower[3] ), .ALUT(n9147), .C0(cnt_main[1]), 
          .Z(n9256[3]));
    PFUMX mux_2418_i3 (.BLUT(\Tem_lower[2] ), .ALUT(n9145[2]), .C0(cnt_main[1]), 
          .Z(n9256[2]));
    PFUMX mux_2846_i1 (.BLUT(\min_tens[0] ), .ALUT(\min_warning_tens[0] ), 
          .C0(sw1_c), .Z(n9927));
    PFUMX i85 (.BLUT(n37), .ALUT(n9145[1]), .C0(cnt_main[1]), .Z(n46));
    LUT4 i97_4_lut (.A(cnt_scan[0]), .B(n2694), .C(cnt_scan[2]), .D(x_ph[2]), 
         .Z(n45)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;
    defparam i97_4_lut.init = 16'h8580;
    LUT4 i1_4_lut_adj_22 (.A(cnt_scan[2]), .B(n36733), .C(n36734), .D(cnt_scan[1]), 
         .Z(n61)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h5044;
    PFUMX mux_3255_i1 (.BLUT(hundres_0__N_321), .ALUT(hundres_0__N_321_adj_1), 
          .C0(sw1_c), .Z(n9917));
    LUT4 i27801_3_lut (.A(n3072), .B(n3450), .C(cnt_scan[0]), .Z(n36733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27801_3_lut.init = 16'hcaca;
    LUT4 i28180_3_lut_3_lut (.A(n38548), .B(n28434), .C(n3549), .Z(n28540)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i28180_3_lut_3_lut.init = 16'h1515;
    LUT4 i2_4_lut (.A(\cnt_main[2] ), .B(n36488), .C(n17), .D(n13), 
         .Z(x_ph_7__N_1040[1])) /* synthesis lut_function=(A ((C)+!B)+!A ((C+(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'hf7f3;
    PFUMX mux_2296_i3 (.BLUT(\hour_ones[2] ), .ALUT(\hour_warning_ones[2] ), 
          .C0(sw1_c), .Z(n9124[2]));
    PFUMX mux_2296_i4 (.BLUT(\hour_ones[3] ), .ALUT(\hour_warning_ones[3] ), 
          .C0(sw1_c), .Z(n9124[3]));
    PFUMX mux_2488_i3 (.BLUT(n9459[2]), .ALUT(n9391[2]), .C0(n38632), 
          .Z(char_167__N_1072[2]));
    LUT4 i27802_3_lut (.A(n3828), .B(n4206), .C(cnt_scan[0]), .Z(n36734)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27802_3_lut.init = 16'hcaca;
    CCU2D sub_2283_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33428), .COUT(n33429));
    defparam sub_2283_add_2_7.INIT0 = 16'h5999;
    defparam sub_2283_add_2_7.INIT1 = 16'h5999;
    defparam sub_2283_add_2_7.INJECT1_0 = "NO";
    defparam sub_2283_add_2_7.INJECT1_1 = "NO";
    PFUMX mux_2298_i4 (.BLUT(\min_ones[3] ), .ALUT(\min_warning_ones[3] ), 
          .C0(sw1_c), .Z(n9134[3]));
    PFUMX mux_2296_i2 (.BLUT(\hour_ones[1] ), .ALUT(\hour_warning_ones[1] ), 
          .C0(sw1_c), .Z(n9124[1]));
    PFUMX mux_2298_i2 (.BLUT(\min_ones[1] ), .ALUT(\min_warning_ones[1] ), 
          .C0(sw1_c), .Z(n9134[1]));
    CCU2D sub_2283_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33427), .COUT(n33428));
    defparam sub_2283_add_2_5.INIT0 = 16'h5999;
    defparam sub_2283_add_2_5.INIT1 = 16'h5999;
    defparam sub_2283_add_2_5.INJECT1_0 = "NO";
    defparam sub_2283_add_2_5.INJECT1_1 = "NO";
    PFUMX i47 (.BLUT(n6), .ALUT(n12), .C0(state[3]), .Z(n24_adj_1693));
    FD1P3IX cnt_i0_i6 (.D(n2184[6]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i6.GSR = "ENABLED";
    PFUMX i47_adj_23 (.BLUT(n6_adj_1694), .ALUT(n12_adj_1695), .C0(state[3]), 
          .Z(n24_adj_1696));
    FD1P3IX cnt_i0_i5 (.D(n2184[5]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_i0_i4 (.D(n2184[4]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(\cnt[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i4.GSR = "ENABLED";
    CCU2D sub_2283_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33426), .COUT(n33427));
    defparam sub_2283_add_2_3.INIT0 = 16'h5999;
    defparam sub_2283_add_2_3.INIT1 = 16'h5999;
    defparam sub_2283_add_2_3.INJECT1_0 = "NO";
    defparam sub_2283_add_2_3.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i3 (.D(n2184[3]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(\cnt[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    PFUMX i47_adj_24 (.BLUT(n6_adj_1697), .ALUT(n12_adj_1698), .C0(state[3]), 
          .Z(n24_adj_1699));
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_4__N_1012[1]), .SP(sys_clk_c_enable_293), 
            .CD(n22350), .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    PFUMX i47_adj_25 (.BLUT(n6_adj_1700), .ALUT(n12_adj_1701), .C0(state[3]), 
          .Z(n24));
    CCU2D num_2894_add_4_9 (.A0(cnt_scan[3]), .B0(n20638), .C0(num[7]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33517), .S0(n3[7]));   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894_add_4_9.INIT0 = 16'he1e1;
    defparam num_2894_add_4_9.INIT1 = 16'h0000;
    defparam num_2894_add_4_9.INJECT1_0 = "NO";
    defparam num_2894_add_4_9.INJECT1_1 = "NO";
    FD1P3IX cnt_i0_i2 (.D(n2184[2]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(\cnt[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(n1[2]), .SP(sys_clk_c_enable_293), .CD(n22375), 
            .CK(sys_clk_c), .Q(\cnt_main[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    CCU2D num_2894_add_4_7 (.A0(cnt_scan[3]), .B0(n20638), .C0(num[5]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20638), .C1(num[6]), 
          .D1(GND_net), .CIN(n33516), .COUT(n33517), .S0(n3[5]), .S1(n3[6]));   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894_add_4_7.INIT0 = 16'he1e1;
    defparam num_2894_add_4_7.INIT1 = 16'he1e1;
    defparam num_2894_add_4_7.INJECT1_0 = "NO";
    defparam num_2894_add_4_7.INJECT1_1 = "NO";
    CCU2D num_2894_add_4_5 (.A0(cnt_scan[3]), .B0(n20638), .C0(num[3]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20638), .C1(num[4]), 
          .D1(GND_net), .CIN(n33515), .COUT(n33516), .S0(n3[3]), .S1(n3[4]));   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894_add_4_5.INIT0 = 16'he1e1;
    defparam num_2894_add_4_5.INIT1 = 16'he1e1;
    defparam num_2894_add_4_5.INJECT1_0 = "NO";
    defparam num_2894_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_2283_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n33426));
    defparam sub_2283_add_2_1.INIT0 = 16'h0000;
    defparam sub_2283_add_2_1.INIT1 = 16'h5999;
    defparam sub_2283_add_2_1.INJECT1_0 = "NO";
    defparam sub_2283_add_2_1.INJECT1_1 = "NO";
    PFUMX i47_adj_26 (.BLUT(n6_adj_1702), .ALUT(n12_adj_1703), .C0(state[3]), 
          .Z(n24_adj_1704));
    FD1P3IX cnt_write_i0_i1 (.D(n4261[1]), .SP(sys_clk_c_enable_282), .CD(n22430), 
            .CK(sys_clk_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    PFUMX i47_adj_27 (.BLUT(n6_adj_1705), .ALUT(n12_adj_1706), .C0(state[3]), 
          .Z(n24_adj_1707));
    FD1P3IX cnt_write_i0_i2 (.D(n4261[2]), .SP(sys_clk_c_enable_282), .CD(n22430), 
            .CK(sys_clk_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    PFUMX i47_adj_28 (.BLUT(n6_adj_1708), .ALUT(n12_adj_1709), .C0(state[3]), 
          .Z(n24_adj_1710));
    FD1P3IX cnt_write_i0_i3 (.D(n4261[3]), .SP(sys_clk_c_enable_282), .CD(n22430), 
            .CK(sys_clk_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    PFUMX i47_adj_29 (.BLUT(n6_adj_1711), .ALUT(n12_adj_1712), .C0(state[3]), 
          .Z(n24_adj_1713));
    CCU2D num_2894_add_4_3 (.A0(cnt_scan[3]), .B0(n20638), .C0(num[1]), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20638), .C1(num[2]), 
          .D1(GND_net), .CIN(n33514), .COUT(n33515), .S0(n3[1]), .S1(n3[2]));   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894_add_4_3.INIT0 = 16'he1e1;
    defparam num_2894_add_4_3.INIT1 = 16'he1e1;
    defparam num_2894_add_4_3.INJECT1_0 = "NO";
    defparam num_2894_add_4_3.INJECT1_1 = "NO";
    CCU2D num_2894_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan[3]), .B1(n20638), .C1(num[0]), 
          .D1(GND_net), .COUT(n33514), .S1(n3[0]));   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894_add_4_1.INIT0 = 16'hF000;
    defparam num_2894_add_4_1.INIT1 = 16'he1e1;
    defparam num_2894_add_4_1.INJECT1_0 = "NO";
    defparam num_2894_add_4_1.INJECT1_1 = "NO";
    PFUMX i91 (.BLUT(n57_adj_1715), .ALUT(n61_adj_1716), .C0(cnt_scan[3]), 
          .Z(n63));
    FD1P3IX cnt_write_i0_i4 (.D(n4261[4]), .SP(sys_clk_c_enable_282), .CD(n22430), 
            .CK(sys_clk_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_i0_i1 (.D(n2184[1]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(\cnt[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    FD1P3AX x_pl_i0_i3 (.D(n28502), .SP(sys_clk_c_enable_130), .CK(sys_clk_c), 
            .Q(x_pl[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam x_pl_i0_i3.GSR = "ENABLED";
    PFUMX i47_adj_30 (.BLUT(n6_adj_1717), .ALUT(n36236), .C0(state[3]), 
          .Z(n24_adj_1718));
    PFUMX i47_adj_31 (.BLUT(n6_adj_1719), .ALUT(n12_adj_1720), .C0(state[3]), 
          .Z(n24_adj_1721));
    PFUMX i47_adj_32 (.BLUT(n6_adj_1722), .ALUT(n36237), .C0(state[3]), 
          .Z(n24_adj_1723));
    PFUMX i47_adj_33 (.BLUT(n6_adj_1724), .ALUT(n36238), .C0(state[3]), 
          .Z(n24_adj_1725));
    PFUMX i5366 (.BLUT(n36341), .ALUT(n126), .C0(n2521), .Z(n13939));
    PFUMX i91_adj_34 (.BLUT(n45_adj_1726), .ALUT(n57_adj_1727), .C0(n36615), 
          .Z(n63_adj_1728));
    FD1P3IX cnt_main_i0_i3 (.D(n1[3]), .SP(sys_clk_c_enable_293), .CD(n22375), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    PFUMX i33 (.BLUT(n2), .ALUT(n36159), .C0(state[3]), .Z(n15_adj_1730));
    PFUMX i58 (.BLUT(n33726), .ALUT(n12_adj_1731), .C0(state[2]), .Z(n32));
    PFUMX i29 (.BLUT(n13_adj_1732), .ALUT(n11), .C0(state[5]), .Z(n35038));
    PFUMX i91_adj_35 (.BLUT(n57_adj_1733), .ALUT(n61_adj_1734), .C0(cnt_scan[3]), 
          .Z(n63_adj_1735));
    PFUMX i91_adj_36 (.BLUT(n36208), .ALUT(n61_adj_1736), .C0(cnt_scan[3]), 
          .Z(n63_adj_1737));
    FD1P3IX cnt_delay_i0_i1 (.D(n4285[1]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    PFUMX i91_adj_37 (.BLUT(n45_adj_1738), .ALUT(n57_adj_1739), .C0(n36615), 
          .Z(n63_adj_1740));
    FD1P3IX cnt_delay_i0_i2 (.D(n4285[2]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    PFUMX i91_adj_38 (.BLUT(n57_adj_1741), .ALUT(n61_adj_1742), .C0(cnt_scan[3]), 
          .Z(n63_adj_1743));
    LUT4 i27796_4_lut_else_4_lut (.A(flash_bit), .B(time_set), .C(sw1_c), 
         .Z(n38748)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i27796_4_lut_else_4_lut.init = 16'h0b0b;
    FD1S3AX char_reg_i1 (.D(char_reg_7__N_917[1]), .CK(sys_clk_c), .Q(char_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i1.GSR = "ENABLED";
    PFUMX i91_adj_39 (.BLUT(n57), .ALUT(n61), .C0(cnt_scan[3]), .Z(n63_adj_1744));
    FD1S3AX x_ph_i4 (.D(x_ph_7__N_725[4]), .CK(sys_clk_c), .Q(x_ph[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam x_ph_i4.GSR = "ENABLED";
    FD1S3AX x_ph_i2 (.D(x_ph_7__N_725[2]), .CK(sys_clk_c), .Q(x_ph[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam x_ph_i2.GSR = "ENABLED";
    FD1S3AX x_ph_i1 (.D(x_ph_7__N_725[1]), .CK(sys_clk_c), .Q(x_ph[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam x_ph_i1.GSR = "ENABLED";
    PFUMX i91_adj_40 (.BLUT(n34215), .ALUT(n61_adj_1745), .C0(cnt_scan[3]), 
          .Z(n63_adj_1746));
    FD1P3AX y_p_i0_i4 (.D(n28540), .SP(sys_clk_c_enable_151), .CK(sys_clk_c), 
            .Q(y_p[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam y_p_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n4285[3]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i4 (.D(n1[4]), .SP(sys_clk_c_enable_293), .CD(n22375), 
            .CK(sys_clk_c), .Q(cnt_main[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i4 (.D(n4285[4]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n2122[1]), .SP(sys_clk_c_enable_159), .CD(n22367), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i2 (.D(n2122[2]), .SP(sys_clk_c_enable_159), .CD(n22367), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i3 (.D(n2122[3]), .SP(sys_clk_c_enable_159), .CD(n22367), 
            .CK(sys_clk_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i4 (.D(n2122[4]), .SP(sys_clk_c_enable_159), .CD(n22367), 
            .CK(sys_clk_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n4285[5]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i15 (.D(num_delay_15__N_945[15]), .CK(sys_clk_c), 
            .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i15.GSR = "ENABLED";
    LUT4 i19554_2_lut (.A(n2158[6]), .B(oled_dcn_N_1364), .Z(n2184[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19554_2_lut.init = 16'h2222;
    FD1S3AX num_delay_i14 (.D(num_delay_15__N_945[14]), .CK(sys_clk_c), 
            .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1S3AX num_delay_i13 (.D(num_delay_15__N_945[13]), .CK(sys_clk_c), 
            .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1S3AX num_delay_i12 (.D(num_delay_15__N_945[12]), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1S3AX num_delay_i11 (.D(num_delay_15__N_945[11]), .CK(sys_clk_c), 
            .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1S3AX num_delay_i10 (.D(num_delay_15__N_945[10]), .CK(sys_clk_c), 
            .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i10.GSR = "ENABLED";
    FD1S3AX num_delay_i9 (.D(num_delay_15__N_945[9]), .CK(sys_clk_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1S3AX num_delay_i8 (.D(num_delay_15__N_945[8]), .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1S3AX num_delay_i7 (.D(num_delay_15__N_945[7]), .CK(sys_clk_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1S3AX num_delay_i6 (.D(num_delay_15__N_945[6]), .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1S3AX num_delay_i5 (.D(num_delay_15__N_945[5]), .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1S3AX num_delay_i4 (.D(num_delay_15__N_945[4]), .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1S3AX num_delay_i3 (.D(num_delay_15__N_945[3]), .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1S3AY num_delay_i2 (.D(num_delay_15__N_945[2]), .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1S3AX num_delay_i1 (.D(num_delay_15__N_945[1]), .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam num_delay_i1.GSR = "ENABLED";
    FD1S3AX state_back_i5 (.D(state_back_5__N_999[5]), .CK(sys_clk_c), .Q(state_back[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_back_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_41 (.A(n38595), .B(n38587), .C(n42_adj_1748), .D(n62), 
         .Z(n22367)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_41.init = 16'h4000;
    LUT4 i1_4_lut_adj_42 (.A(n38555), .B(n38716), .C(n50), .D(n38596), 
         .Z(n42_adj_1748)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_42.init = 16'haaea;
    LUT4 i3934_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n2122[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(119[49:64])
    defparam i3934_2_lut.init = 16'h6666;
    FD1P3AX oled_dat_338 (.D(n36169), .SP(sys_clk_c_enable_190), .CK(sys_clk_c), 
            .Q(oled_mosi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam oled_dat_338.GSR = "ENABLED";
    LUT4 n20648_bdd_4_lut (.A(n20648), .B(cnt_write[0]), .C(cnt_write[4]), 
         .D(state[4]), .Z(n38786)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam n20648_bdd_4_lut.init = 16'h1e00;
    LUT4 i19558_2_lut (.A(n2158[10]), .B(oled_dcn_N_1364), .Z(n2184[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19558_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_then_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), .C(\cnt_main[2] ), 
         .Z(n38791)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h1515;
    LUT4 i1_4_lut_else_3_lut (.A(cnt_main[4]), .B(cnt_main[1]), .C(cnt_main[3]), 
         .D(\cnt_main[2] ), .Z(n38790)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'h1554;
    LUT4 n36492_bdd_4_lut_then_4_lut (.A(char[38]), .B(n38673), .C(char[30]), 
         .D(num[0]), .Z(n38794)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam n36492_bdd_4_lut_then_4_lut.init = 16'h2230;
    LUT4 n36492_bdd_4_lut_else_4_lut (.A(char[0]), .B(n38673), .C(char[30]), 
         .D(num[0]), .Z(n38793)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n36492_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i1_4_lut_adj_43 (.A(state[4]), .B(state[0]), .C(n20648), .D(n38640), 
         .Z(n8)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i1_4_lut_adj_43.init = 16'h0a22;
    LUT4 i4_4_lut_then_4_lut (.A(state[1]), .B(state[5]), .C(n38719), 
         .D(state[4]), .Z(n38800)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(47[13:18])
    defparam i4_4_lut_then_4_lut.init = 16'h0001;
    FD1S3AX state_back_i4 (.D(state_back_5__N_999[4]), .CK(sys_clk_c), .Q(state_back[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_back_i4.GSR = "ENABLED";
    FD1S3AX state_back_i3 (.D(state_back_5__N_999[3]), .CK(sys_clk_c), .Q(state_back[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_back_i3.GSR = "ENABLED";
    FD1S3AX state_back_i2 (.D(state_back_5__N_999[2]), .CK(sys_clk_c), .Q(state_back[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_back_i2.GSR = "ENABLED";
    FD1S3AX state_back_i1 (.D(state_back_5__N_999[1]), .CK(sys_clk_c), .Q(state_back[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_back_i1.GSR = "ENABLED";
    FD1S3AX char_reg_i7 (.D(char_reg_7__N_917[7]), .CK(sys_clk_c), .Q(char_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i7.GSR = "ENABLED";
    FD1S3AX char_reg_i6 (.D(char_reg_7__N_917[6]), .CK(sys_clk_c), .Q(char_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i6.GSR = "ENABLED";
    FD1S3AX char_reg_i5 (.D(char_reg_7__N_917[5]), .CK(sys_clk_c), .Q(char_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i5.GSR = "ENABLED";
    FD1S3AX char_reg_i4 (.D(char_reg_7__N_917[4]), .CK(sys_clk_c), .Q(char_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i4.GSR = "ENABLED";
    FD1S3AX char_reg_i3 (.D(char_reg_7__N_917[3]), .CK(sys_clk_c), .Q(char_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_reg_i3.GSR = "ENABLED";
    LUT4 i27630_2_lut_rep_616_4_lut (.A(n38583), .B(state[0]), .C(state[1]), 
         .D(n38632), .Z(n38521)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(89[5:9])
    defparam i27630_2_lut_rep_616_4_lut.init = 16'hffef;
    LUT4 i4_4_lut_else_4_lut (.A(state[1]), .B(state[5]), .C(n38719), 
         .D(state[4]), .Z(n38799)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(47[13:18])
    defparam i4_4_lut_else_4_lut.init = 16'h0100;
    LUT4 i28148_2_lut (.A(state[4]), .B(state_back[0]), .Z(n27906)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i28148_2_lut.init = 16'h1111;
    LUT4 i2_3_lut (.A(cnt_write[2]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .Z(n20648)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(163[7] 183[14])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 n38634_bdd_4_lut (.A(n38634), .B(state[0]), .C(state[2]), .D(state[3]), 
         .Z(n27)) /* synthesis lut_function=(A+(B (C+(D))+!B (C (D)+!C !(D)))) */ ;
    defparam n38634_bdd_4_lut.init = 16'hfeeb;
    LUT4 i1_4_lut_then_4_lut (.A(cnt_main[4]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .D(cnt_main[3]), .Z(n38804)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hfeaa;
    LUT4 i1_4_lut_else_4_lut (.A(cnt_main[4]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .D(cnt_main[3]), .Z(n38803)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'haaab;
    FD1P3AX num_2894__i2 (.D(n47[2]), .SP(sys_clk_c_enable_300), .CK(sys_clk_c), 
            .Q(num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i2.GSR = "ENABLED";
    LUT4 i28110_2_lut_2_lut_4_lut (.A(n38583), .B(state[0]), .C(state[1]), 
         .D(n28434), .Z(n28472)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(89[5:9])
    defparam i28110_2_lut_2_lut_4_lut.init = 16'h0010;
    LUT4 i2_4_lut_then_4_lut (.A(cnt_main[4]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(\cnt_main[2] ), .Z(n38807)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i2_4_lut_then_4_lut.init = 16'hfebf;
    LUT4 i2_4_lut_else_4_lut (.A(cnt_main[4]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(\cnt_main[2] ), .Z(n38806)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_4_lut_else_4_lut.init = 16'hfffb;
    LUT4 i2_4_lut_4_lut_4_lut_then_4_lut (.A(cnt_main[1]), .B(\cnt_main[2] ), 
         .C(cnt_main[4]), .D(cnt_main[3]), .Z(n38810)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(105[8:12])
    defparam i2_4_lut_4_lut_4_lut_then_4_lut.init = 16'hfffb;
    LUT4 i28127_2_lut_2_lut_4_lut (.A(n38583), .B(state[0]), .C(state[1]), 
         .D(n38566), .Z(n28502)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(89[5:9])
    defparam i28127_2_lut_2_lut_4_lut.init = 16'h0010;
    LUT4 i2_4_lut_4_lut_4_lut_else_4_lut (.A(cnt_main[1]), .B(\cnt_main[2] ), 
         .C(cnt_main[4]), .D(cnt_main[3]), .Z(n38809)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((C+!(D))+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(105[8:12])
    defparam i2_4_lut_4_lut_4_lut_else_4_lut.init = 16'hfbf7;
    LUT4 i13703_2_lut_3_lut_4_lut_4_lut (.A(n38559), .B(n38531), .C(n4283), 
         .D(n38558), .Z(n22414)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i13703_2_lut_3_lut_4_lut_4_lut.init = 16'h7400;
    LUT4 i1_2_lut_rep_620_4_lut (.A(n38583), .B(state[0]), .C(state[1]), 
         .D(n3549), .Z(n38525)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(89[5:9])
    defparam i1_2_lut_rep_620_4_lut.init = 16'h1000;
    FD1P3IX cnt_delay_i0_i6 (.D(n4285[6]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    LUT4 i27735_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(n38590), .C(\cnt[4] ), 
         .D(oled_dcn_N_1364), .Z(n36667)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i27735_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_init[0]), .B(n38590), .C(n38552), 
         .D(n38588), .Z(n11490)) /* synthesis lut_function=(A (C+(D))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i1_3_lut_4_lut_4_lut.init = 16'heea0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(n38590), .C(n38552), 
         .D(n38588), .Z(n50)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 char_2__bdd_3_lut_28671 (.A(char[2]), .B(char[30]), .C(num[0]), 
         .Z(n37821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam char_2__bdd_3_lut_28671.init = 16'hcaca;
    LUT4 char_2__bdd_3_lut_28395 (.A(char[28]), .B(char[30]), .C(num[0]), 
         .Z(n37820)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam char_2__bdd_3_lut_28395.init = 16'hacac;
    LUT4 i1_4_lut_adj_44 (.A(state[0]), .B(x_ph[0]), .C(n16_adj_1749), 
         .D(n38547), .Z(x_ph_7__N_725[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_44.init = 16'hdc50;
    LUT4 i33_4_lut_adj_45 (.A(x_ph[0]), .B(x_ph_7__N_1040[0]), .C(state[1]), 
         .D(n38636), .Z(n16_adj_1749)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_45.init = 16'h0aca;
    LUT4 i2_4_lut_adj_46 (.A(n27950), .B(n28369), .C(x_ph[0]), .D(n3549), 
         .Z(x_ph_7__N_1040[0])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i2_4_lut_adj_46.init = 16'hf777;
    LUT4 i1_4_lut_adj_47 (.A(state[0]), .B(num_delay[15]), .C(n16_adj_1750), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_47.init = 16'hdc50;
    LUT4 i33_4_lut_adj_48 (.A(num_delay[15]), .B(num_delay_15__N_1256[15]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1750)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_48.init = 16'h0aca;
    LUT4 i1_4_lut_adj_49 (.A(cnt_init[0]), .B(num_delay[15]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[15])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_49.init = 16'hcc40;
    LUT4 n39381_bdd_2_lut_4_lut (.A(n15_c), .B(n39380), .C(state[2]), 
         .D(state[3]), .Z(n39382)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n39381_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i3891_3_lut_4_lut (.A(\cnt_main[2] ), .B(n38599), .C(cnt_main[3]), 
         .D(cnt_main[4]), .Z(n1[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(91[40:55])
    defparam i3891_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_4_lut_adj_50 (.A(state[0]), .B(num_delay[14]), .C(n16_adj_1752), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[14])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_50.init = 16'hdc50;
    LUT4 i33_4_lut_adj_51 (.A(num_delay[14]), .B(num_delay_15__N_1256[14]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1752)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_51.init = 16'h0aca;
    LUT4 i1_4_lut_adj_52 (.A(n38554), .B(num_delay[14]), .C(n16_adj_1753), 
         .D(n38633), .Z(num_delay_15__N_1256[14])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_52.init = 16'hfdf5;
    LUT4 i1_3_lut (.A(cnt_init[0]), .B(num_delay[14]), .C(n36416), .Z(n16_adj_1753)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_53 (.A(cnt_init[2]), .B(n38596), .C(n38664), 
         .D(cnt_init[0]), .Z(n5)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i1_2_lut_3_lut_4_lut_adj_53.init = 16'h0002;
    LUT4 n39553_bdd_2_lut_3_lut (.A(n39552), .B(state[4]), .C(state[1]), 
         .Z(n39554)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n39553_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_54 (.A(state[0]), .B(num_delay[13]), .C(n16_adj_1754), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[13])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_54.init = 16'hdc50;
    LUT4 i33_4_lut_adj_55 (.A(num_delay[13]), .B(num_delay_15__N_1256[13]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1754)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_55.init = 16'h0aca;
    LUT4 i1_4_lut_adj_56 (.A(n38554), .B(num_delay[13]), .C(n16_adj_1755), 
         .D(n38633), .Z(num_delay_15__N_1256[13])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_56.init = 16'hfdf5;
    LUT4 i1_3_lut_adj_57 (.A(cnt_init[0]), .B(num_delay[13]), .C(n36416), 
         .Z(n16_adj_1755)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_57.init = 16'h4040;
    LUT4 i1_4_lut_adj_58 (.A(n24_adj_1696), .B(char_reg[0]), .C(n38635), 
         .D(n27), .Z(char_reg_7__N_917[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_58.init = 16'hce0a;
    LUT4 i1_4_lut_adj_59 (.A(state[0]), .B(num_delay[12]), .C(n16_adj_1756), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_59.init = 16'hdc50;
    LUT4 i1_2_lut_adj_60 (.A(state[2]), .B(state[0]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_60.init = 16'h8888;
    FD1P3IX char_i0_i5 (.D(char_167__N_1072[5]), .SP(sys_clk_c_enable_305), 
            .CD(n22511), .CK(sys_clk_c), .Q(char[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i5.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_61 (.A(num_delay[12]), .B(num_delay_15__N_1256[12]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1756)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_61.init = 16'h0aca;
    LUT4 n28446_bdd_3_lut_rep_825_else_4_lut (.A(state[3]), .B(cnt_scan[4]), 
         .C(n33982), .D(n38615), .Z(n39907)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam n28446_bdd_3_lut_rep_825_else_4_lut.init = 16'hfddd;
    LUT4 i1_4_lut_adj_62 (.A(cnt_init[0]), .B(num_delay[12]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[12])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_62.init = 16'hcc40;
    LUT4 i1_4_lut_adj_63 (.A(n8_adj_1757), .B(state_back[0]), .C(n38635), 
         .D(n27), .Z(state_back_5__N_999[0])) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_63.init = 16'hcc08;
    LUT4 i22_4_lut (.A(state[3]), .B(state[2]), .C(n3795), .D(n8_adj_1758), 
         .Z(n8_adj_1757)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i22_4_lut.init = 16'h6420;
    LUT4 n28446_bdd_3_lut_rep_825_then_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(state[3]), .D(n38662), .Z(n39908)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam n28446_bdd_3_lut_rep_825_then_4_lut.init = 16'hfff8;
    LUT4 cnt_main_2__bdd_4_lut_29202 (.A(\cnt_main[2] ), .B(n38722), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n39338)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam cnt_main_2__bdd_4_lut_29202.init = 16'hfeef;
    LUT4 i1_4_lut_adj_64 (.A(cnt_scan[4]), .B(cnt_scan[2]), .C(cnt_scan[3]), 
         .D(n38715), .Z(n3795)) /* synthesis lut_function=(A+(B (C)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut_adj_64.init = 16'hebea;
    FD1P3IX cnt_delay_i0_i7 (.D(n4285[7]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_65 (.A(state[0]), .B(num_delay[11]), .C(n16_adj_1759), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_65.init = 16'hdc50;
    LUT4 i33_4_lut_adj_66 (.A(num_delay[11]), .B(num_delay_15__N_1256[11]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1759)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_66.init = 16'h0aca;
    LUT4 i1_4_lut_adj_67 (.A(cnt_init[0]), .B(num_delay[11]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[11])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_67.init = 16'hcc40;
    FD1P3IX cnt_delay_i0_i8 (.D(n4285[8]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_68 (.A(state[0]), .B(num_delay[10]), .C(n16_adj_1760), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_68.init = 16'hdc50;
    LUT4 i33_4_lut_adj_69 (.A(num_delay[10]), .B(num_delay_15__N_1256[10]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1760)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_69.init = 16'h0aca;
    LUT4 i1_4_lut_adj_70 (.A(cnt_init[0]), .B(num_delay[10]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[10])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_70.init = 16'hcc40;
    LUT4 i1_4_lut_adj_71 (.A(n36085), .B(n36185), .C(state[0]), .D(n38582), 
         .Z(sys_clk_c_enable_22)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_71.init = 16'ha088;
    LUT4 n8290_bdd_3_lut (.A(sw1_c), .B(cnt_main[0]), .C(cnt_main[1]), 
         .Z(n37865)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n8290_bdd_3_lut.init = 16'h2020;
    LUT4 n8290_bdd_4_lut (.A(n8290), .B(sw1_c), .C(\cnt_main[2] ), .D(cnt_main[0]), 
         .Z(n37866)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A !((D)+!C))) */ ;
    defparam n8290_bdd_4_lut.init = 16'h5da5;
    LUT4 i4167_3_lut_4_lut (.A(\hundres_0__N_313[0] ), .B(n38455), .C(n9941[2]), 
         .D(n38606), .Z(n11648)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4167_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_4_lut_adj_72 (.A(state[4]), .B(cnt_write[3]), .C(n6_adj_1761), 
         .D(cnt_write[2]), .Z(n36185)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_72.init = 16'h0020;
    LUT4 i2_3_lut_adj_73 (.A(cnt_write[4]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(n6_adj_1761)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;
    defparam i2_3_lut_adj_73.init = 16'h2121;
    LUT4 i11_4_lut (.A(state[4]), .B(state[0]), .C(n38582), .D(cnt_write[4]), 
         .Z(n35642)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(47[13:18])
    defparam i11_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_74 (.A(state[0]), .B(num_delay[9]), .C(n16_adj_1762), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_74.init = 16'hdc50;
    FD1P3IX cnt_delay_i0_i9 (.D(n4285[9]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    LUT4 i33_4_lut_adj_75 (.A(num_delay[9]), .B(num_delay_15__N_1256[9]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1762)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_75.init = 16'h0aca;
    LUT4 i1_4_lut_adj_76 (.A(cnt_init[0]), .B(num_delay[9]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_76.init = 16'hcc40;
    LUT4 i1_3_lut_4_lut (.A(cnt_init[0]), .B(n38588), .C(n36154), .D(state[2]), 
         .Z(n6_adj_1717)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(122[8:12])
    defparam i1_3_lut_4_lut.init = 16'hf200;
    LUT4 i1_2_lut_3_lut (.A(state[2]), .B(n3795), .C(state_back[2]), .Z(n36236)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_77 (.A(state[2]), .B(n3795), .C(state_back[4]), 
         .Z(n36237)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_77.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_78 (.A(state[2]), .B(n3795), .C(state_back[5]), 
         .Z(n36238)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_78.init = 16'h4040;
    LUT4 n15_bdd_3_lut_29081 (.A(n38554), .B(state[5]), .C(state[4]), 
         .Z(n39380)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam n15_bdd_3_lut_29081.init = 16'h0101;
    LUT4 i1_4_lut_adj_79 (.A(state[0]), .B(num_delay[8]), .C(n16_adj_1763), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_79.init = 16'hdc50;
    LUT4 i33_4_lut_adj_80 (.A(num_delay[8]), .B(num_delay_15__N_1256[8]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1763)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_80.init = 16'h0aca;
    LUT4 i1_3_lut_4_lut_4_lut_adj_81 (.A(cnt_init[0]), .B(n38588), .C(oled_dcn_N_1364), 
         .D(n38552), .Z(n16_adj_1764)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(121[8:12])
    defparam i1_3_lut_4_lut_4_lut_adj_81.init = 16'h5111;
    LUT4 i1_4_lut_adj_82 (.A(n38554), .B(num_delay[8]), .C(n16_adj_1765), 
         .D(n38633), .Z(num_delay_15__N_1256[8])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_82.init = 16'hfdf5;
    LUT4 i1_3_lut_adj_83 (.A(cnt_init[0]), .B(num_delay[8]), .C(n36416), 
         .Z(n16_adj_1765)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_83.init = 16'h4040;
    LUT4 i1_4_lut_adj_84 (.A(state[0]), .B(num_delay[7]), .C(n16_adj_1766), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_84.init = 16'hdc50;
    LUT4 i33_4_lut_adj_85 (.A(num_delay[7]), .B(num_delay_15__N_1256[7]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1766)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_85.init = 16'h0aca;
    LUT4 i1_4_lut_adj_86 (.A(n38554), .B(num_delay[7]), .C(n16_adj_1767), 
         .D(n38633), .Z(num_delay_15__N_1256[7])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_86.init = 16'hfdf5;
    LUT4 cnt_main_4__bdd_4_lut (.A(cnt_main[0]), .B(\cnt_main[2] ), .C(cnt_main[1]), 
         .D(cnt_main[3]), .Z(n37881)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam cnt_main_4__bdd_4_lut.init = 16'h3480;
    FD1P3IX char_i0_i3 (.D(char_167__N_1072[3]), .SP(sys_clk_c_enable_305), 
            .CD(n22511), .CK(sys_clk_c), .Q(char[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i3.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_87 (.A(cnt_init[0]), .B(num_delay[7]), .C(n36416), 
         .Z(n16_adj_1767)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_87.init = 16'h4040;
    LUT4 i73_2_lut (.A(state[2]), .B(state[3]), .Z(n10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i73_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_88 (.A(state[0]), .B(num_delay[6]), .C(n16_adj_1768), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_88.init = 16'hdc50;
    LUT4 i33_4_lut_adj_89 (.A(num_delay[6]), .B(num_delay_15__N_1256[6]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1768)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_89.init = 16'h0aca;
    LUT4 i1_4_lut_adj_90 (.A(cnt_init[0]), .B(num_delay[6]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_90.init = 16'hcc40;
    LUT4 i2_3_lut_rep_625_4_lut (.A(state[3]), .B(n38587), .C(state[5]), 
         .D(state[4]), .Z(n38530)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i2_3_lut_rep_625_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_adj_91 (.A(n6197), .B(n9752), .C(n35572), .D(n38581), 
         .Z(sys_clk_c_enable_23)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_91.init = 16'h0a88;
    LUT4 i2_3_lut_rep_626_4_lut (.A(state[3]), .B(n38587), .C(state[5]), 
         .D(state[4]), .Z(n38531)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i2_3_lut_rep_626_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_92 (.A(state[0]), .B(num_delay[5]), .C(n16_adj_1769), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_92.init = 16'hdc50;
    LUT4 i33_4_lut_adj_93 (.A(num_delay[5]), .B(num_delay_15__N_1256[5]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1769)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_93.init = 16'h0aca;
    LUT4 i1_4_lut_adj_94 (.A(n38554), .B(num_delay[5]), .C(n16_adj_1770), 
         .D(n38633), .Z(num_delay_15__N_1256[5])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_94.init = 16'hfdf5;
    FD1P3IX cnt_delay_i0_i10 (.D(n4285[10]), .SP(sys_clk_c_enable_279), 
            .CD(n22414), .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_95 (.A(cnt_init[0]), .B(num_delay[5]), .C(n36416), 
         .Z(n16_adj_1770)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_95.init = 16'h4040;
    LUT4 n39551_bdd_3_lut (.A(n39551), .B(n39548), .C(state[3]), .Z(n39552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n39551_bdd_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(n38721), .B(n38639), .C(n38603), .D(state[1]), 
         .Z(n33726)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(93[8:12])
    defparam i2_3_lut_4_lut.init = 16'h0e00;
    LUT4 i1_4_lut_adj_96 (.A(state[0]), .B(num_delay[4]), .C(n16_adj_1771), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_96.init = 16'hdc50;
    LUT4 i33_4_lut_adj_97 (.A(num_delay[4]), .B(num_delay_15__N_1256[4]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1771)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_97.init = 16'h0aca;
    LUT4 i1_4_lut_adj_98 (.A(cnt_init[0]), .B(num_delay[4]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_98.init = 16'hcc40;
    LUT4 i3_4_lut (.A(cnt_scan[4]), .B(n38581), .C(state[2]), .D(n27_adj_1772), 
         .Z(n35700)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i1_3_lut_adj_99 (.A(cnt_scan[3]), .B(cnt_scan[2]), .Z(n27_adj_1772)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_3_lut_adj_99.init = 16'h6666;
    LUT4 cnt_init_0__bdd_3_lut (.A(state[5]), .B(state[0]), .C(state_back[1]), 
         .Z(n39550)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;
    defparam cnt_init_0__bdd_3_lut.init = 16'h6464;
    LUT4 i1_4_lut_adj_100 (.A(state[0]), .B(num_delay[3]), .C(n16_adj_1773), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_100.init = 16'hdc50;
    LUT4 i33_4_lut_adj_101 (.A(num_delay[3]), .B(num_delay_15__N_1256[3]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1773)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_101.init = 16'h0aca;
    LUT4 i1_4_lut_adj_102 (.A(n38554), .B(num_delay[3]), .C(n16_adj_1774), 
         .D(n38633), .Z(num_delay_15__N_1256[3])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_102.init = 16'hfdf5;
    LUT4 cnt_init_0__bdd_4_lut_29273 (.A(cnt_init[0]), .B(n38552), .C(state[5]), 
         .D(state[0]), .Z(n39549)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam cnt_init_0__bdd_4_lut_29273.init = 16'h0008;
    LUT4 cnt_init_0__bdd_4_lut_29179 (.A(n38574), .B(state[2]), .C(state[5]), 
         .D(state[0]), .Z(n39548)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam cnt_init_0__bdd_4_lut_29179.init = 16'h0001;
    LUT4 n37570_bdd_2_lut_rep_661 (.A(n37570), .B(cnt_main[4]), .Z(n38566)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n37570_bdd_2_lut_rep_661.init = 16'heeee;
    LUT4 i1_3_lut_adj_103 (.A(cnt_init[0]), .B(num_delay[3]), .C(n36416), 
         .Z(n16_adj_1774)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_103.init = 16'h4040;
    LUT4 i28051_4_lut (.A(state[0]), .B(num_delay[2]), .C(n24_adj_1775), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[2])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i28051_4_lut.init = 16'h8caf;
    LUT4 i41_4_lut (.A(num_delay[2]), .B(n38633), .C(state[2]), .D(n4_adj_1776), 
         .Z(n24_adj_1775)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !((D)+!C))) */ ;
    defparam i41_4_lut.init = 16'h7505;
    LUT4 i1_4_lut_adj_104 (.A(num_delay[2]), .B(n38651), .C(n38552), .D(oled_dcn_N_1364), 
         .Z(n15_adj_1777)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_104.init = 16'ha8f8;
    LUT4 i1_4_lut_adj_105 (.A(state[0]), .B(num_delay[1]), .C(n16_adj_1778), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_105.init = 16'hdc50;
    LUT4 i33_4_lut_adj_106 (.A(num_delay[1]), .B(num_delay_15__N_1256[1]), 
         .C(state[2]), .D(n38579), .Z(n16_adj_1778)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_106.init = 16'h0aca;
    LUT4 i1_4_lut_adj_107 (.A(cnt_init[0]), .B(num_delay[1]), .C(n36416), 
         .D(n38633), .Z(num_delay_15__N_1256[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_107.init = 16'hcc40;
    LUT4 i1_4_lut_adj_108 (.A(n24_adj_1725), .B(state_back[5]), .C(n38635), 
         .D(n27), .Z(state_back_5__N_999[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_108.init = 16'hce0a;
    LUT4 i1_4_lut_adj_109 (.A(n36085), .B(n36278), .C(state[0]), .D(n38582), 
         .Z(sys_clk_c_enable_190)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_109.init = 16'ha088;
    FD1P3IX cnt_delay_i0_i11 (.D(n4285[11]), .SP(sys_clk_c_enable_279), 
            .CD(n22414), .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX char_i0_i4 (.D(n36322), .SP(sys_clk_c_enable_305), .CK(sys_clk_c), 
            .Q(char[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_110 (.A(state[4]), .B(oled_dat_N_1386), .C(n38582), 
         .Z(n36169)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i1_3_lut_adj_110.init = 16'h0808;
    LUT4 i1_4_lut_adj_111 (.A(n24_adj_1723), .B(state_back[4]), .C(n38635), 
         .D(n27), .Z(state_back_5__N_999[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_111.init = 16'hce0a;
    LUT4 i1_4_lut_adj_112 (.A(n24_adj_1721), .B(state_back[3]), .C(n38635), 
         .D(n27), .Z(state_back_5__N_999[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_112.init = 16'hce0a;
    FD1P3AX char_i0_i28 (.D(n36357), .SP(sys_clk_c_enable_305), .CK(sys_clk_c), 
            .Q(char[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i28.GSR = "ENABLED";
    FD1P3AX char_i0_i30 (.D(n36028), .SP(sys_clk_c_enable_305), .CK(sys_clk_c), 
            .Q(char[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i30.GSR = "ENABLED";
    FD1P3AX char_i0_i38 (.D(n36323), .SP(sys_clk_c_enable_305), .CK(sys_clk_c), 
            .Q(char[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i38.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_113 (.A(n24_adj_1718), .B(state_back[2]), .C(n38635), 
         .D(n27), .Z(state_back_5__N_999[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_113.init = 16'hce0a;
    LUT4 i2_4_lut_adj_114 (.A(n20795), .B(state[2]), .C(n35), .D(n31), 
         .Z(state_back_5__N_999[1])) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i2_4_lut_adj_114.init = 16'hfbfa;
    LUT4 i1_4_lut_adj_115 (.A(state[0]), .B(n38579), .C(state[2]), .D(state_back_5__N_1334[1]), 
         .Z(n20795)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_115.init = 16'h1202;
    LUT4 i1_4_lut_adj_116 (.A(state_back[1]), .B(n38658), .C(n24_adj_1779), 
         .D(n39906), .Z(n35)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_116.init = 16'haaa8;
    LUT4 i50_4_lut (.A(state_back[1]), .B(n3795), .C(state[3]), .D(n38635), 
         .Z(n31)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i50_4_lut.init = 16'h0a8a;
    LUT4 i1_4_lut_adj_117 (.A(cnt_init[0]), .B(state_back[1]), .C(n36416), 
         .D(n38633), .Z(state_back_5__N_1334[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_117.init = 16'hcc40;
    LUT4 i1_2_lut_adj_118 (.A(state[3]), .B(state[2]), .Z(n24_adj_1779)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_118.init = 16'h8888;
    LUT4 i1_4_lut_adj_119 (.A(n24_adj_1693), .B(char_reg[7]), .C(n38635), 
         .D(n27), .Z(char_reg_7__N_917[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_119.init = 16'hce0a;
    LUT4 i28054_4_lut (.A(state[0]), .B(num_delay[0]), .C(n24_adj_1780), 
         .D(n27_adj_1751), .Z(num_delay_15__N_945[0])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i28054_4_lut.init = 16'h8caf;
    LUT4 i41_4_lut_adj_120 (.A(num_delay[0]), .B(n38579), .C(state[2]), 
         .D(n36198), .Z(n24_adj_1780)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i41_4_lut_adj_120.init = 16'h3505;
    LUT4 i1_4_lut_adj_121 (.A(cnt_init[0]), .B(num_delay[0]), .C(n15_adj_1781), 
         .D(n38633), .Z(n36198)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_121.init = 16'h23af;
    LUT4 i1_4_lut_adj_122 (.A(n24_adj_1713), .B(char_reg[6]), .C(n38635), 
         .D(n27), .Z(char_reg_7__N_917[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_122.init = 16'hce0a;
    LUT4 i1_4_lut_adj_123 (.A(state[2]), .B(n37693), .C(n1575[0]), .D(n36667), 
         .Z(n6_adj_1694)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_123.init = 16'h88a0;
    LUT4 i1_4_lut_adj_124 (.A(num_delay[0]), .B(n38651), .C(n38552), .D(oled_dcn_N_1364), 
         .Z(n15_adj_1781)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_124.init = 16'ha8f8;
    LUT4 i1_4_lut_adj_125 (.A(n24_adj_1710), .B(char_reg[5]), .C(n38635), 
         .D(n27), .Z(char_reg_7__N_917[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_125.init = 16'hce0a;
    LUT4 i1_4_lut_adj_126 (.A(n24_adj_1699), .B(char_reg[4]), .C(n38635), 
         .D(n27), .Z(char_reg_7__N_917[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_126.init = 16'hce0a;
    LUT4 i1_4_lut_4_lut (.A(cnt_scan[4]), .B(n38615), .C(n33982), .D(state[2]), 
         .Z(n36159)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(156[8:13])
    defparam i1_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_127 (.A(n24_adj_1707), .B(char_reg[3]), .C(n38635), 
         .D(n27), .Z(char_reg_7__N_917[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_127.init = 16'hce0a;
    LUT4 i2_2_lut_3_lut (.A(cnt_scan[4]), .B(n38615), .C(n20638), .Z(n6_adj_1782)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(156[8:13])
    defparam i2_2_lut_3_lut.init = 16'hf1f1;
    FD1P3IX cnt_delay_i0_i12 (.D(n4285[12]), .SP(sys_clk_c_enable_279), 
            .CD(n22414), .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    LUT4 num_2894_mux_6_i3_4_lut (.A(num_7__N_1056[2]), .B(n3[2]), .C(state[3]), 
         .D(state[0]), .Z(n47[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894_mux_6_i3_4_lut.init = 16'hc0ca;
    FD1P3IX cnt_delay_i0_i13 (.D(n4285[13]), .SP(sys_clk_c_enable_279), 
            .CD(n22414), .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3IX char_i0_i2 (.D(char_167__N_1072[2]), .SP(sys_clk_c_enable_305), 
            .CD(n22511), .CK(sys_clk_c), .Q(char[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_128 (.A(state[3]), .B(n38634), .C(n15_adj_1777), 
         .D(cnt_init[0]), .Z(n4_adj_1776)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_128.init = 16'h1101;
    PFUMX i28747 (.BLUT(n38745), .ALUT(n38746), .C0(num[2]), .Z(n2521));
    LUT4 i22_3_lut_4_lut (.A(state[0]), .B(n38636), .C(state[1]), .D(n10_adj_1783), 
         .Z(n35890)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i22_3_lut_4_lut.init = 16'hef02;
    LUT4 n2526_bdd_4_lut (.A(n38561), .B(n2527), .C(n38546), .D(n2524), 
         .Z(n37557)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;
    defparam n2526_bdd_4_lut.init = 16'h0280;
    LUT4 i1_4_lut_adj_129 (.A(cnt_main[0]), .B(n38521), .C(n36317), .D(n7), 
         .Z(n36322)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_129.init = 16'h3130;
    FD1P3IX cnt_delay_i0_i14 (.D(n4285[14]), .SP(sys_clk_c_enable_279), 
            .CD(n22414), .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_642_4_lut (.A(state[2]), .B(n38595), .C(state[0]), 
         .D(state[1]), .Z(n38547)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(89[5:9])
    defparam i1_3_lut_rep_642_4_lut.init = 16'hfeee;
    LUT4 i2_3_lut_rep_643_4_lut (.A(state[2]), .B(n38595), .C(state[1]), 
         .D(state[0]), .Z(n38548)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(89[5:9])
    defparam i2_3_lut_rep_643_4_lut.init = 16'hffef;
    LUT4 i28171_4_lut (.A(\cnt_main[2] ), .B(n38505), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n36028)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i28171_4_lut.init = 16'h0311;
    FD1P3AX state_i0_i1 (.D(n39554), .SP(sys_clk_c_enable_318), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 n8_bdd_4_lut_4_lut (.A(state[0]), .B(n38660), .C(n38595), .D(n11_adj_1784), 
         .Z(sys_clk_c_enable_287)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam n8_bdd_4_lut_4_lut.init = 16'h02fe;
    LUT4 i3521_2_lut_rep_772 (.A(\cnt_main[2] ), .B(cnt_main[3]), .Z(n38677)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3521_2_lut_rep_772.init = 16'h8888;
    LUT4 i28175_2_lut_rep_591_3_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(n38660), 
         .C(n38530), .D(n38595), .Z(sys_clk_c_enable_282)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i28175_2_lut_rep_591_3_lut_4_lut_4_lut_4_lut.init = 16'h0f2e;
    LUT4 i13626_2_lut_3_lut_3_lut_4_lut (.A(state[0]), .B(n38660), .C(n38548), 
         .D(n38547), .Z(n22350)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i13626_2_lut_3_lut_3_lut_4_lut.init = 16'h00e0;
    FD1P3AY oled_clk_337 (.D(n35890), .SP(sys_clk_c_enable_264), .CK(sys_clk_c), 
            .Q(oled_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam oled_clk_337.GSR = "ENABLED";
    LUT4 i28153_2_lut_rep_590_3_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(n38660), 
         .C(n38531), .D(n38595), .Z(sys_clk_c_enable_279)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i28153_2_lut_rep_590_3_lut_4_lut_4_lut_4_lut.init = 16'h0f2e;
    FD1P3IX cnt_delay_i0_i15 (.D(n4285[15]), .SP(sys_clk_c_enable_279), 
            .CD(n22414), .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_130 (.A(state[0]), .B(n38660), .C(n39906), 
         .D(state[3]), .Z(n11_adj_1784)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i2_3_lut_4_lut_adj_130.init = 16'hfeff;
    LUT4 i1_3_lut_rep_698_4_lut (.A(\cnt_main[2] ), .B(cnt_main[3]), .C(n38721), 
         .D(cnt_main[4]), .Z(n38603)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i1_3_lut_rep_698_4_lut.init = 16'hff80;
    LUT4 n39301_bdd_2_lut_3_lut_4_lut (.A(n39909), .B(n39906), .C(state[0]), 
         .D(state[1]), .Z(n39302)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n39301_bdd_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_131 (.A(n24_adj_1704), .B(char_reg[2]), .C(n38635), 
         .D(n27), .Z(char_reg_7__N_917[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_131.init = 16'hce0a;
    LUT4 i1_4_lut_adj_132 (.A(n38786), .B(n36085), .C(state[0]), .D(n38582), 
         .Z(sys_clk_c_enable_264)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_132.init = 16'hc088;
    FD1P3IX char_i0_i1 (.D(char_167__N_1072[1]), .SP(sys_clk_c_enable_305), 
            .CD(n22511), .CK(sys_clk_c), .Q(char[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i1.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_133 (.A(cnt_write[4]), .B(state[4]), .C(n20648), 
         .D(cnt_write[0]), .Z(n10_adj_1783)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i2_4_lut_adj_133.init = 16'h0048;
    LUT4 i5334_2_lut_rep_602_3_lut_4_lut (.A(n38662), .B(n38651), .C(oled_dcn_N_1364), 
         .D(cnt_init[0]), .Z(n38507)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i5334_2_lut_rep_602_3_lut_4_lut.init = 16'hfffe;
    LUT4 i28114_2_lut (.A(sys_clk_c_enable_300), .B(state[3]), .Z(n22504)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i28114_2_lut.init = 16'h2222;
    LUT4 i13804_2_lut_3_lut_4_lut (.A(state[2]), .B(n38658), .C(sys_clk_c_enable_303), 
         .D(n38595), .Z(n22515)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i13804_2_lut_3_lut_4_lut.init = 16'hf0d0;
    FD1P3IX num_2894__i1 (.D(n3[1]), .SP(sys_clk_c_enable_300), .CD(n22504), 
            .CK(sys_clk_c), .Q(num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i1.GSR = "ENABLED";
    LUT4 equal_2223_i11_2_lut_rep_653_3_lut_4_lut (.A(state[3]), .B(n39906), 
         .C(n38660), .D(state[0]), .Z(n38558)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam equal_2223_i11_2_lut_rep_653_3_lut_4_lut.init = 16'hfffe;
    LUT4 i28031_4_lut (.A(n9752), .B(state[2]), .C(n38581), .D(n6197), 
         .Z(sys_clk_c_enable_276)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i28031_4_lut.init = 16'hca00;
    LUT4 mux_2051_i1_4_lut (.A(n9752), .B(oled_rst_N_1351), .C(n38581), 
         .D(state[2]), .Z(n6089[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam mux_2051_i1_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_134 (.A(cnt_init[2]), .B(oled_res_c), .C(cnt_init[1]), 
         .D(n36503), .Z(oled_rst_N_1351)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i1_4_lut_adj_134.init = 16'hccd8;
    LUT4 i2_3_lut_4_lut_adj_135 (.A(state[3]), .B(n39906), .C(state[1]), 
         .D(n21), .Z(n27_adj_1751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i2_3_lut_4_lut_adj_135.init = 16'hfffe;
    LUT4 i28201_2_lut_3_lut_4_lut (.A(state[3]), .B(n39906), .C(n38660), 
         .D(state[0]), .Z(n36985)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i28201_2_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 state_5__I_0_343_i11_2_lut_rep_650_3_lut_4_lut (.A(state[3]), .B(n39906), 
         .C(n38658), .D(state[2]), .Z(n38555)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam state_5__I_0_343_i11_2_lut_rep_650_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_136 (.A(state[3]), .B(n39906), .C(state[0]), 
         .D(n38660), .Z(n22358)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i2_3_lut_4_lut_adj_136.init = 16'h0010;
    LUT4 mux_89_i2_4_lut (.A(n2323), .B(n2332[1]), .C(n38617), .D(n38574), 
         .Z(cnt_scan_4__N_1022[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(140[16] 141[40])
    defparam mux_89_i2_4_lut.init = 16'hca0a;
    LUT4 i3970_2_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n2332[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(141[24:39])
    defparam i3970_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_137 (.A(num[6]), .B(num[5]), .C(n38601), .D(num[7]), 
         .Z(n2323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(138[11:14])
    defparam i3_4_lut_adj_137.init = 16'hfffe;
    LUT4 mux_89_i3_4_lut (.A(n2323), .B(n2332[2]), .C(n38617), .D(n38574), 
         .Z(cnt_scan_4__N_1022[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(140[16] 141[40])
    defparam mux_89_i3_4_lut.init = 16'hc505;
    LUT4 i15635_1_lut (.A(cnt_write[0]), .Z(n4_adj_1785)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam i15635_1_lut.init = 16'h5555;
    LUT4 mux_89_i4_4_lut (.A(n2323), .B(n2332[3]), .C(n38617), .D(n38574), 
         .Z(cnt_scan_4__N_1022[3])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(140[16] 141[40])
    defparam mux_89_i4_4_lut.init = 16'hc505;
    LUT4 i2_4_lut_adj_138 (.A(cnt_scan[4]), .B(n4_adj_1786), .C(n11_adj_1784), 
         .D(n12539), .Z(n36165)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_138.init = 16'h0408;
    LUT4 i1_2_lut_adj_139 (.A(cnt_scan[0]), .B(n34214), .Z(n34215)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_139.init = 16'h8888;
    LUT4 i92_3_lut_4_lut (.A(y_p[4]), .B(n38666), .C(cnt_scan[1]), .D(n36256), 
         .Z(n57_adj_1715)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i92_3_lut_4_lut.init = 16'hf202;
    LUT4 i4027_3_lut_4_lut (.A(cnt_write[2]), .B(n38669), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(n4261[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(162[25:41])
    defparam i4027_3_lut_4_lut.init = 16'h7f80;
    LUT4 mux_89_i1_4_lut (.A(n2323), .B(cnt_scan[0]), .C(n38617), .D(n38574), 
         .Z(cnt_scan_4__N_1022[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(140[16] 141[40])
    defparam mux_89_i1_4_lut.init = 16'h3a0a;
    LUT4 i1_4_lut_adj_140 (.A(cnt_scan[2]), .B(n36730), .C(n36731), .D(cnt_scan[1]), 
         .Z(n61_adj_1745)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_140.init = 16'h5044;
    LUT4 i3884_2_lut_3_lut_4_lut (.A(cnt_main[1]), .B(n38671), .C(cnt_main[3]), 
         .D(\cnt_main[2] ), .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(91[40:55])
    defparam i3884_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3520_2_lut_rep_695_3_lut (.A(\cnt_main[2] ), .B(cnt_main[3]), 
         .C(cnt_main[4]), .Z(n38600)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3520_2_lut_rep_695_3_lut.init = 16'hf8f8;
    LUT4 flash_bit_I_0_1_lut (.A(flash_bit), .Z(flash_bit_N_1389)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(63[17:28])
    defparam flash_bit_I_0_1_lut.init = 16'h5555;
    LUT4 i28038_4_lut (.A(n17_adj_1787), .B(state[2]), .C(n34165), .D(n39906), 
         .Z(sys_clk_c_enable_300)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i28038_4_lut.init = 16'h0002;
    LUT4 i3_4_lut_adj_141 (.A(n3549), .B(state[3]), .C(state[0]), .D(num_7__N_1056[2]), 
         .Z(n34165)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_141.init = 16'h0002;
    LUT4 i19065_3_lut_4_lut (.A(n38677), .B(cnt_main[4]), .C(n38671), 
         .D(cnt_main[1]), .Z(cnt_main_4__N_1012[1])) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;
    defparam i19065_3_lut_4_lut.init = 16'heffe;
    LUT4 i19051_3_lut_4_lut (.A(n38677), .B(cnt_main[4]), .C(warning_TEM), 
         .D(cnt_main[0]), .Z(cnt_main_4__N_1012[0])) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;
    defparam i19051_3_lut_4_lut.init = 16'heffe;
    LUT4 num_2894_mux_6_i1_4_lut (.A(n13794), .B(n3[0]), .C(state[3]), 
         .D(state[0]), .Z(n47[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894_mux_6_i1_4_lut.init = 16'hc0c5;
    LUT4 mux_3384_i1_4_lut (.A(n3549), .B(n38718), .C(num_7__N_1056[2]), 
         .D(n38639), .Z(n13794)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam mux_3384_i1_4_lut.init = 16'hfaca;
    LUT4 i2_4_lut_adj_142 (.A(cnt_main[0]), .B(n38697), .C(cnt_main[1]), 
         .D(cnt_main[3]), .Z(num_7__N_1056[2])) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_142.init = 16'h0012;
    LUT4 mux_266_Mux_7_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), 
         .C(char_reg[7]), .D(n37978), .Z(n1575[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam mux_266_Mux_7_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i27618_2_lut_3_lut_4_lut (.A(n38673), .B(n38675), .C(n2523), 
         .D(char[5]), .Z(n36549)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i27618_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i19563_2_lut (.A(n2158[15]), .B(oled_dcn_N_1364), .Z(n2184[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19563_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_143 (.A(state[2]), .B(n55_adj_1788), .C(cnt_scan[4]), 
         .D(n63_adj_1740), .Z(n12_adj_1695)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_143.init = 16'h4544;
    FD1P3IX num_2894__i3 (.D(n3[3]), .SP(sys_clk_c_enable_300), .CD(n22504), 
            .CK(sys_clk_c), .Q(num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i3.GSR = "ENABLED";
    LUT4 i27697_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n36629)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i27697_3_lut_4_lut.init = 16'h0010;
    LUT4 i19562_2_lut (.A(n2158[14]), .B(oled_dcn_N_1364), .Z(n2184[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19562_2_lut.init = 16'h2222;
    LUT4 i19561_2_lut (.A(n2158[13]), .B(oled_dcn_N_1364), .Z(n2184[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19561_2_lut.init = 16'h2222;
    LUT4 n37822_bdd_3_lut_4_lut (.A(char[38]), .B(n38675), .C(num[2]), 
         .D(n37822), .Z(n37823)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam n37822_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 mux_266_Mux_0_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), 
         .C(char_reg[0]), .D(n37692), .Z(n1575[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam mux_266_Mux_0_i31_3_lut_4_lut.init = 16'he0f1;
    LUT4 i1_2_lut_4_lut (.A(cnt_main[4]), .B(n38721), .C(n38677), .D(x_ph[1]), 
         .Z(n17)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam i1_2_lut_4_lut.init = 16'hea00;
    LUT4 i19560_2_lut (.A(n2158[12]), .B(oled_dcn_N_1364), .Z(n2184[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19560_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_144 (.A(state[4]), .B(state_back[5]), .Z(n24760)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_144.init = 16'h4444;
    LUT4 i19273_2_lut (.A(n2158[0]), .B(oled_dcn_N_1364), .Z(n2184[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19273_2_lut.init = 16'h2222;
    LUT4 mux_266_Mux_1_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), 
         .C(char_reg[1]), .D(n37663), .Z(n1575[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam mux_266_Mux_1_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i27785_3_lut (.A(char_reg[7]), .B(char_reg[6]), .C(cnt_write[1]), 
         .Z(n36717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27785_3_lut.init = 16'hcaca;
    FD1P3AY oled_rst_335 (.D(n6089[0]), .SP(sys_clk_c_enable_276), .CK(sys_clk_c), 
            .Q(oled_res_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam oled_rst_335.GSR = "ENABLED";
    LUT4 i27786_3_lut (.A(char_reg[5]), .B(char_reg[4]), .C(cnt_write[1]), 
         .Z(n36718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27786_3_lut.init = 16'hcaca;
    LUT4 i27787_3_lut (.A(char_reg[3]), .B(char_reg[2]), .C(cnt_write[1]), 
         .Z(n36719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27787_3_lut.init = 16'hcaca;
    LUT4 i24_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), .C(state[2]), 
         .D(n3795), .Z(n35572)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i24_3_lut_4_lut.init = 16'hefe0;
    LUT4 i27788_3_lut (.A(char_reg[1]), .B(char_reg[0]), .C(cnt_write[1]), 
         .Z(n36720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27788_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_then_4_lut_adj_145 (.A(n38674), .B(num[1]), .C(num[0]), 
         .D(char[38]), .Z(n38746)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i1_4_lut_then_4_lut_adj_145.init = 16'h0100;
    LUT4 i27711_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n36643)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i27711_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_146 (.A(n39906), .B(n38719), .C(n15_adj_1730), .D(n18), 
         .Z(n34794)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(47[13:18])
    defparam i1_4_lut_adj_146.init = 16'h7350;
    LUT4 i34_4_lut (.A(state_back[4]), .B(n38640), .C(state[4]), .D(state[5]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(47[13:18])
    defparam i34_4_lut.init = 16'h0a30;
    LUT4 i13808_2_lut (.A(sys_clk_c_enable_318), .B(state[0]), .Z(n22532)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam i13808_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_147 (.A(n32), .B(n38664), .C(n20873), .D(state[5]), 
         .Z(n39_adj_1789)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i2_4_lut_adj_147.init = 16'h3022;
    LUT4 i27793_3_lut_4_lut (.A(n38681), .B(sw1_c), .C(cnt_main[0]), .D(n9120), 
         .Z(n36725)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(10[8:11])
    defparam i27793_3_lut_4_lut.init = 16'hf202;
    LUT4 i13_3_lut_4_lut (.A(n38681), .B(sw1_c), .C(\cnt_main[2] ), .D(n8290), 
         .Z(n7)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/top.v(10[8:11])
    defparam i13_3_lut_4_lut.init = 16'h200f;
    LUT4 i27779_3_lut (.A(n3070), .B(n3448), .C(cnt_scan[0]), .Z(n36711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27779_3_lut.init = 16'hcaca;
    LUT4 i27780_3_lut (.A(n3826), .B(n4204), .C(cnt_scan[0]), .Z(n36712)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27780_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_669_4_lut (.A(cnt_scan[2]), .B(n38711), .C(cnt_scan[3]), 
         .D(cnt_scan[4]), .Z(n38574)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(156[8:13])
    defparam i2_2_lut_rep_669_4_lut.init = 16'hffdf;
    LUT4 i19557_2_lut (.A(n2158[9]), .B(oled_dcn_N_1364), .Z(n2184[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19557_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_712 (.A(cnt_scan[3]), .B(n20638), .Z(n38617)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_712.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_148 (.A(cnt_scan[3]), .B(n20638), .C(n38615), 
         .D(cnt_scan[4]), .Z(n4_adj_1786)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_148.init = 16'hddd0;
    LUT4 i1_4_lut_else_4_lut_adj_149 (.A(n38674), .B(num[1]), .C(num[0]), 
         .D(char[30]), .Z(n38745)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i1_4_lut_else_4_lut_adj_149.init = 16'h5400;
    LUT4 i19556_2_lut (.A(n2158[8]), .B(oled_dcn_N_1364), .Z(n2184[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19556_2_lut.init = 16'h2222;
    LUT4 i19063_4_lut (.A(\hundres_0__N_313[0]_adj_2 ), .B(sw1_c), .C(n11642), 
         .D(n38429), .Z(n9139[2])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(108[118:130])
    defparam i19063_4_lut.init = 16'h2212;
    LUT4 i19451_3_lut (.A(n9917), .B(cnt_main[0]), .C(n21135), .Z(n9274[2])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i19451_3_lut.init = 16'h4848;
    LUT4 i28043_2_lut_3_lut_4_lut_4_lut (.A(n38720), .B(n8290), .C(n38632), 
         .D(n38548), .Z(n36357)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i28043_2_lut_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_721 (.A(cnt_main[0]), .B(n8290), .Z(n38626)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_721.init = 16'h2222;
    LUT4 i1_2_lut_adj_150 (.A(char_reg[0]), .B(n3795), .Z(n55_adj_1788)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_150.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_151 (.A(cnt_main[0]), .B(n8290), .C(n38681), 
         .D(cnt_main[1]), .Z(n36317)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_151.init = 16'h2022;
    LUT4 mux_2298_i1_3_lut (.A(\min[0] ), .B(\min_warning[0] ), .C(sw1_c), 
         .Z(n9134[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(107[119:149])
    defparam mux_2298_i1_3_lut.init = 16'hcaca;
    LUT4 mux_2476_i1_4_lut (.A(n9262[0]), .B(n9124[0]), .C(n8290), .D(n36302), 
         .Z(n9397[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_2476_i1_4_lut.init = 16'haca0;
    LUT4 mux_2296_i1_3_lut (.A(\hour[0] ), .B(\hour_warning[0] ), .C(sw1_c), 
         .Z(n9124[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(105[120:151])
    defparam mux_2296_i1_3_lut.init = 16'hcaca;
    LUT4 i28088_3_lut (.A(n8290), .B(\cnt_main[2] ), .C(cnt_main[0]), 
         .Z(n36681)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i28088_3_lut.init = 16'hfdfd;
    LUT4 n37881_bdd_2_lut_rep_727 (.A(n37881), .B(cnt_main[4]), .Z(n38632)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37881_bdd_2_lut_rep_727.init = 16'h2222;
    LUT4 i2_4_lut_adj_152 (.A(cnt_main[4]), .B(cnt_main[1]), .C(\cnt_main[2] ), 
         .D(cnt_main[3]), .Z(n8290)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_adj_152.init = 16'h0110;
    LUT4 mux_2488_i4_3_lut_4_lut (.A(n37881), .B(cnt_main[4]), .C(n9391[3]), 
         .D(n9459[3]), .Z(char_167__N_1072[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_2488_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2_2_lut_rep_600_3_lut_4_lut (.A(n37881), .B(cnt_main[4]), .C(n8290), 
         .D(n38548), .Z(n38505)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_2_lut_rep_600_3_lut_4_lut.init = 16'hfff2;
    LUT4 i1_2_lut_adj_153 (.A(\cnt_main[2] ), .B(cnt_main[0]), .Z(n36302)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_153.init = 16'h2222;
    LUT4 mux_2477_i4_4_lut (.A(n9124[3]), .B(n38609), .C(cnt_main[0]), 
         .D(\cnt_main[2] ), .Z(n9404[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam mux_2477_i4_4_lut.init = 16'hcacf;
    LUT4 i28003_3_lut (.A(n36724), .B(n36725), .C(\cnt_main[2] ), .Z(n36726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28003_3_lut.init = 16'hcaca;
    LUT4 i27792_4_lut (.A(n9134[3]), .B(\sec_tens[3] ), .C(cnt_main[0]), 
         .D(sw1_c), .Z(n36724)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i27792_4_lut.init = 16'h0aca;
    LUT4 i4139_4_lut (.A(\hundres_0__N_313[1] ), .B(n21105), .C(\hundres_0__N_313[1]_adj_3 ), 
         .D(sw1_c), .Z(n11652)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;
    defparam i4139_4_lut.init = 16'h3c66;
    LUT4 i12397_3_lut (.A(n9941[2]), .B(n9925), .C(n9923[1]), .Z(n21105)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i12397_3_lut.init = 16'ha8a8;
    LUT4 mux_3386_i1_4_lut (.A(n38753), .B(n37669), .C(\cnt_main[2] ), 
         .D(n38606), .Z(n9941[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3386_i1_4_lut.init = 16'hcac0;
    LUT4 mux_2846_i2_3_lut (.A(\hundres_0__N_316[3] ), .B(\hundres_0__N_316[3]_adj_4 ), 
         .C(sw1_c), .Z(n9923[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(106[118:147])
    defparam mux_2846_i2_3_lut.init = 16'hcaca;
    LUT4 i2707_2_lut_3_lut_4_lut (.A(n39906), .B(n38719), .C(state[1]), 
         .D(state[0]), .Z(n9752)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2707_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 state_4__bdd_4_lut_29304 (.A(state[4]), .B(state[0]), .C(state[2]), 
         .D(state[3]), .Z(n38296)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam state_4__bdd_4_lut_29304.init = 16'h0116;
    LUT4 i1_3_lut_rep_677_4_lut (.A(n39906), .B(n38719), .C(state[1]), 
         .D(state[0]), .Z(n38582)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_rep_677_4_lut.init = 16'h0110;
    LUT4 i1_3_lut_rep_735 (.A(cnt_write[0]), .B(cnt_write[4]), .C(n20648), 
         .Z(n38640)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(45[42:51])
    defparam i1_3_lut_rep_735.init = 16'hc8c8;
    LUT4 i3955_3_lut_4_lut (.A(cnt_init[2]), .B(n38728), .C(cnt_init[3]), 
         .D(cnt_init[4]), .Z(n2122[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(119[49:64])
    defparam i3955_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cnt_delay_i0_i0 (.D(n4285[0]), .SP(sys_clk_c_enable_279), .CD(n22414), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i1 (.D(cnt_scan_4__N_1022[1]), .SP(sys_clk_c_enable_287), 
            .CD(n22358), .CK(sys_clk_c), .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i2 (.D(cnt_scan_4__N_1022[2]), .SP(sys_clk_c_enable_287), 
            .CD(n22358), .CK(sys_clk_c), .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i0 (.D(n4_adj_1785), .SP(sys_clk_c_enable_282), 
            .CD(n22430), .CK(sys_clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_scan_i0_i3 (.D(cnt_scan_4__N_1022[3]), .SP(sys_clk_c_enable_287), 
            .CD(n22358), .CK(sys_clk_c), .Q(cnt_scan[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_scan_i0_i4 (.D(n36165), .SP(sys_clk_c_enable_287), .CK(sys_clk_c), 
            .Q(cnt_scan[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_154 (.A(\hundres_0__N_313[0] ), .B(n38455), .C(n9941[2]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_adj_154.init = 16'h6a6a;
    LUT4 i1_3_lut_adj_155 (.A(n9925), .B(n9923[1]), .C(n9941[2]), .Z(n4_adj_5)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_adj_155.init = 16'h6a6a;
    LUT4 i19555_2_lut (.A(n2158[7]), .B(oled_dcn_N_1364), .Z(n2184[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19555_2_lut.init = 16'h2222;
    LUT4 n9_bdd_4_lut (.A(n38721), .B(cnt_main[4]), .C(\cnt_main[2] ), 
         .D(cnt_main[3]), .Z(n28369)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam n9_bdd_4_lut.init = 16'hfeef;
    FD1P3IX num_2894__i4 (.D(n3[4]), .SP(sys_clk_c_enable_300), .CD(n22504), 
            .CK(sys_clk_c), .Q(num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_746 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38651)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_746.init = 16'hdddd;
    LUT4 i1_2_lut_rep_645_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(cnt_init[0]), .D(n38662), .Z(n38550)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_rep_645_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_156 (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(cnt_init[0]), .D(n38662), .Z(n36057)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_156.init = 16'hffdf;
    LUT4 i1_3_lut_4_lut_4_lut_adj_157 (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(oled_dcn_N_1364), .D(n38596), .Z(n36416)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_157.init = 16'hddfd;
    LUT4 i19719_4_lut (.A(n11_adj_1784), .B(n38450), .C(n6_adj_1782), 
         .D(cnt_scan[3]), .Z(sys_clk_c_enable_318)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i19719_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut_adj_158 (.A(n44_adj_1795), .B(n38658), .C(n39906), .D(n23), 
         .Z(n17_adj_1796)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i1_4_lut_adj_158.init = 16'h3b0a;
    LUT4 i72_4_lut (.A(state[0]), .B(n38603), .C(state[1]), .D(n38563), 
         .Z(n44_adj_1795)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i72_4_lut.init = 16'h1a5a;
    LUT4 i3_4_lut_adj_159 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(cnt_scan[4]), 
         .D(cnt_scan[1]), .Z(n20638)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_159.init = 16'hfdff;
    LUT4 i19229_4_lut (.A(\hour_tens[0] ), .B(cnt_main[0]), .C(\hour_warning_tens[0] ), 
         .D(sw1_c), .Z(n9274[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i19229_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_rep_753 (.A(state[0]), .B(state[1]), .Z(n38658)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i1_2_lut_rep_753.init = 16'heeee;
    LUT4 i1_2_lut_rep_689_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n38594)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i1_2_lut_rep_689_3_lut.init = 16'hefef;
    FD1P3IX cnt_scan_i0_i0 (.D(cnt_scan_4__N_1022[0]), .SP(sys_clk_c_enable_287), 
            .CD(n22358), .CK(sys_clk_c), .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_scan_i0_i0.GSR = "ENABLED";
    LUT4 i13812_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(sys_clk_c_enable_318), 
         .Z(n22536)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i13812_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_676_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n10), 
         .D(n39906), .Z(n38581)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(117[5:9])
    defparam i1_2_lut_rep_676_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_729_3_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .Z(n38634)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_729_3_lut.init = 16'hfefe;
    LUT4 i19368_4_lut (.A(n36522), .B(n38673), .C(char[38]), .D(num[1]), 
         .Z(n2524)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i19368_4_lut.init = 16'h3022;
    LUT4 i27592_3_lut (.A(char[3]), .B(char[28]), .C(num[0]), .Z(n36522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27592_3_lut.init = 16'hcaca;
    CCU2D add_131_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33480), .S0(n4285[15]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_17.INIT0 = 16'h5aaa;
    defparam add_131_17.INIT1 = 16'h0000;
    defparam add_131_17.INJECT1_0 = "NO";
    defparam add_131_17.INJECT1_1 = "NO";
    LUT4 i27614_2_lut_rep_730_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[1]), 
         .D(state[0]), .Z(n38635)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27614_2_lut_rep_730_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_2418_i1_4_lut (.A(\ds18b20_data[4] ), .B(\sec[0] ), .C(cnt_main[1]), 
         .D(sw1_c), .Z(n9256[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_2418_i1_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_674_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[3]), 
         .D(state[1]), .Z(n38579)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_674_3_lut_4_lut.init = 16'hfffe;
    LUT4 equal_2229_i9_2_lut_rep_654_3_lut_4_lut (.A(state[5]), .B(state[4]), 
         .C(n38660), .D(state[3]), .Z(n38559)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam equal_2229_i9_2_lut_rep_654_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_678_3_lut_4_lut (.A(state[5]), .B(state[4]), .C(state[2]), 
         .D(state[3]), .Z(n38583)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_678_3_lut_4_lut.init = 16'hfffe;
    LUT4 equal_2229_i8_2_lut_rep_690_3_lut (.A(state[5]), .B(state[4]), 
         .C(state[3]), .Z(n38595)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam equal_2229_i8_2_lut_rep_690_3_lut.init = 16'hfefe;
    LUT4 mux_266_Mux_2_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), 
         .C(char_reg[2]), .D(n37649), .Z(n1575[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam mux_266_Mux_2_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 equal_2229_i6_2_lut_rep_755 (.A(state[1]), .B(state[2]), .Z(n38660)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam equal_2229_i6_2_lut_rep_755.init = 16'heeee;
    LUT4 equal_2223_i8_2_lut_rep_682_3_lut (.A(state[1]), .B(state[2]), 
         .C(state[0]), .Z(n38587)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam equal_2223_i8_2_lut_rep_682_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_3_lut (.A(state[1]), .B(state[2]), .C(state[0]), .Z(n62)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i1_4_lut_3_lut.init = 16'h1515;
    LUT4 i1_2_lut_rep_657_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[3]), 
         .D(state[0]), .Z(n38562)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i1_2_lut_rep_657_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_160 (.A(state[1]), .B(state[2]), .C(state_back[2]), 
         .Z(n11)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i1_2_lut_3_lut_adj_160.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_161 (.A(state[1]), .B(state[2]), .C(state_back[3]), 
         .Z(n20873)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i1_2_lut_3_lut_adj_161.init = 16'h1010;
    LUT4 i28206_2_lut_rep_601_2_lut_4_lut_4_lut_4_lut (.A(state[1]), .B(state[2]), 
         .C(n38583), .D(state[0]), .Z(sys_clk_c_enable_293)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i28206_2_lut_rep_601_2_lut_4_lut_4_lut_4_lut.init = 16'h050e;
    LUT4 i19527_2_lut_rep_756 (.A(state[1]), .B(state[5]), .Z(n38661)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19527_2_lut_rep_756.init = 16'heeee;
    LUT4 i28000_3_lut (.A(n31_adj_1797), .B(n36729), .C(n8290), .Z(n34)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28000_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_162 (.A(state[1]), .B(state[5]), .C(n38296), 
         .D(n36525), .Z(n6197)) /* synthesis lut_function=(!(A (B+(D))+!A (B (D)+!B !(C)))) */ ;
    defparam i1_4_lut_4_lut_adj_162.init = 16'h1076;
    LUT4 i84_4_lut (.A(n9124[1]), .B(n38609), .C(cnt_main[0]), .D(\cnt_main[2] ), 
         .Z(n31_adj_1797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i84_4_lut.init = 16'hcacf;
    LUT4 i27995_3_lut (.A(n36727), .B(n38750), .C(\cnt_main[2] ), .Z(n36729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27995_3_lut.init = 16'hcaca;
    LUT4 i19036_2_lut_rep_757 (.A(cnt_init[4]), .B(cnt_init[3]), .Z(n38662)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19036_2_lut_rep_757.init = 16'heeee;
    LUT4 i1_2_lut_rep_647_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[2]), .D(cnt_init[1]), .Z(n38552)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_647_3_lut_4_lut.init = 16'h0010;
    LUT4 i27795_4_lut (.A(n9134[1]), .B(\sec_tens[1] ), .C(cnt_main[0]), 
         .D(sw1_c), .Z(n36727)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i27795_4_lut.init = 16'h0aca;
    LUT4 i2_2_lut_rep_685_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[1]), .D(cnt_init[2]), .Z(n38590)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_2_lut_rep_685_3_lut_4_lut.init = 16'hfeff;
    LUT4 i27573_2_lut_3_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(cnt_init[0]), 
         .Z(n36503)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27573_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_651_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n38556)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_651_3_lut_4_lut.init = 16'hfffe;
    LUT4 i87_4_lut (.A(n46), .B(n40_adj_1798), .C(cnt_main[0]), .D(n9941[2]), 
         .Z(n52)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i87_4_lut.init = 16'h3aca;
    LUT4 i27606_2_lut_rep_691_3_lut (.A(cnt_init[4]), .B(cnt_init[3]), .C(cnt_init[1]), 
         .Z(n38596)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27606_2_lut_rep_691_3_lut.init = 16'hfefe;
    LUT4 i81_3_lut (.A(n38455), .B(n9923[1]), .C(\cnt_main[2] ), .Z(n40_adj_1798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i81_3_lut.init = 16'hcaca;
    LUT4 cnt_init_4__I_0_364_i8_2_lut_rep_683_3_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[2]), .Z(n38588)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam cnt_init_4__I_0_364_i8_2_lut_rep_683_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_649_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[3]), 
         .C(cnt_init[0]), .D(cnt_init[2]), .Z(n38554)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_649_3_lut_4_lut.init = 16'hffef;
    LUT4 i19357_4_lut (.A(n1477), .B(n38674), .C(n38602), .D(num[2]), 
         .Z(n2523)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam i19357_4_lut.init = 16'h3022;
    LUT4 i19060_4_lut (.A(n38432), .B(sw1_c), .C(n38420), .D(\sec[1] ), 
         .Z(n9145[2])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(109[121:133])
    defparam i19060_4_lut.init = 16'h2212;
    LUT4 i1_2_lut_rep_693_3_lut (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(y_p[4]), 
         .Z(n38598)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_693_3_lut.init = 16'h1010;
    LUT4 i27551_2_lut_rep_761 (.A(cnt_scan[2]), .B(cnt_scan[0]), .Z(n38666)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27551_2_lut_rep_761.init = 16'heeee;
    LUT4 shift_right_91_i1477_4_lut (.A(char[4]), .B(char[28]), .C(num[1]), 
         .D(num[0]), .Z(n1477)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[59:71])
    defparam shift_right_91_i1477_4_lut.init = 16'hc00a;
    LUT4 mux_266_Mux_3_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), 
         .C(char_reg[3]), .D(n28424), .Z(n1575[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam mux_266_Mux_3_i31_3_lut_4_lut.init = 16'he0f1;
    LUT4 i19553_2_lut (.A(n2158[5]), .B(oled_dcn_N_1364), .Z(n2184[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19553_2_lut.init = 16'h2222;
    LUT4 i19552_2_lut (.A(n2158[4]), .B(oled_dcn_N_1364), .Z(n2184[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19552_2_lut.init = 16'h2222;
    LUT4 mux_266_Mux_5_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), 
         .C(char_reg[5]), .D(n15), .Z(n1575[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam mux_266_Mux_5_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i19551_2_lut (.A(n2158[3]), .B(oled_dcn_N_1364), .Z(n2184[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19551_2_lut.init = 16'h2222;
    LUT4 i2_2_lut_3_lut_adj_163 (.A(state[4]), .B(state[3]), .C(n35038), 
         .Z(n39_adj_1800)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_163.init = 16'h1010;
    LUT4 mux_266_Mux_6_i31_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), 
         .C(char_reg[6]), .D(n38338), .Z(n1575[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam mux_266_Mux_6_i31_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_164 (.A(state[2]), .B(n37676), .C(char_reg[4]), 
         .D(n38507), .Z(n6_adj_1697)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_164.init = 16'ha088;
    LUT4 i19200_2_lut_rep_759 (.A(state[4]), .B(state[3]), .Z(n38664)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19200_2_lut_rep_759.init = 16'heeee;
    LUT4 i27701_3_lut_4_lut (.A(oled_dcn_N_1364), .B(n38550), .C(\cnt[3] ), 
         .D(\cnt[4] ), .Z(n36633)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i27701_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_165 (.A(state[0]), .B(x_ph[2]), .C(n16_adj_1801), 
         .D(n38547), .Z(x_ph_7__N_725[2])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_165.init = 16'hdc50;
    LUT4 i25305_4_lut (.A(cnt_scan[2]), .B(n2693), .C(cnt_scan[1]), .D(x_pl[3]), 
         .Z(n34214)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;
    defparam i25305_4_lut.init = 16'h8580;
    LUT4 n2525_bdd_4_lut (.A(n38546), .B(n2524), .C(n2523), .D(n38561), 
         .Z(n37614)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n2525_bdd_4_lut.init = 16'h0240;
    LUT4 i1_4_lut_adj_166 (.A(state[2]), .B(n55_adj_1802), .C(cnt_scan[4]), 
         .D(n63_adj_1728), .Z(n12_adj_1698)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_166.init = 16'h4544;
    LUT4 i1_2_lut_adj_167 (.A(char_reg[4]), .B(n3795), .Z(n55_adj_1802)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_167.init = 16'h8888;
    LUT4 i1_2_lut_rep_776 (.A(flash_bit), .B(time_set), .Z(n38681)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(59[8] 64[5])
    defparam i1_2_lut_rep_776.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_168 (.A(state[2]), .B(n22), .C(n1575[1]), .D(n36643), 
         .Z(n6_adj_1700)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_168.init = 16'h88a0;
    LUT4 i1_2_lut_rep_704_3_lut (.A(flash_bit), .B(time_set), .C(cnt_main[1]), 
         .Z(n38609)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(59[8] 64[5])
    defparam i1_2_lut_rep_704_3_lut.init = 16'hbfbf;
    LUT4 i27569_2_lut_3_lut_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(n28369), .D(n38638), .Z(n36499)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;
    defparam i27569_2_lut_3_lut_4_lut_4_lut.init = 16'hf090;
    LUT4 i13708_3_lut_4_lut_4_lut (.A(n38559), .B(n38530), .C(n38640), 
         .D(n38558), .Z(n22430)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i13708_3_lut_4_lut_4_lut.init = 16'h7400;
    LUT4 i1_4_lut_adj_169 (.A(state[2]), .B(n55_adj_1803), .C(cnt_scan[4]), 
         .D(n63_adj_1743), .Z(n12_adj_1701)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_169.init = 16'h4544;
    LUT4 i1_2_lut_adj_170 (.A(char_reg[1]), .B(n3795), .Z(n55_adj_1803)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_170.init = 16'h8888;
    LUT4 i1_4_lut_then_4_lut_adj_171 (.A(cnt_scan[2]), .B(n4208), .C(n3830), 
         .D(cnt_scan[0]), .Z(n38733)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_then_4_lut_adj_171.init = 16'h4450;
    LUT4 i19550_2_lut (.A(n2158[2]), .B(oled_dcn_N_1364), .Z(n2184[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19550_2_lut.init = 16'h2222;
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_4__N_1012[0]), .SP(sys_clk_c_enable_293), 
            .CD(n22350), .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut_adj_172 (.A(cnt_scan[2]), .B(n3452), .C(n3074), 
         .D(cnt_scan[0]), .Z(n38732)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_else_4_lut_adj_172.init = 16'h4450;
    LUT4 i19052_2_lut_rep_826 (.A(state[5]), .B(state[4]), .Z(n39906)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19052_2_lut_rep_826.init = 16'heeee;
    CCU2D add_131_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33479), .COUT(n33480), .S0(n4285[13]), 
          .S1(n4285[14]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_15.INIT0 = 16'h5aaa;
    defparam add_131_15.INIT1 = 16'h5aaa;
    defparam add_131_15.INJECT1_0 = "NO";
    defparam add_131_15.INJECT1_1 = "NO";
    CCU2D add_131_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33478), .COUT(n33479), .S0(n4285[11]), 
          .S1(n4285[12]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_13.INIT0 = 16'h5aaa;
    defparam add_131_13.INIT1 = 16'h5aaa;
    defparam add_131_13.INJECT1_0 = "NO";
    defparam add_131_13.INJECT1_1 = "NO";
    CCU2D add_131_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33477), .COUT(n33478), .S0(n4285[9]), .S1(n4285[10]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_11.INIT0 = 16'h5aaa;
    defparam add_131_11.INIT1 = 16'h5aaa;
    defparam add_131_11.INJECT1_0 = "NO";
    defparam add_131_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_173 (.A(state[2]), .B(n22_adj_6), .C(n1575[2]), 
         .D(n36643), .Z(n6_adj_1702)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_173.init = 16'h88a0;
    LUT4 i1_4_lut_adj_174 (.A(state[2]), .B(n55_adj_1805), .C(cnt_scan[4]), 
         .D(n63_adj_1744), .Z(n12_adj_1703)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_174.init = 16'h4544;
    LUT4 i1_2_lut_adj_175 (.A(char_reg[2]), .B(n3795), .Z(n55_adj_1805)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_175.init = 16'h8888;
    LUT4 i4006_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n4261[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(162[25:41])
    defparam i4006_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_176 (.A(state[2]), .B(n37637), .C(n1575[3]), .D(n36667), 
         .Z(n6_adj_1705)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_176.init = 16'h88a0;
    FD1P3IX num_2894__i5 (.D(n3[5]), .SP(sys_clk_c_enable_300), .CD(n22504), 
            .CK(sys_clk_c), .Q(num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_177 (.A(state[2]), .B(n55_adj_1806), .C(cnt_scan[4]), 
         .D(n63_adj_1746), .Z(n12_adj_1706)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_177.init = 16'h4544;
    FD1P3IX num_2894__i6 (.D(n3[6]), .SP(sys_clk_c_enable_300), .CD(n22504), 
            .CK(sys_clk_c), .Q(num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i6.GSR = "ENABLED";
    FD1P3IX num_2894__i7 (.D(n3[7]), .SP(sys_clk_c_enable_300), .CD(n22504), 
            .CK(sys_clk_c), .Q(num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(92[7] 115[14])
    defparam num_2894__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_178 (.A(char_reg[3]), .B(n3795), .Z(n55_adj_1806)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_178.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_4_lut_adj_179 (.A(state[4]), .B(cnt_write[0]), .C(n20648), 
         .D(cnt_write[4]), .Z(n36279)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_179.init = 16'h0800;
    LUT4 cnt_1__bdd_4_lut_28306 (.A(\cnt[1] ), .B(\cnt[3] ), .C(\cnt[2] ), 
         .D(\cnt[0] ), .Z(n37637)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam cnt_1__bdd_4_lut_28306.init = 16'h0c29;
    LUT4 i1_2_lut_3_lut_adj_180 (.A(state[4]), .B(cnt_write[0]), .C(cnt_write[4]), 
         .Z(n36278)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_180.init = 16'h0808;
    LUT4 i1_2_lut_rep_792 (.A(cnt_main[4]), .B(\cnt_main[2] ), .Z(n38697)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_792.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_181 (.A(cnt_main[4]), .B(\cnt_main[2] ), .C(n91), 
         .D(x_ph[4]), .Z(n4_c)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_181.init = 16'h50fe;
    LUT4 i1_3_lut_4_lut_adj_182 (.A(cnt_main[4]), .B(\cnt_main[2] ), .C(x_ph[4]), 
         .D(cnt_main[1]), .Z(n85)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_182.init = 16'h1f0f;
    LUT4 i30_4_lut_3_lut (.A(state[3]), .B(state[0]), .C(state[1]), .Z(n17_adj_1787)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i30_4_lut_3_lut.init = 16'h1616;
    CCU2D add_131_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33476), .COUT(n33477), .S0(n4285[7]), .S1(n4285[8]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_9.INIT0 = 16'h5aaa;
    defparam add_131_9.INIT1 = 16'h5aaa;
    defparam add_131_9.INJECT1_0 = "NO";
    defparam add_131_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_183 (.A(state[2]), .B(n14378), .C(n1575[5]), .D(n36633), 
         .Z(n6_adj_1708)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_183.init = 16'h88a0;
    FD1P3IX cnt_i0_i0 (.D(n2184[0]), .SP(sys_clk_c_enable_303), .CD(n22515), 
            .CK(sys_clk_c), .Q(\cnt[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_184 (.A(state[2]), .B(n55_adj_1807), .C(cnt_scan[4]), 
         .D(n63_adj_1735), .Z(n12_adj_1709)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_184.init = 16'h4544;
    PFUMX i29180 (.BLUT(n39550), .ALUT(n39549), .C0(state[2]), .Z(n39551));
    LUT4 i1_2_lut_adj_185 (.A(char_reg[5]), .B(n3795), .Z(n55_adj_1807)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_185.init = 16'h8888;
    LUT4 i1_4_lut_adj_186 (.A(state[2]), .B(n14_adj_7), .C(n1575[6]), 
         .D(n36629), .Z(n6_adj_1711)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_186.init = 16'h88a0;
    LUT4 i1_4_lut_adj_187 (.A(state[2]), .B(n55_adj_1809), .C(cnt_scan[4]), 
         .D(n63_adj_1737), .Z(n12_adj_1712)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_187.init = 16'h4544;
    LUT4 i1_2_lut_adj_188 (.A(char_reg[6]), .B(n3795), .Z(n55_adj_1809)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_188.init = 16'h8888;
    LUT4 i3_4_lut_adj_189 (.A(n2527), .B(n2521), .C(n20650), .D(n36254), 
         .Z(n36256)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_189.init = 16'h0400;
    PFUMX i27789 (.BLUT(n36717), .ALUT(n36718), .C0(cnt_write[2]), .Z(n36721));
    LUT4 i1_2_lut_rep_806 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n38711)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(142[7] 158[14])
    defparam i1_2_lut_rep_806.init = 16'heeee;
    LUT4 i1_4_lut_adj_190 (.A(cnt_scan[2]), .B(n13939), .C(n36312), .D(cnt_scan[1]), 
         .Z(n61_adj_1716)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_190.init = 16'h5044;
    LUT4 i2_3_lut_adj_191 (.A(n2527), .B(n2521), .C(n19858), .Z(n36312)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_191.init = 16'h8080;
    LUT4 i1_3_lut_rep_710_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n38615)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(142[7] 158[14])
    defparam i1_3_lut_rep_710_4_lut.init = 16'hefff;
    LUT4 i11178_4_lut (.A(n37614), .B(n20650), .C(cnt_scan[0]), .D(n38560), 
         .Z(n19858)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i11178_4_lut.init = 16'h3a30;
    LUT4 i2_3_lut_4_lut_adj_192 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n33982)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(142[7] 158[14])
    defparam i2_3_lut_4_lut_adj_192.init = 16'he000;
    PFUMX i27790 (.BLUT(n36719), .ALUT(n36720), .C0(cnt_write[2]), .Z(n36722));
    LUT4 i28029_4_lut (.A(n33749), .B(n38595), .C(n38660), .D(state[0]), 
         .Z(sys_clk_c_enable_303)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i28029_4_lut.init = 16'habaa;
    LUT4 i3_4_lut_adj_193 (.A(n5), .B(state[0]), .C(n38661), .D(state[2]), 
         .Z(n33749)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_193.init = 16'h0208;
    LUT4 i33_4_lut_adj_194 (.A(x_ph[2]), .B(x_ph_7__N_1040[2]), .C(state[1]), 
         .D(n38636), .Z(n16_adj_1801)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i33_4_lut_adj_194.init = 16'h0aca;
    LUT4 i4_4_lut_adj_195 (.A(n2524), .B(n38546), .C(n38561), .D(n36549), 
         .Z(n20650)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[51:79])
    defparam i4_4_lut_adj_195.init = 16'hfeff;
    LUT4 i3972_2_lut_rep_810 (.A(cnt_scan[1]), .B(cnt_scan[0]), .Z(n38715)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(141[24:39])
    defparam i3972_2_lut_rep_810.init = 16'h8888;
    PFUMX i32 (.BLUT(n9), .ALUT(n33713), .C0(cnt_main[3]), .Z(n13));
    LUT4 i3986_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n12539)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(141[24:39])
    defparam i3986_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX i28422 (.BLUT(n37866), .ALUT(n37865), .C0(n38632), .Z(char_167__N_1072[5]));
    LUT4 i2_3_lut_4_lut_adj_196 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(n2690), 
         .D(cnt_scan[2]), .Z(n36208)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(141[24:39])
    defparam i2_3_lut_4_lut_adj_196.init = 16'h8000;
    LUT4 i1_2_lut_adj_197 (.A(cnt_scan[0]), .B(cnt_scan[2]), .Z(n36254)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_197.init = 16'h8888;
    FD1P3IX char_i0_i0 (.D(char_167__N_1072[0]), .SP(sys_clk_c_enable_305), 
            .CD(n22511), .CK(sys_clk_c), .Q(char[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam char_i0_i0.GSR = "ENABLED";
    LUT4 i3977_2_lut_3_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n2332[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(141[24:39])
    defparam i3977_2_lut_3_lut.init = 16'h7878;
    LUT4 i3984_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[3]), 
         .D(cnt_scan[2]), .Z(n2332[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(141[24:39])
    defparam i3984_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_811 (.A(cnt_init[0]), .B(cnt_init[2]), .Z(n38716)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_811.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_4_lut_adj_198 (.A(cnt_init[0]), .B(cnt_init[2]), 
         .C(n36416), .D(n38662), .Z(n8_adj_1758)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_198.init = 16'hffd8;
    LUT4 i2_2_lut_rep_728_3_lut_4_lut (.A(cnt_init[0]), .B(cnt_init[2]), 
         .C(cnt_init[3]), .D(cnt_init[4]), .Z(n38633)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i2_2_lut_rep_728_3_lut_4_lut.init = 16'hfff8;
    LUT4 equal_40_i6_2_lut_rep_813 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n38718)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(108[8:12])
    defparam equal_40_i6_2_lut_rep_813.init = 16'hdddd;
    LUT4 i19026_2_lut_rep_814 (.A(state[3]), .B(state[2]), .Z(n38719)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19026_2_lut_rep_814.init = 16'heeee;
    LUT4 i2_4_lut_adj_199 (.A(x_ph[2]), .B(n36499), .C(n28362), .D(n3549), 
         .Z(x_ph_7__N_1040[2])) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C))) */ ;
    defparam i2_4_lut_adj_199.init = 16'hbf3f;
    LUT4 i27595_2_lut_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[0]), .Z(n36525)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27595_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i19594_2_lut_rep_731_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(state[4]), 
         .D(state[5]), .Z(n38636)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19594_2_lut_rep_731_3_lut_4_lut.init = 16'hfffe;
    LUT4 i28080_3_lut_4_lut (.A(state[3]), .B(state[2]), .C(n39302), .D(n17_adj_1796), 
         .Z(n34578)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i28080_3_lut_4_lut.init = 16'he0f0;
    LUT4 i1_2_lut_rep_815 (.A(\cnt_main[2] ), .B(cnt_main[0]), .Z(n38720)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_815.init = 16'heeee;
    CCU2D add_131_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33475), .COUT(n33476), .S0(n4285[5]), .S1(n4285[6]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_7.INIT0 = 16'h5aaa;
    defparam add_131_7.INIT1 = 16'h5aaa;
    defparam add_131_7.INJECT1_0 = "NO";
    defparam add_131_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_816 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n38721)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(93[8:12])
    defparam i1_2_lut_rep_816.init = 16'heeee;
    CCU2D add_131_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33474), .COUT(n33475), .S0(n4285[3]), .S1(n4285[4]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_5.INIT0 = 16'h5aaa;
    defparam add_131_5.INIT1 = 16'h5aaa;
    defparam add_131_5.INJECT1_0 = "NO";
    defparam add_131_5.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut_adj_200 (.A(cnt_main[1]), .B(cnt_main[0]), .C(x_ph[1]), 
         .Z(n9)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(93[8:12])
    defparam i2_2_lut_3_lut_adj_200.init = 16'h1010;
    LUT4 equal_31_i9_2_lut_rep_658_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(n38722), .D(\cnt_main[2] ), .Z(n38563)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(93[8:12])
    defparam equal_31_i9_2_lut_rep_658_3_lut_4_lut.init = 16'hfffe;
    LUT4 i19549_2_lut (.A(n2158[1]), .B(oled_dcn_N_1364), .Z(n2184[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19549_2_lut.init = 16'h2222;
    LUT4 cnt_main_0__bdd_4_lut_28602_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(\cnt_main[2] ), .D(cnt_main[3]), .Z(n37570)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(93[8:12])
    defparam cnt_main_0__bdd_4_lut_28602_4_lut.init = 16'hf54f;
    LUT4 i27796_4_lut_then_4_lut (.A(n9917), .B(\hundres_0__N_316[3]_adj_8 ), 
         .C(\hundres_0__N_316[3]_adj_9 ), .D(sw1_c), .Z(n38749)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i27796_4_lut_then_4_lut.init = 16'h665a;
    CCU2D add_131_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33473), .COUT(n33474), .S0(n4285[1]), .S1(n4285[2]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_3.INIT0 = 16'h5aaa;
    defparam add_131_3.INIT1 = 16'h5aaa;
    defparam add_131_3.INJECT1_0 = "NO";
    defparam add_131_3.INJECT1_1 = "NO";
    LUT4 i27798_3_lut (.A(n3071), .B(n3449), .C(cnt_scan[0]), .Z(n36730)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27798_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_817 (.A(cnt_main[3]), .B(cnt_main[4]), .Z(n38722)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(96[8:12])
    defparam i1_2_lut_rep_817.init = 16'heeee;
    CCU2D add_131_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33473), .S1(n4285[0]));   // c:/users/argon/desktop/verilog/ending/oled.v(188[29:45])
    defparam add_131_1.INIT0 = 16'hF000;
    defparam add_131_1.INIT1 = 16'h5555;
    defparam add_131_1.INJECT1_0 = "NO";
    defparam add_131_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_201 (.A(n38548), .B(n38632), .C(n38626), .D(cnt_main[1]), 
         .Z(n36323)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_201.init = 16'h0010;
    CCU2D add_57_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33472), 
          .S0(n2158[15]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_17.INIT0 = 16'h5aaa;
    defparam add_57_17.INIT1 = 16'h0000;
    defparam add_57_17.INJECT1_0 = "NO";
    defparam add_57_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_734_3_lut (.A(cnt_main[3]), .B(cnt_main[4]), .C(\cnt_main[2] ), 
         .Z(n38639)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(96[8:12])
    defparam i1_2_lut_rep_734_3_lut.init = 16'hfefe;
    PFUMX i29366 (.BLUT(n39907), .ALUT(n39908), .C0(state[2]), .Z(n39909));
    LUT4 i27799_3_lut (.A(n3827), .B(n4205), .C(cnt_scan[0]), .Z(n36731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27799_3_lut.init = 16'hcaca;
    CCU2D add_57_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33471), 
          .COUT(n33472), .S0(n2158[13]), .S1(n2158[14]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_15.INIT0 = 16'h5aaa;
    defparam add_57_15.INIT1 = 16'h5aaa;
    defparam add_57_15.INJECT1_0 = "NO";
    defparam add_57_15.INJECT1_1 = "NO";
    CCU2D add_57_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33470), 
          .COUT(n33471), .S0(n2158[11]), .S1(n2158[12]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_13.INIT0 = 16'h5aaa;
    defparam add_57_13.INIT1 = 16'h5aaa;
    defparam add_57_13.INJECT1_0 = "NO";
    defparam add_57_13.INJECT1_1 = "NO";
    CCU2D add_57_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33469), 
          .COUT(n33470), .S0(n2158[9]), .S1(n2158[10]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_11.INIT0 = 16'h5aaa;
    defparam add_57_11.INIT1 = 16'h5aaa;
    defparam add_57_11.INJECT1_0 = "NO";
    defparam add_57_11.INJECT1_1 = "NO";
    CCU2D add_57_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33468), 
          .COUT(n33469), .S0(n2158[7]), .S1(n2158[8]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_9.INIT0 = 16'h5aaa;
    defparam add_57_9.INIT1 = 16'h5aaa;
    defparam add_57_9.INJECT1_0 = "NO";
    defparam add_57_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut_rep_617 (.A(n38558), .B(n8974), .C(n38559), .D(n38548), 
         .Z(sys_clk_c_enable_305)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i2_4_lut_rep_617.init = 16'h0a88;
    LUT4 i13789_2_lut_3_lut (.A(n38558), .B(n38559), .C(n38548), .Z(n22511)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i13789_2_lut_3_lut.init = 16'h2020;
    LUT4 hundres_0__N_316_3__bdd_4_lut_28844 (.A(\hundres_0__N_316[3] ), .B(n38607), 
         .C(\hundres_1__N_306[3] ), .D(n38457), .Z(n37668)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam hundres_0__N_316_3__bdd_4_lut_28844.init = 16'hb02c;
    LUT4 i1_2_lut_rep_733_3_lut (.A(cnt_main[4]), .B(cnt_main[3]), .C(\cnt_main[2] ), 
         .Z(n38638)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(111[8:13])
    defparam i1_2_lut_rep_733_3_lut.init = 16'hfbfb;
    LUT4 i19559_2_lut (.A(n2158[11]), .B(oled_dcn_N_1364), .Z(n2184[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam i19559_2_lut.init = 16'h2222;
    LUT4 hundres_0__N_316_3__bdd_4_lut_28313 (.A(\hundres_0__N_316[3]_adj_4 ), 
         .B(n38458), .C(n38608), .D(\hundres_1__N_306[3]_adj_10 ), .Z(n37667)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A !(B (C+!(D))+!B ((D)+!C))) */ ;
    defparam hundres_0__N_316_3__bdd_4_lut_28313.init = 16'h8e30;
    CCU2D add_57_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33467), 
          .COUT(n33468), .S0(n2158[5]), .S1(n2158[6]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_7.INIT0 = 16'h5aaa;
    defparam add_57_7.INIT1 = 16'h5aaa;
    defparam add_57_7.INJECT1_0 = "NO";
    defparam add_57_7.INJECT1_1 = "NO";
    PFUMX i28396 (.BLUT(n37821), .ALUT(n37820), .C0(num[1]), .Z(n37822));
    LUT4 i1_4_lut_adj_202 (.A(n19), .B(\cnt[4] ), .C(n20), .D(n4_adj_11), 
         .Z(oled_dcn_N_1364)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_202.init = 16'hfefa;
    LUT4 i1_4_lut_adj_203 (.A(state_back[2]), .B(cnt_init[0]), .C(n38633), 
         .D(n15_adj_1814), .Z(n36154)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_203.init = 16'hb3a0;
    LUT4 i8_4_lut (.A(cnt[5]), .B(cnt[11]), .C(cnt[10]), .D(cnt[13]), 
         .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    CCU2D sub_2283_add_2_17 (.A0(cnt_delay[15]), .B0(num_delay[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33433), .S1(n4283));
    defparam sub_2283_add_2_17.INIT0 = 16'h5999;
    defparam sub_2283_add_2_17.INIT1 = 16'h0000;
    defparam sub_2283_add_2_17.INJECT1_0 = "NO";
    defparam sub_2283_add_2_17.INJECT1_1 = "NO";
    LUT4 i19688_2_lut_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[4]), 
         .D(cnt_main[3]), .Z(n28362)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i19688_2_lut_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut_adj_204 (.A(state_back[2]), .B(n38651), .C(n38552), 
         .D(oled_dcn_N_1364), .Z(n15_adj_1814)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_204.init = 16'ha8f8;
    LUT4 i2_2_lut_3_lut_adj_205 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[4]), 
         .Z(n33713)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut_adj_205.init = 16'h0808;
    LUT4 i9_4_lut (.A(cnt[9]), .B(n18_adj_1815), .C(cnt[8]), .D(cnt[6]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D sub_2283_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33432), .COUT(n33433));
    defparam sub_2283_add_2_15.INIT0 = 16'h5999;
    defparam sub_2283_add_2_15.INIT1 = 16'h5999;
    defparam sub_2283_add_2_15.INJECT1_0 = "NO";
    defparam sub_2283_add_2_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(\cnt_main[2] ), .Z(n91)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B !(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(93[8:12])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1f5e;
    LUT4 i3936_2_lut_rep_823 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n38728)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(119[49:64])
    defparam i3936_2_lut_rep_823.init = 16'h8888;
    LUT4 i3948_2_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n2122[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(119[49:64])
    defparam i3948_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3941_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n2122[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(119[49:64])
    defparam i3941_2_lut_3_lut.init = 16'h7878;
    LUT4 i7_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[12]), .D(cnt[15]), 
         .Z(n18_adj_1815)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i28101_2_lut_3_lut_4_lut_4_lut (.A(n38547), .B(n38566), .C(n38525), 
         .D(n38587), .Z(sys_clk_c_enable_130)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i28101_2_lut_3_lut_4_lut_4_lut.init = 16'h1500;
    LUT4 i13651_3_lut_4_lut_4_lut (.A(n38547), .B(n38600), .C(n38548), 
         .D(n38587), .Z(n22375)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i13651_3_lut_4_lut_4_lut.init = 16'h5400;
    LUT4 i28159_2_lut_3_lut_4_lut_4_lut (.A(n38547), .B(n38587), .C(n38525), 
         .D(n28434), .Z(sys_clk_c_enable_151)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i28159_2_lut_3_lut_4_lut_4_lut.init = 16'h0444;
    LUT4 i1_3_lut_adj_206 (.A(state[2]), .B(state_back[3]), .C(n8_adj_1758), 
         .Z(n6_adj_1719)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_206.init = 16'h8080;
    LUT4 i1_3_lut_adj_207 (.A(state[2]), .B(state_back[3]), .C(n3795), 
         .Z(n12_adj_1720)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;
    defparam i1_3_lut_adj_207.init = 16'h4545;
    LUT4 i1_4_lut_adj_208 (.A(state[2]), .B(n16_adj_1816), .C(state_back[4]), 
         .D(n38633), .Z(n6_adj_1722)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_208.init = 16'ha888;
    LUT4 i1_3_lut_adj_209 (.A(cnt_init[0]), .B(state_back[4]), .C(n36416), 
         .Z(n16_adj_1816)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_209.init = 16'h4040;
    LUT4 i1_4_lut_adj_210 (.A(state[2]), .B(n16_adj_1817), .C(state_back[5]), 
         .D(n38633), .Z(n6_adj_1724)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_210.init = 16'ha888;
    LUT4 i1_3_lut_adj_211 (.A(cnt_init[0]), .B(state_back[5]), .C(n36416), 
         .Z(n16_adj_1817)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_211.init = 16'h4040;
    LUT4 i28167_4_lut (.A(n2527), .B(n2523), .C(cnt_scan[0]), .D(n38546), 
         .Z(n36951)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i28167_4_lut.init = 16'h1000;
    LUT4 i19178_4_lut (.A(n37557), .B(n38560), .C(n36314), .D(n2523), 
         .Z(n126)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(151[51:79])
    defparam i19178_4_lut.init = 16'hc088;
    LUT4 i97_4_lut_adj_212 (.A(cnt_scan[0]), .B(n2692), .C(cnt_scan[2]), 
         .D(x_ph[4]), .Z(n45_adj_1726)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;
    defparam i97_4_lut_adj_212.init = 16'h8580;
    LUT4 i92_4_lut (.A(n38598), .B(cnt_scan[2]), .C(cnt_scan[3]), .D(n36713), 
         .Z(n57_adj_1727)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i92_4_lut.init = 16'h3a0a;
    LUT4 i28145_2_lut (.A(cnt_scan[3]), .B(cnt_scan[1]), .Z(n36615)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i28145_2_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut_adj_213 (.A(cnt_init[0]), .B(n38552), .C(oled_dcn_N_1364), 
         .D(state[4]), .Z(n20818)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(118[7] 134[14])
    defparam i1_3_lut_4_lut_adj_213.init = 16'h4404;
    LUT4 i1_4_lut_adj_214 (.A(state[2]), .B(n20818), .C(n38556), .D(state[4]), 
         .Z(n2)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(47[13:18])
    defparam i1_4_lut_adj_214.init = 16'h8a88;
    LUT4 i1_2_lut_3_lut_4_lut_adj_215 (.A(n38561), .B(n2524), .C(n2527), 
         .D(n38546), .Z(n36314)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_215.init = 16'h0040;
    LUT4 i1_3_lut_adj_216 (.A(state[1]), .B(state[3]), .C(n16_adj_1764), 
         .Z(n12_adj_1731)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i1_3_lut_adj_216.init = 16'h4040;
    LUT4 i28168_3_lut_4_lut (.A(n38561), .B(n2524), .C(n36951), .D(n38560), 
         .Z(n36341)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i28168_3_lut_4_lut.init = 16'h4000;
    LUT4 i28202_4_lut (.A(n38660), .B(n36985), .C(n4_adj_1818), .D(n38594), 
         .Z(sys_clk_c_enable_159)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C)+!B))) */ ;
    defparam i28202_4_lut.init = 16'h040c;
    LUT4 i1_4_lut_adj_217 (.A(n11490), .B(n38507), .C(n36057), .D(n38555), 
         .Z(n4_adj_1818)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(D)))) */ ;
    defparam i1_4_lut_adj_217.init = 16'h00b1;
    LUT4 i19652_4_lut (.A(cnt_init[0]), .B(n38507), .C(n38555), .D(n11490), 
         .Z(n6673[0])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i19652_4_lut.init = 16'h0004;
    LUT4 i5987_2_lut_rep_545_4_lut (.A(n38562), .B(state[4]), .C(state[5]), 
         .D(n4283), .Z(n38450)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(185[5:10])
    defparam i5987_2_lut_rep_545_4_lut.init = 16'hffef;
    LUT4 i30_4_lut (.A(state[1]), .B(state[2]), .C(n38563), .D(n16_adj_1764), 
         .Z(n13_adj_1732)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(80[4] 191[11])
    defparam i30_4_lut.init = 16'h4602;
    LUT4 i92_4_lut_adj_218 (.A(n38598), .B(n2691), .C(cnt_scan[1]), .D(n36254), 
         .Z(n57_adj_1733)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i92_4_lut_adj_218.init = 16'hca0a;
    LUT4 i1_4_lut_adj_219 (.A(cnt_scan[2]), .B(n36708), .C(n36709), .D(cnt_scan[1]), 
         .Z(n61_adj_1734)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_219.init = 16'h5044;
    LUT4 i27776_3_lut (.A(n3069), .B(n3447), .C(cnt_scan[0]), .Z(n36708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27776_3_lut.init = 16'hcaca;
    CCU2D add_57_5 (.A0(\cnt[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33466), 
          .COUT(n33467), .S0(n2158[3]), .S1(n2158[4]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_5.INIT0 = 16'h5aaa;
    defparam add_57_5.INIT1 = 16'h5aaa;
    defparam add_57_5.INJECT1_0 = "NO";
    defparam add_57_5.INJECT1_1 = "NO";
    LUT4 i27777_3_lut (.A(n3825), .B(n4203), .C(cnt_scan[0]), .Z(n36709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27777_3_lut.init = 16'hcaca;
    PFUMX i28788 (.BLUT(n38809), .ALUT(n38810), .C0(cnt_main[0]), .Z(n27950));
    PFUMX i28786 (.BLUT(n38806), .ALUT(n38807), .C0(cnt_main[3]), .Z(n28434));
    PFUMX i28784 (.BLUT(n38803), .ALUT(n38804), .C0(\cnt_main[2] ), .Z(n3549));
    LUT4 i1_4_lut_adj_220 (.A(cnt_scan[2]), .B(n36748), .C(n36749), .D(cnt_scan[1]), 
         .Z(n61_adj_1736)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_220.init = 16'h5044;
    CCU2D add_57_3 (.A0(\cnt[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33465), 
          .COUT(n33466), .S0(n2158[1]), .S1(n2158[2]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_3.INIT0 = 16'h5aaa;
    defparam add_57_3.INIT1 = 16'h5aaa;
    defparam add_57_3.INJECT1_0 = "NO";
    defparam add_57_3.INJECT1_1 = "NO";
    FD1P3IX state_i0_i5 (.D(n39382), .SP(sys_clk_c_enable_318), .CD(n22536), 
            .CK(sys_clk_c), .Q(state[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_i0_i5.GSR = "ENABLED";
    PFUMX i28782 (.BLUT(n38799), .ALUT(n38800), .C0(state[0]), .Z(n36085));
    LUT4 i27816_3_lut (.A(n3068), .B(n3446), .C(cnt_scan[0]), .Z(n36748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27816_3_lut.init = 16'hcaca;
    LUT4 i27817_3_lut (.A(n3824), .B(n4202), .C(cnt_scan[0]), .Z(n36749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27817_3_lut.init = 16'hcaca;
    PFUMX i28778 (.BLUT(n38793), .ALUT(n38794), .C0(num[1]), .Z(n2527));
    PFUMX i28776 (.BLUT(n38790), .ALUT(n38791), .C0(cnt_main[0]), .Z(n8974));
    FD1P3IX state_i0_i4 (.D(n34794), .SP(sys_clk_c_enable_318), .CD(n22536), 
            .CK(sys_clk_c), .Q(state[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_i0_i4.GSR = "ENABLED";
    LUT4 i97_4_lut_adj_221 (.A(cnt_scan[0]), .B(n2696), .C(cnt_scan[2]), 
         .D(x_ph[0]), .Z(n45_adj_1738)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;
    defparam i97_4_lut_adj_221.init = 16'h8580;
    FD1P3IX state_i0_i3 (.D(n39_adj_1789), .SP(sys_clk_c_enable_318), .CD(n22532), 
            .CK(sys_clk_c), .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_i0_i3.GSR = "ENABLED";
    LUT4 i27945_4_lut (.A(y_p[0]), .B(n38734), .C(cnt_scan[3]), .D(n38666), 
         .Z(n57_adj_1739)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i27945_4_lut.init = 16'hc0ca;
    PFUMX i28358 (.BLUT(n37757), .ALUT(n37756), .C0(sw1_c), .Z(n37758));
    CCU2D add_57_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\cnt[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33465), 
          .S1(n2158[0]));   // c:/users/argon/desktop/verilog/ending/oled.v(128[19:29])
    defparam add_57_1.INIT0 = 16'hF000;
    defparam add_57_1.INIT1 = 16'h5555;
    defparam add_57_1.INJECT1_0 = "NO";
    defparam add_57_1.INJECT1_1 = "NO";
    CCU2D sub_2283_add_2_13 (.A0(cnt_delay[11]), .B0(num_delay[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33431), .COUT(n33432));
    defparam sub_2283_add_2_13.INIT0 = 16'h5999;
    defparam sub_2283_add_2_13.INIT1 = 16'h5999;
    defparam sub_2283_add_2_13.INJECT1_0 = "NO";
    defparam sub_2283_add_2_13.INJECT1_1 = "NO";
    FD1P3IX state_i0_i2 (.D(n39_adj_1800), .SP(sys_clk_c_enable_318), .CD(n22532), 
            .CK(sys_clk_c), .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=412, LSE_RLINE=442 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(79[12] 192[6])
    defparam state_i0_i2.GSR = "ENABLED";
    LUT4 i19045_2_lut (.A(n45_adj_1819), .B(cnt_scan[1]), .Z(n57_adj_1741)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19045_2_lut.init = 16'h8888;
    LUT4 i97_4_lut_adj_222 (.A(cnt_scan[0]), .B(n2695), .C(cnt_scan[2]), 
         .D(x_ph[1]), .Z(n45_adj_1819)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;
    defparam i97_4_lut_adj_222.init = 16'h8580;
    LUT4 i1_4_lut_adj_223 (.A(cnt_scan[2]), .B(n36736), .C(n36737), .D(cnt_scan[1]), 
         .Z(n61_adj_1742)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_223.init = 16'h5044;
    PFUMX i28749 (.BLUT(n38748), .ALUT(n38749), .C0(cnt_main[0]), .Z(n38750));
    LUT4 i27804_3_lut (.A(n3073), .B(n3451), .C(cnt_scan[0]), .Z(n36736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27804_3_lut.init = 16'hcaca;
    LUT4 i27805_3_lut (.A(n3829), .B(n4207), .C(cnt_scan[0]), .Z(n36737)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27805_3_lut.init = 16'hcaca;
    \divide(WIDTH=32,N=12000000)  divide_1Hz (.clk_in_1Hz(clk_in_1Hz), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net), .sys_rst_n_c(sys_rst_n_c), .rst_n_in_N_1482(rst_n_in_N_1482)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(53[36] 57[5])
    
endmodule
//
// Verilog Description of module \divide(WIDTH=32,N=12000000) 
//

module \divide(WIDTH=32,N=12000000)  (clk_in_1Hz, sys_clk_c, GND_net, 
            sys_rst_n_c, rst_n_in_N_1482) /* synthesis syn_module_defined=1 */ ;
    output clk_in_1Hz;
    input sys_clk_c;
    input GND_net;
    input sys_rst_n_c;
    output rst_n_in_N_1482;
    
    wire clk_in_1Hz /* synthesis is_clock=1, SET_AS_NETWORK=\oled1/clk_in_1Hz */ ;   // c:/users/argon/desktop/verilog/ending/oled.v(51[9:19])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire clkout_N_259, n33647, n33646;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/verilog/ending/clock.v(11[19:24])
    
    wire n33645, n33644, n33643, n33642, n33641, n33640, n33639, 
        n33638, n33637, n33636, n22392;
    wire [31:0]n101;
    wire [31:0]n200;
    
    wire n36828, n27_adj_1682, n32, n28_adj_1683, n28_adj_1684, n24, 
        n16, n29_adj_1685, n26_adj_1686, n26_adj_1688, n20, n33601, 
        n33600, n33599, n33598, n33597, n33596, n33595, n33594, 
        n33593, n33592, n33591, n33590, n33589, n33588, n33587, 
        n33586;
    
    FD1S3AX clk_p_29 (.D(clkout_N_259), .CK(sys_clk_c), .Q(clk_in_1Hz)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=36, LSE_RCOL=5, LSE_LLINE=53, LSE_RLINE=57 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(30[9] 33[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D add_24705_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33647), 
          .S0(clkout_N_259));
    defparam add_24705_cout.INIT0 = 16'h0000;
    defparam add_24705_cout.INIT1 = 16'h0000;
    defparam add_24705_cout.INJECT1_0 = "NO";
    defparam add_24705_cout.INJECT1_1 = "NO";
    CCU2D add_24705_24 (.A0(cnt_p[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33646), .COUT(n33647));
    defparam add_24705_24.INIT0 = 16'h5555;
    defparam add_24705_24.INIT1 = 16'h5555;
    defparam add_24705_24.INJECT1_0 = "NO";
    defparam add_24705_24.INJECT1_1 = "NO";
    CCU2D add_24705_22 (.A0(cnt_p[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33645), .COUT(n33646));
    defparam add_24705_22.INIT0 = 16'h5555;
    defparam add_24705_22.INIT1 = 16'h5555;
    defparam add_24705_22.INJECT1_0 = "NO";
    defparam add_24705_22.INJECT1_1 = "NO";
    CCU2D add_24705_20 (.A0(cnt_p[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33644), .COUT(n33645));
    defparam add_24705_20.INIT0 = 16'h5555;
    defparam add_24705_20.INIT1 = 16'h5555;
    defparam add_24705_20.INJECT1_0 = "NO";
    defparam add_24705_20.INJECT1_1 = "NO";
    CCU2D add_24705_18 (.A0(cnt_p[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33643), .COUT(n33644));
    defparam add_24705_18.INIT0 = 16'h5555;
    defparam add_24705_18.INIT1 = 16'h5555;
    defparam add_24705_18.INJECT1_0 = "NO";
    defparam add_24705_18.INJECT1_1 = "NO";
    CCU2D add_24705_16 (.A0(cnt_p[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33642), .COUT(n33643));
    defparam add_24705_16.INIT0 = 16'h5aaa;
    defparam add_24705_16.INIT1 = 16'h5555;
    defparam add_24705_16.INJECT1_0 = "NO";
    defparam add_24705_16.INJECT1_1 = "NO";
    CCU2D add_24705_14 (.A0(cnt_p[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33641), .COUT(n33642));
    defparam add_24705_14.INIT0 = 16'h5aaa;
    defparam add_24705_14.INIT1 = 16'h5555;
    defparam add_24705_14.INJECT1_0 = "NO";
    defparam add_24705_14.INJECT1_1 = "NO";
    CCU2D add_24705_12 (.A0(cnt_p[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33640), .COUT(n33641));
    defparam add_24705_12.INIT0 = 16'h5555;
    defparam add_24705_12.INIT1 = 16'h5aaa;
    defparam add_24705_12.INJECT1_0 = "NO";
    defparam add_24705_12.INJECT1_1 = "NO";
    CCU2D add_24705_10 (.A0(cnt_p[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33639), .COUT(n33640));
    defparam add_24705_10.INIT0 = 16'h5aaa;
    defparam add_24705_10.INIT1 = 16'h5aaa;
    defparam add_24705_10.INJECT1_0 = "NO";
    defparam add_24705_10.INJECT1_1 = "NO";
    CCU2D add_24705_8 (.A0(cnt_p[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33638), .COUT(n33639));
    defparam add_24705_8.INIT0 = 16'h5555;
    defparam add_24705_8.INIT1 = 16'h5aaa;
    defparam add_24705_8.INJECT1_0 = "NO";
    defparam add_24705_8.INJECT1_1 = "NO";
    CCU2D add_24705_6 (.A0(cnt_p[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33637), .COUT(n33638));
    defparam add_24705_6.INIT0 = 16'h5555;
    defparam add_24705_6.INIT1 = 16'h5555;
    defparam add_24705_6.INJECT1_0 = "NO";
    defparam add_24705_6.INJECT1_1 = "NO";
    CCU2D add_24705_4 (.A0(cnt_p[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33636), .COUT(n33637));
    defparam add_24705_4.INIT0 = 16'h5aaa;
    defparam add_24705_4.INIT1 = 16'h5aaa;
    defparam add_24705_4.INJECT1_0 = "NO";
    defparam add_24705_4.INJECT1_1 = "NO";
    CCU2D add_24705_2 (.A0(cnt_p[8]), .B0(cnt_p[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n33636));
    defparam add_24705_2.INIT0 = 16'h7000;
    defparam add_24705_2.INIT1 = 16'h5555;
    defparam add_24705_2.INJECT1_0 = "NO";
    defparam add_24705_2.INJECT1_1 = "NO";
    FD1S3IX cnt_p_2905__i31 (.D(n101[31]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i30 (.D(n101[30]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i29 (.D(n101[29]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i28 (.D(n101[28]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i27 (.D(n101[27]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i26 (.D(n101[26]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i25 (.D(n101[25]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i24 (.D(n101[24]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i23 (.D(n101[23]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i22 (.D(n101[22]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i21 (.D(n101[21]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i20 (.D(n101[20]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i19 (.D(n101[19]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i18 (.D(n101[18]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i17 (.D(n101[17]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i16 (.D(n101[16]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i15 (.D(n101[15]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i14 (.D(n101[14]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i13 (.D(n101[13]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i12 (.D(n101[12]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i11 (.D(n101[11]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i10 (.D(n101[10]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i9 (.D(n101[9]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i8 (.D(n101[8]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i7 (.D(n101[7]), .CK(sys_clk_c), .CD(n22392), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i6 (.D(n101[6]), .CK(sys_clk_c), .CD(n22392), 
            .Q(n200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i5 (.D(n101[5]), .CK(sys_clk_c), .CD(n22392), 
            .Q(n200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i4 (.D(n101[4]), .CK(sys_clk_c), .CD(n22392), 
            .Q(n200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i3 (.D(n101[3]), .CK(sys_clk_c), .CD(n22392), 
            .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i2 (.D(n101[2]), .CK(sys_clk_c), .CD(n22392), 
            .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_2905__i1 (.D(n101[1]), .CK(sys_clk_c), .CD(n22392), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i1.GSR = "ENABLED";
    LUT4 i28045_4_lut (.A(n36828), .B(n27_adj_1682), .C(n32), .D(n28_adj_1683), 
         .Z(n22392)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i28045_4_lut.init = 16'h8000;
    LUT4 i28044_4_lut (.A(cnt_p[19]), .B(n28_adj_1684), .C(n24), .D(n16), 
         .Z(n36828)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i28044_4_lut.init = 16'h0001;
    LUT4 i10_4_lut (.A(cnt_p[18]), .B(n200[2]), .C(n200[1]), .D(cnt_p[11]), 
         .Z(n27_adj_1682)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 i15_4_lut (.A(n29_adj_1685), .B(cnt_p[9]), .C(n26_adj_1686), 
         .D(n200[0]), .Z(n32)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    LUT4 i11_4_lut (.A(n200[3]), .B(cnt_p[12]), .C(n200[5]), .D(cnt_p[17]), 
         .Z(n28_adj_1683)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    LUT4 i13_4_lut (.A(cnt_p[30]), .B(n26_adj_1688), .C(n20), .D(cnt_p[13]), 
         .Z(n28_adj_1684)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(cnt_p[26]), .B(cnt_p[24]), .C(cnt_p[10]), .D(cnt_p[27]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(cnt_p[8]), .B(cnt_p[14]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i11_4_lut_adj_15 (.A(cnt_p[28]), .B(cnt_p[15]), .C(cnt_p[31]), 
         .D(cnt_p[29]), .Z(n26_adj_1688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i11_4_lut_adj_15.init = 16'hfffe;
    LUT4 i5_2_lut (.A(cnt_p[22]), .B(cnt_p[25]), .Z(n20)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i12_4_lut (.A(cnt_p[20]), .B(cnt_p[7]), .C(cnt_p[23]), .D(cnt_p[21]), 
         .Z(n29_adj_1685)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i9_3_lut (.A(cnt_p[16]), .B(n200[4]), .C(n200[6]), .Z(n26_adj_1686)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9_3_lut.init = 16'h8080;
    CCU2D cnt_p_2905_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33601), .S0(n101[31]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_2905_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33600), .COUT(n33601), .S0(n101[29]), 
          .S1(n101[30]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33599), .COUT(n33600), .S0(n101[27]), 
          .S1(n101[28]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33598), .COUT(n33599), .S0(n101[25]), 
          .S1(n101[26]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33597), .COUT(n33598), .S0(n101[23]), 
          .S1(n101[24]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33596), .COUT(n33597), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33595), .COUT(n33596), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33594), .COUT(n33595), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33593), .COUT(n33594), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33592), .COUT(n33593), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33591), .COUT(n33592), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33590), .COUT(n33591), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33589), .COUT(n33590), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_7 (.A0(n200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33588), .COUT(n33589), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33587), .COUT(n33588), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33586), .COUT(n33587), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_2905_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_2905_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_2905_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33586), .S1(n101[0]));   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_2905_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_2905_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_2905_add_4_1.INJECT1_1 = "NO";
    LUT4 rst_n_in_I_0_1_lut (.A(sys_rst_n_c), .Z(rst_n_in_N_1482)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(81[5:14])
    defparam rst_n_in_I_0_1_lut.init = 16'h5555;
    FD1S3IX cnt_p_2905__i0 (.D(n101[0]), .CK(sys_clk_c), .CD(n22392), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/clock.v(22[16:23])
    defparam cnt_p_2905__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module BCD_U6
//

module BCD_U6 (\hour[5] , \hour[6] , n38667, \hour[7] , hundres_0__N_321, 
            \hour[4] , \hour[3] , \hundres_0__N_316[3] , n9917, n11657, 
            \hour[2] , \hour[1] , \hour_ones[3] , \hour_ones[1] , \hour_tens[0] , 
            \hour_ones[2] , n4) /* synthesis syn_module_defined=1 */ ;
    input \hour[5] ;
    input \hour[6] ;
    output n38667;
    input \hour[7] ;
    output hundres_0__N_321;
    input \hour[4] ;
    input \hour[3] ;
    output \hundres_0__N_316[3] ;
    input n9917;
    output n11657;
    input \hour[2] ;
    input \hour[1] ;
    output \hour_ones[3] ;
    output \hour_ones[1] ;
    output \hour_tens[0] ;
    output \hour_ones[2] ;
    output n4;
    
    
    wire n38605;
    wire [3:0]hundres_1__N_305;
    
    wire n38565, n38424, n38756;
    wire [3:0]hundres_0__N_313;
    wire [3:0]hundres_1__N_306;
    
    wire n38755, n38754, n38454, n38428, n38466;
    wire [3:0]hundres_1__N_307;
    
    wire n38434;
    wire [3:0]hundres_0__N_316;
    
    wire n38436, n38499;
    
    LUT4 i3409_2_lut_rep_762 (.A(\hour[5] ), .B(\hour[6] ), .Z(n38667)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3409_2_lut_rep_762.init = 16'heeee;
    LUT4 i3454_2_lut_rep_700_3_lut (.A(\hour[5] ), .B(\hour[6] ), .C(\hour[7] ), 
         .Z(n38605)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3454_2_lut_rep_700_3_lut.init = 16'he0e0;
    LUT4 i4412_3_lut_4_lut_3_lut (.A(\hour[5] ), .B(\hour[6] ), .C(\hour[7] ), 
         .Z(hundres_1__N_305[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4412_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i12400_2_lut_3_lut (.A(\hour[5] ), .B(\hour[6] ), .C(\hour[7] ), 
         .Z(hundres_1__N_305[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i12400_2_lut_3_lut.init = 16'h1010;
    LUT4 i4404_2_lut_rep_660_3_lut_3_lut (.A(\hour[5] ), .B(\hour[6] ), 
         .C(\hour[7] ), .Z(n38565)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i4404_2_lut_rep_660_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i3398_4_lut (.A(n38424), .B(n38756), .C(hundres_0__N_313[1]), 
         .D(n38605), .Z(hundres_0__N_321)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i3398_4_lut.init = 16'hb3a0;
    LUT4 i4538_3_lut_4_lut (.A(n38565), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4538_3_lut_4_lut.init = 16'h998a;
    LUT4 i3403_2_lut_rep_538_4_lut_4_lut_then_4_lut (.A(hundres_1__N_305[2]), 
         .B(hundres_1__N_305[1]), .C(n38565), .D(\hour[3] ), .Z(n38755)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i3403_2_lut_rep_538_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i3403_2_lut_rep_538_4_lut_4_lut_else_4_lut (.A(hundres_1__N_305[2]), 
         .B(hundres_1__N_305[1]), .C(n38565), .D(\hour[3] ), .Z(n38754)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i3403_2_lut_rep_538_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i3399_2_lut_rep_519_3_lut_4_lut_4_lut (.A(n38454), .B(hundres_1__N_306[3]), 
         .C(\hundres_0__N_316[3] ), .D(n38605), .Z(n38424)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i3399_2_lut_rep_519_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i4111_3_lut_4_lut (.A(\hundres_0__N_316[3] ), .B(n38428), .C(n9917), 
         .D(hundres_0__N_313[1]), .Z(n11657)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4111_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4453_2_lut_rep_529_4_lut_4_lut (.A(\hour[2] ), .B(n38466), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38434)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4453_2_lut_rep_529_4_lut_4_lut.init = 16'h554a;
    LUT4 i4468_2_lut_3_lut_3_lut_4_lut (.A(\hour[2] ), .B(n38466), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4468_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4475_3_lut_4_lut_3_lut_4_lut (.A(\hour[2] ), .B(n38466), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(\hundres_0__N_316[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4475_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4461_3_lut_4_lut (.A(\hour[2] ), .B(n38466), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4461_3_lut_4_lut.init = 16'h998c;
    LUT4 i3460_2_lut_rep_531_3_lut_4_lut (.A(n38667), .B(\hour[7] ), .C(hundres_1__N_306[3]), 
         .D(n38454), .Z(n38436)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3460_2_lut_rep_531_3_lut_4_lut.init = 16'h8880;
    LUT4 i4489_3_lut_4_lut_3_lut_4_lut (.A(n38667), .B(\hour[7] ), .C(hundres_1__N_306[3]), 
         .D(n38454), .Z(hundres_0__N_313[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4489_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4481_2_lut_rep_523_3_lut_3_lut_4_lut (.A(n38667), .B(\hour[7] ), 
         .C(hundres_1__N_306[3]), .D(n38454), .Z(n38428)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4481_2_lut_rep_523_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4440_2_lut_3_lut_3_lut_4_lut (.A(\hour[1] ), .B(n38434), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4440_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4425_2_lut_4_lut_4_lut (.A(\hour[1] ), .B(n38434), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_ones[1] )) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4425_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i4447_3_lut_4_lut_3_lut_4_lut (.A(\hour[1] ), .B(n38434), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_tens[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4447_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4433_3_lut_4_lut (.A(\hour[1] ), .B(n38434), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(\hour_ones[2] )) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4433_3_lut_4_lut.init = 16'h998c;
    LUT4 i4517_2_lut_3_lut_3_lut_4_lut (.A(\hour[3] ), .B(n38499), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4517_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4524_3_lut_rep_549_4_lut_3_lut_4_lut (.A(\hour[3] ), .B(n38499), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38454)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4524_3_lut_rep_549_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4502_2_lut_rep_561_4_lut_4_lut (.A(\hour[3] ), .B(n38499), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(n38466)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4502_2_lut_rep_561_4_lut_4_lut.init = 16'h554a;
    LUT4 i4510_3_lut_4_lut (.A(\hour[3] ), .B(n38499), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4510_3_lut_4_lut.init = 16'h998c;
    LUT4 i1_3_lut_4_lut (.A(n38454), .B(n38436), .C(n9917), .D(\hundres_0__N_316[3] ), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(21[6] 22[23])
    defparam i1_3_lut_4_lut.init = 16'h9666;
    LUT4 i4552_3_lut_4_lut_3_lut_4_lut (.A(n38565), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4552_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4545_2_lut_3_lut_3_lut_4_lut (.A(n38565), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(hundres_1__N_306[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4545_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    PFUMX i28753 (.BLUT(n38754), .ALUT(n38755), .C0(\hour[4] ), .Z(n38756));
    LUT4 i4530_2_lut_rep_594_4_lut_4_lut (.A(n38565), .B(\hour[4] ), .C(hundres_1__N_305[1]), 
         .D(hundres_1__N_305[2]), .Z(n38499)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i4530_2_lut_rep_594_4_lut_4_lut.init = 16'h332c;
    
endmodule
//
// Verilog Description of module KEY
//

module KEY (sys_clk_c, key_sec_pre, key_sec, key3_c, GND_net, n38709) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output key_sec_pre;
    output key_sec;
    input key3_c;
    input GND_net;
    output n38709;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire key_rst_pre, key_rst;
    wire [17:0]cnt;   // c:/users/argon/desktop/verilog/ending/key.v(37[16:19])
    
    wire key_edge;
    wire [17:0]n77;
    
    wire n21, n34, n30, n22, sys_clk_c_enable_290, n31, n28, n33560, 
        n33559, n33558, n33557, n33556, n33555, n33554, n33553, 
        n33552;
    
    FD1S3AY key_rst_pre_27 (.D(key_rst), .CK(sys_clk_c), .Q(key_rst_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=54, LSE_RLINE=59 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(27[5] 32[8])
    defparam key_rst_pre_27.GSR = "ENABLED";
    FD1S3AY key_sec_pre_30 (.D(key_sec), .CK(sys_clk_c), .Q(key_sec_pre)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=54, LSE_RLINE=59 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(75[6:29])
    defparam key_sec_pre_30.GSR = "ENABLED";
    FD1S3AY key_rst_26 (.D(key3_c), .CK(sys_clk_c), .Q(key_rst)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=54, LSE_RLINE=59 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(27[5] 32[8])
    defparam key_rst_26.GSR = "ENABLED";
    FD1S3IX cnt_2898__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i0.GSR = "ENABLED";
    FD1S3IX cnt_2898__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i17.GSR = "ENABLED";
    FD1S3IX cnt_2898__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i16.GSR = "ENABLED";
    FD1S3IX cnt_2898__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i15.GSR = "ENABLED";
    FD1S3IX cnt_2898__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i14.GSR = "ENABLED";
    FD1S3IX cnt_2898__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i13.GSR = "ENABLED";
    FD1S3IX cnt_2898__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i12.GSR = "ENABLED";
    FD1S3IX cnt_2898__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i11.GSR = "ENABLED";
    FD1S3IX cnt_2898__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(key_edge), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i10.GSR = "ENABLED";
    FD1S3IX cnt_2898__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i9.GSR = "ENABLED";
    FD1S3IX cnt_2898__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i8.GSR = "ENABLED";
    FD1S3IX cnt_2898__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i7.GSR = "ENABLED";
    FD1S3IX cnt_2898__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i6.GSR = "ENABLED";
    FD1S3IX cnt_2898__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i5.GSR = "ENABLED";
    FD1S3IX cnt_2898__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i4.GSR = "ENABLED";
    FD1S3IX cnt_2898__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i3.GSR = "ENABLED";
    FD1S3IX cnt_2898__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i2.GSR = "ENABLED";
    FD1S3IX cnt_2898__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898__i1.GSR = "ENABLED";
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(sys_clk_c_enable_290)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(cnt[13]), .B(cnt[8]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i16_4_lut (.A(n31), .B(cnt[9]), .C(n28), .D(cnt[2]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(cnt[7]), .B(cnt[12]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i13_4_lut (.A(cnt[17]), .B(cnt[15]), .C(cnt[16]), .D(cnt[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[14]), .D(cnt[11]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 key_rst_pre_I_0_2_lut (.A(key_rst_pre), .B(key_rst), .Z(key_edge)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(35[21:45])
    defparam key_rst_pre_I_0_2_lut.init = 16'h2222;
    FD1P3AY key_sec_29 (.D(key3_c), .SP(sys_clk_c_enable_290), .CK(sys_clk_c), 
            .Q(key_sec));   // c:/users/argon/desktop/verilog/ending/key.v(60[10] 63[9])
    defparam key_sec_29.GSR = "ENABLED";
    CCU2D cnt_2898_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33560), .S0(n77[17]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_19.INIT1 = 16'h0000;
    defparam cnt_2898_add_4_19.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33559), .COUT(n33560), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_17.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33558), .COUT(n33559), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_15.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33557), .COUT(n33558), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_13.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33556), .COUT(n33557), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_11.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33555), 
          .COUT(n33556), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_9.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33554), 
          .COUT(n33555), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_7.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33553), 
          .COUT(n33554), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_5.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n33552), 
          .COUT(n33553), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_2898_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_2898_add_4_3.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_2898_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n33552), .S1(n77[0]));   // c:/users/argon/desktop/verilog/ending/key.v(46[12:23])
    defparam cnt_2898_add_4_1.INIT0 = 16'hF000;
    defparam cnt_2898_add_4_1.INIT1 = 16'h0555;
    defparam cnt_2898_add_4_1.INJECT1_0 = "NO";
    defparam cnt_2898_add_4_1.INJECT1_1 = "NO";
    LUT4 key_sec_pre_I_0_2_lut_rep_804 (.A(key_sec_pre), .B(key_sec), .Z(n38709)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/ending/key.v(78[22:46])
    defparam key_sec_pre_I_0_2_lut_rep_804.init = 16'h2222;
    
endmodule
//
// Verilog Description of module BCD
//

module BCD (\sec[2] , \sec[1] , n11642, \sec_tens[1] , \hundres_0__N_313[0] , 
            n38429, \sec_tens[3] , sw1_c, n9147, n38432, n9144, 
            n38420, \sec[4] , \sec[5] , \sec[6] , \sec[7] , \sec[3] ) /* synthesis syn_module_defined=1 */ ;
    input \sec[2] ;
    input \sec[1] ;
    output n11642;
    output \sec_tens[1] ;
    output \hundres_0__N_313[0] ;
    output n38429;
    output \sec_tens[3] ;
    input sw1_c;
    output n9147;
    output n38432;
    output n9144;
    output n38420;
    input \sec[4] ;
    input \sec[5] ;
    input \sec[6] ;
    input \sec[7] ;
    input \sec[3] ;
    
    
    wire n38461, n38426, n38425, n38612, n38462;
    wire [3:0]hundres_1__N_306;
    
    wire n38460;
    wire [3:0]hundres_1__N_307;
    wire [3:0]hundres_0__N_313;
    wire [3:0]hundres_0__N_316;
    
    wire n38473, n38504, n38494, n38682;
    
    LUT4 i3426_2_lut_rep_521_3_lut (.A(\sec[2] ), .B(n38461), .C(\sec[1] ), 
         .Z(n38426)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3426_2_lut_rep_521_3_lut.init = 16'hf6f6;
    LUT4 n4_bdd_4_lut (.A(n38425), .B(n38612), .C(n38462), .D(hundres_1__N_306[3]), 
         .Z(n11642)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam n4_bdd_4_lut.init = 16'ha20c;
    LUT4 i4761_2_lut_4_lut_4_lut (.A(n38460), .B(hundres_1__N_307[2]), .C(hundres_1__N_307[1]), 
         .D(n11642), .Z(\sec_tens[1] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i4761_2_lut_4_lut_4_lut.init = 16'h936c;
    LUT4 i3428_2_lut_rep_520_4_lut_4_lut (.A(n38460), .B(hundres_1__N_307[2]), 
         .C(hundres_1__N_307[1]), .D(\hundres_0__N_313[0] ), .Z(n38425)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3428_2_lut_rep_520_4_lut_4_lut.init = 16'hff6c;
    LUT4 i4776_3_lut_4_lut (.A(n38429), .B(\hundres_0__N_313[0] ), .C(n11642), 
         .D(hundres_0__N_313[1]), .Z(\sec_tens[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4776_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i19059_3_lut_4_lut_4_lut (.A(n38426), .B(hundres_0__N_316[2]), 
         .C(hundres_0__N_316[1]), .D(sw1_c), .Z(n9147)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!C))) */ ;
    defparam i19059_3_lut_4_lut_4_lut.init = 16'h0058;
    LUT4 i4804_3_lut_rep_524_4_lut_3_lut_4_lut (.A(\sec[2] ), .B(n38473), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38429)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4804_3_lut_rep_524_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4782_2_lut_rep_527_4_lut_4_lut (.A(\sec[2] ), .B(n38473), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38432)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4782_2_lut_rep_527_4_lut_4_lut.init = 16'h554a;
    LUT4 i4797_2_lut_3_lut_3_lut_4_lut (.A(\sec[2] ), .B(n38473), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4797_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3308_3_lut_rep_556 (.A(\sec[2] ), .B(n38473), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38461)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3308_3_lut_rep_556.init = 16'hffe0;
    LUT4 i4790_3_lut_4_lut (.A(\sec[2] ), .B(n38473), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4790_3_lut_4_lut.init = 16'h998c;
    LUT4 i19054_4_lut_4_lut (.A(n38426), .B(hundres_0__N_316[2]), .C(hundres_0__N_316[1]), 
         .D(sw1_c), .Z(n9144)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B))) */ ;
    defparam i19054_4_lut_4_lut.init = 16'h006c;
    LUT4 i3311_3_lut_rep_515_4_lut (.A(\sec[1] ), .B(n38432), .C(hundres_0__N_316[1]), 
         .D(hundres_0__N_316[2]), .Z(n38420)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3311_3_lut_rep_515_4_lut.init = 16'hffe0;
    LUT4 sec_4__bdd_4_lut_28809 (.A(\sec[4] ), .B(\sec[5] ), .C(\sec[6] ), 
         .D(\sec[7] ), .Z(hundres_1__N_306[3])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam sec_4__bdd_4_lut_28809.init = 16'h83e0;
    LUT4 sec_4__bdd_4_lut_28810 (.A(\sec[4] ), .B(\sec[5] ), .C(\sec[6] ), 
         .D(\sec[7] ), .Z(n38504)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam sec_4__bdd_4_lut_28810.init = 16'h294a;
    LUT4 i3430_2_lut_rep_555_3_lut (.A(\sec[3] ), .B(n38494), .C(\sec[2] ), 
         .Z(n38460)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3430_2_lut_rep_555_3_lut.init = 16'hf6f6;
    LUT4 i4810_2_lut_3_lut_3_lut_4_lut (.A(n38682), .B(\sec[7] ), .C(hundres_1__N_306[3]), 
         .D(n38462), .Z(\hundres_0__N_313[0] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i4810_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i4818_3_lut_4_lut_3_lut_4_lut (.A(n38682), .B(\sec[7] ), .C(hundres_1__N_306[3]), 
         .D(n38462), .Z(hundres_0__N_313[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i4818_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i3438_2_lut_rep_777 (.A(\sec[5] ), .B(\sec[6] ), .Z(n38682)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3438_2_lut_rep_777.init = 16'heeee;
    LUT4 i3453_2_lut_rep_707_3_lut (.A(\sec[5] ), .B(\sec[6] ), .C(\sec[7] ), 
         .Z(n38612)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3453_2_lut_rep_707_3_lut.init = 16'he0e0;
    LUT4 sec_4__bdd_4_lut_28806 (.A(\sec[4] ), .B(\sec[5] ), .C(\sec[6] ), 
         .D(\sec[7] ), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C+(D))+!B !(D)))) */ ;
    defparam sec_4__bdd_4_lut_28806.init = 16'h318c;
    LUT4 i4853_3_lut_rep_557_4_lut_3_lut_4_lut (.A(\sec[3] ), .B(n38504), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38462)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4853_3_lut_rep_557_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4831_2_lut_rep_568_4_lut_4_lut (.A(\sec[3] ), .B(n38504), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(n38473)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4831_2_lut_rep_568_4_lut_4_lut.init = 16'h554a;
    LUT4 i4846_2_lut_3_lut_3_lut_4_lut (.A(\sec[3] ), .B(n38504), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4846_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 sec_4__bdd_4_lut (.A(\sec[4] ), .B(\sec[5] ), .C(\sec[6] ), .D(\sec[7] ), 
         .Z(hundres_1__N_306[2])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam sec_4__bdd_4_lut.init = 16'h4210;
    LUT4 i3305_3_lut_rep_589 (.A(\sec[3] ), .B(n38504), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(n38494)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3305_3_lut_rep_589.init = 16'hffe0;
    LUT4 i4839_3_lut_4_lut (.A(\sec[3] ), .B(n38504), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4839_3_lut_4_lut.init = 16'h998c;
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (beep_c, sys_clk_c, \music_tone[4] , \music_tone[1] , 
            \music_tone[2] , \music_tone[3] , \music_tone[0] , GND_net, 
            sw2_c) /* synthesis syn_module_defined=1 */ ;
    output beep_c;
    input sys_clk_c;
    input \music_tone[4] ;
    input \music_tone[1] ;
    input \music_tone[2] ;
    input \music_tone[3] ;
    input \music_tone[0] ;
    input GND_net;
    input sw2_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/ending/top.v(3[8:15])
    
    wire piano_out_N_1503;
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/ending/beep.v(65[12:20])
    
    wire n3492;
    wire [17:0]n77;
    
    wire n38758, n38757, n38764, n38763, n38767, n38766, n38770, 
        n38769, n38774, n38773, n38777, n38776, n37584, n37583;
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/ending/beep.v(31[12:20])
    
    wire n38784, n38783, n38788, n38787, n38797, n38796, n39911, 
        n39910, n37921, n37920, n29, n34, n30;
    wire [17:0]n5393;
    
    wire n33585, n33584, n31, n28, n33583, n33582, n33581, n33580, 
        n33579, n33578, n33577, n38071, n38131, n38130, n5412, 
        n33442, n38070, n15, n33952, n33441, n38736, n38737, n33440, 
        n33439, n33438, n33437, n33436, n33435, n33434;
    
    FD1S3AX piano_out_20 (.D(piano_out_N_1503), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=469, LSE_RLINE=475 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i0.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38758)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38757)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfa4b;
    LUT4 i28112_4_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n38764)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam i28112_4_lut_then_4_lut.init = 16'hfcaa;
    LUT4 i28112_4_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n38763)) /* synthesis lut_function=(A (B+(C))+!A !(B+(D))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam i28112_4_lut_else_4_lut.init = 16'ha8b9;
    LUT4 i28151_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38767)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam i28151_4_lut_then_4_lut.init = 16'hafcc;
    LUT4 i28151_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n38766)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam i28151_4_lut_else_4_lut.init = 16'hefff;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38770)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hffbc;
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38769)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C)+!B !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hc9db;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38774)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38773)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38777)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n38776)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    PFUMX i28274 (.BLUT(n37584), .ALUT(n37583), .C0(\music_tone[3] ), 
          .Z(time_end[0]));
    LUT4 tone_4__I_0_Mux_4_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38784)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+!(C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_4_i31_then_4_lut.init = 16'hbab9;
    LUT4 tone_4__I_0_Mux_4_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n38783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C (D))+!B !(C))) */ ;
    defparam tone_4__I_0_Mux_4_i31_else_4_lut.init = 16'hcb8b;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n38788)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((C)+!B)) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfbd1;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n38787)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hf627;
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n38797)) /* synthesis lut_function=(A (B+(C))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hf9fc;
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n38796)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A ((C+(D))+!B)) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hf57b;
    FD1S3IX time_cnt_2904__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_2904__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n3492), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904__i1.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39911)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n39910)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    LUT4 music_tone_4__bdd_4_lut_28456 (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[3] ), .D(\music_tone[0] ), .Z(n37921)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam music_tone_4__bdd_4_lut_28456.init = 16'ha6b7;
    LUT4 music_tone_4__bdd_3_lut (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n37920)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut.init = 16'hecec;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_1503)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i11_4_lut (.A(n5393[1]), .B(n5393[6]), .C(n5393[16]), .D(n5393[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    CCU2D time_cnt_2904_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33585), .S0(n77[17]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_2904_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33584), .COUT(n33585), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_17.INJECT1_1 = "NO";
    LUT4 i16_4_lut (.A(n31), .B(n5393[5]), .C(n28), .D(n5393[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n5393[10]), .B(n5393[4]), .C(n5393[8]), .D(n5393[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n5393[14]), .B(n5393[17]), .C(n5393[15]), .D(n5393[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n5393[12]), .B(n5393[7]), .C(n5393[0]), .D(n5393[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    CCU2D time_cnt_2904_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33583), .COUT(n33584), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33582), .COUT(n33583), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33581), .COUT(n33582), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33580), .COUT(n33581), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33579), .COUT(n33580), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_7.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33578), .COUT(n33579), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33577), .COUT(n33578), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_2904_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_2904_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_2904_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n33577), .S1(n77[0]));   // c:/users/argon/desktop/verilog/ending/beep.v(75[15:30])
    defparam time_cnt_2904_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_2904_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_2904_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_2904_add_4_1.INJECT1_1 = "NO";
    LUT4 n18_bdd_4_lut_28591 (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38071)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam n18_bdd_4_lut_28591.init = 16'hd3cd;
    LUT4 n18_bdd_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), .C(\music_tone[1] ), 
         .D(\music_tone[2] ), .Z(n38131)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam n18_bdd_4_lut.init = 16'h302b;
    PFUMX i28593 (.BLUT(n38131), .ALUT(n38130), .C0(\music_tone[4] ), 
          .Z(time_end[1]));
    LUT4 i1112_2_lut (.A(n5412), .B(sw2_c), .Z(n3492)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(72[11] 76[5])
    defparam i1112_2_lut.init = 16'hbbbb;
    CCU2D add_1816_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33442), .S0(n5393[17]), .S1(n5412));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_19.INIT0 = 16'h5555;
    defparam add_1816_19.INIT1 = 16'h0000;
    defparam add_1816_19.INJECT1_0 = "NO";
    defparam add_1816_19.INJECT1_1 = "NO";
    PFUMX i28548 (.BLUT(n38071), .ALUT(n38070), .C0(\music_tone[4] ), 
          .Z(time_end[10]));
    LUT4 n10_bdd_4_lut_28435 (.A(\music_tone[0] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n37584)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam n10_bdd_4_lut_28435.init = 16'hae3f;
    LUT4 n18_bdd_4_lut_28547_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38070)) /* synthesis lut_function=(A (B+(D))+!A (B (D)+!B (C+(D)))) */ ;
    defparam n18_bdd_4_lut_28547_4_lut.init = 16'hff98;
    PFUMX tone_4__I_0_Mux_8_i31 (.BLUT(n15), .ALUT(n33952), .C0(\music_tone[4] ), 
          .Z(time_end[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=469, LSE_RLINE=475 */ ;
    CCU2D add_1816_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n33441), .COUT(n33442), .S0(n5393[15]), 
          .S1(n5393[16]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_17.INIT0 = 16'h5999;
    defparam add_1816_17.INIT1 = 16'h5555;
    defparam add_1816_17.INJECT1_0 = "NO";
    defparam add_1816_17.INJECT1_1 = "NO";
    PFUMX i28741 (.BLUT(n38736), .ALUT(n38737), .C0(\music_tone[0] ), 
          .Z(time_end[11]));
    CCU2D add_1816_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33440), .COUT(n33441), .S0(n5393[13]), 
          .S1(n5393[14]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_15.INIT0 = 16'h5999;
    defparam add_1816_15.INIT1 = 16'h5999;
    defparam add_1816_15.INJECT1_0 = "NO";
    defparam add_1816_15.INJECT1_1 = "NO";
    LUT4 n18_bdd_4_lut_28592_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n38130)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((D)+!C)) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam n18_bdd_4_lut_28592_4_lut.init = 16'hff85;
    LUT4 i19099_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[2] ), 
         .D(\music_tone[3] ), .Z(n15)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam i19099_4_lut_4_lut.init = 16'h5eff;
    LUT4 n10_bdd_4_lut_28273_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n37583)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam n10_bdd_4_lut_28273_4_lut.init = 16'hf6fa;
    LUT4 i2_2_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), .C(\music_tone[2] ), 
         .D(\music_tone[1] ), .Z(n33952)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;   // c:/users/argon/desktop/verilog/ending/beep.v(37[2] 62[9])
    defparam i2_2_lut_4_lut.init = 16'hecff;
    CCU2D add_1816_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33439), .COUT(n33440), .S0(n5393[11]), 
          .S1(n5393[12]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_13.INIT0 = 16'h5999;
    defparam add_1816_13.INIT1 = 16'h5999;
    defparam add_1816_13.INJECT1_0 = "NO";
    defparam add_1816_13.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38737)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hfe71;
    PFUMX i28453 (.BLUT(n37921), .ALUT(n37920), .C0(\music_tone[4] ), 
          .Z(time_end[3]));
    PFUMX i29368 (.BLUT(n39910), .ALUT(n39911), .C0(\music_tone[1] ), 
          .Z(time_end[15]));
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n38736)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hba27;
    CCU2D add_1816_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33438), .COUT(n33439), .S0(n5393[9]), 
          .S1(n5393[10]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_11.INIT0 = 16'h5999;
    defparam add_1816_11.INIT1 = 16'h5999;
    defparam add_1816_11.INJECT1_0 = "NO";
    defparam add_1816_11.INJECT1_1 = "NO";
    CCU2D add_1816_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33437), .COUT(n33438), .S0(n5393[7]), 
          .S1(n5393[8]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_9.INIT0 = 16'h5999;
    defparam add_1816_9.INIT1 = 16'h5999;
    defparam add_1816_9.INJECT1_0 = "NO";
    defparam add_1816_9.INJECT1_1 = "NO";
    CCU2D add_1816_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33436), .COUT(n33437), .S0(n5393[5]), 
          .S1(n5393[6]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_7.INIT0 = 16'h5999;
    defparam add_1816_7.INIT1 = 16'h5999;
    defparam add_1816_7.INJECT1_0 = "NO";
    defparam add_1816_7.INJECT1_1 = "NO";
    CCU2D add_1816_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33435), .COUT(n33436), .S0(n5393[3]), 
          .S1(n5393[4]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_5.INIT0 = 16'h5999;
    defparam add_1816_5.INIT1 = 16'h5999;
    defparam add_1816_5.INJECT1_0 = "NO";
    defparam add_1816_5.INJECT1_1 = "NO";
    CCU2D add_1816_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n33434), .COUT(n33435), .S0(n5393[1]), 
          .S1(n5393[2]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_3.INIT0 = 16'h5999;
    defparam add_1816_3.INIT1 = 16'h5999;
    defparam add_1816_3.INJECT1_0 = "NO";
    defparam add_1816_3.INJECT1_1 = "NO";
    CCU2D add_1816_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n33434), .S1(n5393[0]));   // c:/users/argon/desktop/verilog/ending/beep.v(72[14:32])
    defparam add_1816_1.INIT0 = 16'h0000;
    defparam add_1816_1.INIT1 = 16'h5999;
    defparam add_1816_1.INJECT1_0 = "NO";
    defparam add_1816_1.INJECT1_1 = "NO";
    PFUMX i28780 (.BLUT(n38796), .ALUT(n38797), .C0(\music_tone[0] ), 
          .Z(time_end[6]));
    PFUMX i28774 (.BLUT(n38787), .ALUT(n38788), .C0(\music_tone[0] ), 
          .Z(time_end[2]));
    PFUMX i28772 (.BLUT(n38783), .ALUT(n38784), .C0(\music_tone[0] ), 
          .Z(time_end[4]));
    PFUMX i28768 (.BLUT(n38776), .ALUT(n38777), .C0(\music_tone[0] ), 
          .Z(time_end[13]));
    PFUMX i28766 (.BLUT(n38773), .ALUT(n38774), .C0(\music_tone[0] ), 
          .Z(time_end[14]));
    PFUMX i28763 (.BLUT(n38769), .ALUT(n38770), .C0(\music_tone[0] ), 
          .Z(time_end[9]));
    PFUMX i28761 (.BLUT(n38766), .ALUT(n38767), .C0(\music_tone[2] ), 
          .Z(time_end[7]));
    PFUMX i28759 (.BLUT(n38763), .ALUT(n38764), .C0(\music_tone[0] ), 
          .Z(time_end[5]));
    PFUMX i28755 (.BLUT(n38757), .ALUT(n38758), .C0(\music_tone[0] ), 
          .Z(time_end[12]));
    
endmodule
//
// Verilog Description of module BCD_U7
//

module BCD_U7 (\ds18b20_data[6] , n38448, n38455, \ds18b20_data[7] , 
            \hundres_0__N_313[0] , \ds18b20_data[5] , \Tem_lower[3] , 
            n37, n12162, \Tem_lower[2] , \hundres_1__N_305[0] , \ds18b20_data[8] , 
            \hundres_1__N_305[1] , n38606, n38753) /* synthesis syn_module_defined=1 */ ;
    input \ds18b20_data[6] ;
    output n38448;
    output n38455;
    input \ds18b20_data[7] ;
    output \hundres_0__N_313[0] ;
    input \ds18b20_data[5] ;
    output \Tem_lower[3] ;
    output n37;
    output n12162;
    output \Tem_lower[2] ;
    input \hundres_1__N_305[0] ;
    input \ds18b20_data[8] ;
    input \hundres_1__N_305[1] ;
    output n38606;
    output n38753;
    
    
    wire n38500;
    wire [3:0]hundres_1__N_307;
    
    wire n38488;
    wire [3:0]hundres_0__N_316;
    
    wire n38567;
    wire [3:0]hundres_1__N_306;
    
    wire n38752, n38751, n39904, n38479, n38439, n38463;
    
    LUT4 i3635_2_lut_rep_543_3_lut_3_lut_4_lut (.A(\ds18b20_data[6] ), .B(n38500), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38448)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i3635_2_lut_rep_543_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3642_3_lut_rep_550_4_lut_3_lut_4_lut (.A(\ds18b20_data[6] ), .B(n38500), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38455)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i3642_3_lut_rep_550_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3376_3_lut_rep_583 (.A(\ds18b20_data[6] ), .B(n38500), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(n38488)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3376_3_lut_rep_583.init = 16'hffe0;
    LUT4 i3628_3_lut_4_lut (.A(\ds18b20_data[6] ), .B(n38500), .C(hundres_1__N_307[1]), 
         .D(hundres_1__N_307[2]), .Z(hundres_0__N_316[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i3628_3_lut_4_lut.init = 16'h998c;
    LUT4 i3669_2_lut_rep_595_4_lut_4_lut (.A(n38567), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(n38500)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3669_2_lut_rep_595_4_lut_4_lut.init = 16'h332c;
    LUT4 i3691_3_lut_4_lut_3_lut_4_lut (.A(n38567), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(\hundres_0__N_313[0] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3691_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4165_2_lut_rep_539_4_lut_4_lut_then_4_lut (.A(hundres_1__N_306[2]), 
         .B(hundres_1__N_306[1]), .C(n38567), .D(\ds18b20_data[6] ), .Z(n38752)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i4165_2_lut_rep_539_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i4165_2_lut_rep_539_4_lut_4_lut_else_4_lut (.A(hundres_1__N_306[2]), 
         .B(hundres_1__N_306[1]), .C(n38567), .D(\ds18b20_data[6] ), .Z(n38751)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i4165_2_lut_rep_539_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i3605_2_lut_rep_824 (.A(\ds18b20_data[6] ), .B(n38488), .C(\ds18b20_data[5] ), 
         .Z(n39904)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3605_2_lut_rep_824.init = 16'hf6f6;
    LUT4 i3377_3_lut_rep_534_4_lut (.A(hundres_1__N_307[1]), .B(n38479), 
         .C(hundres_0__N_316[1]), .D(n39904), .Z(n38439)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3377_3_lut_rep_534_4_lut.init = 16'hf666;
    LUT4 i3607_2_lut_3_lut_3_lut_4_lut (.A(hundres_1__N_307[1]), .B(n38479), 
         .C(hundres_0__N_316[1]), .D(n39904), .Z(\Tem_lower[3] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3607_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i91_2_lut_4_lut_4_lut (.A(n38463), .B(\ds18b20_data[5] ), .C(hundres_0__N_316[1]), 
         .D(n38448), .Z(n37)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i91_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i3609_2_lut_3_lut_2_lut_2_lut_4_lut (.A(\ds18b20_data[6] ), .B(n38488), 
         .C(\ds18b20_data[5] ), .D(hundres_0__N_316[1]), .Z(n12162)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3609_2_lut_3_lut_2_lut_2_lut_4_lut.init = 16'hf600;
    LUT4 i3600_3_lut_4_lut (.A(\ds18b20_data[6] ), .B(n38488), .C(\ds18b20_data[5] ), 
         .D(n38439), .Z(\Tem_lower[2] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3600_3_lut_4_lut.init = 16'h6966;
    LUT4 i3581_2_lut_rep_701_3_lut (.A(\hundres_1__N_305[0] ), .B(\ds18b20_data[8] ), 
         .C(\hundres_1__N_305[1] ), .Z(n38606)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3581_2_lut_rep_701_3_lut.init = 16'he0e0;
    LUT4 i3834_2_lut_rep_662_3_lut_3_lut (.A(\hundres_1__N_305[0] ), .B(\ds18b20_data[8] ), 
         .C(\hundres_1__N_305[1] ), .Z(n38567)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3834_2_lut_rep_662_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i3620_2_lut_rep_558_4_lut_4_lut (.A(\ds18b20_data[6] ), .B(n38500), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38463)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i3620_2_lut_rep_558_4_lut_4_lut.init = 16'h554a;
    LUT4 i10331_2_lut_rep_574_4_lut (.A(\ds18b20_data[6] ), .B(n38500), 
         .C(hundres_1__N_307[1]), .D(hundres_1__N_307[2]), .Z(n38479)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10331_2_lut_rep_574_4_lut.init = 16'heee0;
    LUT4 i12390_2_lut_3_lut (.A(\hundres_1__N_305[0] ), .B(\ds18b20_data[8] ), 
         .C(\hundres_1__N_305[1] ), .Z(hundres_1__N_306[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i12390_2_lut_3_lut.init = 16'h1010;
    LUT4 i3842_3_lut_4_lut_3_lut (.A(\hundres_1__N_305[0] ), .B(\ds18b20_data[8] ), 
         .C(\hundres_1__N_305[1] ), .Z(hundres_1__N_306[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3842_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i3684_2_lut_3_lut_3_lut_4_lut (.A(n38567), .B(\ds18b20_data[7] ), 
         .C(hundres_1__N_306[1]), .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3684_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3677_3_lut_4_lut (.A(n38567), .B(\ds18b20_data[7] ), .C(hundres_1__N_306[1]), 
         .D(hundres_1__N_306[2]), .Z(hundres_1__N_307[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/argon/desktop/verilog/ending/bcd.v(23[6] 24[23])
    defparam i3677_3_lut_4_lut.init = 16'h998a;
    PFUMX i28751 (.BLUT(n38751), .ALUT(n38752), .C0(\ds18b20_data[7] ), 
          .Z(n38753));
    
endmodule
