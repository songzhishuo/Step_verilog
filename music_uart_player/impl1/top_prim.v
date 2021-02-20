// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Feb 21 01:49:20 2021
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
    wire sys_clk_c_enable_13 /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c_enable_13 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire GND_net, sys_rst_n_c, switch_1_c, uart_rxd_c, uart_txd_c, 
        beep_c, blink_c, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(27[12:26])
    
    wire uart_send_en;
    wire [7:0]uart_send_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(29[13:27])
    
    wire uart_tx_busy, recv_done_d0, recv_done_d1, blink_N_2, n777, 
        n731, VCC_net, tx_ready, tx_ready_N_162, n1584, sys_clk_c_enable_1, 
        n4, n1713, n1708;
    
    FD1S1A blink_I_0_19 (.D(blink_N_2), .CK(sys_clk_c_enable_13), .Q(blink_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(134[1] 145[4])
    defparam blink_I_0_19.GSR = "DISABLED";
    OB blink_pad (.I(blink_c), .O(blink));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(14[21:26])
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:25])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:29])
    LUT4 blink_I_0_1_lut (.A(blink_c), .Z(blink_N_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(144[18:24])
    defparam blink_I_0_1_lut.init = 16'h5555;
    LUT4 recv_done_flag_I_0_2_lut_rep_16 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_13)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(131[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_16.init = 16'h4444;
    LUT4 i499_1_lut_2_lut (.A(recv_done_d1), .B(recv_done_d0), .Z(n731)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(131[25:55])
    defparam i499_1_lut_2_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(tx_ready_N_162)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(131[25:55])
    defparam i1_3_lut_4_lut.init = 16'hf444;
    LUT4 i1_3_lut_4_lut_adj_20 (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(sys_clk_c_enable_1)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(131[25:55])
    defparam i1_3_lut_4_lut_adj_20.init = 16'h44f4;
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    Beeper m_beep (.beep_c(beep_c), .sys_clk_c(sys_clk_c), .GND_net(GND_net), 
           .switch_1_c(switch_1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(95[9] 101[2])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    IB switch_1_pad (.I(switch_1), .O(switch_1_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(9[21:29])
    \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_send (.uart_tx_busy(uart_tx_busy), 
            .sys_clk_c(sys_clk_c), .uart_send_en(uart_send_en), .uart_send_data({uart_send_data}), 
            .n1713(n1713), .GND_net(GND_net), .n777(n777), .n1584(n1584), 
            .n1708(n1708), .uart_txd_c(uart_txd_c), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(71[1] 79[6])
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(sys_rst_n_c));
    TSALL TSALL_INST (.TSALL(GND_net));
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.GND_net(GND_net), 
            .sys_clk_c(sys_clk_c), .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), 
            .uart_recv_data({uart_recv_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(58[1] 65[6])
    uart_loop u_uart_loop (.recv_done_d0(recv_done_d0), .sys_clk_c(sys_clk_c), 
            .uart_recv_done(uart_recv_done), .uart_send_en(uart_send_en), 
            .sys_clk_c_enable_1(sys_clk_c_enable_1), .n731(n731), .tx_ready(tx_ready), 
            .tx_ready_N_162(tx_ready_N_162), .uart_send_data({uart_send_data}), 
            .sys_clk_c_enable_13(sys_clk_c_enable_13), .uart_recv_data({uart_recv_data}), 
            .uart_tx_busy(uart_tx_busy), .n1713(n1713), .n4(n4), .n1584(n1584), 
            .n1708(n1708), .n777(n777), .recv_done_d1(recv_done_d1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(82[11] 92[6])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i1433 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (beep_c, sys_clk_c, GND_net, switch_1_c) /* synthesis syn_module_defined=1 */ ;
    output beep_c;
    input sys_clk_c;
    input GND_net;
    input switch_1_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n31;
    wire [17:0]n346;
    
    wire n28, n34, n30, piano_out_N_206, n1512;
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(65[12:20])
    wire [17:0]n77;
    
    wire n1513, n254, n365, n29, n1517, n1507, n1508, n1511, 
        n1500, n1506, n1502, n1503, n1505, n1504, n1516, n1515, 
        n1510, n1509, n1501, n1514;
    
    LUT4 i16_4_lut (.A(n31), .B(n346[5]), .C(n28), .D(n346[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n346[10]), .B(n346[4]), .C(n346[8]), .D(n346[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n346[14]), .B(n346[17]), .C(n346[15]), .D(n346[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n346[12]), .B(n346[7]), .C(n346[0]), .D(n346[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    FD1S3AX piano_out_20 (.D(piano_out_N_206), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=101 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    CCU2D time_cnt_225_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1512), .COUT(n1513), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_9.INJECT1_1 = "NO";
    FD1S3IX time_cnt_225__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i0.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i17.GSR = "ENABLED";
    LUT4 i131_2_lut (.A(n365), .B(switch_1_c), .Z(n254)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[11] 76[5])
    defparam i131_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_206)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    CCU2D time_cnt_225_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1517), .S0(n77[17]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_225_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_19.INJECT1_1 = "NO";
    FD1S3IX time_cnt_225__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i16.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(n346[1]), .B(n346[6]), .C(n346[16]), .D(n346[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    FD1S3IX time_cnt_225__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n254), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_225__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n254), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225__i1.GSR = "ENABLED";
    CCU2D add_192_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1507), .COUT(n1508), .S0(n346[15]), .S1(n346[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_17.INIT0 = 16'h5aaa;
    defparam add_192_17.INIT1 = 16'h5555;
    defparam add_192_17.INJECT1_0 = "NO";
    defparam add_192_17.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1511), .COUT(n1512), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_7.INJECT1_1 = "NO";
    CCU2D add_192_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1500), .S1(n346[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_1.INIT0 = 16'hF000;
    defparam add_192_1.INIT1 = 16'h5555;
    defparam add_192_1.INJECT1_0 = "NO";
    defparam add_192_1.INJECT1_1 = "NO";
    CCU2D add_192_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1506), .COUT(n1507), .S0(n346[13]), .S1(n346[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_15.INIT0 = 16'h5aaa;
    defparam add_192_15.INIT1 = 16'h5aaa;
    defparam add_192_15.INJECT1_0 = "NO";
    defparam add_192_15.INJECT1_1 = "NO";
    CCU2D add_192_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1502), .COUT(n1503), .S0(n346[5]), .S1(n346[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_7.INIT0 = 16'h5aaa;
    defparam add_192_7.INIT1 = 16'h5aaa;
    defparam add_192_7.INJECT1_0 = "NO";
    defparam add_192_7.INJECT1_1 = "NO";
    CCU2D add_192_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1505), .COUT(n1506), .S0(n346[11]), .S1(n346[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_13.INIT0 = 16'h5aaa;
    defparam add_192_13.INIT1 = 16'h5aaa;
    defparam add_192_13.INJECT1_0 = "NO";
    defparam add_192_13.INJECT1_1 = "NO";
    CCU2D add_192_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1504), .COUT(n1505), .S0(n346[9]), .S1(n346[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_11.INIT0 = 16'h5aaa;
    defparam add_192_11.INIT1 = 16'h5aaa;
    defparam add_192_11.INJECT1_0 = "NO";
    defparam add_192_11.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1516), .COUT(n1517), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1515), .COUT(n1516), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1510), .COUT(n1511), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1509), .COUT(n1510), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_3.INJECT1_1 = "NO";
    CCU2D add_192_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1501), .COUT(n1502), .S0(n346[3]), .S1(n346[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_5.INIT0 = 16'h5aaa;
    defparam add_192_5.INIT1 = 16'h5aaa;
    defparam add_192_5.INJECT1_0 = "NO";
    defparam add_192_5.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1514), .COUT(n1515), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_13.INJECT1_1 = "NO";
    CCU2D add_192_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1503), .COUT(n1504), .S0(n346[7]), .S1(n346[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_9.INIT0 = 16'h5aaa;
    defparam add_192_9.INIT1 = 16'h5aaa;
    defparam add_192_9.INJECT1_0 = "NO";
    defparam add_192_9.INJECT1_1 = "NO";
    CCU2D add_192_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1500), .COUT(n1501), .S0(n346[1]), .S1(n346[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_3.INIT0 = 16'h5aaa;
    defparam add_192_3.INIT1 = 16'h5aaa;
    defparam add_192_3.INJECT1_0 = "NO";
    defparam add_192_3.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1513), .COUT(n1514), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_225_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_225_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_225_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1509), .S1(n77[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_225_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_225_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_225_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_225_add_4_1.INJECT1_1 = "NO";
    CCU2D add_192_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1508), 
          .S0(n346[17]), .S1(n365));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_192_19.INIT0 = 16'h5555;
    defparam add_192_19.INIT1 = 16'h0000;
    defparam add_192_19.INJECT1_0 = "NO";
    defparam add_192_19.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \uart_send(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  (uart_tx_busy, sys_clk_c, 
            uart_send_en, uart_send_data, n1713, GND_net, n777, n1584, 
            n1708, uart_txd_c, n4) /* synthesis syn_module_defined=1 */ ;
    output uart_tx_busy;
    input sys_clk_c;
    input uart_send_en;
    input [7:0]uart_send_data;
    input n1713;
    input GND_net;
    input n777;
    output n1584;
    output n1708;
    output uart_txd_c;
    output n4;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(44[12:19])
    wire [15:0]n67;
    
    wire n495;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    
    wire uart_tx_busy_N_141, n1627, uart_en_d1, uart_en_d0, n1709, 
        n15, n769, n766, n758, sys_clk_c_enable_50, n741, n743, 
        n739, n1519;
    wire [15:0]n1;
    
    wire n1520, n1518, n588, n582, n1642, n1634, n1645, n1707, 
        n22, n745, n737, n730, n10, sys_clk_c_enable_38, n1525, 
        n506, n507, n1524, n1523, n1522, n1521, n496, n587, 
        n503, n14, n15_adj_396;
    
    LUT4 i305_4_lut (.A(tx_data[7]), .B(tx_data[6]), .C(n67[7]), .D(n67[8]), 
         .Z(n495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i305_4_lut.init = 16'hcacf;
    LUT4 i1371_2_lut_3_lut (.A(clk_cnt[6]), .B(clk_cnt[5]), .C(uart_tx_busy_N_141), 
         .Z(n1627)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1371_2_lut_3_lut.init = 16'h8080;
    LUT4 en_flag_I_0_2_lut_rep_13 (.A(uart_en_d1), .B(uart_en_d0), .Z(n1709)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam en_flag_I_0_2_lut_rep_13.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(uart_tx_busy), 
         .D(n15), .Z(n769)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam i1_3_lut_4_lut.init = 16'hf444;
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n769), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n766), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_send_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    LUT4 i526_4_lut (.A(tx_data[7]), .B(uart_send_data[7]), .C(n1709), 
         .D(n15), .Z(n758)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i526_4_lut.init = 16'hcac0;
    FD1P3IX tx_cnt_FSM_i2 (.D(n67[1]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    LUT4 i509_4_lut (.A(tx_data[6]), .B(uart_send_data[6]), .C(n1709), 
         .D(n15), .Z(n741)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i509_4_lut.init = 16'hcac0;
    LUT4 i511_4_lut (.A(tx_data[5]), .B(uart_send_data[5]), .C(n1709), 
         .D(n15), .Z(n743)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i511_4_lut.init = 16'hcac0;
    FD1P3IX tx_cnt_FSM_i1 (.D(n67[0]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n67[15]), .SP(sys_clk_c_enable_50), .PD(n1713), 
            .CK(sys_clk_c), .Q(n67[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i507_4_lut (.A(tx_data[4]), .B(uart_send_data[4]), .C(n1709), 
         .D(n15), .Z(n739)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i507_4_lut.init = 16'hcac0;
    CCU2D clk_cnt_224_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1519), .COUT(n1520), .S0(n1[3]), .S1(n1[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_224_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_224_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1518), .COUT(n1519), .S0(n1[1]), .S1(n1[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_224_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_224_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1518), .S1(n1[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_224_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_224_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_1.INJECT1_1 = "NO";
    FD1S3IX clk_cnt_224__i14 (.D(n1[14]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i13 (.D(n1[13]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i12 (.D(n1[12]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i11 (.D(n1[11]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i10 (.D(n1[10]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i9 (.D(n1[9]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i8 (.D(n1[8]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i7 (.D(n1[7]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i6 (.D(n1[6]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i5 (.D(n1[5]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i4 (.D(n1[4]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i4.GSR = "ENABLED";
    LUT4 i361_3_lut (.A(n588), .B(tx_data[0]), .C(n67[1]), .Z(n582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i361_3_lut.init = 16'hcaca;
    FD1S3IX clk_cnt_224__i3 (.D(n1[3]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i2 (.D(n1[2]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i0.GSR = "ENABLED";
    LUT4 i1387_2_lut (.A(n67[2]), .B(n67[3]), .Z(n1642)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1387_2_lut.init = 16'h1111;
    LUT4 i367_3_lut (.A(tx_data[2]), .B(tx_data[1]), .C(n67[2]), .Z(n588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i367_3_lut.init = 16'hcaca;
    LUT4 i1411_4_lut (.A(n67[1]), .B(n67[2]), .C(n67[3]), .D(n1634), 
         .Z(n1645)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1411_4_lut.init = 16'hfffe;
    LUT4 i1379_3_lut (.A(n67[4]), .B(n67[5]), .C(n67[6]), .Z(n1634)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1379_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_rep_11 (.A(clk_cnt[3]), .B(clk_cnt[4]), .Z(n1707)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i1_2_lut_rep_11.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(clk_cnt[3]), .B(clk_cnt[4]), .C(n1584), .D(clk_cnt[1]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i3_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_12 (.A(clk_cnt[6]), .B(clk_cnt[5]), .Z(n1708)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_rep_12.init = 16'h8888;
    LUT4 i513_4_lut (.A(tx_data[3]), .B(uart_send_data[3]), .C(n1709), 
         .D(n15), .Z(n745)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i513_4_lut.init = 16'hcac0;
    LUT4 i505_4_lut (.A(n15), .B(uart_send_data[2]), .C(n1709), .D(tx_data[2]), 
         .Z(n737)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i505_4_lut.init = 16'hcac0;
    LUT4 i498_4_lut (.A(n15), .B(uart_send_data[1]), .C(n1709), .D(tx_data[1]), 
         .Z(n730)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i498_4_lut.init = 16'hcac0;
    LUT4 i1404_3_lut (.A(n67[15]), .B(n10), .C(n67[13]), .Z(sys_clk_c_enable_38)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1404_3_lut.init = 16'h0101;
    LUT4 i4_4_lut (.A(n67[14]), .B(n67[12]), .C(n67[11]), .D(n67[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i4_4_lut.init = 16'hfffe;
    CCU2D clk_cnt_224_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1525), .S0(n1[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_224_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_17.INJECT1_1 = "NO";
    LUT4 i963_2_lut (.A(n506), .B(n67[0]), .Z(n507)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i963_2_lut.init = 16'h2222;
    CCU2D clk_cnt_224_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1524), .COUT(n1525), .S0(n1[13]), .S1(n1[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_224_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_224_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1523), .COUT(n1524), .S0(n1[11]), .S1(n1[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_224_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_224_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1522), .COUT(n1523), .S0(n1[9]), .S1(n1[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_224_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_11.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(n22), .D(n1627), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    FD1S3AX tx_data_i7 (.D(n758), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i7.GSR = "ENABLED";
    CCU2D clk_cnt_224_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1521), .COUT(n1522), .S0(n1[7]), .S1(n1[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_224_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_224_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1520), .COUT(n1521), .S0(n1[5]), .S1(n1[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_224_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_224_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_224_add_4_7.INJECT1_1 = "NO";
    FD1S3AX tx_data_i6 (.D(n741), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n743), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n739), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n745), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n737), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n730), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n67[14]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_224__i15 (.D(n1[15]), .CK(sys_clk_c), .CD(n777), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_224__i15.GSR = "ENABLED";
    FD1P3JX uart_txd_47 (.D(n507), .SP(sys_clk_c_enable_38), .PD(n1713), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(123[10] 138[26])
    defparam uart_txd_47.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n67[2]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n67[13]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n67[12]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n67[11]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n67[10]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_141), .SP(sys_clk_c_enable_50), 
            .CD(n1713), .CK(sys_clk_c), .Q(n67[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n67[8]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_141));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n67[7]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n67[6]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n67[5]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n67[4]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n67[3]), .SP(sys_clk_c_enable_50), .CD(n1713), 
            .CK(sys_clk_c), .Q(n67[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    LUT4 i534_4_lut (.A(tx_data[0]), .B(uart_send_data[0]), .C(n1709), 
         .D(n15), .Z(n766)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i534_4_lut.init = 16'hcac0;
    LUT4 i366_3_lut (.A(n496), .B(tx_data[3]), .C(n67[4]), .Z(n587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i366_3_lut.init = 16'hcaca;
    LUT4 i306_3_lut (.A(tx_data[5]), .B(tx_data[4]), .C(n67[5]), .Z(n496)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i306_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(clk_cnt[2]), .B(n1707), .C(clk_cnt[1]), .D(clk_cnt[0]), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i1395_4_lut (.A(n495), .B(n582), .C(n67[1]), .D(n1642), .Z(n503)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1395_4_lut.init = 16'hcacc;
    PFUMX i316 (.BLUT(n587), .ALUT(n503), .C0(n1645), .Z(n506));
    LUT4 i5_3_lut (.A(clk_cnt[12]), .B(clk_cnt[14]), .C(clk_cnt[9]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i6_4_lut (.A(clk_cnt[15]), .B(clk_cnt[13]), .C(clk_cnt[11]), 
         .D(clk_cnt[10]), .Z(n15_adj_396)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n15_adj_396), .B(clk_cnt[7]), .C(n14), .D(clk_cnt[8]), 
         .Z(n1584)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1413_4_lut (.A(n22), .B(clk_cnt[0]), .C(n1708), .D(clk_cnt[2]), 
         .Z(sys_clk_c_enable_50)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1413_4_lut.init = 16'h4000;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (GND_net, sys_clk_c, 
            uart_recv_done, uart_rxd_c, uart_recv_data) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    output uart_recv_done;
    input uart_rxd_c;
    output [7:0]uart_recv_data;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n1532;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    wire [15:0]n69;
    
    wire n1533, uart_rxd_d1, uart_rxd_d0, rx_flag, n752, n1531, 
        n1530, n1529, uart_data_7__N_73, n1163;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(43[12:18])
    
    wire sys_clk_c_enable_2, n420, n684;
    wire [15:0]n158;
    
    wire n1602;
    wire [7:0]n27;
    
    wire n1615, n1710, n659, n4, n776, n1706, n1528, n1587, 
        n1703, n1711, n1527, n1526, n1704, n15, n14, n1705, 
        n6, n1701, n1599, sys_clk_c_enable_37, n1702, sys_clk_c_enable_35, 
        n1605, n1608, n773, n1611, n1612, n1600, rx_flag_N_74, 
        n1535;
    
    CCU2D clk_cnt_222_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1532), .COUT(n1533), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_222_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_15.INJECT1_1 = "NO";
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n752), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    CCU2D clk_cnt_222_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1531), .COUT(n1532), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_222_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_222_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1530), .COUT(n1531), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_222_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_222_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1529), .COUT(n1530), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_222_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_9.INJECT1_1 = "NO";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_73), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    LUT4 i936_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n1163)) /* synthesis lut_function=(A (B)) */ ;
    defparam i936_2_lut.init = 16'h8888;
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1P3IX rxdata__i0 (.D(n684), .SP(sys_clk_c_enable_2), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[7]), .C(n158[8]), .D(n1602), 
         .Z(n27[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i227_1_lut (.A(rx_flag), .Z(n420)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i227_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_5 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n158[1]), 
         .D(n1615), .Z(n684)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_5.init = 16'heca0;
    LUT4 i1_2_lut_rep_14 (.A(n158[6]), .B(n158[7]), .Z(n1710)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_14.init = 16'heeee;
    LUT4 i1409_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n659), .D(n4), 
         .Z(n776)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(92[9:26])
    defparam i1409_4_lut.init = 16'hfdf5;
    LUT4 i1_2_lut_rep_10_3_lut (.A(n158[6]), .B(n158[7]), .C(n158[8]), 
         .Z(n1706)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_10_3_lut.init = 16'hfefe;
    CCU2D clk_cnt_222_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1528), .COUT(n1529), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_222_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_7.INJECT1_1 = "NO";
    FD1S3IX clk_cnt_222__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n776), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n776), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n776), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n776), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n776), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i7.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n659), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n1587)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    FD1S3IX clk_cnt_222__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_7_3_lut_4_lut (.A(n158[6]), .B(n158[7]), .C(n158[5]), 
         .D(n158[8]), .Z(n1703)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_7_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_15 (.A(n158[2]), .B(n158[3]), .Z(n1711)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_15.init = 16'heeee;
    CCU2D clk_cnt_222_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1527), .COUT(n1528), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_222_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_222_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1526), .COUT(n1527), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_222_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_222_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1526), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_222_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_222_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_8_3_lut_4_lut (.A(n158[2]), .B(n158[3]), .C(n158[4]), 
         .D(n158[1]), .Z(n1704)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_8_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[11]), .C(n14), .D(clk_cnt[14]), 
         .Z(n659)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(74[37:59])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[12]), .B(clk_cnt[8]), .C(clk_cnt[13]), .D(clk_cnt[9]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(74[37:59])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_9_3_lut (.A(n158[2]), .B(n158[3]), .C(n158[1]), 
         .Z(n1705)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_9_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_rep_5 (.A(clk_cnt[0]), .B(n1587), .C(clk_cnt[4]), .D(n6), 
         .Z(n1701)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(74[37:59])
    defparam i4_4_lut_rep_5.init = 16'hffef;
    LUT4 i1_4_lut_adj_6 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n158[2]), 
         .D(n1599), .Z(n27[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_6.init = 16'heca0;
    FD1S3IX clk_cnt_222__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n776), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i0.GSR = "ENABLED";
    LUT4 i1407_4_lut (.A(clk_cnt[0]), .B(clk_cnt[4]), .C(n1163), .D(n1587), 
         .Z(sys_clk_c_enable_37)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i1407_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n158[4]), .B(n1705), .C(n1710), .D(n158[5]), 
         .Z(n1602)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(74[37:59])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1401_2_lut_4_lut_4_lut (.A(n1701), .B(rx_flag), .C(n1706), .D(n1702), 
         .Z(sys_clk_c_enable_35)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(128[13:30])
    defparam i1401_2_lut_4_lut_4_lut.init = 16'h7773;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n158[1]), .B(n1711), .C(n1706), 
         .D(n158[5]), .Z(n1605)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'hfffe;
    LUT4 i1_2_lut_rep_6_3_lut_4_lut (.A(n158[1]), .B(n1711), .C(n158[5]), 
         .D(n158[4]), .Z(n1702)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_6_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(n158[1]), .B(n1711), .C(n1706), 
         .D(n158[4]), .Z(n1608)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'hfffe;
    LUT4 i541_1_lut (.A(uart_data_7__N_73), .Z(n773)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam i541_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n158[5]), .B(n1704), .C(n158[6]), 
         .D(n158[8]), .Z(n1611)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(n158[5]), .B(n1704), .C(n158[7]), 
         .D(n158[8]), .Z(n1612)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'hfffe;
    LUT4 i1_4_lut_adj_11 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n158[7]), 
         .D(n1611), .Z(n27[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_11.init = 16'heca0;
    FD1P3IX rx_cnt_FSM_i15 (.D(n158[14]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1399_3_lut_rep_4_3_lut_4_lut (.A(n158[5]), .B(n1704), .C(n1706), 
         .D(n1701), .Z(sys_clk_c_enable_2)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1399_3_lut_rep_4_3_lut_4_lut.init = 16'h00fe;
    LUT4 i1_4_lut_adj_12 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n158[6]), 
         .D(n1612), .Z(n27[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_12.init = 16'heca0;
    LUT4 i5_3_lut (.A(clk_cnt[7]), .B(clk_cnt[15]), .C(clk_cnt[10]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(74[37:59])
    defparam i5_3_lut.init = 16'hfefe;
    FD1P3IX rx_cnt_FSM_i14 (.D(n158[13]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n158[12]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n158[11]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n158[10]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_73), .SP(sys_clk_c_enable_37), 
            .CD(n420), .CK(sys_clk_c), .Q(n158[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n158[8]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(uart_data_7__N_73));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n158[7]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n158[6]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n158[5]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n158[4]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n158[3]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n158[2]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n158[1]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n158[0]), .SP(sys_clk_c_enable_37), .CD(n420), 
            .CK(sys_clk_c), .Q(n158[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n27[7]), .SP(sys_clk_c_enable_35), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(n158[4]), .B(n1703), .C(n158[2]), 
         .D(n158[1]), .Z(n1600)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'hfffe;
    FD1P3IX rxdata__i6 (.D(n27[6]), .SP(sys_clk_c_enable_35), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n27[5]), .SP(sys_clk_c_enable_35), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n27[4]), .SP(sys_clk_c_enable_35), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n27[3]), .SP(sys_clk_c_enable_35), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n27[2]), .SP(sys_clk_c_enable_35), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n27[1]), .SP(sys_clk_c_enable_35), .CD(n420), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_222__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n776), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222__i15.GSR = "ENABLED";
    FD1P3JX rx_cnt_FSM_i0 (.D(n158[15]), .SP(sys_clk_c_enable_37), .PD(n420), 
            .CK(sys_clk_c), .Q(n158[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n773), .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    LUT4 i520_4_lut (.A(uart_data_7__N_73), .B(rx_flag_N_74), .C(rx_flag), 
         .D(n1701), .Z(n752)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i520_4_lut.init = 16'hfcdc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(n158[4]), .B(n1703), .C(n158[3]), 
         .D(n158[1]), .Z(n1599)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'hfffe;
    LUT4 i1_4_lut_adj_15 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n158[5]), 
         .D(n1608), .Z(n27[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_15.init = 16'heca0;
    LUT4 i1_4_lut_adj_16 (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n1535), .D(clk_cnt[3]), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_16.init = 16'hccc8;
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n1535)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_17 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n158[3]), 
         .D(n1600), .Z(n27[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_17.init = 16'heca0;
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_74)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_18 (.A(uart_rxd_d1), .B(rxdata[3]), .C(n158[4]), 
         .D(n1605), .Z(n27[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_18.init = 16'heca0;
    CCU2D clk_cnt_222_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1533), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_222_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_222_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_222_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_222_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(n158[5]), .B(n1706), .C(n1711), 
         .D(n158[4]), .Z(n1615)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module uart_loop
//

module uart_loop (recv_done_d0, sys_clk_c, uart_recv_done, uart_send_en, 
            sys_clk_c_enable_1, n731, tx_ready, tx_ready_N_162, uart_send_data, 
            sys_clk_c_enable_13, uart_recv_data, uart_tx_busy, n1713, 
            n4, n1584, n1708, n777, recv_done_d1) /* synthesis syn_module_defined=1 */ ;
    output recv_done_d0;
    input sys_clk_c;
    input uart_recv_done;
    output uart_send_en;
    input sys_clk_c_enable_1;
    input n731;
    output tx_ready;
    input tx_ready_N_162;
    output [7:0]uart_send_data;
    input sys_clk_c_enable_13;
    input [7:0]uart_recv_data;
    input uart_tx_busy;
    output n1713;
    input n4;
    input n1584;
    input n1708;
    output n777;
    output recv_done_d1;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire sys_clk_c_enable_13 /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c_enable_13 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    FD1S3AX recv_done_d0_16 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(139[10] 142[8])
    defparam recv_done_d0_16.GSR = "ENABLED";
    FD1P3AX send_en_25 (.D(n731), .SP(sys_clk_c_enable_1), .CK(sys_clk_c), 
            .Q(uart_send_en));   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_en_25.GSR = "ENABLED";
    FD1S3AX tx_ready_24 (.D(tx_ready_N_162), .CK(sys_clk_c), .Q(tx_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam tx_ready_24.GSR = "ENABLED";
    FD1P3AX send_data_i0_i0 (.D(uart_recv_data[0]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i0.GSR = "ENABLED";
    LUT4 tx_busy_I_0_1_lut_rep_17 (.A(uart_tx_busy), .Z(n1713)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(75[29:39])
    defparam tx_busy_I_0_1_lut_rep_17.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(uart_tx_busy), .B(n4), .C(n1584), .D(n1708), 
         .Z(n777)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(75[29:39])
    defparam i1_4_lut_4_lut.init = 16'hfdf5;
    FD1P3AX send_data_i0_i7 (.D(uart_recv_data[7]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i7.GSR = "ENABLED";
    FD1P3AX send_data_i0_i6 (.D(uart_recv_data[6]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i6.GSR = "ENABLED";
    FD1P3AX send_data_i0_i5 (.D(uart_recv_data[5]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i5.GSR = "ENABLED";
    FD1P3AX send_data_i0_i4 (.D(uart_recv_data[4]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i4.GSR = "ENABLED";
    FD1P3AX send_data_i0_i3 (.D(uart_recv_data[3]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i3.GSR = "ENABLED";
    FD1P3AX send_data_i0_i2 (.D(uart_recv_data[2]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i2.GSR = "ENABLED";
    FD1P3AX send_data_i0_i1 (.D(uart_recv_data[1]), .SP(sys_clk_c_enable_13), 
            .CK(sys_clk_c), .Q(uart_send_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=82, LSE_RLINE=92 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i1.GSR = "ENABLED";
    FD1S3AX recv_done_d1_17 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(139[10] 142[8])
    defparam recv_done_d1_17.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

