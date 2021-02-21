// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Feb 21 13:53:31 2021
//
// Verilog Description of module top
//

module top (sys_clk, sys_rst_n, switch_1, switch_2, uart_rxd, uart_txd, 
            beep, blink) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(1[8:11])
    input sys_clk;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    input switch_1;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    input switch_2;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    input uart_rxd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(9[21:29])
    output uart_txd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:29])
    output beep;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:25])
    output blink;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(14[21:26])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire GND_net, VCC_net, sys_rst_n_c, switch_1_c, switch_2_c, uart_rxd_c, 
        beep_c, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(27[13:27])
    wire [7:0]music_tone;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(36[13:23])
    wire [8:0]music_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(44[11:20])
    
    wire n113, n3166;
    
    VHI i2635 (.Z(VCC_net));
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(9[21:29])
    IB switch_2_pad (.I(switch_2), .O(switch_2_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    IB switch_1_pad (.I(switch_1), .O(switch_1_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    ROM128X1A mux_75_Mux_2 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n113)) /* synthesis initstate=0x000000005994949451139113B7139113 */ ;
    defparam mux_75_Mux_2.initval = 128'h000000005994949451139113B7139113;
    OB blink_pad (.I(GND_net), .O(blink));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(14[21:26])
    LUT4 m1_lut (.Z(n3166)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:25])
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), .GND_net(GND_net), 
            .\uart_recv_data[0] (uart_recv_data[0]), .\uart_recv_data[4] (uart_recv_data[4]), 
            .\uart_recv_data[3] (uart_recv_data[3]), .\uart_recv_data[2] (uart_recv_data[2]), 
            .\uart_recv_data[1] (uart_recv_data[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(48[1] 55[6])
    OB uart_txd_pad (.I(GND_net), .O(uart_txd));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:29])
    GSR GSR_INST (.GSR(sys_rst_n_c));
    music_play m_music_play (.music_cnt({Open_0, Open_1, music_cnt[6:0]}), 
            .sys_clk_c(sys_clk_c), .\music_tone[0] (music_tone[0]), .uart_recv_done(uart_recv_done), 
            .GND_net(GND_net), .switch_2_c(switch_2_c), .sys_rst_n_c(sys_rst_n_c), 
            .\uart_recv_data[0] (uart_recv_data[0]), .n3166(n3166), .\music_tone[1] (music_tone[1]), 
            .\music_tone[4] (music_tone[4]), .\uart_recv_data[3] (uart_recv_data[3]), 
            .n113(n113), .\uart_recv_data[2] (uart_recv_data[2]), .\uart_recv_data[1] (uart_recv_data[1]), 
            .\music_tone[3] (music_tone[3]), .\music_tone[2] (music_tone[2]), 
            .\uart_recv_data[4] (uart_recv_data[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(73[13] 85[6])
    Beeper m_beep (.beep_c(beep_c), .sys_clk_c(sys_clk_c), .GND_net(GND_net), 
           .\music_tone[0] (music_tone[0]), .\music_tone[1] (music_tone[1]), 
           .\music_tone[2] (music_tone[2]), .\music_tone[3] (music_tone[3]), 
           .\music_tone[4] (music_tone[4]), .switch_1_c(switch_1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(57[9] 63[2])
    
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
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, uart_recv_done, 
            uart_rxd_c, GND_net, \uart_recv_data[0] , \uart_recv_data[4] , 
            \uart_recv_data[3] , \uart_recv_data[2] , \uart_recv_data[1] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output uart_recv_done;
    input uart_rxd_c;
    input GND_net;
    output \uart_recv_data[0] ;
    output \uart_recv_data[4] ;
    output \uart_recv_data[3] ;
    output \uart_recv_data[2] ;
    output \uart_recv_data[1] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire rx_flag, n1535, uart_data_7__N_67, uart_rxd_d0;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(43[12:18])
    
    wire sys_clk_c_enable_6, n627, n1451, n2444;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    wire [15:0]n69;
    
    wire n2445, n2443;
    wire [15:0]n44;
    
    wire sys_clk_c_enable_63, sys_clk_c_enable_69, n1454, n1442, n1445, 
        n1536, n2442, uart_rxd_d1, n2503, n3039, n3035, rx_flag_N_68, 
        n3026, n2717, n6, n3041, n3034, n2764, n1542, n3030, 
        n2015, n2761, n2763, n1428, n2441, n2440, n15, n14, 
        n2751, n2808, n2483, n1448, n2447, n2446;
    
    FD1S3AX rx_flag_56 (.D(n1535), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_67), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n1451), .SP(sys_clk_c_enable_6), .CD(n627), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    CCU2D clk_cnt_312_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2444), .COUT(n2445), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_312_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_312_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2443), .COUT(n2444), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_312_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_9.INJECT1_1 = "NO";
    FD1P3JX rx_cnt_FSM_i0 (.D(n44[15]), .SP(sys_clk_c_enable_63), .PD(n627), 
            .CK(sys_clk_c), .Q(n44[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n1454), .SP(sys_clk_c_enable_69), .CD(n627), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n1442), .SP(sys_clk_c_enable_69), .CD(n627), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n1445), .SP(sys_clk_c_enable_69), .CD(n627), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n1536), 
            .Q(\uart_recv_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    CCU2D clk_cnt_312_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2442), .COUT(n2443), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_312_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[4]), .C(n44[5]), .D(n2503), 
         .Z(n1451)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i1_2_lut_rep_63 (.A(n44[2]), .B(n44[3]), .Z(n3039)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_63.init = 16'heeee;
    LUT4 i1_2_lut_rep_59_3_lut (.A(n44[2]), .B(n44[3]), .C(n44[1]), .Z(n3035)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_59_3_lut.init = 16'hfefe;
    LUT4 i1223_4_lut (.A(uart_data_7__N_67), .B(rx_flag_N_68), .C(rx_flag), 
         .D(n3026), .Z(n1535)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i1223_4_lut.init = 16'hfcdc;
    LUT4 i4_4_lut_rep_50 (.A(clk_cnt[0]), .B(n2717), .C(clk_cnt[4]), .D(n6), 
         .Z(n3026)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i4_4_lut_rep_50.init = 16'hffef;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_68)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_rep_65 (.A(n44[8]), .B(n44[7]), .C(n44[6]), .Z(n3041)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i2_3_lut_rep_65.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n44[4]), .B(n3034), .C(n44[2]), .D(n44[1]), 
         .Z(n2764)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_58_4_lut (.A(n44[8]), .B(n44[7]), .C(n44[6]), .D(n44[5]), 
         .Z(n3034)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_58_4_lut.init = 16'hfffe;
    FD1S3IX clk_cnt_312__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n1542), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_54_3_lut (.A(n44[5]), .B(n3041), .C(n44[4]), .Z(n3030)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_54_3_lut.init = 16'hfefe;
    FD1S3IX clk_cnt_312__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n1542), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n1542), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n1542), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n1542), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n1542), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i2.GSR = "ENABLED";
    LUT4 i2539_3_lut_rep_47_3_lut_4_lut (.A(n44[4]), .B(n3034), .C(n3035), 
         .D(n3026), .Z(sys_clk_c_enable_69)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i2539_3_lut_rep_47_3_lut_4_lut.init = 16'h00fe;
    FD1S3IX clk_cnt_312__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i1.GSR = "ENABLED";
    LUT4 i2508_4_lut (.A(clk_cnt[0]), .B(clk_cnt[4]), .C(n2015), .D(n2717), 
         .Z(sys_clk_c_enable_63)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i2508_4_lut.init = 16'h0020;
    LUT4 i1706_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n2015)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1706_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_20 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n44[4]), 
         .D(n2761), .Z(n1454)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_20.init = 16'heca0;
    LUT4 i1_4_lut_adj_21 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n44[3]), 
         .D(n2764), .Z(n1442)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_21.init = 16'heca0;
    LUT4 i1_4_lut_adj_22 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n44[2]), 
         .D(n2763), .Z(n1445)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_22.init = 16'heca0;
    LUT4 i2_4_lut (.A(n1428), .B(clk_cnt[2]), .C(clk_cnt[3]), .D(clk_cnt[5]), 
         .Z(n2717)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'hfbff;
    LUT4 i1224_1_lut (.A(uart_data_7__N_67), .Z(n1536)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam i1224_1_lut.init = 16'h5555;
    LUT4 i2536_2_lut_4_lut_4_lut (.A(n3026), .B(rx_flag), .C(n3030), .D(n3035), 
         .Z(sys_clk_c_enable_6)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(128[13:30])
    defparam i2536_2_lut_4_lut_4_lut.init = 16'h7773;
    FD1P3IX rx_cnt_FSM_i15 (.D(n44[14]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    CCU2D clk_cnt_312_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2441), .COUT(n2442), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_312_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_312_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2440), .COUT(n2441), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_312_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_312_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2440), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_312_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_312_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(n44[4]), .B(n3034), .C(n44[3]), 
         .D(n44[1]), .Z(n2763)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[13]), .C(n14), .D(clk_cnt[8]), 
         .Z(n1428)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[14]), .B(clk_cnt[15]), .C(clk_cnt[9]), .D(clk_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(n44[1]), .B(n3039), .C(n3041), 
         .D(n44[5]), .Z(n2761)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(n44[1]), .B(n3039), .C(n3041), .D(n44[4]), 
         .Z(n2503)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[10]), .C(clk_cnt[11]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i5_3_lut.init = 16'hfefe;
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_25 (.A(n44[5]), .B(n3041), .C(n3039), 
         .D(n44[4]), .Z(n2751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_25.init = 16'hfffe;
    FD1P3IX rx_cnt_FSM_i14 (.D(n44[13]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n44[12]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n44[11]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n44[10]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_67), .SP(sys_clk_c_enable_63), 
            .CD(n627), .CK(sys_clk_c), .Q(n44[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n44[8]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(uart_data_7__N_67));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n44[7]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(86[13:34])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX rx_cnt_FSM_i7 (.D(n44[6]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n44[5]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n44[4]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n44[3]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n44[2]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n44[1]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n44[0]), .SP(sys_clk_c_enable_63), .CD(n627), 
            .CK(sys_clk_c), .Q(n44[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n1536), 
            .Q(\uart_recv_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n1536), 
            .Q(\uart_recv_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    LUT4 i2513_4_lut (.A(n1428), .B(clk_cnt[6]), .C(rx_flag), .D(n2808), 
         .Z(n1542)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(92[9:26])
    defparam i2513_4_lut.init = 16'hefaf;
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n1536), 
            .Q(\uart_recv_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    LUT4 i2445_4_lut (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n2483), .D(clk_cnt[3]), 
         .Z(n2808)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2445_4_lut.init = 16'hccc8;
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n2483)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n1536), 
            .Q(\uart_recv_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_26 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n44[1]), 
         .D(n2751), .Z(n1448)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_26.init = 16'heca0;
    FD1P3IX rxdata__i0 (.D(n1448), .SP(sys_clk_c_enable_69), .CD(n627), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=55 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    FD1S3IX clk_cnt_312__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n1542), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312__i0.GSR = "ENABLED";
    LUT4 i347_1_lut (.A(rx_flag), .Z(n627)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i347_1_lut.init = 16'h5555;
    CCU2D clk_cnt_312_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2447), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_312_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_cnt_312_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2446), .COUT(n2447), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_312_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_312_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2445), .COUT(n2446), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_312_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_312_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_312_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_312_add_4_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module music_play
//

module music_play (music_cnt, sys_clk_c, \music_tone[0] , uart_recv_done, 
            GND_net, switch_2_c, sys_rst_n_c, \uart_recv_data[0] , n3166, 
            \music_tone[1] , \music_tone[4] , \uart_recv_data[3] , n113, 
            \uart_recv_data[2] , \uart_recv_data[1] , \music_tone[3] , 
            \music_tone[2] , \uart_recv_data[4] ) /* synthesis syn_module_defined=1 */ ;
    output [8:0]music_cnt;
    input sys_clk_c;
    output \music_tone[0] ;
    input uart_recv_done;
    input GND_net;
    input switch_2_c;
    input sys_rst_n_c;
    input \uart_recv_data[0] ;
    input n3166;
    output \music_tone[1] ;
    output \music_tone[4] ;
    input \uart_recv_data[3] ;
    input n113;
    input \uart_recv_data[2] ;
    input \uart_recv_data[1] ;
    output \music_tone[3] ;
    output \music_tone[2] ;
    input \uart_recv_data[4] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n2816;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(46[13:20])
    
    wire sys_clk_c_enable_78, sys_clk_c_enable_74;
    wire [15:0]n412;
    wire [8:0]n108;
    
    wire sys_clk_c_enable_65;
    wire [7:0]music_tone_7__N_386;
    
    wire recv_done_d1, recv_done_d0;
    wire [4:0]state;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(38[11:16])
    
    wire sys_clk_c_enable_27, n2564;
    wire [7:0]cnt_run;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(33[11:18])
    
    wire n3161, n2432, n2431;
    wire [15:0]cnt_delay;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(41[12:21])
    wire [15:0]n371;
    
    wire n2430, n2429, n2428, n2427, n2426, n2420;
    wire [8:0]n280;
    
    wire n2421, n2419, n3040, sys_clk_c_enable_28;
    wire [7:0]n119;
    
    wire n3033, n3054, n2418, sys_clk_c_enable_42, n1539, n2417, 
        n2416;
    wire [2:0]state_back;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(39[12:22])
    
    wire sys_clk_c_enable_9, n1714, n3031, n3055, n6, n3037, n3027, 
        n2738, n1330, n1544, n2814, n10, n31, n3045, n115, n8, 
        n4, sys_clk_c_enable_20, n2756, n3025, n3029, n2741, sys_clk_c_enable_25, 
        sys_clk_c_enable_18, sys_clk_c_enable_19, sys_clk_c_enable_21, 
        n369, sys_clk_c_enable_22, n3056, sys_clk_c_enable_24, n521, 
        n2788, n2540, n2771, n7, n5, n2731, n3022, n2425, n8_adj_462, 
        n8_adj_463, n2471, n2470, n8_adj_464, n8_adj_465;
    wire [8:0]music_cnt_c;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(44[11:20])
    
    wire n2424, n2736, n3047, n8_adj_466, n4_adj_467, n2820, n2469, 
        n2415, n2439, n4_adj_468, n2468, n2438, n2467, n2466, 
        n2437, n2422, n2436, n2527, n12, n8_adj_469, n15, n14, 
        n2435, n2434, n2433;
    
    LUT4 i2453_4_lut (.A(music_cnt[6]), .B(music_cnt[3]), .C(music_cnt[0]), 
         .D(music_cnt[2]), .Z(n2816)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2453_4_lut.init = 16'h8000;
    FD1P3IX clk_cnt_i0_i8 (.D(n412[8]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i8.GSR = "DISABLED";
    ROM128X1A mux_75_Mux_5 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n108[6])) /* synthesis initstate=0x00000000CE03DFDF44DCF5DC48DCF5DC */ ;
    defparam mux_75_Mux_5.initval = 128'h00000000CE03DFDF44DCF5DC48DCF5DC;
    FD1P3AX music_tone_i0_i0 (.D(music_tone_7__N_386[0]), .SP(sys_clk_c_enable_65), 
            .CK(sys_clk_c), .Q(\music_tone[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_tone_i0_i0.GSR = "DISABLED";
    ROM128X1A mux_75_Mux_3 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n108[5])) /* synthesis initstate=0x0000000091DC0303010384C3F70384C3 */ ;
    defparam mux_75_Mux_3.initval = 128'h0000000091DC0303010384C3F70384C3;
    FD1S3AX recv_done_d1_578 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(62[10] 65[8])
    defparam recv_done_d1_578.GSR = "ENABLED";
    FD1P3IX clk_cnt_i0_i9 (.D(n412[9]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i9.GSR = "DISABLED";
    FD1P3AX state_i0_i0 (.D(n2564), .SP(sys_clk_c_enable_27), .CK(sys_clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1S3AX recv_done_d0_577 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(62[10] 65[8])
    defparam recv_done_d0_577.GSR = "ENABLED";
    FD1P3IX clk_cnt_i0_i10 (.D(n412[10]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i10.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_72 (.A(cnt_run[7]), .B(cnt_run[6]), .Z(n3161)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_72.init = 16'heeee;
    CCU2D add_146_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2432), .S1(n412[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_1.INIT0 = 16'hF000;
    defparam add_146_1.INIT1 = 16'h5555;
    defparam add_146_1.INJECT1_0 = "NO";
    defparam add_146_1.INJECT1_1 = "NO";
    CCU2D add_143_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2431), .S0(n371[15]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_17.INIT0 = 16'h5aaa;
    defparam add_143_17.INIT1 = 16'h0000;
    defparam add_143_17.INJECT1_0 = "NO";
    defparam add_143_17.INJECT1_1 = "NO";
    CCU2D add_143_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2430), .COUT(n2431), .S0(n371[13]), .S1(n371[14]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_15.INIT0 = 16'h5aaa;
    defparam add_143_15.INIT1 = 16'h5aaa;
    defparam add_143_15.INJECT1_0 = "NO";
    defparam add_143_15.INJECT1_1 = "NO";
    CCU2D add_143_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2429), .COUT(n2430), .S0(n371[11]), .S1(n371[12]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_13.INIT0 = 16'h5aaa;
    defparam add_143_13.INIT1 = 16'h5aaa;
    defparam add_143_13.INJECT1_0 = "NO";
    defparam add_143_13.INJECT1_1 = "NO";
    CCU2D add_143_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2428), .COUT(n2429), .S0(n371[9]), .S1(n371[10]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_11.INIT0 = 16'h5aaa;
    defparam add_143_11.INIT1 = 16'h5aaa;
    defparam add_143_11.INJECT1_0 = "NO";
    defparam add_143_11.INJECT1_1 = "NO";
    CCU2D add_143_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2427), .COUT(n2428), .S0(n371[7]), .S1(n371[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_9.INIT0 = 16'h5aaa;
    defparam add_143_9.INIT1 = 16'h5aaa;
    defparam add_143_9.INJECT1_0 = "NO";
    defparam add_143_9.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_i0_i11 (.D(n412[11]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i11.GSR = "DISABLED";
    CCU2D add_143_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2426), .COUT(n2427), .S0(n371[5]), .S1(n371[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_7.INIT0 = 16'h5aaa;
    defparam add_143_7.INIT1 = 16'h5aaa;
    defparam add_143_7.INJECT1_0 = "NO";
    defparam add_143_7.INJECT1_1 = "NO";
    CCU2D add_128_5 (.A0(music_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2420), .COUT(n2421), .S0(n280[3]), .S1(n280[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(261[23:39])
    defparam add_128_5.INIT0 = 16'h5aaa;
    defparam add_128_5.INIT1 = 16'h5aaa;
    defparam add_128_5.INJECT1_0 = "NO";
    defparam add_128_5.INJECT1_1 = "NO";
    CCU2D add_128_3 (.A0(music_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2419), .COUT(n2420), .S0(n280[1]), .S1(n280[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(261[23:39])
    defparam add_128_3.INIT0 = 16'h5aaa;
    defparam add_128_3.INIT1 = 16'h5aaa;
    defparam add_128_3.INJECT1_0 = "NO";
    defparam add_128_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(n3040), .B(switch_2_c), .C(state[1]), .D(state[0]), 
         .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(86[7] 302[5])
    defparam i2_3_lut_4_lut.init = 16'h0400;
    LUT4 i16_4_lut_else_4_lut_4_lut (.A(cnt_run[7]), .B(cnt_run[6]), .C(n119[1]), 
         .D(n3033), .Z(n3054)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i16_4_lut_else_4_lut_4_lut.init = 16'h0010;
    CCU2D add_128_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2419), .S1(n280[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(261[23:39])
    defparam add_128_1.INIT0 = 16'hF000;
    defparam add_128_1.INIT1 = 16'h5555;
    defparam add_128_1.INJECT1_0 = "NO";
    defparam add_128_1.INJECT1_1 = "NO";
    CCU2D add_110_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2418), 
          .S0(n119[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(241[17:29])
    defparam add_110_9.INIT0 = 16'h5aaa;
    defparam add_110_9.INIT1 = 16'h0000;
    defparam add_110_9.INJECT1_0 = "NO";
    defparam add_110_9.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i0 (.D(n280[0]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i0.GSR = "DISABLED";
    CCU2D add_110_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2417), .COUT(n2418), .S0(n119[5]), .S1(n119[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(241[17:29])
    defparam add_110_7.INIT0 = 16'h5aaa;
    defparam add_110_7.INIT1 = 16'h5aaa;
    defparam add_110_7.INJECT1_0 = "NO";
    defparam add_110_7.INJECT1_1 = "NO";
    CCU2D add_110_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2416), .COUT(n2417), .S0(n119[3]), .S1(n119[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(241[17:29])
    defparam add_110_5.INIT0 = 16'h5aaa;
    defparam add_110_5.INIT1 = 16'h5aaa;
    defparam add_110_5.INJECT1_0 = "NO";
    defparam add_110_5.INJECT1_1 = "NO";
    FD1P3AX state_back_i0_i0 (.D(n1714), .SP(sys_clk_c_enable_9), .CK(sys_clk_c), 
            .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i12 (.D(n412[12]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i12.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i13 (.D(n412[13]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i13.GSR = "DISABLED";
    LUT4 i16_4_lut_then_4_lut (.A(cnt_run[0]), .B(n3161), .C(n3033), .D(n3031), 
         .Z(n3055)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i16_4_lut_then_4_lut.init = 16'hfeff;
    LUT4 i2_2_lut_3_lut (.A(cnt_run[7]), .B(cnt_run[6]), .C(cnt_run[5]), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut (.A(n3037), .B(n3027), .C(cnt_run[4]), .D(cnt_run[0]), 
         .Z(n2738)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(258[12:30])
    defparam i1_3_lut_4_lut.init = 16'h0004;
    LUT4 i2435_2_lut_rep_61_3_lut (.A(cnt_run[7]), .B(cnt_run[6]), .C(cnt_run[5]), 
         .Z(n3037)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2435_2_lut_rep_61_3_lut.init = 16'hfefe;
    FD1P3AX cnt_run_i0_i7 (.D(n1330), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(cnt_run[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n371[6]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i6.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(sys_rst_n_c), .B(n3040), .C(n2814), .D(n10), .Z(sys_clk_c_enable_65)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'h8a88;
    LUT4 i1_2_lut_rep_48_4_lut (.A(state[0]), .B(sys_clk_c_enable_9), .C(state[1]), 
         .D(n31), .Z(sys_clk_c_enable_74)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_rep_48_4_lut.init = 16'h0040;
    LUT4 i2451_2_lut_3_lut_4_lut (.A(cnt_run[7]), .B(cnt_run[6]), .C(n3045), 
         .D(cnt_run[5]), .Z(n2814)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2451_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(cnt_run[1]), .B(switch_2_c), .C(cnt_run[4]), .D(n115), 
         .Z(n10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i4_4_lut.init = 16'h0004;
    LUT4 recv_done_flag_I_0_2_lut_rep_64 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(n3040)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(54[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_64.init = 16'h4444;
    LUT4 i1150_4_lut (.A(sys_clk_c_enable_28), .B(n115), .C(n8), .D(n4), 
         .Z(sys_clk_c_enable_20)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1150_4_lut.init = 16'ha2a0;
    LUT4 mux_362_i1_4_lut (.A(n108[3]), .B(\uart_recv_data[0] ), .C(n3040), 
         .D(switch_2_c), .Z(music_tone_7__N_386[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(86[7] 302[5])
    defparam mux_362_i1_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_49_3_lut_4_lut (.A(n3161), .B(n3033), .C(n2756), 
         .D(cnt_run[1]), .Z(n3025)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_rep_49_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_56_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), 
         .C(sys_rst_n_c), .D(switch_2_c), .Z(sys_clk_c_enable_9)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(54[25:55])
    defparam i1_2_lut_rep_56_3_lut_4_lut.init = 16'hb000;
    ROM128X1A mux_75_Mux_1 (.AD0(music_cnt[0]), .AD1(music_cnt[1]), .AD2(music_cnt[2]), 
            .AD3(music_cnt[3]), .AD4(music_cnt[4]), .AD5(music_cnt[5]), 
            .AD6(music_cnt[6]), .DO0(n108[3])) /* synthesis initstate=0x00000000054D4A4A014A244A954A244A */ ;
    defparam mux_75_Mux_1.initval = 128'h00000000054D4A4A014A244A954A244A;
    LUT4 i2_3_lut (.A(cnt_run[3]), .B(cnt_run[2]), .C(cnt_run[0]), .Z(n115)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_run[1]), .B(n3029), .C(switch_2_c), 
         .D(n2756), .Z(n2741)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1747_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(sys_rst_n_c), 
         .D(switch_2_c), .Z(sys_clk_c_enable_25)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(54[25:55])
    defparam i1747_3_lut_4_lut.init = 16'hf040;
    FD1P3AX cnt_run_i0_i6 (.D(n3166), .SP(sys_clk_c_enable_18), .CK(sys_clk_c), 
            .Q(cnt_run[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i5 (.D(n3166), .SP(sys_clk_c_enable_19), .CK(sys_clk_c), 
            .Q(cnt_run[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i4 (.D(n3166), .SP(sys_clk_c_enable_20), .CK(sys_clk_c), 
            .Q(cnt_run[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i3 (.D(n3166), .SP(sys_clk_c_enable_21), .CK(sys_clk_c), 
            .Q(cnt_run[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i3.GSR = "ENABLED";
    LUT4 i1245_2_lut_3_lut (.A(sys_clk_c_enable_78), .B(n31), .C(n369), 
         .Z(n1544)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1245_2_lut_3_lut.init = 16'h2020;
    LUT4 i2517_2_lut_rep_60_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(switch_2_c), 
         .Z(sys_clk_c_enable_27)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(54[25:55])
    defparam i2517_2_lut_rep_60_3_lut.init = 16'hb0b0;
    FD1P3AX cnt_run_i0_i2 (.D(n3166), .SP(sys_clk_c_enable_22), .CK(sys_clk_c), 
            .Q(cnt_run[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i0_i1 (.D(n3056), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(cnt_run[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i1.GSR = "ENABLED";
    FD1P3AX music_tone_i0_i1 (.D(music_tone_7__N_386[1]), .SP(sys_clk_c_enable_24), 
            .CK(sys_clk_c), .Q(\music_tone[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_tone_i0_i1.GSR = "DISABLED";
    LUT4 i2511_2_lut_2_lut (.A(n3031), .B(sys_clk_c_enable_42), .Z(n1539)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2511_2_lut_2_lut.init = 16'h4444;
    FD1P3AX music_tone_i0_i4 (.D(music_tone_7__N_386[4]), .SP(sys_clk_c_enable_25), 
            .CK(sys_clk_c), .Q(\music_tone[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_tone_i0_i4.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_51 (.A(cnt_run[1]), .B(n3031), .Z(n3027)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(258[12:30])
    defparam i1_2_lut_rep_51.init = 16'h2222;
    FD1P3IX cnt_delay_i0_i10 (.D(n371[10]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i10.GSR = "DISABLED";
    LUT4 i1403_4_lut (.A(state[0]), .B(state_back[0]), .C(state[1]), .D(n521), 
         .Z(n1714)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(38[11:16])
    defparam i1403_4_lut.init = 16'hc8ca;
    LUT4 i2425_3_lut_4_lut (.A(n369), .B(n31), .C(state_back[0]), .D(state[0]), 
         .Z(n2788)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(292[26] 295[24])
    defparam i2425_3_lut_4_lut.init = 16'hff20;
    FD1P3AX state_i0_i1 (.D(n2540), .SP(sys_clk_c_enable_27), .CK(sys_clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam state_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(cnt_run[1]), .B(n3031), .C(cnt_run[4]), 
         .D(n3037), .Z(n4)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(258[12:30])
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h0020;
    FD1P3AX cnt_run_i0_i0 (.D(n2771), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .Q(cnt_run[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_run_i0_i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_run[1]), .B(n3031), .C(cnt_run[5]), 
         .D(cnt_run[4]), .Z(n7)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(258[12:30])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(cnt_run[1]), .B(n3031), .C(n115), 
         .D(cnt_run[4]), .Z(n5)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(258[12:30])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h0002;
    FD1P3IX cnt_delay_i0_i7 (.D(n371[7]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i7.GSR = "DISABLED";
    PFUMX i25 (.BLUT(n2731), .ALUT(n2788), .C0(state[1]), .Z(n2564));
    LUT4 mux_362_i4_4_lut (.A(n108[6]), .B(\uart_recv_data[3] ), .C(n3040), 
         .D(switch_2_c), .Z(music_tone_7__N_386[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(86[7] 302[5])
    defparam mux_362_i4_4_lut.init = 16'hcac0;
    FD1P3IX clk_cnt_i0_i14 (.D(n412[14]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i14.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i1 (.D(n280[1]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i1.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i15 (.D(n412[15]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i15.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i2 (.D(n280[2]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i2.GSR = "DISABLED";
    LUT4 i130_2_lut_rep_46 (.A(n369), .B(n31), .Z(n3022)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(292[26] 295[24])
    defparam i130_2_lut_rep_46.init = 16'h2222;
    CCU2D add_143_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2425), .COUT(n2426), .S0(n371[3]), .S1(n371[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_5.INIT0 = 16'h5aaa;
    defparam add_143_5.INIT1 = 16'h5aaa;
    defparam add_143_5.INJECT1_0 = "NO";
    defparam add_143_5.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i1 (.D(n371[1]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i1.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i3 (.D(n280[3]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_69 (.A(state[1]), .B(state[0]), .Z(n3045)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_rep_69.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n3161), .B(n3033), .C(n119[2]), 
         .D(cnt_run[1]), .Z(n8_adj_462)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(n3161), .B(n3033), .C(cnt_run[0]), 
         .D(cnt_run[1]), .Z(n521)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'hffef;
    LUT4 i1_2_lut_3_lut (.A(state[1]), .B(state[0]), .C(cnt_run[0]), .Z(n2756)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n3161), .B(n3033), .C(n119[5]), 
         .D(cnt_run[1]), .Z(n8_adj_463)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h0010;
    LUT4 sys_rst_n_c_bdd_4_lut (.A(sys_rst_n_c), .B(n3040), .C(switch_2_c), 
         .D(n3025), .Z(sys_clk_c_enable_24)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;
    defparam sys_rst_n_c_bdd_4_lut.init = 16'h88a8;
    CCU2D sub_212_add_2_14 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2471), .S1(n369));
    defparam sub_212_add_2_14.INIT0 = 16'h5555;
    defparam sub_212_add_2_14.INIT1 = 16'h0000;
    defparam sub_212_add_2_14.INJECT1_0 = "NO";
    defparam sub_212_add_2_14.INJECT1_1 = "NO";
    FD1P3IX music_cnt_i0_i4 (.D(n280[4]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i4.GSR = "DISABLED";
    CCU2D sub_212_add_2_12 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2470), .COUT(n2471));
    defparam sub_212_add_2_12.INIT0 = 16'h5555;
    defparam sub_212_add_2_12.INIT1 = 16'h5555;
    defparam sub_212_add_2_12.INJECT1_0 = "NO";
    defparam sub_212_add_2_12.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_10 (.A(cnt_run[1]), .B(n3029), .C(n119[7]), 
         .D(cnt_run[7]), .Z(n1330)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_3_lut_4_lut_adj_10.init = 16'hff10;
    FD1P3IX music_cnt_i0_i5 (.D(n280[5]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i5.GSR = "DISABLED";
    FD1P3IX music_cnt_i0_i6 (.D(n280[6]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i6.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_11 (.A(sys_clk_c_enable_28), .B(n7), .C(n8_adj_464), 
         .D(n8_adj_465), .Z(sys_clk_c_enable_18)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_11.init = 16'ha8a0;
    FD1P3IX music_cnt_i0_i7 (.D(n280[7]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i7.GSR = "DISABLED";
    CCU2D add_143_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2424), .COUT(n2425), .S0(n371[1]), .S1(n371[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_3.INIT0 = 16'h5aaa;
    defparam add_143_3.INIT1 = 16'h5aaa;
    defparam add_143_3.INJECT1_0 = "NO";
    defparam add_143_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(cnt_run[1]), .B(n3029), .C(n113), 
         .D(n2756), .Z(n2736)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'h0010;
    LUT4 mux_362_i3_4_lut (.A(n108[5]), .B(\uart_recv_data[2] ), .C(n3040), 
         .D(switch_2_c), .Z(music_tone_7__N_386[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(86[7] 302[5])
    defparam mux_362_i3_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut (.A(cnt_run[7]), .B(cnt_run[6]), .C(n3047), .D(cnt_run[0]), 
         .Z(n8_adj_465)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_71 (.A(cnt_run[2]), .B(cnt_run[3]), .Z(n3047)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_rep_71.init = 16'heeee;
    FD1P3IX cnt_delay_i0_i2 (.D(n371[2]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(n3161), .B(n3033), .C(n119[3]), 
         .D(cnt_run[1]), .Z(n8_adj_466)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'h0010;
    FD1P3IX music_cnt_i0_i8 (.D(n280[8]), .SP(sys_clk_c_enable_42), .CD(n1539), 
            .CK(sys_clk_c), .Q(music_cnt_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_cnt_i0_i8.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i1 (.D(n412[1]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_14 (.A(sys_clk_c_enable_28), .B(n2738), .C(n8_adj_466), 
         .D(n4_adj_467), .Z(sys_clk_c_enable_21)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_14.init = 16'ha8a0;
    FD1P3IX clk_cnt_i0_i2 (.D(n412[2]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i2.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_57_4_lut (.A(cnt_run[2]), .B(cnt_run[3]), .C(cnt_run[4]), 
         .D(cnt_run[5]), .Z(n3033)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i2_3_lut_rep_57_4_lut.init = 16'hfffe;
    LUT4 i1152_4_lut (.A(sys_clk_c_enable_28), .B(n8_adj_463), .C(n5), 
         .D(n6), .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1152_4_lut.init = 16'ha888;
    LUT4 i3_4_lut_rep_55 (.A(music_cnt[5]), .B(music_cnt_c[7]), .C(music_cnt_c[8]), 
         .D(n2820), .Z(n3031)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_rep_55.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(n3161), .B(n3033), .C(n119[6]), 
         .D(cnt_run[1]), .Z(n8_adj_464)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'h0010;
    FD1P3IX cnt_delay_i0_i11 (.D(n371[11]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i11.GSR = "DISABLED";
    CCU2D sub_212_add_2_10 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2469), .COUT(n2470));
    defparam sub_212_add_2_10.INIT0 = 16'h5555;
    defparam sub_212_add_2_10.INIT1 = 16'h5555;
    defparam sub_212_add_2_10.INJECT1_0 = "NO";
    defparam sub_212_add_2_10.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_52_4_lut (.A(sys_clk_c_enable_27), .B(sys_rst_n_c), 
         .C(state[1]), .D(state[0]), .Z(sys_clk_c_enable_78)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(86[7] 302[5])
    defparam i2_3_lut_rep_52_4_lut.init = 16'h0080;
    FD1P3IX clk_cnt_i0_i3 (.D(n412[3]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(cnt_run[3]), .B(cnt_run[2]), .Z(n4_adj_467)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    CCU2D add_110_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2415), .COUT(n2416), .S0(n119[1]), .S1(n119[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(241[17:29])
    defparam add_110_3.INIT0 = 16'h5aaa;
    defparam add_110_3.INIT1 = 16'h5aaa;
    defparam add_110_3.INJECT1_0 = "NO";
    defparam add_110_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(n3161), .B(n3033), .C(n119[4]), 
         .D(cnt_run[1]), .Z(n8)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'h0010;
    CCU2D add_146_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2439), 
          .S0(n412[15]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_17.INIT0 = 16'h5aaa;
    defparam add_146_17.INIT1 = 16'h0000;
    defparam add_146_17.INJECT1_0 = "NO";
    defparam add_146_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_53_4_lut (.A(cnt_run[5]), .B(cnt_run[4]), .C(n3047), 
         .D(n3161), .Z(n3029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1_2_lut_rep_53_4_lut.init = 16'hfffe;
    FD1P3IX cnt_delay_i0_i12 (.D(n371[12]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i12.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n371[13]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i13.GSR = "DISABLED";
    LUT4 i1146_4_lut (.A(sys_clk_c_enable_28), .B(n2738), .C(n8_adj_462), 
         .D(n4_adj_468), .Z(sys_clk_c_enable_22)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i1146_4_lut.init = 16'ha8a0;
    LUT4 i1_2_lut_adj_17 (.A(cnt_run[3]), .B(cnt_run[2]), .Z(n4_adj_468)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_17.init = 16'h4444;
    FD1P3IX clk_cnt_i0_i4 (.D(n412[4]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i4.GSR = "DISABLED";
    LUT4 mux_362_i2_4_lut (.A(switch_2_c), .B(\uart_recv_data[1] ), .C(n3040), 
         .D(n2736), .Z(music_tone_7__N_386[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(86[7] 302[5])
    defparam mux_362_i2_4_lut.init = 16'hcac0;
    LUT4 i2533_4_lut (.A(sys_clk_c_enable_9), .B(cnt_run[1]), .C(n3029), 
         .D(n2756), .Z(sys_clk_c_enable_42)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i2533_4_lut.init = 16'h0008;
    CCU2D sub_212_add_2_8 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2468), .COUT(n2469));
    defparam sub_212_add_2_8.INIT0 = 16'h5555;
    defparam sub_212_add_2_8.INIT1 = 16'h5555;
    defparam sub_212_add_2_8.INJECT1_0 = "NO";
    defparam sub_212_add_2_8.INJECT1_1 = "NO";
    CCU2D add_146_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2438), .COUT(n2439), .S0(n412[13]), .S1(n412[14]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_15.INIT0 = 16'h5aaa;
    defparam add_146_15.INIT1 = 16'h5aaa;
    defparam add_146_15.INJECT1_0 = "NO";
    defparam add_146_15.INJECT1_1 = "NO";
    CCU2D sub_212_add_2_6 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2467), .COUT(n2468));
    defparam sub_212_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_212_add_2_6.INIT1 = 16'h5555;
    defparam sub_212_add_2_6.INJECT1_0 = "NO";
    defparam sub_212_add_2_6.INJECT1_1 = "NO";
    FD1P3AX music_tone_i0_i3 (.D(music_tone_7__N_386[3]), .SP(sys_clk_c_enable_65), 
            .CK(sys_clk_c), .Q(\music_tone[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_tone_i0_i3.GSR = "DISABLED";
    FD1P3AX music_tone_i0_i2 (.D(music_tone_7__N_386[2]), .SP(sys_clk_c_enable_65), 
            .CK(sys_clk_c), .Q(\music_tone[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam music_tone_i0_i2.GSR = "DISABLED";
    LUT4 i2478_3_lut_4_lut (.A(cnt_run[1]), .B(n3029), .C(cnt_run[0]), 
         .D(n119[0]), .Z(n2771)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam i2478_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_362_i5_4_lut (.A(\music_tone[4] ), .B(\uart_recv_data[4] ), 
         .C(n3040), .D(n2741), .Z(music_tone_7__N_386[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(86[7] 302[5])
    defparam mux_362_i5_4_lut.init = 16'hcac0;
    LUT4 i2457_3_lut (.A(music_cnt[4]), .B(n2816), .C(music_cnt[1]), .Z(n2820)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2457_3_lut.init = 16'h8080;
    CCU2D sub_212_add_2_4 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2466), .COUT(n2467));
    defparam sub_212_add_2_4.INIT0 = 16'h5555;
    defparam sub_212_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_212_add_2_4.INJECT1_0 = "NO";
    defparam sub_212_add_2_4.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i3 (.D(n371[3]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i3.GSR = "DISABLED";
    CCU2D sub_212_add_2_2 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2466));
    defparam sub_212_add_2_2.INIT0 = 16'h5000;
    defparam sub_212_add_2_2.INIT1 = 16'h5555;
    defparam sub_212_add_2_2.INJECT1_0 = "NO";
    defparam sub_212_add_2_2.INJECT1_1 = "NO";
    CCU2D add_146_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2437), .COUT(n2438), .S0(n412[11]), .S1(n412[12]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_13.INIT0 = 16'h5aaa;
    defparam add_146_13.INIT1 = 16'h5aaa;
    defparam add_146_13.INJECT1_0 = "NO";
    defparam add_146_13.INJECT1_1 = "NO";
    CCU2D add_143_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2424), .S1(n371[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(290[42:58])
    defparam add_143_1.INIT0 = 16'hF000;
    defparam add_143_1.INIT1 = 16'h5555;
    defparam add_143_1.INJECT1_0 = "NO";
    defparam add_143_1.INJECT1_1 = "NO";
    CCU2D add_128_9 (.A0(music_cnt_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(music_cnt_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2422), .S0(n280[7]), .S1(n280[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(261[23:39])
    defparam add_128_9.INIT0 = 16'h5aaa;
    defparam add_128_9.INIT1 = 16'h5aaa;
    defparam add_128_9.INJECT1_0 = "NO";
    defparam add_128_9.INJECT1_1 = "NO";
    CCU2D add_146_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2436), .COUT(n2437), .S0(n412[9]), .S1(n412[10]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_11.INIT0 = 16'h5aaa;
    defparam add_146_11.INIT1 = 16'h5aaa;
    defparam add_146_11.INJECT1_0 = "NO";
    defparam add_146_11.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i4 (.D(n371[4]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i4.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n371[14]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i14.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(state[0]), .B(n521), .C(state[1]), .D(n3022), 
         .Z(n2540)) /* synthesis lut_function=(A ((C)+!B)+!A !((D)+!C)) */ ;
    defparam i2_4_lut.init = 16'ha2f2;
    LUT4 i1_4_lut_adj_18 (.A(n2527), .B(clk_cnt[11]), .C(n12), .D(n8_adj_469), 
         .Z(n31)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(283[24:45])
    defparam i1_4_lut_adj_18.init = 16'hbfff;
    CCU2D add_110_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2415), .S1(n119[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(241[17:29])
    defparam add_110_1.INIT0 = 16'hF000;
    defparam add_110_1.INIT1 = 16'h5555;
    defparam add_110_1.INJECT1_0 = "NO";
    defparam add_110_1.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i15 (.D(n371[15]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i15.GSR = "DISABLED";
    PFUMX i2595 (.BLUT(n3054), .ALUT(n3055), .C0(cnt_run[1]), .Z(n3056));
    FD1P3IX cnt_delay_i0_i8 (.D(n371[8]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i8.GSR = "DISABLED";
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[4]), .C(n14), .D(clk_cnt[8]), 
         .Z(n2527)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(283[24:45])
    defparam i8_4_lut.init = 16'hfffe;
    FD1P3IX cnt_delay_i0_i9 (.D(n371[9]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i9.GSR = "DISABLED";
    LUT4 i5_4_lut (.A(clk_cnt[10]), .B(clk_cnt[5]), .C(clk_cnt[13]), .D(clk_cnt[9]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    FD1P3IX cnt_delay_i0_i5 (.D(n371[5]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_19 (.A(clk_cnt[7]), .B(clk_cnt[6]), .Z(n8_adj_469)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'h8888;
    FD1P3IX cnt_delay_i0_i0 (.D(n371[0]), .SP(sys_clk_c_enable_74), .CD(n1544), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam cnt_delay_i0_i0.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i5 (.D(n412[5]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i5.GSR = "DISABLED";
    CCU2D add_146_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2435), .COUT(n2436), .S0(n412[7]), .S1(n412[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_9.INIT0 = 16'h5aaa;
    defparam add_146_9.INIT1 = 16'h5aaa;
    defparam add_146_9.INJECT1_0 = "NO";
    defparam add_146_9.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_i0_i6 (.D(n412[6]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i6.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i0 (.D(n412[0]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i0.GSR = "DISABLED";
    FD1P3IX clk_cnt_i0_i7 (.D(n412[7]), .SP(sys_clk_c_enable_78), .CD(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(clk_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=73, LSE_RLINE=85 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(79[10] 302[5])
    defparam clk_cnt_i0_i7.GSR = "DISABLED";
    LUT4 i6_4_lut (.A(clk_cnt[3]), .B(clk_cnt[0]), .C(clk_cnt[12]), .D(clk_cnt[14]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(283[24:45])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(clk_cnt[2]), .B(clk_cnt[1]), .C(clk_cnt[15]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(283[24:45])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i2521_4_lut (.A(cnt_run[0]), .B(state[0]), .C(n3029), .D(cnt_run[1]), 
         .Z(n2731)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2521_4_lut.init = 16'hfff7;
    CCU2D add_146_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2434), .COUT(n2435), .S0(n412[5]), .S1(n412[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_7.INIT0 = 16'h5aaa;
    defparam add_146_7.INIT1 = 16'h5aaa;
    defparam add_146_7.INJECT1_0 = "NO";
    defparam add_146_7.INJECT1_1 = "NO";
    CCU2D add_146_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2433), .COUT(n2434), .S0(n412[3]), .S1(n412[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_5.INIT0 = 16'h5aaa;
    defparam add_146_5.INIT1 = 16'h5aaa;
    defparam add_146_5.INJECT1_0 = "NO";
    defparam add_146_5.INJECT1_1 = "NO";
    CCU2D add_146_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2432), .COUT(n2433), .S0(n412[1]), .S1(n412[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(293[36:50])
    defparam add_146_3.INIT0 = 16'h5aaa;
    defparam add_146_3.INIT1 = 16'h5aaa;
    defparam add_146_3.INJECT1_0 = "NO";
    defparam add_146_3.INJECT1_1 = "NO";
    CCU2D add_128_7 (.A0(music_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(music_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2421), .COUT(n2422), .S0(n280[5]), .S1(n280[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music_player.v(261[23:39])
    defparam add_128_7.INIT0 = 16'h5aaa;
    defparam add_128_7.INIT1 = 16'h5aaa;
    defparam add_128_7.INJECT1_0 = "NO";
    defparam add_128_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (beep_c, sys_clk_c, GND_net, \music_tone[0] , \music_tone[1] , 
            \music_tone[2] , \music_tone[3] , \music_tone[4] , switch_1_c) /* synthesis syn_module_defined=1 */ ;
    output beep_c;
    input sys_clk_c;
    input GND_net;
    input \music_tone[0] ;
    input \music_tone[1] ;
    input \music_tone[2] ;
    input \music_tone[3] ;
    input \music_tone[4] ;
    input switch_1_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire piano_out_N_114, n2461;
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(65[12:20])
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(31[12:20])
    wire [17:0]n435;
    
    wire n2462, n2977, n3051, n2460, n2459, n2978, n2458, n2982, 
        n3163, n3162, n2931, n2930, n2457, n3058, n2983, n3057, 
        n2456;
    wire [17:0]n77;
    
    wire n3061, n187, n3060, n3064, n3063, n15, n29, n34, n30, 
        n3014, n3067, n3066, n31, n28, n3070, n2455, n3069, 
        n3073, n3072, n3049, n3076, n3075, n3079, n3078, n454, 
        n2454, n3048, n2510, n2453, n2452, n3013, n2451, n3052, 
        n2450, n2465, n2449, n2464, n2463, n2448;
    
    FD1S3AX piano_out_20 (.D(piano_out_N_114), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=63 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    CCU2D add_209_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2461), .COUT(n2462), .S0(n435[9]), .S1(n435[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_11.INIT0 = 16'h5999;
    defparam add_209_11.INIT1 = 16'h5999;
    defparam add_209_11.INJECT1_0 = "NO";
    defparam add_209_11.INJECT1_1 = "NO";
    LUT4 n21_bdd_4_lut_2565_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n2977)) /* synthesis lut_function=(A (B+(D))+!A (B (D)+!B (C+(D)))) */ ;
    defparam n21_bdd_4_lut_2565_4_lut.init = 16'hff98;
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n3051)) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_else_4_lut.init = 16'ha4f1;
    CCU2D add_209_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2460), .COUT(n2461), .S0(n435[7]), .S1(n435[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_9.INIT0 = 16'h5999;
    defparam add_209_9.INIT1 = 16'h5999;
    defparam add_209_9.INJECT1_0 = "NO";
    defparam add_209_9.INJECT1_1 = "NO";
    CCU2D add_209_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2459), .COUT(n2460), .S0(n435[5]), .S1(n435[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_7.INIT0 = 16'h5999;
    defparam add_209_7.INIT1 = 16'h5999;
    defparam add_209_7.INJECT1_0 = "NO";
    defparam add_209_7.INJECT1_1 = "NO";
    LUT4 n21_bdd_4_lut_2584 (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[2] ), 
         .D(\music_tone[3] ), .Z(n2978)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam n21_bdd_4_lut_2584.init = 16'hd3cd;
    CCU2D add_209_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2458), .COUT(n2459), .S0(n435[3]), .S1(n435[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_5.INIT0 = 16'h5999;
    defparam add_209_5.INIT1 = 16'h5999;
    defparam add_209_5.INJECT1_0 = "NO";
    defparam add_209_5.INJECT1_1 = "NO";
    LUT4 music_tone_4__bdd_3_lut (.A(\music_tone[2] ), .B(\music_tone[3] ), 
         .C(\music_tone[0] ), .Z(n2982)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam music_tone_4__bdd_3_lut.init = 16'hecec;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_then_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n3163)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 tone_4__I_0_Mux_15_i31_4_lut_else_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n3162)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_15_i31_4_lut_else_4_lut.init = 16'hc0c1;
    PFUMX i2543 (.BLUT(n2931), .ALUT(n2930), .C0(\music_tone[3] ), .Z(time_end[0]));
    CCU2D add_209_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2457), .COUT(n2458), .S0(n435[1]), .S1(n435[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_3.INIT0 = 16'h5999;
    defparam add_209_3.INIT1 = 16'h5999;
    defparam add_209_3.INJECT1_0 = "NO";
    defparam add_209_3.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n3058)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_then_4_lut.init = 16'hffbc;
    LUT4 music_tone_4__bdd_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[3] ), .D(\music_tone[0] ), .Z(n2983)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam music_tone_4__bdd_4_lut.init = 16'ha6b7;
    CCU2D add_209_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2457), .S1(n435[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_1.INIT0 = 16'h0000;
    defparam add_209_1.INIT1 = 16'h5999;
    defparam add_209_1.INJECT1_0 = "NO";
    defparam add_209_1.INJECT1_1 = "NO";
    PFUMX i2566 (.BLUT(n2978), .ALUT(n2977), .C0(\music_tone[4] ), .Z(time_end[10]));
    LUT4 tone_4__I_0_Mux_9_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n3057)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C)+!B !(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_9_i31_4_lut_else_4_lut.init = 16'hc9db;
    CCU2D time_cnt_313_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2456), .S0(n77[17]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_313_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_19.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_6_i31_then_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n3061)) /* synthesis lut_function=(A (B+(C))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam tone_4__I_0_Mux_6_i31_then_4_lut.init = 16'hf9fc;
    FD1S3IX time_cnt_313__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i0.GSR = "ENABLED";
    LUT4 tone_4__I_0_Mux_6_i31_else_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n3060)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A ((C+(D))+!B)) */ ;
    defparam tone_4__I_0_Mux_6_i31_else_4_lut.init = 16'hf57b;
    FD1S3IX time_cnt_313__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i17.GSR = "ENABLED";
    LUT4 i2519_4_lut_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n3064)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i2519_4_lut_then_4_lut.init = 16'hfcaa;
    LUT4 i2519_4_lut_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[1] ), .Z(n3063)) /* synthesis lut_function=(A (B+(C))+!A !(B+(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i2519_4_lut_else_4_lut.init = 16'ha8b9;
    LUT4 i1721_4_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), .C(\music_tone[2] ), 
         .D(\music_tone[3] ), .Z(n15)) /* synthesis lut_function=(!(A (C (D))+!A !(B+(C+!(D))))) */ ;
    defparam i1721_4_lut_4_lut.init = 16'h5eff;
    FD1S3IX time_cnt_313__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n187), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_313__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n187), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_114)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 n21_bdd_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), .C(\music_tone[1] ), 
         .D(\music_tone[2] ), .Z(n3014)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam n21_bdd_4_lut.init = 16'h302b;
    LUT4 i11_4_lut (.A(n435[1]), .B(n435[6]), .C(n435[16]), .D(n435[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 tone_4__I_0_Mux_12_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n3067)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_then_4_lut.init = 16'hfa93;
    LUT4 tone_4__I_0_Mux_12_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n3066)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_12_i31_else_4_lut.init = 16'hfa4b;
    LUT4 i16_4_lut (.A(n31), .B(n435[5]), .C(n28), .D(n435[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n435[10]), .B(n435[4]), .C(n435[8]), .D(n435[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 tone_4__I_0_Mux_4_i31_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n3070)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+!(C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_4_i31_then_4_lut.init = 16'hbab9;
    CCU2D time_cnt_313_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2455), .COUT(n2456), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_17.INJECT1_1 = "NO";
    LUT4 i13_4_lut (.A(n435[14]), .B(n435[17]), .C(n435[15]), .D(n435[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 tone_4__I_0_Mux_4_i31_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n3069)) /* synthesis lut_function=(A (B+!(C))+!A (B (C (D))+!B !(C))) */ ;
    defparam tone_4__I_0_Mux_4_i31_else_4_lut.init = 16'hcb8b;
    LUT4 tone_4__I_0_Mux_2_i31_then_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n3073)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((C)+!B)) */ ;
    defparam tone_4__I_0_Mux_2_i31_then_4_lut.init = 16'hfbd1;
    LUT4 tone_4__I_0_Mux_2_i31_else_4_lut (.A(\music_tone[1] ), .B(\music_tone[2] ), 
         .C(\music_tone[4] ), .D(\music_tone[3] ), .Z(n3072)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_2_i31_else_4_lut.init = 16'hf627;
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n3049)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_then_4_lut.init = 16'ha899;
    LUT4 tone_4__I_0_Mux_11_i31_then_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n3076)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_then_4_lut.init = 16'hfe71;
    LUT4 tone_4__I_0_Mux_11_i31_else_4_lut (.A(\music_tone[3] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[4] ), .Z(n3075)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam tone_4__I_0_Mux_11_i31_else_4_lut.init = 16'hba27;
    LUT4 i10_4_lut (.A(n435[12]), .B(n435[7]), .C(n435[0]), .D(n435[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2524_4_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n3079)) /* synthesis lut_function=(A (B+(D))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i2524_4_lut_then_4_lut.init = 16'hafcc;
    LUT4 i2524_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[0] ), .Z(n3078)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i2524_4_lut_else_4_lut.init = 16'hefff;
    LUT4 n18_bdd_4_lut_2542_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[4] ), .D(\music_tone[2] ), .Z(n2930)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam n18_bdd_4_lut_2542_4_lut.init = 16'hf6fa;
    LUT4 i124_2_lut (.A(n454), .B(switch_1_c), .Z(n187)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[11] 76[5])
    defparam i124_2_lut.init = 16'hbbbb;
    CCU2D time_cnt_313_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2454), .COUT(n2455), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_15.INJECT1_1 = "NO";
    LUT4 tone_4__I_0_Mux_14_i31_4_lut_else_4_lut (.A(\music_tone[4] ), .B(\music_tone[3] ), 
         .C(\music_tone[1] ), .D(\music_tone[2] ), .Z(n3048)) /* synthesis lut_function=(A (B)+!A !(B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_14_i31_4_lut_else_4_lut.init = 16'h8999;
    LUT4 i2_2_lut_4_lut (.A(\music_tone[0] ), .B(\music_tone[3] ), .C(\music_tone[2] ), 
         .D(\music_tone[1] ), .Z(n2510)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam i2_2_lut_4_lut.init = 16'hecff;
    CCU2D time_cnt_313_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2453), .COUT(n2454), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_313_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2452), .COUT(n2453), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_11.INJECT1_1 = "NO";
    LUT4 n21_bdd_4_lut_2585_4_lut (.A(\music_tone[0] ), .B(\music_tone[1] ), 
         .C(\music_tone[2] ), .D(\music_tone[3] ), .Z(n3013)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A ((D)+!C)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam n21_bdd_4_lut_2585_4_lut.init = 16'hff85;
    CCU2D time_cnt_313_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2451), .COUT(n2452), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_9.INJECT1_1 = "NO";
    PFUMX i2611 (.BLUT(n3078), .ALUT(n3079), .C0(\music_tone[2] ), .Z(time_end[7]));
    PFUMX i2586 (.BLUT(n3014), .ALUT(n3013), .C0(\music_tone[4] ), .Z(time_end[1]));
    PFUMX i2609 (.BLUT(n3075), .ALUT(n3076), .C0(\music_tone[0] ), .Z(time_end[11]));
    LUT4 tone_4__I_0_Mux_13_i31_3_lut_then_4_lut (.A(\music_tone[4] ), .B(\music_tone[1] ), 
         .C(\music_tone[3] ), .D(\music_tone[2] ), .Z(n3052)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(37[2] 62[9])
    defparam tone_4__I_0_Mux_13_i31_3_lut_then_4_lut.init = 16'hadf0;
    PFUMX i2607 (.BLUT(n3072), .ALUT(n3073), .C0(\music_tone[0] ), .Z(time_end[2]));
    LUT4 n18_bdd_4_lut_2577 (.A(\music_tone[0] ), .B(\music_tone[2] ), .C(\music_tone[4] ), 
         .D(\music_tone[1] ), .Z(n2931)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C)+!B (D))) */ ;
    defparam n18_bdd_4_lut_2577.init = 16'hae3f;
    PFUMX i2605 (.BLUT(n3069), .ALUT(n3070), .C0(\music_tone[0] ), .Z(time_end[4]));
    PFUMX i2603 (.BLUT(n3066), .ALUT(n3067), .C0(\music_tone[0] ), .Z(time_end[12]));
    PFUMX tone_4__I_0_Mux_8_i31 (.BLUT(n15), .ALUT(n2510), .C0(\music_tone[4] ), 
          .Z(time_end[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=63 */ ;
    CCU2D time_cnt_313_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2450), .COUT(n2451), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_7.INJECT1_1 = "NO";
    PFUMX i2601 (.BLUT(n3063), .ALUT(n3064), .C0(\music_tone[0] ), .Z(time_end[5]));
    PFUMX i2599 (.BLUT(n3060), .ALUT(n3061), .C0(\music_tone[0] ), .Z(time_end[6]));
    PFUMX i2591 (.BLUT(n3048), .ALUT(n3049), .C0(\music_tone[0] ), .Z(time_end[14]));
    PFUMX i2633 (.BLUT(n3162), .ALUT(n3163), .C0(\music_tone[1] ), .Z(time_end[15]));
    PFUMX i2597 (.BLUT(n3057), .ALUT(n3058), .C0(\music_tone[0] ), .Z(time_end[9]));
    CCU2D add_209_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2465), 
          .S0(n435[17]), .S1(n454));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_19.INIT0 = 16'h5555;
    defparam add_209_19.INIT1 = 16'h0000;
    defparam add_209_19.INJECT1_0 = "NO";
    defparam add_209_19.INJECT1_1 = "NO";
    CCU2D time_cnt_313_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2449), .COUT(n2450), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_5.INJECT1_1 = "NO";
    PFUMX i2569 (.BLUT(n2983), .ALUT(n2982), .C0(\music_tone[4] ), .Z(time_end[3]));
    CCU2D add_209_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2464), .COUT(n2465), .S0(n435[15]), .S1(n435[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_17.INIT0 = 16'h5999;
    defparam add_209_17.INIT1 = 16'h5555;
    defparam add_209_17.INJECT1_0 = "NO";
    defparam add_209_17.INJECT1_1 = "NO";
    CCU2D add_209_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2463), .COUT(n2464), .S0(n435[13]), .S1(n435[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_15.INIT0 = 16'h5999;
    defparam add_209_15.INIT1 = 16'h5999;
    defparam add_209_15.INJECT1_0 = "NO";
    defparam add_209_15.INJECT1_1 = "NO";
    PFUMX i2593 (.BLUT(n3051), .ALUT(n3052), .C0(\music_tone[0] ), .Z(time_end[13]));
    CCU2D time_cnt_313_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2448), .COUT(n2449), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_313_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_313_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_313_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2448), .S1(n77[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_313_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_313_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_313_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_313_add_4_1.INJECT1_1 = "NO";
    CCU2D add_209_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2462), .COUT(n2463), .S0(n435[11]), .S1(n435[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_209_13.INIT0 = 16'h5999;
    defparam add_209_13.INIT1 = 16'h5999;
    defparam add_209_13.INJECT1_0 = "NO";
    defparam add_209_13.INJECT1_1 = "NO";
    
endmodule
