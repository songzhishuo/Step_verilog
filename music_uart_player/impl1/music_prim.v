// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sat Feb 20 20:31:09 2021
//
// Verilog Description of module music
//

module music (clk_in, rst_n_in, switch, en, music_note, music_time, 
            beep, music_busy) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(2[8:13])
    input clk_in;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(3[8:14])
    input rst_n_in;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(4[8:16])
    input switch;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(6[8:14])
    input en;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(7[8:10])
    input [4:0]music_note;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(9[16:26])
    input [7:0]music_time;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    output beep;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(12[9:13])
    output music_busy;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(13[9:19])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(3[8:14])
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    
    wire GND_net, VCC_net, rst_n_in_c, switch_c, music_note_c_4, music_note_c_3, 
        music_note_c_2, music_note_c_1, music_note_c_0, music_time_c_7, 
        music_time_c_6, music_time_c_5, music_time_c_4, music_time_c_3, 
        music_time_c_2, music_time_c_1, music_time_c_0, beep_c, music_busy_c, 
        tone_en;
    wire [4:0]tone;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(30[11:15])
    wire [4:0]state;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(32[11:16])
    wire [2:0]state_back;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(33[12:22])
    wire [7:0]cnt_run;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(36[11:18])
    wire [15:0]cnt_delay;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(37[12:21])
    wire [15:0]music_delay;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(39[12:23])
    
    wire switch_N_132, n1476, state_4__N_60_c_0, n34, n35, n36, 
        n37, n38, n39, n40, n41, music_busy_N_125, n1099, n90, 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
        n103, n104, n105, n106, n107, n108, n1373, n1372, n1371, 
        n1370, n1369, n1368, n1367, n1366, n1365, n1168;
    wire [4:0]tone_4__N_86;
    
    wire clk_p_enable_23, n14, n1162, n1466, clk_p_enable_11, clk_p_enable_14, 
        n1364, n1363, n1362, n1449, n1361, n1360, n1359, n1358, 
        n1357, clk_p_enable_29, clk_p_enable_36, n1164, n1356, n1550, 
        clk_p_enable_39, n1548, n1547, n1546, n8, n1438, n1545, 
        n1355, n1354;
    
    VHI i2 (.Z(VCC_net));
    FD1P3AX cnt_run_i0 (.D(n41), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i0.GSR = "ENABLED";
    CCU2D sub_188_add_2_3 (.A0(cnt_delay[1]), .B0(music_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(music_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1366), .COUT(n1367));
    defparam sub_188_add_2_3.INIT0 = 16'h5999;
    defparam sub_188_add_2_3.INIT1 = 16'h5999;
    defparam sub_188_add_2_3.INJECT1_0 = "NO";
    defparam sub_188_add_2_3.INJECT1_1 = "NO";
    LUT4 i399_3_lut (.A(music_note_c_2), .B(tone[2]), .C(clk_p_enable_36), 
         .Z(tone_4__N_86[2])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(86[3] 121[10])
    defparam i399_3_lut.init = 16'hacac;
    FD1P3AX music_delay__i1 (.D(music_time_c_0), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i8 (.D(n100), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[8]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i8.GSR = "DISABLED";
    FD1S3AX tone_en_56 (.D(switch_N_132), .CK(clk_in_c), .Q(tone_en));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(67[7] 75[5])
    defparam tone_en_56.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n98), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[10]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i10.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i9 (.D(n99), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[9]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i9.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i1 (.D(n107), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i4 (.D(n104), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX tone_i0_i0 (.D(music_note_c_0), .SP(clk_p_enable_14), .CK(clk_p), 
            .Q(tone[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam tone_i0_i0.GSR = "DISABLED";
    FD1P3AX tone_i0_i4 (.D(music_note_c_4), .SP(clk_p_enable_14), .CK(clk_p), 
            .Q(tone[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam tone_i0_i4.GSR = "DISABLED";
    CCU2D add_15_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1354), .S1(n41));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(100[46:58])
    defparam add_15_1.INIT0 = 16'hF000;
    defparam add_15_1.INIT1 = 16'h5555;
    defparam add_15_1.INJECT1_0 = "NO";
    defparam add_15_1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(rst_n_in_c));
    VLO i1 (.Z(GND_net));
    LUT4 i3_3_lut_4_lut (.A(state[0]), .B(n1550), .C(cnt_run[2]), .D(cnt_run[3]), 
         .Z(n8)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffd;
    LUT4 i725_2_lut_rep_16 (.A(cnt_run[1]), .B(cnt_run[0]), .Z(n1548)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i725_2_lut_rep_16.init = 16'h6666;
    FD1P3IX cnt_delay_i0_i15 (.D(n93), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[15]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i15.GSR = "DISABLED";
    FD1P3AX state_back_i0_i0 (.D(n1438), .SP(clk_p_enable_11), .CK(clk_p), 
            .Q(state_back[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam state_back_i0_i0.GSR = "DISABLED";
    FD1P3AX tone_i0_i3 (.D(music_note_c_3), .SP(clk_p_enable_14), .CK(clk_p), 
            .Q(tone[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam tone_i0_i3.GSR = "DISABLED";
    FD1P3AX tone_i0_i2 (.D(music_note_c_2), .SP(clk_p_enable_14), .CK(clk_p), 
            .Q(tone[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam tone_i0_i2.GSR = "DISABLED";
    FD1P3AX tone_i0_i1 (.D(music_note_c_1), .SP(clk_p_enable_14), .CK(clk_p), 
            .Q(tone[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam tone_i0_i1.GSR = "DISABLED";
    OB music_busy_pad (.I(music_busy_c), .O(music_busy));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(13[9:19])
    FD1P3IX cnt_delay_i0_i2 (.D(n106), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i2.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i0 (.D(n108), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i0.GSR = "DISABLED";
    OB beep_pad (.I(beep_c), .O(beep));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(12[9:13])
    FD1P3IX cnt_delay_i0_i3 (.D(n105), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i3.GSR = "DISABLED";
    LUT4 i393_3_lut (.A(music_note_c_3), .B(tone[3]), .C(clk_p_enable_36), 
         .Z(tone_4__N_86[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(86[3] 121[10])
    defparam i393_3_lut.init = 16'hacac;
    FD1P3IX cnt_delay_i0_i5 (.D(n103), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[5]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i5.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(rst_n_in_c), .B(n1546), .C(state[1]), .D(n1476), 
         .Z(clk_p_enable_23)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0002;
    FD1P3IX cnt_delay_i0_i6 (.D(n102), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i6.GSR = "DISABLED";
    FD1S3AX state_i0 (.D(n1162), .CK(clk_p), .Q(state[0]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam state_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n97), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[11]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i11.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i7 (.D(n101), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i7.GSR = "DISABLED";
    FD1P3AX music_delay__i8 (.D(music_time_c_7), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i8.GSR = "DISABLED";
    FD1P3AX music_flag_61 (.D(music_busy_N_125), .SP(clk_p_enable_23), .CK(clk_p), 
            .Q(music_busy_c));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_flag_61.GSR = "DISABLED";
    LUT4 i716_2_lut (.A(cnt_run[0]), .B(state[0]), .Z(n1476)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i716_2_lut.init = 16'hbbbb;
    FD1P3AX music_delay__i7 (.D(music_time_c_6), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i7.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n1466), .B(state[1]), .C(state[0]), .D(n90), .Z(n1449)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam i1_4_lut.init = 16'heaee;
    FD1P3AX music_delay__i6 (.D(music_time_c_5), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[5]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i6.GSR = "DISABLED";
    FD1P3AX music_delay__i5 (.D(music_time_c_4), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i5.GSR = "DISABLED";
    FD1P3AX music_delay__i4 (.D(music_time_c_3), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i4.GSR = "DISABLED";
    FD1P3AX music_delay__i3 (.D(music_time_c_2), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i3.GSR = "DISABLED";
    FD1P3AX music_delay__i2 (.D(music_time_c_1), .SP(clk_p_enable_29), .CK(clk_p), 
            .Q(music_delay[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam music_delay__i2.GSR = "DISABLED";
    FD1P3AX cnt_run_i7 (.D(n34), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[7]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i7.GSR = "ENABLED";
    FD1P3AX cnt_run_i6 (.D(n35), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[6]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i6.GSR = "ENABLED";
    FD1P3AX cnt_run_i5 (.D(n36), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[5]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i5.GSR = "ENABLED";
    FD1P3AX cnt_run_i4 (.D(n37), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[4]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i4.GSR = "ENABLED";
    FD1P3AX cnt_run_i3 (.D(n38), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[3]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i3.GSR = "ENABLED";
    FD1P3AX cnt_run_i2 (.D(n39), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[2]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i2.GSR = "ENABLED";
    FD1P3AX cnt_run_i1 (.D(n40), .SP(clk_p_enable_36), .CK(clk_p), .Q(cnt_run[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_run_i1.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(n1449), .CK(clk_p), .Q(state[1]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam state_i1.GSR = "ENABLED";
    CCU2D sub_188_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(music_delay[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1366));
    defparam sub_188_add_2_1.INIT0 = 16'h0000;
    defparam sub_188_add_2_1.INIT1 = 16'h5999;
    defparam sub_188_add_2_1.INJECT1_0 = "NO";
    defparam sub_188_add_2_1.INJECT1_1 = "NO";
    CCU2D add_28_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1365), 
          .S0(n93));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_17.INIT0 = 16'h5aaa;
    defparam add_28_17.INIT1 = 16'h0000;
    defparam add_28_17.INJECT1_0 = "NO";
    defparam add_28_17.INJECT1_1 = "NO";
    CCU2D add_28_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1364), .COUT(n1365), .S0(n95), .S1(n94));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_15.INIT0 = 16'h5aaa;
    defparam add_28_15.INIT1 = 16'h5aaa;
    defparam add_28_15.INJECT1_0 = "NO";
    defparam add_28_15.INJECT1_1 = "NO";
    CCU2D add_28_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1363), .COUT(n1364), .S0(n97), .S1(n96));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_13.INIT0 = 16'h5aaa;
    defparam add_28_13.INIT1 = 16'h5aaa;
    defparam add_28_13.INJECT1_0 = "NO";
    defparam add_28_13.INJECT1_1 = "NO";
    CCU2D add_28_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1359), .COUT(n1360), .S0(n105), .S1(n104));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_5.INIT0 = 16'h5aaa;
    defparam add_28_5.INIT1 = 16'h5aaa;
    defparam add_28_5.INJECT1_0 = "NO";
    defparam add_28_5.INJECT1_1 = "NO";
    CCU2D add_28_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1358), .COUT(n1359), .S0(n107), .S1(n106));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_3.INIT0 = 16'h5aaa;
    defparam add_28_3.INIT1 = 16'h5aaa;
    defparam add_28_3.INJECT1_0 = "NO";
    defparam add_28_3.INJECT1_1 = "NO";
    CCU2D add_28_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1358), .S1(n108));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_1.INIT0 = 16'hF000;
    defparam add_28_1.INIT1 = 16'h5555;
    defparam add_28_1.INJECT1_0 = "NO";
    defparam add_28_1.INJECT1_1 = "NO";
    CCU2D add_15_9 (.A0(cnt_run[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1357), 
          .S0(n34));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(100[46:58])
    defparam add_15_9.INIT0 = 16'h5aaa;
    defparam add_15_9.INIT1 = 16'h0000;
    defparam add_15_9.INJECT1_0 = "NO";
    defparam add_15_9.INJECT1_1 = "NO";
    CCU2D add_15_3 (.A0(cnt_run[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1354), .COUT(n1355), .S0(n40), .S1(n39));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(100[46:58])
    defparam add_15_3.INIT0 = 16'h5aaa;
    defparam add_15_3.INIT1 = 16'h5aaa;
    defparam add_15_3.INJECT1_0 = "NO";
    defparam add_15_3.INJECT1_1 = "NO";
    CCU2D add_15_7 (.A0(cnt_run[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1356), .COUT(n1357), .S0(n36), .S1(n35));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(100[46:58])
    defparam add_15_7.INIT0 = 16'h5aaa;
    defparam add_15_7.INIT1 = 16'h5aaa;
    defparam add_15_7.INJECT1_0 = "NO";
    defparam add_15_7.INJECT1_1 = "NO";
    CCU2D add_15_5 (.A0(cnt_run[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_run[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1355), .COUT(n1356), .S0(n38), .S1(n37));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(100[46:58])
    defparam add_15_5.INIT0 = 16'h5aaa;
    defparam add_15_5.INIT1 = 16'h5aaa;
    defparam add_15_5.INJECT1_0 = "NO";
    defparam add_15_5.INJECT1_1 = "NO";
    CCU2D sub_188_add_2_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1372), .COUT(n1373));
    defparam sub_188_add_2_15.INIT0 = 16'h5555;
    defparam sub_188_add_2_15.INIT1 = 16'h5555;
    defparam sub_188_add_2_15.INJECT1_0 = "NO";
    defparam sub_188_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_188_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1371), .COUT(n1372));
    defparam sub_188_add_2_13.INIT0 = 16'h5555;
    defparam sub_188_add_2_13.INIT1 = 16'h5555;
    defparam sub_188_add_2_13.INJECT1_0 = "NO";
    defparam sub_188_add_2_13.INJECT1_1 = "NO";
    FD1P3IX cnt_delay_i0_i12 (.D(n96), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[12]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i12.GSR = "DISABLED";
    LUT4 i359_3_lut (.A(music_note_c_4), .B(tone[4]), .C(clk_p_enable_36), 
         .Z(tone_4__N_86[4])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(86[3] 121[10])
    defparam i359_3_lut.init = 16'hacac;
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(3[8:14])
    LUT4 i432_3_lut (.A(state_back[0]), .B(state[0]), .C(n90), .Z(n1099)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i432_3_lut.init = 16'hecec;
    LUT4 i747_3_lut_rep_17 (.A(state[0]), .B(rst_n_in_c), .C(state[1]), 
         .Z(clk_p_enable_39)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam i747_3_lut_rep_17.init = 16'h4040;
    LUT4 i513_2_lut_4_lut (.A(state[0]), .B(rst_n_in_c), .C(state[1]), 
         .D(n90), .Z(n1168)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam i513_2_lut_4_lut.init = 16'h4000;
    CCU2D add_28_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1362), .COUT(n1363), .S0(n99), .S1(n98));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_11.INIT0 = 16'h5aaa;
    defparam add_28_11.INIT1 = 16'h5aaa;
    defparam add_28_11.INJECT1_0 = "NO";
    defparam add_28_11.INJECT1_1 = "NO";
    CCU2D sub_188_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1373), .S1(n90));
    defparam sub_188_add_2_17.INIT0 = 16'h5555;
    defparam sub_188_add_2_17.INIT1 = 16'h0000;
    defparam sub_188_add_2_17.INJECT1_0 = "NO";
    defparam sub_188_add_2_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_18 (.A(state[1]), .B(rst_n_in_c), .Z(n1550)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_18.init = 16'hbbbb;
    LUT4 i2_4_lut_4_lut (.A(n1546), .B(state[0]), .C(cnt_run[0]), .D(cnt_run[1]), 
         .Z(n1466)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam i2_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_15_3_lut (.A(state[1]), .B(rst_n_in_c), .C(state[0]), 
         .Z(n1547)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_15_3_lut.init = 16'hbfbf;
    LUT4 i745_4_lut (.A(cnt_run[1]), .B(n8), .C(cnt_run[0]), .D(n14), 
         .Z(clk_p_enable_29)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i745_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut (.A(cnt_run[0]), .B(n1546), .C(cnt_run[1]), .Z(music_busy_N_125)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hefef;
    CCU2D sub_188_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1370), .COUT(n1371));
    defparam sub_188_add_2_11.INIT0 = 16'h5555;
    defparam sub_188_add_2_11.INIT1 = 16'h5555;
    defparam sub_188_add_2_11.INJECT1_0 = "NO";
    defparam sub_188_add_2_11.INJECT1_1 = "NO";
    LUT4 i734_2_lut_2_lut_3_lut_4_lut (.A(cnt_run[0]), .B(n1546), .C(n1547), 
         .D(cnt_run[1]), .Z(clk_p_enable_14)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i734_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i3_4_lut (.A(cnt_run[7]), .B(cnt_run[5]), .C(cnt_run[4]), .D(cnt_run[6]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(100[6:10])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i731_2_lut_4_lut_4_lut (.A(n1550), .B(n1546), .C(n1548), .D(state[0]), 
         .Z(clk_p_enable_11)) /* synthesis lut_function=(!(A+(B (D)+!B !(C+!(D))))) */ ;
    defparam i731_2_lut_4_lut_4_lut.init = 16'h1055;
    LUT4 switch_I_0_1_lut (.A(switch_c), .Z(switch_N_132)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(68[6:20])
    defparam switch_I_0_1_lut.init = 16'h5555;
    FD1P3IX cnt_delay_i0_i13 (.D(n95), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[13]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i13.GSR = "DISABLED";
    FD1P3IX cnt_delay_i0_i14 (.D(n94), .SP(clk_p_enable_39), .CD(n1168), 
            .CK(clk_p), .Q(cnt_delay[14]));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam cnt_delay_i0_i14.GSR = "DISABLED";
    divide divide_1ms (.clk_in_c(clk_in_c), .GND_net(GND_net), .clk_p(clk_p)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(54[8] 60[2])
    LUT4 i496_3_lut_4_lut (.A(state[0]), .B(n1548), .C(n1546), .D(state_4__N_60_c_0), 
         .Z(n1164)) /* synthesis lut_function=(A ((C)+!B)+!A (D)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(85[7] 122[5])
    defparam i496_3_lut_4_lut.init = 16'hf7a2;
    LUT4 i1_3_lut_rep_14 (.A(n14), .B(cnt_run[2]), .C(cnt_run[3]), .Z(n1546)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_rep_14.init = 16'hfefe;
    LUT4 i1_2_lut_rep_13_4_lut (.A(n14), .B(cnt_run[2]), .C(cnt_run[3]), 
         .D(cnt_run[0]), .Z(n1545)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_13_4_lut.init = 16'hfffe;
    LUT4 i411_3_lut (.A(music_note_c_0), .B(tone[0]), .C(clk_p_enable_36), 
         .Z(tone_4__N_86[0])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(86[3] 121[10])
    defparam i411_3_lut.init = 16'hacac;
    LUT4 i2_2_lut_4_lut (.A(cnt_run[0]), .B(cnt_run[1]), .C(n1546), .D(state[0]), 
         .Z(n1438)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_2_lut_4_lut.init = 16'h0200;
    LUT4 i401_3_lut (.A(music_note_c_1), .B(tone[1]), .C(clk_p_enable_36), 
         .Z(tone_4__N_86[1])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(86[3] 121[10])
    defparam i401_3_lut.init = 16'hacac;
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(4[8:16])
    IB switch_pad (.I(switch), .O(switch_c));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(6[8:14])
    IB state_4__N_60_pad_0 (.I(en), .O(state_4__N_60_c_0));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(7[8:10])
    IB music_note_pad_4 (.I(music_note[4]), .O(music_note_c_4));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(9[16:26])
    IB music_note_pad_3 (.I(music_note[3]), .O(music_note_c_3));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(9[16:26])
    IB music_note_pad_2 (.I(music_note[2]), .O(music_note_c_2));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(9[16:26])
    IB music_note_pad_1 (.I(music_note[1]), .O(music_note_c_1));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(9[16:26])
    IB music_note_pad_0 (.I(music_note[0]), .O(music_note_c_0));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(9[16:26])
    IB music_time_pad_7 (.I(music_time[7]), .O(music_time_c_7));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    IB music_time_pad_6 (.I(music_time[6]), .O(music_time_c_6));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    IB music_time_pad_5 (.I(music_time[5]), .O(music_time_c_5));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    IB music_time_pad_4 (.I(music_time[4]), .O(music_time_c_4));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    IB music_time_pad_3 (.I(music_time[3]), .O(music_time_c_3));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    IB music_time_pad_2 (.I(music_time[2]), .O(music_time_c_2));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    IB music_time_pad_1 (.I(music_time[1]), .O(music_time_c_1));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    IB music_time_pad_0 (.I(music_time[0]), .O(music_time_c_0));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(10[16:26])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D add_28_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1361), .COUT(n1362), .S0(n101), .S1(n100));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_9.INIT0 = 16'h5aaa;
    defparam add_28_9.INIT1 = 16'h5aaa;
    defparam add_28_9.INJECT1_0 = "NO";
    defparam add_28_9.INJECT1_1 = "NO";
    CCU2D add_28_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1360), .COUT(n1361), .S0(n103), .S1(n102));   // c:/users/argon/desktop/verilog/music_uart_player/music.v(118[19:35])
    defparam add_28_7.INIT0 = 16'h5aaa;
    defparam add_28_7.INIT1 = 16'h5aaa;
    defparam add_28_7.INJECT1_0 = "NO";
    defparam add_28_7.INJECT1_1 = "NO";
    LUT4 i742_3_lut_4_lut (.A(cnt_run[1]), .B(n1545), .C(state[1]), .D(state[0]), 
         .Z(clk_p_enable_36)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(100[6:10])
    defparam i742_3_lut_4_lut.init = 16'h0100;
    CCU2D sub_188_add_2_9 (.A0(cnt_delay[7]), .B0(music_delay[7]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1369), .COUT(n1370));
    defparam sub_188_add_2_9.INIT0 = 16'h5999;
    defparam sub_188_add_2_9.INIT1 = 16'h5555;
    defparam sub_188_add_2_9.INJECT1_0 = "NO";
    defparam sub_188_add_2_9.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    Beeper beeper (.beep_c(beep_c), .clk_in_c(clk_in_c), .tone_4__N_86({tone_4__N_86}), 
           .clk_p(clk_p), .rst_n_in_c(rst_n_in_c), .GND_net(GND_net), 
           .VCC_net(VCC_net), .tone_en(tone_en)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(45[8] 52[2])
    PFUMX i494 (.BLUT(n1164), .ALUT(n1099), .C0(state[1]), .Z(n1162));
    CCU2D sub_188_add_2_7 (.A0(cnt_delay[5]), .B0(music_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(music_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1368), .COUT(n1369));
    defparam sub_188_add_2_7.INIT0 = 16'h5999;
    defparam sub_188_add_2_7.INIT1 = 16'h5999;
    defparam sub_188_add_2_7.INJECT1_0 = "NO";
    defparam sub_188_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_188_add_2_5 (.A0(cnt_delay[3]), .B0(music_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(music_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1367), .COUT(n1368));
    defparam sub_188_add_2_5.INIT0 = 16'h5999;
    defparam sub_188_add_2_5.INIT1 = 16'h5999;
    defparam sub_188_add_2_5.INJECT1_0 = "NO";
    defparam sub_188_add_2_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module divide
//

module divide (clk_in_c, GND_net, clk_p) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    input GND_net;
    output clk_p;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(3[8:14])
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    
    wire n1486, n19, n17, n18, n1182;
    wire [31:0]n200;
    wire [31:0]n101;
    
    wire n1401;
    wire [31:0]cnt_p;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(18[13:18])
    
    wire n1402, clk_p_N_344, n1403, n28, n1404, n34, n24, n38, 
        n27, n40, n36, n1405, n1406, n1395, n1394, n1393, n1392, 
        n1391, n32_adj_349, n1390, n1389, n1411, n1410, n1409, 
        n1408, n1388, n1387, n1386, n1385, n1384, n1383, n1398, 
        n1399, n1400, n1396, n1397, n1407;
    
    LUT4 i728_4_lut (.A(n1486), .B(n19), .C(n17), .D(n18), .Z(n1182)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i728_4_lut.init = 16'h8000;
    FD1S3IX cnt_p_235__i0 (.D(n101[0]), .CK(clk_in_c), .CD(n1182), .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i0.GSR = "ENABLED";
    CCU2D cnt_p_235_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1401), .COUT(n1402), .S0(n101[11]), .S1(n101[12]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_13.INJECT1_1 = "NO";
    FD1S3AX clk_p_35 (.D(clk_p_N_344), .CK(clk_in_c), .Q(clk_p)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=54, LSE_RLINE=60 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(40[9] 43[14])
    defparam clk_p_35.GSR = "ENABLED";
    CCU2D cnt_p_235_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1402), .COUT(n1403), .S0(n101[13]), .S1(n101[14]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_15.INJECT1_1 = "NO";
    LUT4 i7_2_lut (.A(cnt_p[17]), .B(cnt_p[24]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i7_2_lut.init = 16'heeee;
    CCU2D cnt_p_235_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1403), .COUT(n1404), .S0(n101[15]), .S1(n101[16]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_17.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(cnt_p[29]), .B(n34), .C(n24), .D(cnt_p[14]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i727_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(n1486)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i727_4_lut.init = 16'h0001;
    CCU2D cnt_p_235_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1404), .COUT(n1405), .S0(n101[17]), .S1(n101[18]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1405), .COUT(n1406), .S0(n101[19]), .S1(n101[20]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_21.INJECT1_1 = "NO";
    CCU2D add_659_28 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1395), 
          .S1(clk_p_N_344));
    defparam add_659_28.INIT0 = 16'h5555;
    defparam add_659_28.INIT1 = 16'h0000;
    defparam add_659_28.INJECT1_0 = "NO";
    defparam add_659_28.INJECT1_1 = "NO";
    CCU2D add_659_26 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1394), .COUT(n1395));
    defparam add_659_26.INIT0 = 16'h5555;
    defparam add_659_26.INIT1 = 16'h5555;
    defparam add_659_26.INJECT1_0 = "NO";
    defparam add_659_26.INJECT1_1 = "NO";
    CCU2D add_659_24 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1393), .COUT(n1394));
    defparam add_659_24.INIT0 = 16'h5555;
    defparam add_659_24.INIT1 = 16'h5555;
    defparam add_659_24.INJECT1_0 = "NO";
    defparam add_659_24.INJECT1_1 = "NO";
    CCU2D add_659_22 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1392), .COUT(n1393));
    defparam add_659_22.INIT0 = 16'h5555;
    defparam add_659_22.INIT1 = 16'h5555;
    defparam add_659_22.INJECT1_0 = "NO";
    defparam add_659_22.INJECT1_1 = "NO";
    CCU2D add_659_20 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1391), .COUT(n1392));
    defparam add_659_20.INIT0 = 16'h5555;
    defparam add_659_20.INIT1 = 16'h5555;
    defparam add_659_20.INJECT1_0 = "NO";
    defparam add_659_20.INJECT1_1 = "NO";
    LUT4 i11_3_lut (.A(cnt_p[22]), .B(cnt_p[21]), .C(cnt_p[31]), .Z(n32_adj_349)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i11_3_lut.init = 16'hfefe;
    CCU2D add_659_18 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1390), .COUT(n1391));
    defparam add_659_18.INIT0 = 16'h5555;
    defparam add_659_18.INIT1 = 16'h5555;
    defparam add_659_18.INJECT1_0 = "NO";
    defparam add_659_18.INJECT1_1 = "NO";
    CCU2D add_659_16 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1389), .COUT(n1390));
    defparam add_659_16.INIT0 = 16'h5555;
    defparam add_659_16.INIT1 = 16'h5555;
    defparam add_659_16.INJECT1_0 = "NO";
    defparam add_659_16.INJECT1_1 = "NO";
    LUT4 i13_4_lut (.A(cnt_p[16]), .B(cnt_p[27]), .C(cnt_p[23]), .D(cnt_p[30]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i13_4_lut.init = 16'hfffe;
    CCU2D cnt_p_235_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1411), .S0(n101[31]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_235_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1410), .COUT(n1411), .S0(n101[29]), .S1(n101[30]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_31.INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(cnt_p[19]), .B(cnt_p[18]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D cnt_p_235_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1409), .COUT(n1410), .S0(n101[27]), .S1(n101[28]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1408), .COUT(n1409), .S0(n101[25]), .S1(n101[26]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_27.INJECT1_1 = "NO";
    FD1S3IX cnt_p_235__i31 (.D(n101[31]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i31.GSR = "ENABLED";
    CCU2D add_659_14 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1388), .COUT(n1389));
    defparam add_659_14.INIT0 = 16'h5555;
    defparam add_659_14.INIT1 = 16'h5555;
    defparam add_659_14.INJECT1_0 = "NO";
    defparam add_659_14.INJECT1_1 = "NO";
    CCU2D add_659_12 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1387), .COUT(n1388));
    defparam add_659_12.INIT0 = 16'h5555;
    defparam add_659_12.INIT1 = 16'h5555;
    defparam add_659_12.INJECT1_0 = "NO";
    defparam add_659_12.INJECT1_1 = "NO";
    CCU2D add_659_10 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1386), .COUT(n1387));
    defparam add_659_10.INIT0 = 16'h5555;
    defparam add_659_10.INIT1 = 16'h5555;
    defparam add_659_10.INJECT1_0 = "NO";
    defparam add_659_10.INJECT1_1 = "NO";
    CCU2D add_659_8 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1385), .COUT(n1386));
    defparam add_659_8.INIT0 = 16'h5555;
    defparam add_659_8.INIT1 = 16'h5aaa;
    defparam add_659_8.INJECT1_0 = "NO";
    defparam add_659_8.INJECT1_1 = "NO";
    CCU2D add_659_6 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1384), .COUT(n1385));
    defparam add_659_6.INIT0 = 16'h5aaa;
    defparam add_659_6.INIT1 = 16'h5aaa;
    defparam add_659_6.INJECT1_0 = "NO";
    defparam add_659_6.INJECT1_1 = "NO";
    CCU2D add_659_4 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1383), 
          .COUT(n1384));
    defparam add_659_4.INIT0 = 16'h5555;
    defparam add_659_4.INIT1 = 16'h5aaa;
    defparam add_659_4.INJECT1_0 = "NO";
    defparam add_659_4.INJECT1_1 = "NO";
    CCU2D add_659_2 (.A0(cnt_p[5]), .B0(cnt_p[4]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1383));
    defparam add_659_2.INIT0 = 16'h7000;
    defparam add_659_2.INIT1 = 16'h5aaa;
    defparam add_659_2.INJECT1_0 = "NO";
    defparam add_659_2.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1398), .COUT(n1399), .S0(n101[5]), .S1(n101[6]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1399), .COUT(n1400), .S0(n101[7]), .S1(n101[8]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1396), .COUT(n1397), .S0(n101[1]), .S1(n101[2]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_5 (.A0(n200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1397), .COUT(n1398), .S0(n101[3]), .S1(n101[4]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_5.INJECT1_1 = "NO";
    FD1S3IX cnt_p_235__i30 (.D(n101[30]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i29 (.D(n101[29]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i28 (.D(n101[28]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i27 (.D(n101[27]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i26 (.D(n101[26]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i25 (.D(n101[25]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i24 (.D(n101[24]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i23 (.D(n101[23]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i22 (.D(n101[22]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i21 (.D(n101[21]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i21.GSR = "ENABLED";
    LUT4 i6_3_lut (.A(cnt_p[9]), .B(cnt_p[6]), .C(cnt_p[7]), .Z(n17)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6_3_lut.init = 16'h8080;
    LUT4 i7_4_lut (.A(cnt_p[13]), .B(n200[2]), .C(n200[3]), .D(n200[0]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i6_2_lut (.A(cnt_p[28]), .B(cnt_p[12]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(cnt_p[5]), .B(n38), .C(n32_adj_349), .D(cnt_p[20]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i15_4_lut (.A(cnt_p[8]), .B(cnt_p[25]), .C(cnt_p[15]), .D(cnt_p[26]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam i15_4_lut.init = 16'hfffe;
    FD1S3IX cnt_p_235__i20 (.D(n101[20]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i19 (.D(n101[19]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i18 (.D(n101[18]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i17 (.D(n101[17]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i16 (.D(n101[16]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i15 (.D(n101[15]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i14 (.D(n101[14]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i13 (.D(n101[13]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i12 (.D(n101[12]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i11 (.D(n101[11]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i10 (.D(n101[10]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i9 (.D(n101[9]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i8 (.D(n101[8]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i7 (.D(n101[7]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i6 (.D(n101[6]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i5 (.D(n101[5]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i4 (.D(n101[4]), .CK(clk_in_c), .CD(n1182), .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i3 (.D(n101[3]), .CK(clk_in_c), .CD(n1182), .Q(n200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i2 (.D(n101[2]), .CK(clk_in_c), .CD(n1182), .Q(n200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_235__i1 (.D(n101[1]), .CK(clk_in_c), .CD(n1182), .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235__i1.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(cnt_p[11]), .B(n200[1]), .C(cnt_p[10]), .D(cnt_p[4]), 
         .Z(n19)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    CCU2D cnt_p_235_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1400), .COUT(n1401), .S0(n101[9]), .S1(n101[10]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1396), .S1(n101[0]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_235_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_235_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1406), .COUT(n1407), .S0(n101[21]), .S1(n101[22]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_235_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1407), .COUT(n1408), .S0(n101[23]), .S1(n101[24]));   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(32[16:23])
    defparam cnt_p_235_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_235_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_235_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_235_add_4_25.INJECT1_1 = "NO";
    
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
// Verilog Description of module Beeper
//

module Beeper (beep_c, clk_in_c, tone_4__N_86, clk_p, rst_n_in_c, 
            GND_net, VCC_net, tone_en) /* synthesis syn_module_defined=1 */ ;
    output beep_c;
    input clk_in_c;
    input [4:0]tone_4__N_86;
    input clk_p;
    input rst_n_in_c;
    input GND_net;
    input VCC_net;
    input tone_en;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/music.v(3[8:14])
    wire clk_p /* synthesis is_clock=1, SET_AS_NETWORK=\divide_1ms/clk_p */ ;   // c:/users/argon/desktop/verilog/music_uart_player/clock.v(20[8:13])
    wire [17:0]n610;
    
    wire n28, piano_out_N_173;
    wire [15:0]time_end;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(31[12:20])
    wire [17:0]time_cnt;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(64[12:20])
    
    wire n1374, n431;
    wire [17:0]n77;
    
    wire n629, n1420, n1419, n1418, n1417, n1416, n1415, n1414, 
        n1413, n1412, n1382, n1381, n1380, n1379, n29, n31, 
        n34, n30, n1378, n1377, n1376, n1375;
    
    LUT4 i10_4_lut (.A(n610[12]), .B(n610[7]), .C(n610[0]), .D(n610[3]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    FD1S3AX piano_out_20 (.D(piano_out_N_173), .CK(clk_in_c), .Q(beep_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=52 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(82[11] 86[5])
    defparam piano_out_20.GSR = "ENABLED";
    PDPW8KC tone_4__I_0 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), 
            .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), 
            .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), 
            .BE0(GND_net), .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), 
            .CSW0(GND_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(tone_4__N_86[0]), 
            .ADR5(tone_4__N_86[1]), .ADR6(tone_4__N_86[2]), .ADR7(tone_4__N_86[3]), 
            .ADR8(tone_4__N_86[4]), .ADR9(GND_net), .ADR10(GND_net), .ADR11(GND_net), 
            .ADR12(GND_net), .CER(rst_n_in_c), .OCER(VCC_net), .CLKR(clk_p), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(time_end[9]), .DO1(time_end[10]), .DO2(time_end[11]), 
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
    defparam tone_4__I_0.INITVAL_01 = "0x0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF0FFFF00BDC00D5000EF1010C6011C5013F3";
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
    CCU2D add_157_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1374), .S1(n610[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_1.INIT0 = 16'h0000;
    defparam add_157_1.INIT1 = 16'h5999;
    defparam add_157_1.INJECT1_0 = "NO";
    defparam add_157_1.INJECT1_1 = "NO";
    FD1S3IX time_cnt_234__i0 (.D(n77[0]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i0.GSR = "ENABLED";
    LUT4 i105_2_lut (.A(n629), .B(tone_en), .Z(n431)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[11] 75[5])
    defparam i105_2_lut.init = 16'hbbbb;
    FD1S3IX time_cnt_234__i17 (.D(n77[17]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i17.GSR = "ENABLED";
    CCU2D time_cnt_234_add_4_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1420), .S0(n77[17]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_19.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_19.INIT1 = 16'h0000;
    defparam time_cnt_234_add_4_19.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_19.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1419), .COUT(n1420), .S0(n77[15]), .S1(n77[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_17.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1418), .COUT(n1419), .S0(n77[13]), .S1(n77[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_15.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1417), .COUT(n1418), .S0(n77[11]), .S1(n77[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_13.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1416), .COUT(n1417), .S0(n77[9]), .S1(n77[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_11.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1415), .COUT(n1416), .S0(n77[7]), .S1(n77[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1414), .COUT(n1415), .S0(n77[5]), .S1(n77[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_7.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1413), .COUT(n1414), .S0(n77[3]), .S1(n77[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_5.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1412), .COUT(n1413), .S0(n77[1]), .S1(n77[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_234_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_234_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_234_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1412), .S1(n77[0]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_234_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_234_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_234_add_4_1.INJECT1_1 = "NO";
    FD1S3IX time_cnt_234__i16 (.D(n77[16]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i16.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i15 (.D(n77[15]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i14 (.D(n77[14]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i13 (.D(n77[13]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i12 (.D(n77[12]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i12.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i11 (.D(n77[11]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i10 (.D(n77[10]), .CK(clk_in_c), .CD(n431), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i9 (.D(n77[9]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i8 (.D(n77[8]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i7 (.D(n77[7]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i6 (.D(n77[6]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i5 (.D(n77[5]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i4 (.D(n77[4]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i3 (.D(n77[3]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i2 (.D(n77[2]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_234__i1 (.D(n77[1]), .CK(clk_in_c), .CD(n431), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(74[15:30])
    defparam time_cnt_234__i1.GSR = "ENABLED";
    CCU2D add_157_19 (.A0(time_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1382), 
          .S0(n610[17]), .S1(n629));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_19.INIT0 = 16'h5555;
    defparam add_157_19.INIT1 = 16'h0000;
    defparam add_157_19.INJECT1_0 = "NO";
    defparam add_157_19.INJECT1_1 = "NO";
    CCU2D add_157_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1381), .COUT(n1382), .S0(n610[15]), .S1(n610[16]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_17.INIT0 = 16'h5999;
    defparam add_157_17.INIT1 = 16'h5555;
    defparam add_157_17.INJECT1_0 = "NO";
    defparam add_157_17.INJECT1_1 = "NO";
    CCU2D add_157_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1380), .COUT(n1381), .S0(n610[13]), .S1(n610[14]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_15.INIT0 = 16'h5999;
    defparam add_157_15.INIT1 = 16'h5999;
    defparam add_157_15.INJECT1_0 = "NO";
    defparam add_157_15.INJECT1_1 = "NO";
    CCU2D add_157_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1379), .COUT(n1380), .S0(n610[11]), .S1(n610[12]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_13.INIT0 = 16'h5999;
    defparam add_157_13.INIT1 = 16'h5999;
    defparam add_157_13.INJECT1_0 = "NO";
    defparam add_157_13.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(n610[1]), .B(n610[6]), .C(n610[16]), .D(n610[2]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n610[14]), .B(n610[17]), .C(n610[15]), .D(n610[9]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(beep_c), .B(n29), .C(n34), .D(n30), .Z(piano_out_N_173)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i12_4_lut (.A(n610[10]), .B(n610[4]), .C(n610[8]), .D(n610[13]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    CCU2D add_157_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1378), .COUT(n1379), .S0(n610[9]), .S1(n610[10]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_11.INIT0 = 16'h5999;
    defparam add_157_11.INIT1 = 16'h5999;
    defparam add_157_11.INJECT1_0 = "NO";
    defparam add_157_11.INJECT1_1 = "NO";
    CCU2D add_157_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1377), .COUT(n1378), .S0(n610[7]), .S1(n610[8]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_9.INIT0 = 16'h5999;
    defparam add_157_9.INIT1 = 16'h5999;
    defparam add_157_9.INJECT1_0 = "NO";
    defparam add_157_9.INJECT1_1 = "NO";
    CCU2D add_157_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1376), .COUT(n1377), .S0(n610[5]), .S1(n610[6]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_7.INIT0 = 16'h5999;
    defparam add_157_7.INIT1 = 16'h5999;
    defparam add_157_7.INJECT1_0 = "NO";
    defparam add_157_7.INJECT1_1 = "NO";
    CCU2D add_157_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1375), .COUT(n1376), .S0(n610[3]), .S1(n610[4]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_5.INIT0 = 16'h5999;
    defparam add_157_5.INIT1 = 16'h5999;
    defparam add_157_5.INJECT1_0 = "NO";
    defparam add_157_5.INJECT1_1 = "NO";
    LUT4 i16_4_lut (.A(n31), .B(n610[5]), .C(n28), .D(n610[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    CCU2D add_157_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1374), .COUT(n1375), .S0(n610[1]), .S1(n610[2]));   // c:/users/argon/desktop/verilog/music_uart_player/beep.v(71[14:32])
    defparam add_157_3.INIT0 = 16'h5999;
    defparam add_157_3.INIT1 = 16'h5999;
    defparam add_157_3.INJECT1_0 = "NO";
    defparam add_157_3.INJECT1_1 = "NO";
    
endmodule
