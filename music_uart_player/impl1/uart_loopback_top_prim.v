// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sat Feb 20 21:08:36 2021
//
// Verilog Description of module uart_loopback_top
//

module uart_loopback_top (sys_clk, sys_rst_n, switch_1, uart_rxd, uart_txd, 
            beep, blink) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(1[8:25])
    input sys_clk;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    input switch_1;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    input uart_rxd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    output uart_txd;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(8[21:29])
    output beep;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:25])
    output blink;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:26])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire GND_net, sys_rst_n_c, switch_1_c, uart_rxd_c, uart_txd_c, 
        beep_c, blink_c, uart_recv_done;
    wire [7:0]uart_recv_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(21[12:26])
    
    wire uart_send_en;
    wire [7:0]uart_send_data;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(23[13:27])
    
    wire uart_tx_busy, recv_done_d0, recv_done_d1;
    wire [4:0]music_note;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(36[18:28])
    
    wire blink_N_14;
    wire [4:0]music_note_4__N_6;
    
    wire VCC_net, n842;
    wire [15:0]clk_cnt_adj_221;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    
    wire n890, tx_ready, tx_ready_N_172, n1649, sys_clk_c_enable_6, 
        n1647, sys_clk_c_enable_33, sys_clk_c_enable_11, n1798;
    
    VHI i27 (.Z(VCC_net));
    OB blink_pad (.I(blink_c), .O(blink));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(12[21:26])
    FD1P3AX blink_22 (.D(blink_N_14), .SP(sys_rst_n_c), .CK(sys_clk_c), 
            .Q(blink_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(114[10] 117[8])
    defparam blink_22.GSR = "DISABLED";
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(10[21:25])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(8[21:29])
    FD1P3AX music_note_i0_i0 (.D(uart_recv_data[0]), .SP(sys_clk_c_enable_11), 
            .CK(sys_clk_c), .Q(music_note[0]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(114[10] 117[8])
    defparam music_note_i0_i0.GSR = "DISABLED";
    LUT4 recv_done_flag_I_0_2_lut_rep_23 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_33)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_23.init = 16'h4444;
    LUT4 blink_I_0_2_lut_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(blink_c), 
         .Z(blink_N_14)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam blink_I_0_2_lut_3_lut.init = 16'hb4b4;
    LUT4 mux_14_i5_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[4]), 
         .D(music_note[4]), .Z(music_note_4__N_6[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam mux_14_i5_3_lut_4_lut.init = 16'hfb40;
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    LUT4 i294_2_lut_3_lut (.A(recv_done_d1), .B(recv_done_d0), .C(sys_rst_n_c), 
         .Z(sys_clk_c_enable_11)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam i294_2_lut_3_lut.init = 16'h4040;
    LUT4 mux_14_i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[0]), 
         .D(music_note[0]), .Z(music_note_4__N_6[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam mux_14_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_14_i2_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[1]), 
         .D(music_note[1]), .Z(music_note_4__N_6[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam mux_14_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_14_i3_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[2]), 
         .D(music_note[2]), .Z(music_note_4__N_6[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam mux_14_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_14_i4_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(uart_recv_data[3]), 
         .D(music_note[3]), .Z(music_note_4__N_6[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam mux_14_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_3_lut_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(sys_clk_c_enable_6)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h44f4;
    FD1P3AX music_note_i0_i4 (.D(uart_recv_data[4]), .SP(sys_clk_c_enable_11), 
            .CK(sys_clk_c), .Q(music_note[4]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(114[10] 117[8])
    defparam music_note_i0_i4.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(uart_tx_busy), .Z(tx_ready_N_172)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam i1_3_lut_4_lut.init = 16'hf444;
    LUT4 i557_1_lut_2_lut (.A(recv_done_d1), .B(recv_done_d0), .Z(n842)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(92[25:55])
    defparam i557_1_lut_2_lut.init = 16'hbbbb;
    FD1P3AX music_note_i0_i3 (.D(uart_recv_data[3]), .SP(sys_clk_c_enable_11), 
            .CK(sys_clk_c), .Q(music_note[3]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(114[10] 117[8])
    defparam music_note_i0_i3.GSR = "DISABLED";
    FD1P3AX music_note_i0_i2 (.D(uart_recv_data[2]), .SP(sys_clk_c_enable_11), 
            .CK(sys_clk_c), .Q(music_note[2]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(114[10] 117[8])
    defparam music_note_i0_i2.GSR = "DISABLED";
    FD1P3AX music_note_i0_i1 (.D(uart_recv_data[1]), .SP(sys_clk_c_enable_11), 
            .CK(sys_clk_c), .Q(music_note[1]));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(114[10] 117[8])
    defparam music_note_i0_i1.GSR = "DISABLED";
    Beeper m_beep (.GND_net(GND_net), .switch_1_c(switch_1_c), .beep_c(beep_c), 
           .sys_clk_c(sys_clk_c), .music_note_4__N_6({music_note_4__N_6}), 
           .sys_rst_n_c(sys_rst_n_c), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(82[9] 88[2])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(3[21:30])
    IB switch_1_pad (.I(switch_1), .O(switch_1_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(5[21:29])
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(7[21:29])
    GSR GSR_INST (.GSR(sys_rst_n_c));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_send (.GND_net(GND_net), 
            .sys_clk_c(sys_clk_c), .n1798(n1798), .uart_tx_busy(uart_tx_busy), 
            .uart_send_en(uart_send_en), .\clk_cnt[13] (clk_cnt_adj_221[13]), 
            .n890(n890), .uart_send_data({uart_send_data}), .n1647(n1647), 
            .uart_txd_c(uart_txd_c), .n1649(n1649)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(58[1] 66[6])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    uart_loop u_uart_loop (.recv_done_d1(recv_done_d1), .sys_clk_c(sys_clk_c), 
            .recv_done_d0(recv_done_d0), .uart_recv_done(uart_recv_done), 
            .tx_ready(tx_ready), .tx_ready_N_172(tx_ready_N_172), .uart_send_data({uart_send_data}), 
            .sys_clk_c_enable_33(sys_clk_c_enable_33), .uart_recv_data({uart_recv_data}), 
            .uart_send_en(uart_send_en), .sys_clk_c_enable_6(sys_clk_c_enable_6), 
            .n842(n842), .uart_tx_busy(uart_tx_busy), .n1798(n1798), .n1649(n1649), 
            .\clk_cnt[13] (clk_cnt_adj_221[13]), .n1647(n1647), .n890(n890)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(69[11] 79[6])
    \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  u_uart_recv (.sys_clk_c(sys_clk_c), 
            .uart_recv_done(uart_recv_done), .uart_rxd_c(uart_rxd_c), .GND_net(GND_net), 
            .uart_recv_data({uart_recv_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(45[1] 52[6])
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (GND_net, switch_1_c, beep_c, sys_clk_c, music_note_4__N_6, 
            sys_rst_n_c, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input switch_1_c;
    output beep_c;
    input sys_clk_c;
    input [4:0]music_note_4__N_6;
    input sys_rst_n_c;
    input VCC_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    wire [17:0]n409;
    
    wire n28, n1559;
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(65[12:20])
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(31[12:20])
    
    wire n1560, n1555, n1556, n1566;
    wire [17:0]n77;
    
    wire n1567, n428, n315, piano_out_N_216, n1565, n1558, n1557, 
        n1564, n1572, n1571, n29, n34, n30, n31, n1570, n1563, 
        n1562, n1561, n1569, n1568;
    
    LUT4 i10_4_lut (.A(n409[12]), .B(n409[7]), .C(n409[0]), .D(n409[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    CCU2D add_202_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1559), .COUT(n1560), .S0(n409[9]), .S1(n409[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_11.INIT0 = 16'h5999;
    defparam add_202_11.INIT1 = 16'h5999;
    defparam add_202_11.INJECT1_0 = "NO";
    defparam add_202_11.INJECT1_1 = "NO";
    CCU2D add_202_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1555), .COUT(n1556), .S0(n409[1]), .S1(n409[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_3.INIT0 = 16'h5999;
    defparam add_202_3.INIT1 = 16'h5999;
    defparam add_202_3.INJECT1_0 = "NO";
    defparam add_202_3.INJECT1_1 = "NO";
    CCU2D time_cnt_235_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1566), .COUT(n1567), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_7.INJECT1_1 = "NO";
    LUT4 i139_2_lut (.A(n428), .B(switch_1_c), .Z(n315)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[11] 76[5])
    defparam i139_2_lut.init = 16'hbbbb;
    FD1S3AX piano_out_20 (.D(piano_out_N_216), .CK(sys_clk_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=88 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(83[11] 87[5])
    defparam piano_out_20.GSR = "ENABLED";
    CCU2D time_cnt_235_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1565), .COUT(n1566), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_5.INJECT1_1 = "NO";
    CCU2D add_202_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1558), .COUT(n1559), .S0(n409[7]), .S1(n409[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_9.INIT0 = 16'h5999;
    defparam add_202_9.INIT1 = 16'h5999;
    defparam add_202_9.INJECT1_0 = "NO";
    defparam add_202_9.INJECT1_1 = "NO";
    CCU2D add_202_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1557), .COUT(n1558), .S0(n409[5]), .S1(n409[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_7.INIT0 = 16'h5999;
    defparam add_202_7.INIT1 = 16'h5999;
    defparam add_202_7.INJECT1_0 = "NO";
    defparam add_202_7.INJECT1_1 = "NO";
    CCU2D time_cnt_235_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1564), .COUT(n1565), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_3.INJECT1_1 = "NO";
    PDPW8KC tone_4__I_0 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), 
            .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), 
            .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), 
            .BE0(GND_net), .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), 
            .CSW0(GND_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(music_note_4__N_6[0]), 
            .ADR5(music_note_4__N_6[1]), .ADR6(music_note_4__N_6[2]), .ADR7(music_note_4__N_6[3]), 
            .ADR8(music_note_4__N_6[4]), .ADR9(GND_net), .ADR10(GND_net), 
            .ADR11(GND_net), .ADR12(GND_net), .CER(sys_rst_n_c), .OCER(VCC_net), 
            .CLKR(sys_clk_c), .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), 
            .RST(GND_net), .DO0(time_end[9]), .DO1(time_end[10]), .DO2(time_end[11]), 
            .DO3(time_end[12]), .DO4(time_end[13]), .DO5(time_end[14]), 
            .DO6(time_end[15]), .DO9(time_end[0]), .DO10(time_end[1]), 
            .DO11(time_end[2]), .DO12(time_end[3]), .DO13(time_end[4]), 
            .DO14(time_end[5]), .DO15(time_end[6]), .DO16(time_end[7]), 
            .DO17(time_end[8]));
    defparam tone_4__I_0.DATA_WIDTH_W = 18;
    defparam tone_4__I_0.DATA_WIDTH_R = 18;
    defparam tone_4__I_0.REGMODE = "NOREG";
    defparam tone_4__I_0.CSDECODE_W = "0b000";
    defparam tone_4__I_0.CSDECODE_R = "0b000";
    defparam tone_4__I_0.GSR = "DISABLED";
    defparam tone_4__I_0.RESETMODE = "ASYNC";
    defparam tone_4__I_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam tone_4__I_0.INIT_DATA = "STATIC";
    defparam tone_4__I_0.INITVAL_00 = "0x0166C017B901AA101DE40218D0238C027E702CC802F730354303BC90431D0471B04FCC059970FFFF";
    defparam tone_4__I_0.INITVAL_01 = "0x0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0000000BDC00D5000EF1010C6011C5013F3";
    defparam tone_4__I_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam tone_4__I_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    CCU2D time_cnt_235_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1564), .S1(n77[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_235_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_235_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_1.INJECT1_1 = "NO";
    CCU2D add_202_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1556), .COUT(n1557), .S0(n409[3]), .S1(n409[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_5.INIT0 = 16'h5999;
    defparam add_202_5.INIT1 = 16'h5999;
    defparam add_202_5.INJECT1_0 = "NO";
    defparam add_202_5.INJECT1_1 = "NO";
    CCU2D time_cnt_235_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1572), .S0(n77[17]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_235_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_235_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1571), .COUT(n1572), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_216)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    FD1S3IX time_cnt_235__i0 (.D(n77[0]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i0.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(n409[1]), .B(n409[6]), .C(n409[16]), .D(n409[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(n31), .B(n409[5]), .C(n28), .D(n409[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n409[10]), .B(n409[4]), .C(n409[8]), .D(n409[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n409[14]), .B(n409[17]), .C(n409[15]), .D(n409[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    FD1S3IX time_cnt_235__i17 (.D(n77[17]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i17.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i16 (.D(n77[16]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i15 (.D(n77[15]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i14 (.D(n77[14]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i13 (.D(n77[13]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i12 (.D(n77[12]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i11 (.D(n77[11]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i10 (.D(n77[10]), .CK(sys_clk_c), .CD(n315), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i9 (.D(n77[9]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i8 (.D(n77[8]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i7 (.D(n77[7]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i6 (.D(n77[6]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i5 (.D(n77[5]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i4 (.D(n77[4]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i3 (.D(n77[3]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i2 (.D(n77[2]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_235__i1 (.D(n77[1]), .CK(sys_clk_c), .CD(n315), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235__i1.GSR = "ENABLED";
    CCU2D time_cnt_235_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1570), .COUT(n1571), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_15.INJECT1_1 = "NO";
    CCU2D add_202_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1563), 
          .S0(n409[17]), .S1(n428));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_19.INIT0 = 16'h5555;
    defparam add_202_19.INIT1 = 16'h0000;
    defparam add_202_19.INJECT1_0 = "NO";
    defparam add_202_19.INJECT1_1 = "NO";
    CCU2D add_202_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1562), .COUT(n1563), .S0(n409[15]), .S1(n409[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_17.INIT0 = 16'h5999;
    defparam add_202_17.INIT1 = 16'h5555;
    defparam add_202_17.INJECT1_0 = "NO";
    defparam add_202_17.INJECT1_1 = "NO";
    CCU2D add_202_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1555), .S1(n409[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_1.INIT0 = 16'h0000;
    defparam add_202_1.INIT1 = 16'h5999;
    defparam add_202_1.INJECT1_0 = "NO";
    defparam add_202_1.INJECT1_1 = "NO";
    CCU2D add_202_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1561), .COUT(n1562), .S0(n409[13]), .S1(n409[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_15.INIT0 = 16'h5999;
    defparam add_202_15.INIT1 = 16'h5999;
    defparam add_202_15.INJECT1_0 = "NO";
    defparam add_202_15.INJECT1_1 = "NO";
    CCU2D time_cnt_235_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1569), .COUT(n1570), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_235_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1568), .COUT(n1569), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_235_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1567), .COUT(n1568), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(75[15:30])
    defparam time_cnt_235_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_235_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_235_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_235_add_4_9.INJECT1_1 = "NO";
    CCU2D add_202_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1560), .COUT(n1561), .S0(n409[11]), .S1(n409[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(72[14:32])
    defparam add_202_13.INIT0 = 16'h5999;
    defparam add_202_13.INIT1 = 16'h5999;
    defparam add_202_13.INJECT1_0 = "NO";
    defparam add_202_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \uart_send(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_send(CLK_FREQ=12000000,UART_BPS=115200)  (GND_net, sys_clk_c, 
            n1798, uart_tx_busy, uart_send_en, \clk_cnt[13] , n890, 
            uart_send_data, n1647, uart_txd_c, n1649) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_c;
    input n1798;
    output uart_tx_busy;
    input uart_send_en;
    output \clk_cnt[13] ;
    input n890;
    input [7:0]uart_send_data;
    output n1647;
    output uart_txd_c;
    output n1649;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire n1576;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    wire [15:0]n69;
    
    wire n1577, n4, n11;
    wire [15:0]n92;
    
    wire sys_clk_c_enable_55, n10, sys_clk_c_enable_42, n573, n574, 
        uart_en_d1, uart_en_d0, n882;
    wire [7:0]tx_data;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(44[12:19])
    
    wire n879, n696, n697, n563, n675, n572, n1575, n6, n1574, 
        n1573, n1799, uart_tx_busy_N_150, n1801, n1655, n856, n30, 
        n1702, n1708, n40, n848, n858, n1714, n1723, n871, n854, 
        n850, n852, uart_tx_busy_N_151, n1650, n6_adj_219, n1580, 
        n1579, n1578;
    
    CCU2D clk_cnt_234_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1576), .COUT(n1577), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_234_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_17 (.A(clk_cnt[9]), .B(clk_cnt[10]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_adj_17.init = 16'heeee;
    FD1P3IX tx_cnt_FSM_i2 (.D(n92[1]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    LUT4 i1426_3_lut (.A(n92[15]), .B(n10), .C(n92[13]), .Z(sys_clk_c_enable_42)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1426_3_lut.init = 16'h0101;
    LUT4 i4_4_lut (.A(n92[14]), .B(n92[12]), .C(n92[11]), .D(n92[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i926_2_lut (.A(n573), .B(n92[0]), .Z(n574)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i926_2_lut.init = 16'h2222;
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n882), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n879), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_send_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(64[10] 67[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    LUT4 i424_3_lut (.A(n696), .B(tx_data[2]), .C(n92[3]), .Z(n697)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i424_3_lut.init = 16'hcaca;
    LUT4 i423_3_lut (.A(tx_data[4]), .B(tx_data[3]), .C(n92[4]), .Z(n696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i423_3_lut.init = 16'hcaca;
    LUT4 i1419_4_lut (.A(n563), .B(n675), .C(n92[1]), .D(n92[2]), .Z(n572)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1419_4_lut.init = 16'hccca;
    CCU2D clk_cnt_234_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1575), .COUT(n1576), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_234_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_7.INJECT1_1 = "NO";
    FD1P3IX tx_cnt_FSM_i1 (.D(n92[0]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i321_3_lut (.A(n6), .B(tx_data[5]), .C(n92[6]), .Z(n563)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i321_3_lut.init = 16'hc5c5;
    CCU2D clk_cnt_234_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1574), .COUT(n1575), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_234_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_5.INJECT1_1 = "NO";
    LUT4 i402_3_lut (.A(tx_data[1]), .B(tx_data[0]), .C(n92[1]), .Z(n675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i402_3_lut.init = 16'hcaca;
    CCU2D clk_cnt_234_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1573), .COUT(n1574), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_234_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_234_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1573), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_234_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_234_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_1.INJECT1_1 = "NO";
    LUT4 en_flag_I_0_2_lut_rep_20 (.A(uart_en_d1), .B(uart_en_d0), .Z(n1799)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam en_flag_I_0_2_lut_rep_20.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(uart_tx_busy), 
         .D(uart_tx_busy_N_150), .Z(n882)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(56[18:44])
    defparam i1_3_lut_4_lut.init = 16'h44f4;
    LUT4 i1_2_lut_rep_22 (.A(clk_cnt[6]), .B(clk_cnt[5]), .Z(n1801)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_rep_22.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(clk_cnt[6]), .B(clk_cnt[5]), .C(clk_cnt[1]), 
         .D(\clk_cnt[13] ), .Z(n1655)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    FD1S3IX clk_cnt_234__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n890), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n890), 
            .Q(\clk_cnt[13] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n890), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n890), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n890), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i5.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n92[15]), .SP(sys_clk_c_enable_55), .PD(n1798), 
            .CK(sys_clk_c), .Q(n92[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i571_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[3]), .C(n1799), 
         .D(tx_data[3]), .Z(n856)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i571_4_lut.init = 16'hc5c0;
    LUT4 i1399_4_lut (.A(n30), .B(n1702), .C(clk_cnt[7]), .D(clk_cnt[2]), 
         .Z(n1708)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1399_4_lut.init = 16'hfffe;
    FD1S3IX clk_cnt_234__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i1.GSR = "ENABLED";
    LUT4 i1393_4_lut (.A(n40), .B(n11), .C(clk_cnt[11]), .D(clk_cnt[14]), 
         .Z(n1702)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1393_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_18 (.A(clk_cnt[3]), .B(clk_cnt[4]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i1_2_lut_adj_18.init = 16'heeee;
    LUT4 i563_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[2]), .C(n1799), 
         .D(tx_data[2]), .Z(n848)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i563_4_lut.init = 16'hc5c0;
    LUT4 i1_4_lut (.A(n1801), .B(clk_cnt[1]), .C(n40), .D(n4), .Z(n1647)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(41[12:19])
    defparam i1_4_lut.init = 16'ha8a0;
    LUT4 i779_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[0]), .C(n1799), 
         .D(tx_data[0]), .Z(n879)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(29[19:31])
    defparam i779_4_lut.init = 16'hc5c0;
    FD1S3IX clk_cnt_234__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n890), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i0.GSR = "ENABLED";
    LUT4 i573_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[1]), .C(n1799), 
         .D(tx_data[1]), .Z(n858)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i573_4_lut.init = 16'hc5c0;
    LUT4 i14_4_lut (.A(tx_data[7]), .B(tx_data[6]), .C(n92[7]), .D(n92[8]), 
         .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(44[12:19])
    defparam i14_4_lut.init = 16'h3530;
    LUT4 i1434_4_lut (.A(n92[1]), .B(n92[2]), .C(n92[3]), .D(n1714), 
         .Z(n1723)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1434_4_lut.init = 16'hefee;
    LUT4 i1405_2_lut (.A(n92[4]), .B(n92[5]), .Z(n1714)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(124[9] 136[16])
    defparam i1405_2_lut.init = 16'h1111;
    FD1S3AX tx_data_i7 (.D(n871), .CK(sys_clk_c), .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i7.GSR = "ENABLED";
    FD1S3AX tx_data_i6 (.D(n854), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n850), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n852), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n856), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n848), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n858), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_234__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n890), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234__i15.GSR = "ENABLED";
    FD1P3JX uart_txd_47 (.D(n574), .SP(sys_clk_c_enable_42), .PD(n1798), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=58, LSE_RLINE=66 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(123[10] 138[26])
    defparam uart_txd_47.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n92[2]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n92[14]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n92[13]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n92[12]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n92[11]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n92[10]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_151), .SP(sys_clk_c_enable_55), 
            .CD(n1798), .CK(sys_clk_c), .Q(n92[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n92[8]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_151));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n92[7]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n92[6]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n92[5]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n92[4]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n92[3]), .SP(sys_clk_c_enable_55), .CD(n1798), 
            .CK(sys_clk_c), .Q(n92[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(111[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(n1655), .C(n1650), .Z(sys_clk_c_enable_55)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i3_4_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[0]), .D(n1649), 
         .Z(n1650)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut.init = 16'hffef;
    LUT4 i586_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[7]), .C(n1799), 
         .D(tx_data[7]), .Z(n871)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i586_4_lut.init = 16'hc5c0;
    LUT4 i4_4_lut_adj_19 (.A(clk_cnt[7]), .B(n30), .C(n11), .D(n6_adj_219), 
         .Z(n1649)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_19.init = 16'hfffe;
    LUT4 i1_2_lut_adj_20 (.A(clk_cnt[14]), .B(clk_cnt[11]), .Z(n6_adj_219)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_20.init = 16'heeee;
    LUT4 i567_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[4]), .C(n1799), 
         .D(tx_data[4]), .Z(n852)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i567_4_lut.init = 16'hc5c0;
    LUT4 i565_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[5]), .C(n1799), 
         .D(tx_data[5]), .Z(n850)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i565_4_lut.init = 16'hc5c0;
    PFUMX i331 (.BLUT(n697), .ALUT(n572), .C0(n1723), .Z(n573));
    LUT4 i2_3_lut_adj_21 (.A(clk_cnt[15]), .B(clk_cnt[12]), .C(clk_cnt[8]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam i2_3_lut_adj_21.init = 16'hfefe;
    CCU2D clk_cnt_234_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1580), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_234_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_17.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_22 (.A(uart_tx_busy_N_151), .B(n1655), .C(clk_cnt[0]), 
         .D(n1708), .Z(uart_tx_busy_N_150)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_22.init = 16'h0008;
    CCU2D clk_cnt_234_add_4_15 (.A0(\clk_cnt[13] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1579), .COUT(n1580), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_234_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_234_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1578), .COUT(n1579), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_234_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_234_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1577), .COUT(n1578), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(97[24:38])
    defparam clk_cnt_234_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_234_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_234_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_234_add_4_11.INJECT1_1 = "NO";
    LUT4 i569_4_lut (.A(uart_tx_busy_N_150), .B(uart_send_data[6]), .C(n1799), 
         .D(tx_data[6]), .Z(n854)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_send.v(76[10] 88[12])
    defparam i569_4_lut.init = 16'hc5c0;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_loop
//

module uart_loop (recv_done_d1, sys_clk_c, recv_done_d0, uart_recv_done, 
            tx_ready, tx_ready_N_172, uart_send_data, sys_clk_c_enable_33, 
            uart_recv_data, uart_send_en, sys_clk_c_enable_6, n842, 
            uart_tx_busy, n1798, n1649, \clk_cnt[13] , n1647, n890) /* synthesis syn_module_defined=1 */ ;
    output recv_done_d1;
    input sys_clk_c;
    output recv_done_d0;
    input uart_recv_done;
    output tx_ready;
    input tx_ready_N_172;
    output [7:0]uart_send_data;
    input sys_clk_c_enable_33;
    input [7:0]uart_recv_data;
    output uart_send_en;
    input sys_clk_c_enable_6;
    input n842;
    input uart_tx_busy;
    output n1798;
    input n1649;
    input \clk_cnt[13] ;
    input n1647;
    output n890;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    FD1S3AX recv_done_d1_21 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(100[10] 103[8])
    defparam recv_done_d1_21.GSR = "ENABLED";
    FD1S3AX recv_done_d0_20 (.D(uart_recv_done), .CK(sys_clk_c), .Q(recv_done_d0));   // c:/users/argon/desktop/verilog/music_uart_player/top.v(100[10] 103[8])
    defparam recv_done_d0_20.GSR = "ENABLED";
    FD1S3AX tx_ready_24 (.D(tx_ready_N_172), .CK(sys_clk_c), .Q(tx_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam tx_ready_24.GSR = "ENABLED";
    FD1P3AX send_data_i0_i0 (.D(uart_recv_data[0]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i0.GSR = "ENABLED";
    FD1P3AX send_en_25 (.D(n842), .SP(sys_clk_c_enable_6), .CK(sys_clk_c), 
            .Q(uart_send_en));   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_en_25.GSR = "ENABLED";
    LUT4 tx_busy_I_0_1_lut_rep_19 (.A(uart_tx_busy), .Z(n1798)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(75[29:39])
    defparam tx_busy_I_0_1_lut_rep_19.init = 16'h5555;
    LUT4 i3_4_lut_4_lut (.A(uart_tx_busy), .B(n1649), .C(\clk_cnt[13] ), 
         .D(n1647), .Z(n890)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(75[29:39])
    defparam i3_4_lut_4_lut.init = 16'hfffd;
    FD1P3AX send_data_i0_i7 (.D(uart_recv_data[7]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i7.GSR = "ENABLED";
    FD1P3AX send_data_i0_i6 (.D(uart_recv_data[6]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i6.GSR = "ENABLED";
    FD1P3AX send_data_i0_i5 (.D(uart_recv_data[5]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i5.GSR = "ENABLED";
    FD1P3AX send_data_i0_i4 (.D(uart_recv_data[4]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i4.GSR = "ENABLED";
    FD1P3AX send_data_i0_i3 (.D(uart_recv_data[3]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i3.GSR = "ENABLED";
    FD1P3AX send_data_i0_i2 (.D(uart_recv_data[2]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i2.GSR = "ENABLED";
    FD1P3AX send_data_i0_i1 (.D(uart_recv_data[1]), .SP(sys_clk_c_enable_33), 
            .CK(sys_clk_c), .Q(uart_send_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=6, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200) 
//

module \uart_recv(CLK_FREQ=12000000,UART_BPS=115200)  (sys_clk_c, uart_recv_done, 
            uart_rxd_c, GND_net, uart_recv_data) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output uart_recv_done;
    input uart_rxd_c;
    input GND_net;
    output [7:0]uart_recv_data;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/top.v(2[21:28])
    
    wire uart_rxd_d1;
    wire [7:0]rxdata;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(43[12:18])
    wire [15:0]n183;
    
    wire n1675;
    wire [7:0]n27;
    
    wire uart_rxd_d0, rx_flag, n869, uart_data_7__N_83, n1797, n1684, 
        n795, sys_clk_c_enable_40, n486, n15;
    wire [15:0]clk_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(40[12:19])
    
    wire n14, n770, n1199, n1652, sys_clk_c_enable_41, n1793, n1794, 
        n1686, n1796, n1588;
    wire [15:0]n69;
    
    wire n1678, n888, n1587, n1586, n1792, n6, n1800, n1795, 
        n1680, n1677, rx_flag_N_84, n1687, n885, n1791, sys_clk_c_enable_39, 
        n1700, n1593, n1585, n1584, n1583, n1672, n1582, n1581;
    
    LUT4 i1_4_lut (.A(uart_rxd_d1), .B(rxdata[3]), .C(n183[4]), .D(n1675), 
         .Z(n27[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut.init = 16'heca0;
    FD1S3AX uart_rxd_d1_55 (.D(uart_rxd_d0), .CK(sys_clk_c), .Q(uart_rxd_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d1_55.GSR = "ENABLED";
    FD1S3AX rx_flag_56 (.D(n869), .CK(sys_clk_c), .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam rx_flag_56.GSR = "ENABLED";
    FD1S3AX uart_done_61 (.D(uart_data_7__N_83), .CK(sys_clk_c), .Q(uart_recv_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_done_61.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_18 (.A(n183[6]), .B(n183[7]), .Z(n1797)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_18.init = 16'heeee;
    LUT4 i1_4_lut_adj_3 (.A(uart_rxd_d1), .B(rxdata[0]), .C(n183[1]), 
         .D(n1684), .Z(n795)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_3.init = 16'heca0;
    FD1S3AX uart_rxd_d0_54 (.D(uart_rxd_c), .CK(sys_clk_c), .Q(uart_rxd_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(60[10] 63[8])
    defparam uart_rxd_d0_54.GSR = "ENABLED";
    FD1P3IX rxdata__i0 (.D(n795), .SP(sys_clk_c_enable_40), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i0.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n15), .B(clk_cnt[9]), .C(n14), .D(clk_cnt[14]), 
         .Z(n770)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1430_4_lut (.A(clk_cnt[0]), .B(clk_cnt[4]), .C(n1199), .D(n1652), 
         .Z(sys_clk_c_enable_41)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i1430_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_14_3_lut_4_lut (.A(n183[6]), .B(n183[7]), .C(n183[5]), 
         .D(n183[8]), .Z(n1793)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_14_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n183[5]), .B(n1794), .C(n183[7]), .D(n183[8]), 
         .Z(n1686)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_17_3_lut (.A(n183[6]), .B(n183[7]), .C(n183[8]), 
         .Z(n1796)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_17_3_lut.init = 16'hfefe;
    CCU2D clk_cnt_232_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1588), .S0(n69[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_232_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_4 (.A(uart_rxd_d1), .B(rxdata[2]), .C(n183[3]), 
         .D(n1678), .Z(n27[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_4.init = 16'heca0;
    FD1S3IX clk_cnt_232__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n888), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n888), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n888), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n888), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n888), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i1.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(clk_cnt[10]), .B(clk_cnt[15]), .C(clk_cnt[12]), 
         .D(clk_cnt[11]), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D clk_cnt_232_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1587), .COUT(n1588), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_232_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_232_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1586), .COUT(n1587), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_232_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_13.INJECT1_1 = "NO";
    LUT4 i1423_3_lut_rep_11_3_lut_4_lut (.A(n183[5]), .B(n1794), .C(n1796), 
         .D(n1792), .Z(sys_clk_c_enable_40)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1423_3_lut_rep_11_3_lut_4_lut.init = 16'h00fe;
    LUT4 i4_4_lut_rep_13 (.A(clk_cnt[0]), .B(n1652), .C(clk_cnt[4]), .D(n6), 
         .Z(n1792)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i4_4_lut_rep_13.init = 16'hffef;
    LUT4 i5_3_lut (.A(clk_cnt[7]), .B(clk_cnt[8]), .C(clk_cnt[13]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_21 (.A(n183[3]), .B(n183[2]), .Z(n1800)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_21.init = 16'heeee;
    LUT4 i1_2_lut_rep_16_3_lut (.A(n183[3]), .B(n183[2]), .C(n183[1]), 
         .Z(n1795)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_16_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_15_3_lut_4_lut (.A(n183[3]), .B(n183[2]), .C(n183[4]), 
         .D(n183[1]), .Z(n1794)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_15_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(n183[1]), .B(n1800), .C(n1796), 
         .D(n183[5]), .Z(n1675)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'hfffe;
    LUT4 i1_4_lut_adj_6 (.A(uart_rxd_d1), .B(rxdata[4]), .C(n183[5]), 
         .D(n1680), .Z(n27[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_6.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n183[1]), .B(n1800), .C(n1796), 
         .D(n183[4]), .Z(n1680)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(n183[4]), .B(n1793), .C(n183[3]), 
         .D(n183[1]), .Z(n1677)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'hfffe;
    LUT4 i584_4_lut (.A(uart_data_7__N_83), .B(rx_flag_N_84), .C(rx_flag), 
         .D(n1792), .Z(n869)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i584_4_lut.init = 16'hfcdc;
    FD1S3IX clk_cnt_232__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n888), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i0.GSR = "ENABLED";
    LUT4 uart_rxd_d1_I_0_2_lut (.A(uart_rxd_d1), .B(uart_rxd_d0), .Z(rx_flag_N_84)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(52[22:50])
    defparam uart_rxd_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i239_1_lut (.A(rx_flag), .Z(n486)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(70[10] 78[8])
    defparam i239_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n183[5]), .B(n1794), .C(n183[6]), 
         .D(n183[8]), .Z(n1687)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hfffe;
    LUT4 i2_4_lut (.A(clk_cnt[2]), .B(n770), .C(clk_cnt[5]), .D(clk_cnt[3]), 
         .Z(n1652)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i600_1_lut (.A(uart_data_7__N_83), .Z(n885)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam i600_1_lut.init = 16'h5555;
    LUT4 i919_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n1199)) /* synthesis lut_function=(A (B)) */ ;
    defparam i919_2_lut.init = 16'h8888;
    FD1P3IX rx_cnt_FSM_i15 (.D(n183[14]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[15]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(n183[4]), .B(n1793), .C(n183[2]), 
         .D(n183[1]), .Z(n1678)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'hfffe;
    LUT4 i1432_2_lut_4_lut_4_lut (.A(n1792), .B(rx_flag), .C(n1796), .D(n1791), 
         .Z(sys_clk_c_enable_39)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(128[13:30])
    defparam i1432_2_lut_4_lut_4_lut.init = 16'h7773;
    LUT4 i1_4_lut_adj_11 (.A(uart_rxd_d1), .B(rxdata[1]), .C(n183[2]), 
         .D(n1677), .Z(n27[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_11.init = 16'heca0;
    FD1P3IX rx_cnt_FSM_i14 (.D(n183[13]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[14]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i13 (.D(n183[12]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[13]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i12 (.D(n183[11]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[12]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i11 (.D(n183[10]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[11]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i10 (.D(uart_data_7__N_83), .SP(sys_clk_c_enable_41), 
            .CD(n486), .CK(sys_clk_c), .Q(n183[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i9 (.D(n183[8]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(uart_data_7__N_83));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i8 (.D(n183[7]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i7 (.D(n183[6]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[7]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i6 (.D(n183[5]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i5 (.D(n183[4]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[5]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i4 (.D(n183[3]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i3 (.D(n183[2]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[3]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i2 (.D(n183[1]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX rx_cnt_FSM_i1 (.D(n183[0]), .SP(sys_clk_c_enable_41), .CD(n486), 
            .CK(sys_clk_c), .Q(n183[1]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX rxdata__i7 (.D(n27[7]), .SP(sys_clk_c_enable_40), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i7.GSR = "ENABLED";
    LUT4 i1428_4_lut (.A(rx_flag), .B(clk_cnt[6]), .C(n770), .D(n1700), 
         .Z(n888)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(92[9:26])
    defparam i1428_4_lut.init = 16'hfdf5;
    LUT4 i1391_4_lut (.A(clk_cnt[4]), .B(clk_cnt[5]), .C(n1593), .D(clk_cnt[3]), 
         .Z(n1700)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1391_4_lut.init = 16'hccc8;
    CCU2D clk_cnt_232_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1585), .COUT(n1586), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_232_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_11.INJECT1_1 = "NO";
    FD1P3IX rxdata__i6 (.D(n27[6]), .SP(sys_clk_c_enable_40), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i6.GSR = "ENABLED";
    FD1P3IX rxdata__i5 (.D(n27[5]), .SP(sys_clk_c_enable_40), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i5.GSR = "ENABLED";
    FD1P3IX rxdata__i4 (.D(n27[4]), .SP(sys_clk_c_enable_40), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i4.GSR = "ENABLED";
    FD1P3IX rxdata__i3 (.D(n27[3]), .SP(sys_clk_c_enable_40), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i3.GSR = "ENABLED";
    FD1P3IX rxdata__i2 (.D(n27[2]), .SP(sys_clk_c_enable_39), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i2.GSR = "ENABLED";
    FD1P3IX rxdata__i1 (.D(n27[1]), .SP(sys_clk_c_enable_40), .CD(n486), 
            .CK(sys_clk_c), .Q(rxdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(113[10] 130[24])
    defparam rxdata__i1.GSR = "ENABLED";
    FD1S3IX uart_data__i7 (.D(rxdata[7]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i7.GSR = "ENABLED";
    FD1P3JX rx_cnt_FSM_i0 (.D(n183[15]), .SP(sys_clk_c_enable_41), .PD(n486), 
            .CK(sys_clk_c), .Q(n183[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(101[23:36])
    defparam rx_cnt_FSM_i0.GSR = "ENABLED";
    FD1S3IX clk_cnt_232__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n888), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232__i15.GSR = "ENABLED";
    FD1S3IX uart_data__i0 (.D(rxdata[0]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i0.GSR = "ENABLED";
    FD1S3IX uart_data__i6 (.D(rxdata[6]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i6.GSR = "ENABLED";
    FD1S3IX uart_data__i5 (.D(rxdata[5]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i5.GSR = "ENABLED";
    FD1S3IX uart_data__i4 (.D(rxdata[4]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i4.GSR = "ENABLED";
    FD1S3IX uart_data__i3 (.D(rxdata[3]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i3.GSR = "ENABLED";
    FD1S3IX uart_data__i2 (.D(rxdata[2]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i2.GSR = "ENABLED";
    FD1S3IX uart_data__i1 (.D(rxdata[1]), .CK(sys_clk_c), .CD(n885), .Q(uart_recv_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(139[10] 146[8])
    defparam uart_data__i1.GSR = "ENABLED";
    CCU2D clk_cnt_232_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1584), .COUT(n1585), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_232_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_232_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1583), .COUT(n1584), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_232_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(n183[5]), .B(n1796), .C(n1800), 
         .D(n183[4]), .Z(n1684)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'hfffe;
    LUT4 i1_4_lut_adj_13 (.A(uart_rxd_d1), .B(rxdata[7]), .C(n183[8]), 
         .D(n1672), .Z(n27[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_13.init = 16'heca0;
    LUT4 i2_3_lut (.A(clk_cnt[2]), .B(clk_cnt[0]), .C(clk_cnt[1]), .Z(n1593)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_14 (.A(uart_rxd_d1), .B(rxdata[6]), .C(n183[7]), 
         .D(n1687), .Z(n27[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_14.init = 16'heca0;
    LUT4 i1_2_lut_rep_12_3_lut_4_lut (.A(n183[1]), .B(n1800), .C(n183[5]), 
         .D(n183[4]), .Z(n1791)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_rep_12_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_15 (.A(uart_rxd_d1), .B(rxdata[5]), .C(n183[6]), 
         .D(n1686), .Z(n27[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_4_lut_adj_15.init = 16'heca0;
    CCU2D clk_cnt_232_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1582), .COUT(n1583), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_232_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(clk_cnt[1]), .B(clk_cnt[6]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(100[13:35])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D clk_cnt_232_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1581), .COUT(n1582), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_232_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_232_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_232_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1581), .S1(n69[0]));   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(87[24:38])
    defparam clk_cnt_232_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_232_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_232_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_232_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(n183[4]), .B(n1795), .C(n1797), 
         .D(n183[5]), .Z(n1672)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/uart_recv.v(115[13] 125[20])
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'hfffe;
    
endmodule
