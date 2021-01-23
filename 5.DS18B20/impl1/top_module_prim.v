// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sat Jan 23 13:30:58 2021
//
// Verilog Description of module top_module
//

module top_module (sys_clk, sys_rst, one_wire, uart_txd, led1_pin) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(1[8:18])
    input sys_clk;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(2[8:15])
    input sys_rst;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(3[8:15])
    inout one_wire;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(4[8:16])
    output uart_txd;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(5[10:18])
    output led1_pin;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(7[9:17])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(2[8:15])
    
    wire GND_net, sys_rst_c, uart_txd_c, led1_pin_c, clk_1s, uart_en;
    wire [7:0]uart_send_data;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(13[12:26])
    wire [7:0]Temp_H;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(14[11:17])
    wire [15:0]ds18b20_data;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(18[14:26])
    
    wire VCC_net;
    wire [5:0]cnt_read;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(58[14:22])
    
    wire one_wire_N_435, n2478, sys_clk_c_enable_86, one_wire_out, n11339, 
        n11308;
    
    VHI i9828 (.Z(VCC_net));
    FD1P3AX Temp_H_i0 (.D(ds18b20_data[4]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam Temp_H_i0.GSR = "ENABLED";
    FD1S3AX uart_en_19 (.D(clk_1s), .CK(sys_clk_c), .Q(uart_en));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_en_19.GSR = "ENABLED";
    FD1P3AX uart_send_data_i0_i0 (.D(Temp_H[0]), .SP(sys_clk_c_enable_86), 
            .CK(sys_clk_c), .Q(uart_send_data[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_send_data_i0_i0.GSR = "DISABLED";
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(5[10:18])
    OB led1_pin_pad (.I(led1_pin_c), .O(led1_pin));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(7[9:17])
    BB one_wire_pad (.I(one_wire_N_435), .T(n2478), .B(one_wire), .O(one_wire_out));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(63[2] 264[5])
    FD1P3AX Temp_H_i6 (.D(ds18b20_data[10]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam Temp_H_i6.GSR = "ENABLED";
    FD1P3AX Temp_H_i5 (.D(ds18b20_data[9]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[5]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam Temp_H_i5.GSR = "ENABLED";
    FD1P3AX Temp_H_i4 (.D(ds18b20_data[8]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam Temp_H_i4.GSR = "ENABLED";
    FD1P3AX Temp_H_i3 (.D(ds18b20_data[7]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[3]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam Temp_H_i3.GSR = "ENABLED";
    FD1P3AX Temp_H_i2 (.D(ds18b20_data[6]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam Temp_H_i2.GSR = "ENABLED";
    FD1P3AX Temp_H_i1 (.D(ds18b20_data[5]), .SP(clk_1s), .CK(sys_clk_c), 
            .Q(Temp_H[1]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam Temp_H_i1.GSR = "ENABLED";
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(2[8:15])
    IB sys_rst_pad (.I(sys_rst), .O(sys_rst_c));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(3[8:15])
    DS18B20Z u_DS18B20Z (.sys_clk_c(sys_clk_c), .one_wire_N_435(one_wire_N_435), 
            .GND_net(GND_net), .cnt_read({cnt_read[5], Open_0, Open_1, 
            Open_2, Open_3, Open_4}), .one_wire_out(one_wire_out), .\cnt_read[0] (cnt_read[0]), 
            .n11339(n11339), .\ds18b20_data[4] (ds18b20_data[4]), .\ds18b20_data[5] (ds18b20_data[5]), 
            .\ds18b20_data[6] (ds18b20_data[6]), .\ds18b20_data[7] (ds18b20_data[7]), 
            .\ds18b20_data[8] (ds18b20_data[8]), .\ds18b20_data[9] (ds18b20_data[9]), 
            .\ds18b20_data[10] (ds18b20_data[10]), .n11308(n11308), .sys_rst_c(sys_rst_c), 
            .n2478(n2478)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(50[11] 56[2])
    uart_send u_uart_send (.sys_clk_c(sys_clk_c), .uart_en(uart_en), .\uart_send_data[5] (uart_send_data[5]), 
            .GND_net(GND_net), .\uart_send_data[4] (uart_send_data[4]), 
            .uart_txd_c(uart_txd_c), .\uart_send_data[0] (uart_send_data[0]), 
            .\uart_send_data[6] (uart_send_data[6]), .\uart_send_data[3] (uart_send_data[3]), 
            .\uart_send_data[2] (uart_send_data[2]), .\uart_send_data[1] (uart_send_data[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(38[11] 47[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX uart_send_data_i0_i1 (.D(Temp_H[1]), .SP(sys_clk_c_enable_86), 
            .CK(sys_clk_c), .Q(uart_send_data[1]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_send_data_i0_i1.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i2 (.D(Temp_H[2]), .SP(sys_clk_c_enable_86), 
            .CK(sys_clk_c), .Q(uart_send_data[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_send_data_i0_i2.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i3 (.D(Temp_H[3]), .SP(sys_clk_c_enable_86), 
            .CK(sys_clk_c), .Q(uart_send_data[3]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_send_data_i0_i3.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i4 (.D(Temp_H[4]), .SP(sys_clk_c_enable_86), 
            .CK(sys_clk_c), .Q(uart_send_data[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_send_data_i0_i4.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i5 (.D(Temp_H[5]), .SP(sys_clk_c_enable_86), 
            .CK(sys_clk_c), .Q(uart_send_data[5]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_send_data_i0_i5.GSR = "DISABLED";
    FD1P3AX uart_send_data_i0_i6 (.D(Temp_H[6]), .SP(sys_clk_c_enable_86), 
            .CK(sys_clk_c), .Q(uart_send_data[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam uart_send_data_i0_i6.GSR = "DISABLED";
    LUT4 i508_2_lut (.A(clk_1s), .B(sys_rst_c), .Z(sys_clk_c_enable_86)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(66[8] 81[6])
    defparam i508_2_lut.init = 16'h8888;
    GSR GSR_INST (.GSR(sys_rst_c));
    LUT4 i1_2_lut_rep_74_3_lut_4_lut (.A(sys_rst_c), .B(n11339), .C(cnt_read[5]), 
         .D(cnt_read[0]), .Z(n11308)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_74_3_lut_4_lut.init = 16'h0002;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    blink u_blink (.led1_pin_c(led1_pin_c), .sys_clk_c(sys_clk_c), .clk_1s(clk_1s)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(29[7] 35[2])
    clock_1s u_clock_1s (.clk_1s(clk_1s), .sys_clk_c(sys_clk_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(21[10] 26[2])
    
endmodule
//
// Verilog Description of module DS18B20Z
//

module DS18B20Z (sys_clk_c, one_wire_N_435, GND_net, cnt_read, one_wire_out, 
            \cnt_read[0] , n11339, \ds18b20_data[4] , \ds18b20_data[5] , 
            \ds18b20_data[6] , \ds18b20_data[7] , \ds18b20_data[8] , \ds18b20_data[9] , 
            \ds18b20_data[10] , n11308, sys_rst_c, n2478) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output one_wire_N_435;
    input GND_net;
    output [5:0]cnt_read;
    input one_wire_out;
    output \cnt_read[0] ;
    output n11339;
    output \ds18b20_data[4] ;
    output \ds18b20_data[5] ;
    output \ds18b20_data[6] ;
    output \ds18b20_data[7] ;
    output \ds18b20_data[8] ;
    output \ds18b20_data[9] ;
    output \ds18b20_data[10] ;
    input n11308;
    input sys_rst_c;
    output n2478;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(2[8:15])
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\u_DS18B20Z/clk_1mhz */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(36[10:18])
    wire [2:0]state_back;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(62[15:25])
    
    wire sys_clk_c_enable_1;
    wire [2:0]state_back_2__N_286;
    
    wire n7735, n10798;
    wire [2:0]state;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    
    wire n11329, n17, clk_1mhz_N_437, one_wire_N_438;
    wire [19:0]cnt_delay;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(55[15:24])
    
    wire sys_clk_c_enable_72;
    wire [19:0]cnt_delay_19__N_207;
    wire [2:0]cnt_1mhz;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(37[14:22])
    
    wire n11352;
    wire [2:0]n1;
    
    wire n10318;
    wire [19:0]n263;
    
    wire n10319, one_wire_N_436, one_wire_N_443, one_wire_N_448, n10320, 
        n11336, n11207, n11208;
    wire [2:0]cnt_init;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(54[14:22])
    
    wire sys_clk_c_enable_33, n7897;
    wire [2:0]n109;
    
    wire n11337, n11321, sys_clk_c_enable_27;
    wire [19:0]num_delay;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(56[15:24])
    
    wire sys_clk_c_enable_6, n11363, sys_clk_c_enable_7;
    wire [19:0]num_delay_19__N_375;
    
    wire sys_clk_c_enable_8, sys_clk_c_enable_9, sys_clk_c_enable_10, 
        n11354, n2, n3, n11002, sys_clk_c_enable_34, n7893;
    wire [5:0]n208;
    wire [5:0]cnt_read_c;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(58[14:22])
    
    wire n11378, n11379, n10317, n11373, n13, n24, n42, n11205, 
        n11204, n11206, n10321, n11375, n11376, n11377;
    wire [7:0]temperature_buffer;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(60[14:32])
    
    wire sys_clk_c_enable_16, sys_clk_c_enable_17, sys_clk_c_enable_18, 
        sys_clk_c_enable_19, sys_clk_c_enable_20, sys_clk_c_enable_21, 
        sys_clk_c_enable_22;
    wire [2:0]state_2__N_283;
    
    wire sys_clk_c_enable_23;
    wire [3:0]cnt_main;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(51[14:22])
    
    wire sys_clk_c_enable_89, n7882, n6;
    wire [3:0]n25;
    
    wire sys_clk_c_enable_28, sys_clk_c_enable_88, n10457, n11293, sys_clk_c_enable_30, 
        sys_clk_c_enable_31, n10, n11367, n6067, n11305;
    wire [5:0]cnt_write;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(57[14:23])
    
    wire n3966, n10869, n3954, n261, n11335, n4068, n11304, n7, 
        n7684, n6_adj_452, n10828, n11360, n11315, n10774, n4056, 
        n11310, n10855, n11342, n11358, n11324, n11327, n10901, 
        n11320, n11368, n11369;
    wire [2:0]n680;
    
    wire n11357, n11318;
    wire [7:0]data_wr_buffer;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(53[14:28])
    
    wire sys_clk_c_enable_37;
    wire [7:0]data_wr;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(52[14:21])
    
    wire sys_clk_c_enable_44;
    wire [15:0]temperature;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(59[15:26])
    
    wire n10322, sys_clk_c_enable_47, n7_adj_453, n38, n10809, n52, 
        n11355, n7_adj_454, sys_clk_c_enable_53, n10859, n10857, n10856, 
        n10858, n11365, n6900, n11322, n29, n10447, n11349, n68, 
        n11309, n11323, n29_adj_455, n32, n48, n10492, n6_adj_456, 
        n11325, n11312, n11359, n11362, n11326, n29_adj_457, n10931, 
        n11361, n11006, n11008, sys_clk_c_enable_77, n6817, sys_clk_c_enable_74, 
        sys_clk_c_enable_80, n8037, n4, n2_adj_458, n3_adj_459;
    wire [19:0]n1213;
    
    wire n11351, n62, n4_adj_460, n31, n11338, n35, n41, n10352, 
        n10916, n10942, n10351, n2328, n10350, n10883, n30, n31_adj_461, 
        n10980, n11306, n7197, n11319, n17_adj_462, n11366, n10946, 
        n10825, n11009, n11303, n30_adj_463, n33, n40, n11307, 
        n10866, n11334, n11292, n11188, n11291, n10465, n11311, 
        n11344, n30_adj_464, n11345, n57, n11350, n4_adj_465, n11330, 
        n4_adj_466, n10382, n8522, n11346, n10881, n11328, n10349, 
        n11347, n10348, n10326;
    wire [2:0]state_2__N_325;
    
    wire n6_adj_467, n10323, n11189, n11348, n8, n10_adj_468, n10347, 
        n49, n35_adj_469, n6_adj_470, n11332, n3_adj_471, n4_adj_472, 
        n11190, n44, n10325, sys_clk_c_enable_90, n8451, n10800, 
        n46, n10346, n10345, n10924, n10324, n10344, n11372, n8632, 
        n10343, n18_adj_473, n6_adj_474, n21;
    
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_286[0]), .SP(sys_clk_c_enable_1), 
            .CK(sys_clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    LUT4 i23_4_lut (.A(n7735), .B(n10798), .C(state[1]), .D(n11329), 
         .Z(n17)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;
    defparam i23_4_lut.init = 16'h1505;
    FD1S3AX clk_1mhz_112 (.D(clk_1mhz_N_437), .CK(sys_clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(42[12] 47[6])
    defparam clk_1mhz_112.GSR = "ENABLED";
    FD1S3AX one_wire_buffer_121 (.D(one_wire_N_438), .CK(clk_1mhz), .Q(one_wire_N_435)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam one_wire_buffer_121.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i0 (.D(cnt_delay_19__N_207[0]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_901__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(n11352), 
            .Q(cnt_1mhz[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(46[16:31])
    defparam cnt_1mhz_901__i0.GSR = "ENABLED";
    CCU2D add_48_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10318), .COUT(n10319), .S0(n263[3]), .S1(n263[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_5.INIT0 = 16'h5aaa;
    defparam add_48_5.INIT1 = 16'h5aaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    FD1P3AX i107_128 (.D(one_wire_N_448), .SP(one_wire_N_443), .CK(clk_1mhz), 
            .Q(one_wire_N_436));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i107_128.GSR = "ENABLED";
    CCU2D add_48_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10319), .COUT(n10320), .S0(n263[5]), .S1(n263[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_7.INIT0 = 16'h5aaa;
    defparam add_48_7.INIT1 = 16'h5aaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    PFUMX i9698 (.BLUT(n11336), .ALUT(n11207), .C0(state[0]), .Z(n11208));
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(sys_clk_c_enable_33), .CD(n7897), 
            .CK(sys_clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n109[1]), .SP(sys_clk_c_enable_33), .CD(n7897), 
            .CK(sys_clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(n11337), .B(state_back_2__N_286[2]), .C(n17), 
         .D(n11321), .Z(sys_clk_c_enable_27)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hb800;
    FD1P3AX num_delay_i0_i12 (.D(n11363), .SP(sys_clk_c_enable_6), .CK(sys_clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i12.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_375[8]), .SP(sys_clk_c_enable_7), 
            .CK(sys_clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_375[5]), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    LUT4 i9665_2_lut_rep_129 (.A(state[1]), .B(state_back_2__N_286[2]), 
         .Z(n11363)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9665_2_lut_rep_129.init = 16'h1111;
    FD1P3AX state_back_i0_i2 (.D(state_back_2__N_286[2]), .SP(sys_clk_c_enable_9), 
            .CK(sys_clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(n11354), .SP(sys_clk_c_enable_10), .CK(sys_clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    PFUMX state_2__I_0_144_i7 (.BLUT(n2), .ALUT(n3), .C0(n11002), .Z(one_wire_N_443)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;
    FD1P3IX cnt_read_i0_i5 (.D(n208[5]), .SP(sys_clk_c_enable_34), .CD(n7893), 
            .CK(sys_clk_c), .Q(cnt_read[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i5.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i4 (.D(n208[4]), .SP(sys_clk_c_enable_34), .CD(n7893), 
            .CK(sys_clk_c), .Q(cnt_read_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i3 (.D(n208[3]), .SP(sys_clk_c_enable_34), .CD(n7893), 
            .CK(sys_clk_c), .Q(cnt_read_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i2 (.D(n208[2]), .SP(sys_clk_c_enable_34), .CD(n7893), 
            .CK(sys_clk_c), .Q(cnt_read_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i1 (.D(n208[1]), .SP(sys_clk_c_enable_34), .CD(n7893), 
            .CK(sys_clk_c), .Q(cnt_read_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    PFUMX i9748 (.BLUT(n11378), .ALUT(n11379), .C0(state[1]), .Z(sys_clk_c_enable_6));
    CCU2D add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10317), .S1(n263[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_1.INIT0 = 16'hF000;
    defparam add_48_1.INIT1 = 16'h5555;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    LUT4 i6379_3_lut_then_4_lut (.A(cnt_read[5]), .B(cnt_read_c[1]), .C(cnt_read_c[4]), 
         .D(cnt_read_c[3]), .Z(n11373)) /* synthesis lut_function=(A (B (D))+!A !(B ((D)+!C)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(194[7] 254[14])
    defparam i6379_3_lut_then_4_lut.init = 16'h9841;
    PFUMX i46 (.BLUT(n13), .ALUT(n24), .C0(state[0]), .Z(n42));
    PFUMX i9696 (.BLUT(n11205), .ALUT(n11204), .C0(state[1]), .Z(n11206));
    CCU2D add_48_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10320), .COUT(n10321), .S0(n263[7]), .S1(n263[8]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_9.INIT0 = 16'h5aaa;
    defparam add_48_9.INIT1 = 16'h5aaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    CCU2D add_48_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10317), .COUT(n10318), .S0(n263[1]), .S1(n263[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_3.INIT0 = 16'h5aaa;
    defparam add_48_3.INIT1 = 16'h5aaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    PFUMX i9746 (.BLUT(n11375), .ALUT(n11376), .C0(cnt_read_c[2]), .Z(n11377));
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(sys_clk_c_enable_16), 
            .CK(sys_clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(sys_clk_c_enable_17), 
            .CK(sys_clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(sys_clk_c_enable_18), 
            .CK(sys_clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(sys_clk_c_enable_19), 
            .CK(sys_clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(sys_clk_c_enable_20), 
            .CK(sys_clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(sys_clk_c_enable_21), 
            .CK(sys_clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_283[1]), .SP(sys_clk_c_enable_22), 
            .CK(sys_clk_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_283[2]), .SP(sys_clk_c_enable_23), 
            .CK(sys_clk_c), .Q(state_back_2__N_286[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i1 (.D(n6), .SP(sys_clk_c_enable_89), .CD(n7882), 
            .CK(sys_clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(n25[2]), .SP(sys_clk_c_enable_89), .CD(n7882), 
            .CK(sys_clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n25[3]), .SP(sys_clk_c_enable_89), .CD(n7882), 
            .CK(sys_clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_375[1]), .SP(sys_clk_c_enable_27), 
            .CK(sys_clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_375[2]), .SP(sys_clk_c_enable_28), 
            .CK(sys_clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3IX num_delay_i0_i3 (.D(n11293), .SP(sys_clk_c_enable_88), .CD(n10457), 
            .CK(sys_clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_375[4]), .SP(sys_clk_c_enable_30), 
            .CK(sys_clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_375[6]), .SP(sys_clk_c_enable_31), 
            .CK(sys_clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    FD1P3IX cnt_init_i0_i0 (.D(n10), .SP(sys_clk_c_enable_33), .CD(n7897), 
            .CK(sys_clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 n6081_bdd_4_lut (.A(n11367), .B(n6067), .C(cnt_read[5]), .D(\cnt_read[0] ), 
         .Z(n11305)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n6081_bdd_4_lut.init = 16'hffca;
    LUT4 i7815_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n3966)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+!(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i7815_4_lut_4_lut.init = 16'h0902;
    LUT4 i2_4_lut (.A(n10869), .B(state[1]), .C(cnt_write[2]), .D(cnt_write[3]), 
         .Z(n7735)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i7818_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n3954)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i7818_4_lut_4_lut.init = 16'h0409;
    LUT4 i1_2_lut_3_lut (.A(state_back_2__N_286[2]), .B(n261), .C(n263[14]), 
         .Z(cnt_delay_19__N_207[14])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 cnt_write_0__bdd_4_lut_9814 (.A(cnt_write[0]), .B(n11335), .C(n4068), 
         .D(cnt_write[4]), .Z(n11304)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam cnt_write_0__bdd_4_lut_9814.init = 16'h11f0;
    LUT4 mux_473_Mux_1_i7_4_lut_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(cnt_write[2]), .D(cnt_write[3]), .Z(n7)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(57[14:23])
    defparam mux_473_Mux_1_i7_4_lut_4_lut_4_lut.init = 16'h5144;
    LUT4 i3_4_lut (.A(n7684), .B(n6_adj_452), .C(state[0]), .D(n10828), 
         .Z(n10798)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut.init = 16'hfeee;
    LUT4 i9468_2_lut_rep_81_3_lut_4_lut (.A(state_back_2__N_286[2]), .B(n11360), 
         .C(cnt_read_c[1]), .D(cnt_read_c[2]), .Z(n11315)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i9468_2_lut_rep_81_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .D(cnt_write[3]), .Z(n10774)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i1_4_lut_4_lut.init = 16'h1004;
    LUT4 i7805_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n4068)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i7805_4_lut_4_lut.init = 16'h060d;
    LUT4 i7806_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(n4056)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i7806_4_lut_4_lut.init = 16'h0b06;
    LUT4 i1_4_lut_4_lut_adj_2 (.A(cnt_write[0]), .B(cnt_write[1]), .C(n11310), 
         .D(cnt_write[2]), .Z(n10855)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_2.init = 16'h7080;
    LUT4 i4680_2_lut_4_lut_4_lut (.A(cnt_read_c[1]), .B(cnt_read_c[2]), 
         .C(cnt_read_c[3]), .D(cnt_read_c[4]), .Z(n6067)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(194[7] 254[14])
    defparam i4680_2_lut_4_lut_4_lut.init = 16'hffb6;
    LUT4 i1037_2_lut_3_lut_4_lut (.A(cnt_read_c[2]), .B(n11342), .C(cnt_read_c[4]), 
         .D(cnt_read_c[3]), .Z(n208[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1037_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3IX cnt_read_i0_i0 (.D(n11358), .SP(sys_clk_c_enable_34), .CD(n7893), 
            .CK(sys_clk_c), .Q(\cnt_read[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut_adj_3 (.A(n11363), .B(n11324), .C(n11339), 
         .D(n11327), .Z(n10901)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_3.init = 16'h0d00;
    LUT4 i1_3_lut_4_lut_4_lut_adj_4 (.A(n11354), .B(n11320), .C(n11321), 
         .D(n11327), .Z(sys_clk_c_enable_7)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_4_lut_adj_4.init = 16'hd000;
    LUT4 n11368_bdd_4_lut (.A(n11368), .B(n11369), .C(cnt_write[5]), .D(cnt_write[0]), 
         .Z(n680[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam n11368_bdd_4_lut.init = 16'hcaff;
    LUT4 i1_2_lut_3_lut_adj_5 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[15]), 
         .Z(cnt_delay_19__N_207[15])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_5.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_6 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[16]), 
         .Z(cnt_delay_19__N_207[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_6.init = 16'h2020;
    LUT4 i2_2_lut_rep_84_3_lut_4_lut (.A(cnt_write[1]), .B(n11357), .C(cnt_write[5]), 
         .D(cnt_write[4]), .Z(n11318)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_2_lut_rep_84_3_lut_4_lut.init = 16'he000;
    FD1P3AX data_wr_buffer_i0_i3 (.D(data_wr[3]), .SP(sys_clk_c_enable_37), 
            .CK(sys_clk_c), .Q(data_wr_buffer[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i3.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[5]), .SP(sys_clk_c_enable_37), 
            .CK(sys_clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(sys_clk_c_enable_37), 
            .CK(sys_clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(\ds18b20_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(\ds18b20_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(\ds18b20_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(\ds18b20_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(\ds18b20_data[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(\ds18b20_data[9] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(sys_clk_c_enable_44), 
            .CK(sys_clk_c), .Q(\ds18b20_data[10] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    CCU2D add_48_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10321), .COUT(n10322), .S0(n263[9]), .S1(n263[10]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_11.INIT0 = 16'h5aaa;
    defparam add_48_11.INIT1 = 16'h5aaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    FD1P3AX data_wr_i0_i3 (.D(n7_adj_453), .SP(sys_clk_c_enable_47), .CK(sys_clk_c), 
            .Q(data_wr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i3.GSR = "DISABLED";
    PFUMX i72 (.BLUT(n38), .ALUT(n10809), .C0(state[0]), .Z(n52));
    FD1P3AX data_wr_i0_i5 (.D(n11355), .SP(sys_clk_c_enable_47), .CK(sys_clk_c), 
            .Q(data_wr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i5.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n7_adj_454), .SP(sys_clk_c_enable_47), .CK(sys_clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX cnt_write_i0_i1 (.D(n10859), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_7 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[17]), 
         .Z(cnt_delay_19__N_207[17])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_7.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_8 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[18]), 
         .Z(cnt_delay_19__N_207[18])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_8.init = 16'h2020;
    FD1P3AX cnt_write_i0_i2 (.D(n10855), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i3 (.D(n10857), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i4 (.D(n10856), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i5 (.D(n10858), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_9 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[19]), 
         .Z(cnt_delay_19__N_207[19])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_9.init = 16'h2020;
    LUT4 i1_3_lut_rep_88_3_lut_4_lut (.A(cnt_init[0]), .B(n11365), .C(n6900), 
         .D(state[0]), .Z(n11322)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_rep_88_3_lut_4_lut.init = 16'h0f22;
    LUT4 i1_4_lut (.A(n11321), .B(n29), .C(n11337), .D(state_back_2__N_286[2]), 
         .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i5515_3_lut_rep_86_4_lut (.A(cnt_init[0]), .B(n11365), .C(state[0]), 
         .D(n6900), .Z(n11320)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;
    defparam i5515_3_lut_rep_86_4_lut.init = 16'h02f2;
    FD1P3AX cnt_write_i0_i0 (.D(n10447), .SP(sys_clk_c_enable_53), .CK(sys_clk_c), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n11349), .B(n11308), .C(n68), .D(cnt_read_c[4]), 
         .Z(sys_clk_c_enable_19)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_10 (.A(cnt_read_c[1]), .B(n11309), .C(n68), 
         .D(cnt_read_c[2]), .Z(sys_clk_c_enable_16)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_adj_10.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_11 (.A(cnt_read_c[1]), .B(n11309), .C(cnt_read_c[3]), 
         .D(n11323), .Z(sys_clk_c_enable_18)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_adj_11.init = 16'h0008;
    PFUMX i52 (.BLUT(n29_adj_455), .ALUT(n32), .C0(state[0]), .Z(n48));
    LUT4 i1_2_lut_3_lut_adj_12 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[3]), 
         .Z(cnt_delay_19__N_207[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'h2020;
    LUT4 mux_54_Mux_2_i7_3_lut (.A(n10492), .B(n6_adj_456), .C(state_back_2__N_286[2]), 
         .Z(num_delay_19__N_375[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_2_i7_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_13 (.A(cnt_init[0]), .B(state[1]), .C(cnt_init[2]), 
         .D(state[0]), .Z(n10492)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_13.init = 16'h0008;
    LUT4 i951_2_lut (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n109[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(111[24:39])
    defparam i951_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_14 (.A(n11325), .B(n11312), .C(n11337), .D(state_back_2__N_286[2]), 
         .Z(sys_clk_c_enable_88)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_14.init = 16'ha088;
    LUT4 i1_2_lut_rep_93_4_lut (.A(n11360), .B(\cnt_read[0] ), .C(n11359), 
         .D(state_back_2__N_286[2]), .Z(n11327)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;
    defparam i1_2_lut_rep_93_4_lut.init = 16'h04ff;
    LUT4 i1_2_lut_3_lut_adj_15 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[6]), 
         .Z(cnt_delay_19__N_207[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_15.init = 16'h2020;
    LUT4 i1_2_lut_rep_92_3_lut (.A(cnt_main[3]), .B(n11362), .C(state[0]), 
         .Z(n11326)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_92_3_lut.init = 16'h4040;
    LUT4 i4688_2_lut_rep_90_3_lut (.A(cnt_main[3]), .B(n11362), .C(state[0]), 
         .Z(n11324)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i4688_2_lut_rep_90_3_lut.init = 16'h4f4f;
    LUT4 i8917_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n1[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(46[16:31])
    defparam i8917_3_lut.init = 16'h6a6a;
    LUT4 i1_4_lut_adj_16 (.A(n11321), .B(state_back_2__N_286[2]), .C(n29_adj_457), 
         .D(n10931), .Z(sys_clk_c_enable_30)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h80a0;
    LUT4 i1_4_lut_adj_17 (.A(n11337), .B(state_back_2__N_286[2]), .C(n11336), 
         .D(n11361), .Z(n29_adj_457)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hbbba;
    L6MUX21 i9557 (.D0(n11006), .D1(n11304), .SD(cnt_write[5]), .Z(n11008));
    FD1P3AX cnt_delay_i0_i1 (.D(cnt_delay_19__N_207[1]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    LUT4 i9479_3_lut (.A(state[1]), .B(n7735), .C(n10798), .Z(n10931)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i9479_3_lut.init = 16'hecec;
    FD1P3AX cnt_delay_i0_i2 (.D(cnt_delay_19__N_207[2]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i3 (.D(cnt_delay_19__N_207[3]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i4 (.D(cnt_delay_19__N_207[4]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i5 (.D(cnt_delay_19__N_207[5]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i6 (.D(cnt_delay_19__N_207[6]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i7 (.D(cnt_delay_19__N_207[7]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i8 (.D(cnt_delay_19__N_207[8]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i9 (.D(cnt_delay_19__N_207[9]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i10 (.D(cnt_delay_19__N_207[10]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i11 (.D(cnt_delay_19__N_207[11]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i12 (.D(cnt_delay_19__N_207[12]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i13 (.D(cnt_delay_19__N_207[13]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i14 (.D(cnt_delay_19__N_207[14]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i15 (.D(cnt_delay_19__N_207[15]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i16 (.D(cnt_delay_19__N_207[16]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i17 (.D(cnt_delay_19__N_207[17]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i18 (.D(cnt_delay_19__N_207[18]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i19 (.D(cnt_delay_19__N_207[19]), .SP(sys_clk_c_enable_72), 
            .CK(sys_clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut_adj_18 (.A(n11337), .B(state_back_2__N_286[2]), 
         .C(n6817), .D(n11339), .Z(sys_clk_c_enable_9)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_18.init = 16'h00b8;
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(sys_clk_c_enable_74), 
            .CK(sys_clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(sys_clk_c_enable_77), 
            .CK(sys_clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(sys_clk_c_enable_80), 
            .CK(sys_clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(sys_clk_c_enable_80), 
            .CK(sys_clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(sys_clk_c_enable_80), 
            .CK(sys_clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_901__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(n11352), 
            .Q(cnt_1mhz[1]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(46[16:31])
    defparam cnt_1mhz_901__i1.GSR = "ENABLED";
    LUT4 i3_3_lut_rep_87_4_lut_4_lut (.A(n11363), .B(n11326), .C(n11339), 
         .D(sys_rst_c), .Z(n11321)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i3_3_lut_rep_87_4_lut_4_lut.init = 16'h0d00;
    LUT4 mux_54_Mux_4_i7_4_lut (.A(n8037), .B(n6_adj_456), .C(state_back_2__N_286[2]), 
         .D(n4), .Z(num_delay_19__N_375[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_4_i7_4_lut.init = 16'hcfca;
    PFUMX state_2__I_0_i7 (.BLUT(n2_adj_458), .ALUT(n3_adj_459), .C0(n11002), 
          .Z(one_wire_N_448)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;
    LUT4 i1_3_lut (.A(state[0]), .B(state[1]), .C(n1213[6]), .Z(n4)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i1_3_lut.init = 16'hb3b3;
    LUT4 i1_3_lut_4_lut (.A(state[1]), .B(n11318), .C(cnt_write[0]), .D(cnt_write[1]), 
         .Z(n10859)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_19 (.A(state[1]), .B(n11318), .C(n11351), 
         .D(cnt_write[3]), .Z(n10857)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_19.init = 16'h0220;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[7]), 
         .Z(cnt_delay_19__N_207[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_20.init = 16'h2020;
    LUT4 i1_4_lut_adj_21 (.A(state[0]), .B(n62), .C(cnt_init[0]), .D(n4_adj_460), 
         .Z(n31)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_21.init = 16'hddcd;
    LUT4 i64_4_lut (.A(n11338), .B(n35), .C(state[1]), .D(n41), .Z(n62)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i64_4_lut.init = 16'hf5c5;
    CCU2D sub_818_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10352), .S1(n261));
    defparam sub_818_add_2_21.INIT0 = 16'h5999;
    defparam sub_818_add_2_21.INIT1 = 16'h0000;
    defparam sub_818_add_2_21.INJECT1_0 = "NO";
    defparam sub_818_add_2_21.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_22 (.A(state[0]), .B(n10916), .C(n10828), .D(n10942), 
         .Z(n35)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_4_lut_adj_22.init = 16'ha0a2;
    LUT4 i9639_2_lut_rep_80_3_lut_4_lut (.A(clk_1mhz), .B(n11352), .C(state[0]), 
         .D(state_back_2__N_286[2]), .Z(sys_clk_c_enable_33)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i9639_2_lut_rep_80_3_lut_4_lut.init = 16'h0004;
    CCU2D sub_818_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10351), .COUT(n10352));
    defparam sub_818_add_2_19.INIT0 = 16'h5999;
    defparam sub_818_add_2_19.INIT1 = 16'h5555;
    defparam sub_818_add_2_19.INJECT1_0 = "NO";
    defparam sub_818_add_2_19.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_23 (.A(state[1]), .B(n11318), .C(n2328), .D(cnt_write[4]), 
         .Z(n10856)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_23.init = 16'h0220;
    LUT4 i9482_2_lut_rep_131 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n11365)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9482_2_lut_rep_131.init = 16'h8888;
    LUT4 i2_4_lut_adj_24 (.A(cnt_init[2]), .B(n11002), .C(n1213[6]), .D(state[0]), 
         .Z(num_delay_19__N_375[6])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i2_4_lut_adj_24.init = 16'h3011;
    LUT4 i9464_2_lut (.A(cnt_write[4]), .B(cnt_write[5]), .Z(n10916)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9464_2_lut.init = 16'heeee;
    CCU2D sub_818_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n10350), .COUT(n10351));
    defparam sub_818_add_2_17.INIT0 = 16'h5555;
    defparam sub_818_add_2_17.INIT1 = 16'h5999;
    defparam sub_818_add_2_17.INJECT1_0 = "NO";
    defparam sub_818_add_2_17.INJECT1_1 = "NO";
    LUT4 i9617_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n11352), .C(state[1]), 
         .D(state_back_2__N_286[2]), .Z(sys_clk_c_enable_89)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i9617_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[8]), 
         .Z(cnt_delay_19__N_207[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_1mhz), .B(n11352), .C(state_back_2__N_286[2]), 
         .D(sys_rst_c), .Z(n10883)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(state[1]), .B(n11320), .C(n10901), 
         .D(state_back_2__N_286[2]), .Z(sys_clk_c_enable_10)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'hf0d0;
    PFUMX mux_440_Mux_2_i63 (.BLUT(n30), .ALUT(n31_adj_461), .C0(n10980), 
          .Z(n680[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;
    PFUMX i9555 (.BLUT(n7), .ALUT(n4056), .C0(cnt_write[4]), .Z(n11006));
    LUT4 i4692_then_4_lut (.A(cnt_read_c[1]), .B(cnt_read[5]), .C(cnt_read_c[4]), 
         .D(cnt_read_c[3]), .Z(n11376)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i4692_then_4_lut.init = 16'h271e;
    LUT4 i14_1_lut (.A(cnt_init[0]), .Z(n10)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i14_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_72 (.A(state_back_2__N_286[2]), .B(n261), .Z(n11306)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_72.init = 16'h2222;
    LUT4 i1_2_lut_rep_85_3_lut_4_lut (.A(clk_1mhz), .B(n11352), .C(n7197), 
         .D(sys_rst_c), .Z(n11319)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_85_3_lut_4_lut.init = 16'h0400;
    LUT4 i9623_3_lut_4_lut (.A(clk_1mhz), .B(n11352), .C(n17_adj_462), 
         .D(state_back_2__N_286[2]), .Z(sys_clk_c_enable_22)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i9623_3_lut_4_lut.init = 16'h4404;
    LUT4 i538_2_lut_rep_91_3_lut (.A(clk_1mhz), .B(n11352), .C(sys_rst_c), 
         .Z(n11325)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i538_2_lut_rep_91_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_4_lut (.A(n11326), .B(n11320), .C(state[1]), .D(n10883), 
         .Z(n10457)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 i2_4_lut_4_lut (.A(cnt_write[0]), .B(n11366), .C(cnt_write[4]), 
         .D(n10942), .Z(n6_adj_452)) /* synthesis lut_function=(A (B (C+!(D)))+!A !((C+(D))+!B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut_4_lut.init = 16'h808c;
    LUT4 i1_3_lut_4_lut_adj_27 (.A(cnt_write[0]), .B(n11366), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n7684)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_27.init = 16'h0800;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(cnt_write[0]), .B(n11366), .C(n11357), 
         .D(cnt_write[4]), .Z(n41)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_adj_28.init = 16'h8880;
    LUT4 cnt_read_1__bdd_4_lut (.A(cnt_read_c[1]), .B(cnt_read_c[4]), .C(cnt_read_c[2]), 
         .D(cnt_read_c[3]), .Z(n11367)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam cnt_read_1__bdd_4_lut.init = 16'hd6bd;
    FD1S3IX cnt_1mhz_901__i2 (.D(n1[2]), .CK(sys_clk_c), .CD(n11352), 
            .Q(cnt_1mhz[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(46[16:31])
    defparam cnt_1mhz_901__i2.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_29 (.A(cnt_read_c[1]), .B(n11323), .C(n11309), 
         .D(cnt_read_c[3]), .Z(sys_clk_c_enable_17)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_29.init = 16'h1000;
    LUT4 i4_4_lut (.A(n10946), .B(n11319), .C(state[1]), .D(cnt_write[0]), 
         .Z(sys_clk_c_enable_37)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i4_4_lut.init = 16'h0040;
    LUT4 i9563_then_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n11369)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam i9563_then_4_lut.init = 16'hbfeb;
    LUT4 i1_2_lut (.A(state_back_2__N_286[2]), .B(state[0]), .Z(n7197)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i3_4_lut_adj_30 (.A(state[0]), .B(n10825), .C(n11362), .D(n10883), 
         .Z(sys_clk_c_enable_44)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_30.init = 16'h8000;
    L6MUX21 i9560 (.D0(n11009), .D1(n11303), .SD(cnt_write[5]), .Z(n1213[6]));
    LUT4 i7808_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7_adj_453)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(89[7] 107[14])
    defparam i7808_2_lut.init = 16'hdddd;
    PFUMX i73 (.BLUT(n30_adj_463), .ALUT(n33), .C0(state[0]), .Z(n40));
    LUT4 i1_3_lut_adj_31 (.A(cnt_init[2]), .B(cnt_init[0]), .C(cnt_init[1]), 
         .Z(n38)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_3_lut_adj_31.init = 16'h8282;
    LUT4 i7795_3_lut (.A(state[1]), .B(state_back_2__N_286[2]), .C(n8037), 
         .Z(num_delay_19__N_375[8])) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i7795_3_lut.init = 16'h3131;
    PFUMX i9558 (.BLUT(n10774), .ALUT(n3954), .C0(cnt_write[4]), .Z(n11009));
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(n11325), .B(\cnt_read[0] ), .C(n11349), 
         .D(cnt_read[5]), .Z(n11307)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'h0020;
    LUT4 i2_3_lut_rep_75_4_lut (.A(n11325), .B(\cnt_read[0] ), .C(cnt_read[5]), 
         .D(cnt_read_c[4]), .Z(n11309)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_rep_75_4_lut.init = 16'h0020;
    LUT4 i1018_2_lut_rep_108 (.A(cnt_read_c[1]), .B(\cnt_read[0] ), .Z(n11342)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1018_2_lut_rep_108.init = 16'h8888;
    LUT4 i2_4_lut_adj_32 (.A(n10866), .B(state[1]), .C(state_back_2__N_286[2]), 
         .D(state[0]), .Z(sys_clk_c_enable_53)) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;
    defparam i2_4_lut_adj_32.init = 16'h0802;
    LUT4 i1025_2_lut_rep_100_3_lut (.A(cnt_read_c[1]), .B(\cnt_read[0] ), 
         .C(cnt_read_c[2]), .Z(n11334)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1025_2_lut_rep_100_3_lut.init = 16'h8080;
    LUT4 n7031_bdd_4_lut (.A(n11335), .B(cnt_write[5]), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n6900)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam n7031_bdd_4_lut.init = 16'hb8f1;
    LUT4 cnt_read_1__bdd_4_lut_9741 (.A(cnt_read_c[1]), .B(cnt_read_c[2]), 
         .C(cnt_read_c[4]), .D(cnt_read_c[3]), .Z(n11292)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam cnt_read_1__bdd_4_lut_9741.init = 16'h2942;
    LUT4 n4_bdd_2_lut_9689 (.A(n261), .B(state_back[1]), .Z(n11188)) /* synthesis lut_function=(A (B)) */ ;
    defparam n4_bdd_2_lut_9689.init = 16'h8888;
    LUT4 cnt_read_1__bdd_3_lut (.A(cnt_read_c[1]), .B(cnt_read_c[2]), .C(cnt_read_c[3]), 
         .Z(n11291)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)+!B !(C)))) */ ;
    defparam cnt_read_1__bdd_3_lut.init = 16'h4949;
    LUT4 i1_3_lut_adj_33 (.A(state[0]), .B(cnt_init[1]), .C(cnt_init[2]), 
         .Z(n8037)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_adj_33.init = 16'h5151;
    LUT4 i1023_2_lut_3_lut (.A(cnt_read_c[1]), .B(\cnt_read[0] ), .C(cnt_read_c[2]), 
         .Z(n208[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1023_2_lut_3_lut.init = 16'h7878;
    LUT4 i4692_else_4_lut (.A(cnt_read_c[1]), .B(cnt_read[5]), .C(cnt_read_c[4]), 
         .D(cnt_read_c[3]), .Z(n11375)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i4692_else_4_lut.init = 16'h3927;
    LUT4 i1030_2_lut_3_lut_4_lut (.A(cnt_read_c[1]), .B(\cnt_read[0] ), 
         .C(cnt_read_c[3]), .D(cnt_read_c[2]), .Z(n208[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1030_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i9732 (.BLUT(n11292), .ALUT(n11291), .C0(cnt_read[5]), .Z(n11293));
    LUT4 i9563_else_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n11368)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i9563_else_4_lut.init = 16'hd6bd;
    LUT4 i2_3_lut_4_lut_adj_34 (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .D(data_wr_buffer[3]), .Z(n10465)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_3_lut_4_lut_adj_34.init = 16'h2000;
    LUT4 i2_4_lut_adj_35 (.A(n11337), .B(n11321), .C(state_back_2__N_286[2]), 
         .D(n11311), .Z(sys_clk_c_enable_8)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_35.init = 16'h8c88;
    LUT4 i1_3_lut_rep_110 (.A(cnt_write[0]), .B(cnt_write[4]), .C(cnt_write[5]), 
         .Z(n11344)) /* synthesis lut_function=(!((B (C))+!A)) */ ;
    defparam i1_3_lut_rep_110.init = 16'h2a2a;
    LUT4 i1016_2_lut (.A(cnt_read_c[1]), .B(\cnt_read[0] ), .Z(n208[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1016_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_4_lut_adj_36 (.A(cnt_write[0]), .B(cnt_write[4]), 
         .C(cnt_write[5]), .D(n11335), .Z(n30_adj_464)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_36.init = 16'h2a2b;
    LUT4 i7764_2_lut_rep_111 (.A(cnt_init[2]), .B(cnt_init[0]), .Z(n11345)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7764_2_lut_rep_111.init = 16'heeee;
    LUT4 mux_54_Mux_5_i7_4_lut (.A(n57), .B(n6_adj_456), .C(state_back_2__N_286[2]), 
         .D(state[1]), .Z(num_delay_19__N_375[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam mux_54_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 state_2__I_0_144_i2_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[0]), 
         .C(state[0]), .D(n11344), .Z(n2)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam state_2__I_0_144_i2_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_2_lut_adj_37 (.A(state[0]), .B(cnt_init[2]), .Z(n57)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_37.init = 16'heeee;
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n11350), .C(one_wire_N_443), 
         .D(n4_adj_465), .Z(one_wire_N_438)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam one_wire_I_0_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_102_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n11336)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_102_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_adj_38 (.A(n680[2]), .B(state_back_2__N_286[2]), .Z(n4_adj_465)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_adj_38.init = 16'h2222;
    LUT4 i1_2_lut_rep_96_3_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(state[1]), 
         .Z(n11330)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_96_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_39 (.A(cnt_write[5]), .B(n11310), .C(cnt_write[4]), 
         .D(n2328), .Z(n10858)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_adj_39.init = 16'h4888;
    LUT4 i2_4_lut_4_lut_adj_40 (.A(cnt_write[1]), .B(data_wr_buffer[4]), 
         .C(cnt_write[2]), .D(n4_adj_466), .Z(n10382)) /* synthesis lut_function=(A (C (D))+!A !((C+!(D))+!B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut_4_lut_adj_40.init = 16'ha400;
    LUT4 i7136_4_lut_4_lut (.A(cnt_write[1]), .B(data_wr_buffer[4]), .C(data_wr_buffer[6]), 
         .D(cnt_write[2]), .Z(n8522)) /* synthesis lut_function=(A (C (D))+!A !((D)+!B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i7136_4_lut_4_lut.init = 16'ha044;
    LUT4 i4706_2_lut_rep_112 (.A(cnt_main[0]), .B(cnt_main[2]), .Z(n11346)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(89[7] 107[14])
    defparam i4706_2_lut_rep_112.init = 16'heeee;
    LUT4 i1_4_lut_adj_41 (.A(n11306), .B(n10881), .C(n30_adj_464), .D(state[1]), 
         .Z(n32)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_41.init = 16'hfaee;
    LUT4 i9667_3_lut_4_lut (.A(cnt_write[5]), .B(n11328), .C(cnt_write[0]), 
         .D(state[1]), .Z(n10447)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i9667_3_lut_4_lut.init = 16'h0700;
    CCU2D sub_818_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n10349), .COUT(n10350));
    defparam sub_818_add_2_15.INIT0 = 16'h5999;
    defparam sub_818_add_2_15.INIT1 = 16'h5999;
    defparam sub_818_add_2_15.INJECT1_0 = "NO";
    defparam sub_818_add_2_15.INJECT1_1 = "NO";
    LUT4 i1044_3_lut_4_lut (.A(cnt_read_c[3]), .B(n11334), .C(cnt_read_c[4]), 
         .D(cnt_read[5]), .Z(n208[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1044_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut_adj_42 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[4]), 
         .Z(cnt_delay_19__N_207[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_42.init = 16'h2020;
    LUT4 i2_3_lut_4_lut_adj_43 (.A(n11325), .B(n7197), .C(n11347), .D(n6), 
         .Z(sys_clk_c_enable_47)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_43.init = 16'h0200;
    LUT4 n7031_bdd_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[3]), 
         .Z(n11205)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(89[7] 107[14])
    defparam n7031_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_77_4_lut (.A(n11336), .B(n6900), .C(state[0]), .D(state[1]), 
         .Z(n11311)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i1_2_lut_rep_77_4_lut.init = 16'h3aff;
    LUT4 i2_3_lut_4_lut_adj_44 (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[3]), 
         .D(state_back_2__N_286[2]), .Z(n10881)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(89[7] 107[14])
    defparam i2_3_lut_4_lut_adj_44.init = 16'h0010;
    CCU2D sub_818_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n10348), .COUT(n10349));
    defparam sub_818_add_2_13.INIT0 = 16'h5555;
    defparam sub_818_add_2_13.INIT1 = 16'h5999;
    defparam sub_818_add_2_13.INJECT1_0 = "NO";
    defparam sub_818_add_2_13.INJECT1_1 = "NO";
    CCU2D add_48_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10326), 
          .S0(n263[19]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_21.INIT0 = 16'h5aaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_4_lut_adj_45 (.A(cnt_write[0]), .B(cnt_write[4]), 
         .C(cnt_write[5]), .D(n11335), .Z(n10828)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_4_lut_4_lut_adj_45.init = 16'he020;
    LUT4 i936_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i936_3_lut_4_lut.init = 16'h7f80;
    LUT4 i929_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i929_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut_adj_46 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[9]), 
         .Z(cnt_delay_19__N_207[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_46.init = 16'h2020;
    LUT4 i2_4_lut_adj_47 (.A(n10866), .B(state[1]), .C(state_back_2__N_286[2]), 
         .D(state[0]), .Z(sys_clk_c_enable_72)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam i2_4_lut_adj_47.init = 16'h2002;
    LUT4 mux_17_Mux_2_i15_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(cnt_main[3]), .Z(state_2__N_325[2])) /* synthesis lut_function=(!(A (B (D)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam mux_17_Mux_2_i15_4_lut_4_lut.init = 16'h0388;
    LUT4 i1070_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n6_adj_467)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1070_2_lut_3_lut.init = 16'hf8f8;
    CCU2D add_48_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10322), .COUT(n10323), .S0(n263[11]), .S1(n263[12]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_13.INIT0 = 16'h5aaa;
    defparam add_48_13.INIT1 = 16'h5aaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    LUT4 i6506_3_lut_4_lut_4_lut (.A(n11339), .B(state_back_2__N_286[2]), 
         .C(n11359), .D(n11360), .Z(n7893)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i6506_3_lut_4_lut_4_lut.init = 16'h0051;
    LUT4 i9480_2_lut_rep_113 (.A(state[1]), .B(cnt_main[3]), .Z(n11347)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9480_2_lut_rep_113.init = 16'heeee;
    LUT4 n4_bdd_2_lut_3_lut_4_lut (.A(state[1]), .B(cnt_main[3]), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n11189)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam n4_bdd_2_lut_3_lut_4_lut.init = 16'h0111;
    FD1P3IX num_delay_i0_i0 (.D(n6_adj_456), .SP(sys_clk_c_enable_88), .CD(n10457), 
            .CK(sys_clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    LUT4 i7731_2_lut_rep_114 (.A(cnt_read_c[1]), .B(cnt_read_c[2]), .Z(n11348)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(194[7] 254[14])
    defparam i7731_2_lut_rep_114.init = 16'h2222;
    FD1P3IX cnt_main_i0_i0 (.D(n8), .SP(sys_clk_c_enable_89), .CD(n7882), 
            .CK(sys_clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_48 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[5]), 
         .Z(cnt_delay_19__N_207[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_48.init = 16'h2020;
    LUT4 i48_4_lut (.A(n10825), .B(n261), .C(state_back_2__N_286[2]), 
         .D(n11346), .Z(n24)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i48_4_lut.init = 16'h303a;
    LUT4 cnt_write_0__bdd_4_lut_9740 (.A(cnt_write[0]), .B(n11335), .C(n3966), 
         .D(cnt_write[4]), .Z(n11303)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam cnt_write_0__bdd_4_lut_9740.init = 16'h22f0;
    LUT4 i5430_3_lut_4_lut (.A(n11338), .B(state[0]), .C(state[1]), .D(n11320), 
         .Z(n6817)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i5430_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1_2_lut_3_lut_adj_49 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[10]), 
         .Z(cnt_delay_19__N_207[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_49.init = 16'h2020;
    LUT4 i9633_2_lut_4_lut (.A(cnt_main[0]), .B(n10_adj_468), .C(n11339), 
         .D(cnt_main[1]), .Z(sys_clk_c_enable_77)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9633_2_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_115 (.A(cnt_read_c[2]), .B(cnt_read_c[1]), .Z(n11349)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_115.init = 16'h2222;
    LUT4 i9630_2_lut_4_lut (.A(cnt_main[0]), .B(n10_adj_468), .C(n11339), 
         .D(cnt_main[1]), .Z(sys_clk_c_enable_80)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i9630_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_50 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[11]), 
         .Z(cnt_delay_19__N_207[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_50.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_51 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[12]), 
         .Z(cnt_delay_19__N_207[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_51.init = 16'h2020;
    LUT4 i1_2_lut_rep_116 (.A(state[0]), .B(state[1]), .Z(n11350)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_116.init = 16'h8888;
    CCU2D sub_818_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10347), .COUT(n10348));
    defparam sub_818_add_2_11.INIT0 = 16'h5555;
    defparam sub_818_add_2_11.INIT1 = 16'h5555;
    defparam sub_818_add_2_11.INJECT1_0 = "NO";
    defparam sub_818_add_2_11.INJECT1_1 = "NO";
    LUT4 i7800_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state_back_2__N_286[2]), 
         .D(n11008), .Z(num_delay_19__N_375[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i7800_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_rep_117 (.A(cnt_write[0]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .Z(n11351)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_rep_117.init = 16'h8080;
    LUT4 i989_2_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .D(cnt_write[3]), .Z(n2328)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i989_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_95_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(state[0]), .D(cnt_init[0]), .Z(n11329)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_rep_95_3_lut_4_lut.init = 16'hf7f0;
    LUT4 i1080_3_lut_rep_118 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n11352)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1080_3_lut_rep_118.init = 16'hc8c8;
    L6MUX21 i71 (.D0(n49), .D1(n40), .SD(state_back_2__N_286[2]), .Z(n35_adj_469));
    LUT4 i1_4_lut_adj_52 (.A(cnt_read_c[2]), .B(n11359), .C(n6_adj_470), 
         .D(cnt_read_c[1]), .Z(n30_adj_463)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_52.init = 16'hccc8;
    LUT4 i1_2_lut_4_lut_adj_53 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n10866)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_53.init = 16'h00c8;
    LUT4 i8908_1_lut (.A(cnt_1mhz[0]), .Z(n1[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(46[16:31])
    defparam i8908_1_lut.init = 16'h5555;
    LUT4 i4_4_lut_adj_54 (.A(cnt_main[3]), .B(n7197), .C(state[1]), .D(cnt_main[2]), 
         .Z(n10_adj_468)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i4_4_lut_adj_54.init = 16'hfffd;
    LUT4 i2_4_lut_adj_55 (.A(n11307), .B(cnt_read_c[4]), .C(cnt_read_c[3]), 
         .D(n11332), .Z(sys_clk_c_enable_74)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i2_4_lut_adj_55.init = 16'h0002;
    PFUMX state_2__I_0_132_Mux_2_i7 (.BLUT(n3_adj_471), .ALUT(n4_adj_472), 
          .C0(state_back_2__N_286[2]), .Z(state_2__N_283[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;
    PFUMX i9690 (.BLUT(n11189), .ALUT(n11188), .C0(state_back_2__N_286[2]), 
          .Z(n11190));
    LUT4 clk_1mhz_I_0_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_437)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam clk_1mhz_I_0_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1091_1_lut (.A(one_wire_N_436), .Z(n2478)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(63[2] 264[5])
    defparam i1091_1_lut.init = 16'h5555;
    PFUMX i70 (.BLUT(n44), .ALUT(n52), .C0(state[1]), .Z(n49));
    LUT4 i8910_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(46[16:31])
    defparam i8910_2_lut.init = 16'h6666;
    LUT4 i28_2_lut_rep_105_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n11339)) /* synthesis lut_function=(A ((D)+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i28_2_lut_rep_105_4_lut.init = 16'hff37;
    CCU2D add_48_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10325), .COUT(n10326), .S0(n263[17]), .S1(n263[18]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_19.INIT0 = 16'h5aaa;
    defparam add_48_19.INIT1 = 16'h5aaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    LUT4 i9591_4_lut (.A(cnt_init[1]), .B(n680[0]), .C(state[0]), .D(n11345), 
         .Z(n2_adj_458)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i9591_4_lut.init = 16'hcfc5;
    FD1P3AX state_i0_i0 (.D(state_2__N_283[0]), .SP(sys_clk_c_enable_90), 
            .CK(sys_clk_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=50, LSE_RLINE=56 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_56 (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .Z(n8451)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i1_2_lut_3_lut_adj_56.init = 16'h2020;
    LUT4 i9660_2_lut_rep_120 (.A(state_back_2__N_286[2]), .B(state[1]), 
         .Z(n11354)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i9660_2_lut_rep_120.init = 16'h4444;
    LUT4 i1_3_lut_3_lut_4_lut (.A(state_back_2__N_286[2]), .B(state[1]), 
         .C(n10901), .D(n11322), .Z(sys_clk_c_enable_1)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i7881_2_lut_rep_121 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n11355)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7881_2_lut_rep_121.init = 16'h8888;
    LUT4 i7882_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7_adj_454)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i7882_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[0]), 
         .Z(cnt_delay_19__N_207[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_57.init = 16'h2020;
    LUT4 i2_2_lut (.A(cnt_read_c[3]), .B(\cnt_read[0] ), .Z(n6_adj_470)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_58 (.A(cnt_write[0]), .B(cnt_write[4]), .C(n10800), 
         .D(cnt_write[5]), .Z(n10809)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_58.init = 16'he200;
    LUT4 i1_2_lut_rep_123 (.A(cnt_write[3]), .B(cnt_write[2]), .Z(n11357)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_123.init = 16'heeee;
    LUT4 i9494_2_lut_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), .C(n10916), 
         .D(cnt_write[1]), .Z(n10946)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i9494_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_440_Mux_2_i30_4_lut (.A(n10465), .B(data_wr_buffer[4]), .C(cnt_write[3]), 
         .D(n8451), .Z(n30)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam mux_440_Mux_2_i30_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_59 (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[1]), .D(cnt_write[0]), .Z(n10800)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_2_lut_3_lut_4_lut_adj_59.init = 16'hfeee;
    LUT4 i33_1_lut (.A(state_back[0]), .Z(n33)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i33_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_101_3_lut (.A(cnt_write[3]), .B(cnt_write[2]), .C(cnt_write[1]), 
         .Z(n11335)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_101_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_94_3_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(cnt_write[4]), .D(cnt_write[1]), .Z(n11328)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_2_lut_rep_94_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i9585_4_lut (.A(n10382), .B(n46), .C(cnt_write[5]), .D(cnt_write[4]), 
         .Z(n31_adj_461)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i9585_4_lut.init = 16'h0aca;
    CCU2D sub_818_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n10346), .COUT(n10347));
    defparam sub_818_add_2_9.INIT0 = 16'h5999;
    defparam sub_818_add_2_9.INIT1 = 16'h5999;
    defparam sub_818_add_2_9.INJECT1_0 = "NO";
    defparam sub_818_add_2_9.INJECT1_1 = "NO";
    LUT4 i1014_1_lut_rep_124 (.A(\cnt_read[0] ), .Z(n11358)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1014_1_lut_rep_124.init = 16'h5555;
    LUT4 i1_4_lut_4_lut_adj_60 (.A(\cnt_read[0] ), .B(state_back_2__N_286[2]), 
         .C(n11359), .D(n11330), .Z(n29_adj_455)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(193[24:39])
    defparam i1_4_lut_4_lut_adj_60.init = 16'hff04;
    CCU2D sub_818_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n10345), .COUT(n10346));
    defparam sub_818_add_2_7.INIT0 = 16'h5999;
    defparam sub_818_add_2_7.INIT1 = 16'h5999;
    defparam sub_818_add_2_7.INJECT1_0 = "NO";
    defparam sub_818_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_125 (.A(cnt_read_c[4]), .B(cnt_read[5]), .Z(n11359)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_125.init = 16'h8888;
    LUT4 mux_440_Mux_2_i46_4_lut (.A(cnt_write[0]), .B(n10465), .C(cnt_write[3]), 
         .D(n8522), .Z(n46)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam mux_440_Mux_2_i46_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_61 (.A(cnt_write[0]), .B(cnt_write[3]), .Z(n4_adj_466)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i1_2_lut_adj_61.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_62 (.A(cnt_read_c[4]), .B(cnt_read[5]), .C(\cnt_read[0] ), 
         .D(state_back_2__N_286[2]), .Z(n13)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_62.init = 16'h0700;
    LUT4 state_2__I_0_132_Mux_2_i4_3_lut_4_lut (.A(cnt_read_c[4]), .B(cnt_read[5]), 
         .C(state[0]), .D(state_back[2]), .Z(n4_adj_472)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam state_2__I_0_132_Mux_2_i4_3_lut_4_lut.init = 16'hf707;
    LUT4 state_2__I_0_144_i3_4_lut (.A(state[0]), .B(n11377), .C(state_back_2__N_286[2]), 
         .D(n10924), .Z(n3)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam state_2__I_0_144_i3_4_lut.init = 16'h05c5;
    LUT4 i1_3_lut_rep_103_4_lut (.A(cnt_read_c[4]), .B(cnt_read[5]), .C(\cnt_read[0] ), 
         .D(n11360), .Z(n11337)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_rep_103_4_lut.init = 16'h0070;
    LUT4 i1_2_lut_rep_126 (.A(state[0]), .B(state[1]), .Z(n11360)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_126.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(state[0]), .B(state[1]), .C(cnt_read_c[3]), 
         .D(state_back_2__N_286[2]), .Z(n68)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'h1000;
    LUT4 state_2__I_0_i3_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n11305), 
         .D(state_back_2__N_286[2]), .Z(n3_adj_459)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;
    defparam state_2__I_0_i3_4_lut_4_lut.init = 16'hfeaa;
    LUT4 i43_3_lut_rep_78_4_lut (.A(state[0]), .B(n11338), .C(state[1]), 
         .D(n11320), .Z(n11312)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i43_3_lut_rep_78_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_3_lut_adj_64 (.A(cnt_init[2]), .B(cnt_init[1]), .C(state[1]), 
         .Z(n4_adj_460)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i1_2_lut_3_lut_adj_64.init = 16'h8f8f;
    LUT4 i9648_2_lut (.A(state_back_2__N_286[2]), .B(state[1]), .Z(n11002)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i9648_2_lut.init = 16'hbbbb;
    LUT4 i9671_2_lut (.A(cnt_write[5]), .B(cnt_write[4]), .Z(n10980)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(126[7] 189[14])
    defparam i9671_2_lut.init = 16'hbbbb;
    LUT4 i2_2_lut_rep_98_3_lut (.A(state[0]), .B(state[1]), .C(state_back_2__N_286[2]), 
         .Z(n11332)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_2_lut_rep_98_3_lut.init = 16'hefef;
    LUT4 i9642_2_lut_rep_83_2_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), 
         .C(n11352), .D(clk_1mhz), .Z(sys_clk_c_enable_34)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i9642_2_lut_rep_83_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i116_2_lut_rep_89_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(cnt_read_c[2]), 
         .D(state_back_2__N_286[2]), .Z(n11323)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i116_2_lut_rep_89_3_lut_4_lut.init = 16'hfeff;
    LUT4 i9472_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(\cnt_read[0] ), 
         .Z(n10924)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9472_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_127 (.A(state[0]), .B(state[1]), .Z(n11361)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_127.init = 16'hbbbb;
    LUT4 i7730_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(state_back_2__N_286[2]), 
         .Z(state_back_2__N_286[0])) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i7730_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i2_3_lut_rep_128 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n11362)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_128.init = 16'h0808;
    LUT4 i1_2_lut_rep_104_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n11338)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_104_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_adj_65 (.A(state[1]), .B(cnt_main[3]), .Z(n10825)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_65.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_then_4_lut (.A(n11320), .B(n11325), .C(n11327), 
         .D(state_back_2__N_286[2]), .Z(n11379)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_then_4_lut.init = 16'hc080;
    CCU2D add_48_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10324), .COUT(n10325), .S0(n263[15]), .S1(n263[16]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_17.INIT0 = 16'h5aaa;
    defparam add_48_17.INIT1 = 16'h5aaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    CCU2D sub_818_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n10344), .COUT(n10345));
    defparam sub_818_add_2_5.INIT0 = 16'h5999;
    defparam sub_818_add_2_5.INIT1 = 16'h5999;
    defparam sub_818_add_2_5.INJECT1_0 = "NO";
    defparam sub_818_add_2_5.INJECT1_1 = "NO";
    LUT4 i9490_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n10942)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(57[14:23])
    defparam i9490_2_lut_3_lut_4_lut.init = 16'hfff4;
    LUT4 i6507_2_lut_3_lut_4_lut (.A(state_back_2__N_286[2]), .B(n11339), 
         .C(n4_adj_460), .D(state[0]), .Z(n7897)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i6507_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_else_4_lut (.A(n11325), .B(n11327), .C(state_back_2__N_286[2]), 
         .D(n11326), .Z(n11378)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_else_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_rep_132 (.A(state[0]), .B(cnt_write[5]), .Z(n11366)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_rep_132.init = 16'h2222;
    LUT4 i9625_4_lut_4_lut (.A(n11337), .B(state_back_2__N_286[2]), .C(n31), 
         .D(n11325), .Z(sys_clk_c_enable_31)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i9625_4_lut_4_lut.init = 16'h8b00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_66 (.A(state[0]), .B(cnt_write[5]), .C(cnt_write[4]), 
         .D(cnt_write[0]), .Z(n10869)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i1_2_lut_3_lut_4_lut_adj_66.init = 16'h0200;
    LUT4 i6379_3_lut_else_4_lut (.A(cnt_read[5]), .B(cnt_read_c[1]), .C(cnt_read_c[4]), 
         .D(cnt_read_c[3]), .Z(n11372)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(194[7] 254[14])
    defparam i6379_3_lut_else_4_lut.init = 16'h2698;
    LUT4 i1_2_lut_3_lut_adj_67 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[1]), 
         .Z(cnt_delay_19__N_207[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_67.init = 16'h2020;
    LUT4 i8_1_lut (.A(cnt_main[0]), .Z(n8)) /* synthesis lut_function=(!(A)) */ ;
    defparam i8_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_76_3_lut_4_lut (.A(cnt_write[4]), .B(n11335), .C(state[1]), 
         .D(cnt_write[5]), .Z(n11310)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_76_3_lut_4_lut.init = 16'h70f0;
    LUT4 i9594_4_lut (.A(state_2__N_325[2]), .B(n11208), .C(state[1]), 
         .D(state[0]), .Z(n3_adj_471)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i9594_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[13]), 
         .Z(cnt_delay_19__N_207[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_68.init = 16'h2020;
    LUT4 i11_2_lut (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(51[14:22])
    defparam i11_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_adj_69 (.A(state[0]), .B(cnt_main[3]), .C(n8632), .Z(n44)) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i1_3_lut_adj_69.init = 16'h8a8a;
    LUT4 i7247_3_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .Z(n8632)) /* synthesis lut_function=(!(A (B (C))+!A !(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(51[14:22])
    defparam i7247_3_lut.init = 16'h7a7a;
    LUT4 i9651_4_lut (.A(n48), .B(n11339), .C(state[1]), .D(state_back_2__N_286[2]), 
         .Z(sys_clk_c_enable_90)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i9651_4_lut.init = 16'h0111;
    LUT4 i36_1_lut (.A(n35_adj_469), .Z(state_2__N_283[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(61[15:20])
    defparam i36_1_lut.init = 16'h5555;
    CCU2D sub_818_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n10343), .COUT(n10344));
    defparam sub_818_add_2_3.INIT0 = 16'h5999;
    defparam sub_818_add_2_3.INIT1 = 16'h5999;
    defparam sub_818_add_2_3.INJECT1_0 = "NO";
    defparam sub_818_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_818_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n10343));
    defparam sub_818_add_2_1.INIT0 = 16'h0000;
    defparam sub_818_add_2_1.INIT1 = 16'h5999;
    defparam sub_818_add_2_1.INJECT1_0 = "NO";
    defparam sub_818_add_2_1.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_70 (.A(cnt_read_c[4]), .B(cnt_read_c[3]), .C(n11308), 
         .D(n11315), .Z(sys_clk_c_enable_20)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i3_4_lut_adj_70.init = 16'h0020;
    LUT4 i3_4_lut_adj_71 (.A(n11348), .B(n11308), .C(cnt_read_c[4]), .D(n68), 
         .Z(sys_clk_c_enable_21)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_71.init = 16'h0800;
    LUT4 state_2__N_322_2__bdd_4_lut (.A(n11335), .B(cnt_write[5]), .C(cnt_write[4]), 
         .D(cnt_write[0]), .Z(n11207)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+!(D))+!B))) */ ;
    defparam state_2__N_322_2__bdd_4_lut.init = 16'h737f;
    LUT4 n7031_bdd_4_lut_9723 (.A(n11335), .B(cnt_write[5]), .C(cnt_write[0]), 
         .D(cnt_write[4]), .Z(n11204)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B ((D)+!C)+!B !(C+!(D))))) */ ;
    defparam n7031_bdd_4_lut_9723.init = 16'h30f1;
    LUT4 i1_4_lut_adj_72 (.A(state[0]), .B(state[1]), .C(n11190), .D(n18_adj_473), 
         .Z(state_2__N_283[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_adj_72.init = 16'heca0;
    CCU2D add_48_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10323), .COUT(n10324), .S0(n263[13]), .S1(n263[14]));   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(260[29:45])
    defparam add_48_15.INIT0 = 16'h5aaa;
    defparam add_48_15.INIT1 = 16'h5aaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_4_lut (.A(state[0]), .B(n11336), .C(state[1]), 
         .D(n6900), .Z(n29)) /* synthesis lut_function=(!(A (C (D))+!A !(B+!(C)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4fef;
    LUT4 i1_4_lut_adj_73 (.A(state_back_2__N_286[2]), .B(state[0]), .C(n6_adj_474), 
         .D(cnt_init[0]), .Z(n18_adj_473)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i1_4_lut_adj_73.init = 16'haaba;
    LUT4 i1_2_lut_3_lut_adj_74 (.A(state_back_2__N_286[2]), .B(n261), .C(n263[2]), 
         .Z(cnt_delay_19__N_207[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_74.init = 16'h2020;
    LUT4 i2_3_lut (.A(cnt_init[1]), .B(one_wire_out), .C(cnt_init[2]), 
         .Z(n6_adj_474)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(75[4] 262[11])
    defparam i2_3_lut.init = 16'h1010;
    LUT4 i9628_4_lut (.A(state[1]), .B(n11339), .C(n42), .D(n21), .Z(sys_clk_c_enable_23)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i9628_4_lut.init = 16'h0103;
    LUT4 i1_4_lut_adj_75 (.A(state_back_2__N_286[2]), .B(n11345), .C(n30_adj_464), 
         .D(state[0]), .Z(n21)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_75.init = 16'hfabb;
    LUT4 i38_3_lut_4_lut (.A(state[1]), .B(n11345), .C(state[0]), .D(n11206), 
         .Z(n17_adj_462)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i38_3_lut_4_lut.init = 16'hf202;
    LUT4 i958_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(111[24:39])
    defparam i958_3_lut.init = 16'h6a6a;
    LUT4 i6493_4_lut (.A(sys_clk_c_enable_89), .B(n6_adj_467), .C(state[0]), 
         .D(cnt_main[3]), .Z(n7882)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/ds18b20.v(74[12] 263[6])
    defparam i6493_4_lut.init = 16'h8a0a;
    PFUMX i9744 (.BLUT(n11372), .ALUT(n11373), .C0(cnt_read_c[2]), .Z(n6_adj_456));
    
endmodule
//
// Verilog Description of module uart_send
//

module uart_send (sys_clk_c, uart_en, \uart_send_data[5] , GND_net, 
            \uart_send_data[4] , uart_txd_c, \uart_send_data[0] , \uart_send_data[6] , 
            \uart_send_data[3] , \uart_send_data[2] , \uart_send_data[1] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input uart_en;
    input \uart_send_data[5] ;
    input GND_net;
    input \uart_send_data[4] ;
    output uart_txd_c;
    input \uart_send_data[0] ;
    input \uart_send_data[6] ;
    input \uart_send_data[3] ;
    input \uart_send_data[2] ;
    input \uart_send_data[1] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(2[8:15])
    
    wire uart_en_d1, uart_en_d0, uart_tx_busy, n7858;
    wire [7:0]tx_data;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(22[12:19])
    
    wire n7856, n11364, uart_tx_busy_N_156, n7773, n7775, n7771, 
        n7769, n7758, n7756, n10360;
    wire [15:0]clk_cnt;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(19[12:19])
    wire [15:0]n69;
    
    wire n10359, n10358, n10357, n7875;
    wire [15:0]n602;
    
    wire sys_clk_c_enable_105, n7868, n10356, n10355, n10354, n10353, 
        n10, sys_clk_c_enable_87, n10793, uart_tx_busy_N_157, n10966, 
        n10974, n10968, n10948, n10945, n10440, n10442, n12, n2750, 
        n2749, n10987, n6599;
    wire [0:0]n2056;
    
    wire n10998, n2774, n2773, n6100, n10995, n6600;
    
    FD1S3AX uart_en_d1_41 (.D(uart_en_d0), .CK(sys_clk_c), .Q(uart_en_d1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(42[10] 45[8])
    defparam uart_en_d1_41.GSR = "ENABLED";
    FD1S3AX tx_flag_42 (.D(n7858), .CK(sys_clk_c), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_flag_42.GSR = "ENABLED";
    FD1S3AX tx_data_i0 (.D(n7856), .CK(sys_clk_c), .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1S3AX uart_en_d0_40 (.D(uart_en), .CK(sys_clk_c), .Q(uart_en_d0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(42[10] 45[8])
    defparam uart_en_d0_40.GSR = "ENABLED";
    LUT4 i6386_4_lut (.A(tx_data[5]), .B(\uart_send_data[5] ), .C(n11364), 
         .D(uart_tx_busy_N_156), .Z(n7773)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6386_4_lut.init = 16'hc0ca;
    FD1S3AX tx_data_i6 (.D(n7775), .CK(sys_clk_c), .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1S3AX tx_data_i5 (.D(n7773), .CK(sys_clk_c), .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1S3AX tx_data_i4 (.D(n7771), .CK(sys_clk_c), .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1S3AX tx_data_i3 (.D(n7769), .CK(sys_clk_c), .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1S3AX tx_data_i2 (.D(n7758), .CK(sys_clk_c), .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1S3AX tx_data_i1 (.D(n7756), .CK(sys_clk_c), .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam tx_data_i1.GSR = "ENABLED";
    CCU2D clk_cnt_900_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10360), .S0(n69[15]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_900_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_17.INJECT1_1 = "NO";
    LUT4 i6384_4_lut (.A(tx_data[4]), .B(\uart_send_data[4] ), .C(n11364), 
         .D(uart_tx_busy_N_156), .Z(n7771)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6384_4_lut.init = 16'hc0ca;
    CCU2D clk_cnt_900_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10359), .COUT(n10360), .S0(n69[13]), .S1(n69[14]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_900_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_900_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10358), .COUT(n10359), .S0(n69[11]), .S1(n69[12]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_900_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_900_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10357), .COUT(n10358), .S0(n69[9]), .S1(n69[10]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_900_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_11.INJECT1_1 = "NO";
    FD1S3IX clk_cnt_900__i0 (.D(n69[0]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i0.GSR = "ENABLED";
    FD1P3JX tx_cnt_FSM_i0 (.D(n602[15]), .SP(sys_clk_c_enable_105), .PD(n7868), 
            .CK(sys_clk_c), .Q(n602[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i0.GSR = "ENABLED";
    CCU2D clk_cnt_900_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10356), .COUT(n10357), .S0(n69[7]), .S1(n69[8]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_900_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_900_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10355), .COUT(n10356), .S0(n69[5]), .S1(n69[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_900_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_900_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10354), .COUT(n10355), .S0(n69[3]), .S1(n69[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_900_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_900_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10353), .COUT(n10354), .S0(n69[1]), .S1(n69[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_900_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_900_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_900_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10353), .S1(n69[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_900_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_900_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_900_add_4_1.INJECT1_1 = "NO";
    LUT4 i9656_3_lut (.A(n602[15]), .B(n10), .C(n602[13]), .Z(sys_clk_c_enable_87)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i9656_3_lut.init = 16'h0101;
    LUT4 en_flag_I_0_2_lut_rep_130 (.A(uart_en_d1), .B(uart_en_d0), .Z(n11364)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(34[18:44])
    defparam en_flag_I_0_2_lut_rep_130.init = 16'h4444;
    LUT4 i7767_3_lut_4_lut (.A(uart_en_d1), .B(uart_en_d0), .C(uart_tx_busy_N_156), 
         .D(uart_tx_busy), .Z(n7858)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(34[18:44])
    defparam i7767_3_lut_4_lut.init = 16'h4f44;
    LUT4 i2_4_lut (.A(n10793), .B(uart_tx_busy_N_157), .C(clk_cnt[2]), 
         .D(clk_cnt[0]), .Z(uart_tx_busy_N_156)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam i2_4_lut.init = 16'h0008;
    LUT4 i9614_4_lut (.A(uart_tx_busy), .B(n10966), .C(n10974), .D(n10968), 
         .Z(n7875)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(80[9:26])
    defparam i9614_4_lut.init = 16'hfffd;
    LUT4 i9514_4_lut (.A(clk_cnt[12]), .B(clk_cnt[10]), .C(clk_cnt[13]), 
         .D(clk_cnt[8]), .Z(n10966)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9514_4_lut.init = 16'hfffe;
    LUT4 i9522_4_lut (.A(clk_cnt[14]), .B(clk_cnt[4]), .C(n10948), .D(n10945), 
         .Z(n10974)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i9522_4_lut.init = 16'hfaea;
    LUT4 i9516_4_lut (.A(clk_cnt[11]), .B(clk_cnt[7]), .C(clk_cnt[9]), 
         .D(clk_cnt[15]), .Z(n10968)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9516_4_lut.init = 16'hfffe;
    LUT4 i6478_1_lut (.A(uart_tx_busy), .Z(n7868)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6478_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(clk_cnt[1]), .B(n10440), .C(n10948), .D(n10442), 
         .Z(n10793)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam i1_4_lut.init = 16'h0020;
    LUT4 i4_4_lut (.A(n602[14]), .B(n602[12]), .C(n602[11]), .D(n602[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(clk_cnt[15]), .B(n12), .C(clk_cnt[7]), .D(clk_cnt[9]), 
         .Z(n10440)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut (.A(clk_cnt[13]), .B(clk_cnt[8]), .C(clk_cnt[10]), .D(clk_cnt[14]), 
         .Z(n10442)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(clk_cnt[4]), .B(clk_cnt[12]), .C(clk_cnt[11]), .D(clk_cnt[3]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3JX uart_txd_47 (.D(n2750), .SP(sys_clk_c_enable_87), .PD(n7868), 
            .CK(sys_clk_c), .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(101[10] 116[26])
    defparam uart_txd_47.GSR = "ENABLED";
    LUT4 i9496_2_lut (.A(clk_cnt[5]), .B(clk_cnt[6]), .Z(n10948)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9496_2_lut.init = 16'h8888;
    LUT4 i6468_4_lut (.A(tx_data[0]), .B(\uart_send_data[0] ), .C(n11364), 
         .D(uart_tx_busy_N_156), .Z(n7856)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6468_4_lut.init = 16'hc0ca;
    LUT4 i7717_2_lut (.A(n2749), .B(n602[0]), .Z(n2750)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i7717_2_lut.init = 16'h2222;
    LUT4 i6388_4_lut (.A(tx_data[6]), .B(\uart_send_data[6] ), .C(n11364), 
         .D(uart_tx_busy_N_156), .Z(n7775)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6388_4_lut.init = 16'hc0ca;
    LUT4 i9493_3_lut_4_lut (.A(clk_cnt[0]), .B(clk_cnt[2]), .C(clk_cnt[3]), 
         .D(clk_cnt[1]), .Z(n10945)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(19[12:19])
    defparam i9493_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_2_lut_3_lut (.A(clk_cnt[0]), .B(clk_cnt[2]), .C(n10793), .Z(sys_clk_c_enable_105)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(19[12:19])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1P3IX tx_cnt_FSM_i1 (.D(n602[0]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[1]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i2 (.D(n602[1]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i3 (.D(n602[2]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[3]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i4 (.D(n602[3]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i5 (.D(n602[4]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[5]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i6 (.D(n602[5]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i7 (.D(n602[6]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[7]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i8 (.D(n602[7]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[8]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i9 (.D(n602[8]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(uart_tx_busy_N_157));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i10 (.D(uart_tx_busy_N_157), .SP(sys_clk_c_enable_105), 
            .CD(n7868), .CK(sys_clk_c), .Q(n602[10]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i11 (.D(n602[10]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[11]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i12 (.D(n602[11]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[12]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i13 (.D(n602[12]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[13]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i14 (.D(n602[13]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[14]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3IX tx_cnt_FSM_i15 (.D(n602[14]), .SP(sys_clk_c_enable_105), .CD(n7868), 
            .CK(sys_clk_c), .Q(n602[15]));   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(89[23:36])
    defparam tx_cnt_FSM_i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i1 (.D(n69[1]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i1.GSR = "ENABLED";
    LUT4 i6382_4_lut (.A(tx_data[3]), .B(\uart_send_data[3] ), .C(n11364), 
         .D(uart_tx_busy_N_156), .Z(n7769)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6382_4_lut.init = 16'hc0ca;
    LUT4 i9536_3_lut (.A(n602[4]), .B(n602[5]), .C(n602[6]), .Z(n10987)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i9536_3_lut.init = 16'h0101;
    LUT4 i6371_4_lut (.A(tx_data[2]), .B(\uart_send_data[2] ), .C(n11364), 
         .D(uart_tx_busy_N_156), .Z(n7758)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6371_4_lut.init = 16'hc0ca;
    LUT4 i6369_4_lut (.A(tx_data[1]), .B(\uart_send_data[1] ), .C(n11364), 
         .D(uart_tx_busy_N_156), .Z(n7756)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(54[10] 66[12])
    defparam i6369_4_lut.init = 16'hc0ca;
    PFUMX i1362 (.BLUT(n6599), .ALUT(n2056[0]), .C0(n10998), .Z(n2749));
    LUT4 i5212_3_lut (.A(n2774), .B(tx_data[3]), .C(n602[4]), .Z(n6599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i5212_3_lut.init = 16'hcaca;
    LUT4 i1387_3_lut (.A(tx_data[5]), .B(tx_data[4]), .C(n602[5]), .Z(n2774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i1387_3_lut.init = 16'hcaca;
    LUT4 i9580_4_lut (.A(n2773), .B(n6100), .C(n602[1]), .D(n10995), 
         .Z(n2056[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i9580_4_lut.init = 16'hcacc;
    LUT4 i1386_3_lut (.A(n602[8]), .B(tx_data[6]), .C(n602[7]), .Z(n2773)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i1386_3_lut.init = 16'hc5c5;
    LUT4 i4713_3_lut (.A(n6600), .B(tx_data[0]), .C(n602[1]), .Z(n6100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i4713_3_lut.init = 16'hcaca;
    LUT4 i9544_2_lut (.A(n602[2]), .B(n602[3]), .Z(n10995)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i9544_2_lut.init = 16'h1111;
    LUT4 i5213_3_lut (.A(tx_data[2]), .B(tx_data[1]), .C(n602[2]), .Z(n6600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i5213_3_lut.init = 16'hcaca;
    LUT4 i9653_4_lut (.A(n602[1]), .B(n602[2]), .C(n602[3]), .D(n10987), 
         .Z(n10998)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(102[9] 114[16])
    defparam i9653_4_lut.init = 16'hfffe;
    FD1S3IX clk_cnt_900__i2 (.D(n69[2]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i3 (.D(n69[3]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i4 (.D(n69[4]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i5 (.D(n69[5]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i6 (.D(n69[6]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i7 (.D(n69[7]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i8 (.D(n69[8]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i9 (.D(n69[9]), .CK(sys_clk_c), .CD(n7875), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i10 (.D(n69[10]), .CK(sys_clk_c), .CD(n7875), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i11 (.D(n69[11]), .CK(sys_clk_c), .CD(n7875), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i12 (.D(n69[12]), .CK(sys_clk_c), .CD(n7875), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i13 (.D(n69[13]), .CK(sys_clk_c), .CD(n7875), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i14 (.D(n69[14]), .CK(sys_clk_c), .CD(n7875), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_900__i15 (.D(n69[15]), .CK(sys_clk_c), .CD(n7875), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/uart.v(75[24:38])
    defparam clk_cnt_900__i15.GSR = "ENABLED";
    
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
// Verilog Description of module blink
//

module blink (led1_pin_c, sys_clk_c, clk_1s) /* synthesis syn_module_defined=1 */ ;
    output led1_pin_c;
    input sys_clk_c;
    input clk_1s;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(2[8:15])
    
    wire blink_io_N_93;
    
    FD1S3AY blink_io_10 (.D(blink_io_N_93), .CK(sys_clk_c), .Q(led1_pin_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=35 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(17[8] 20[6])
    defparam blink_io_10.GSR = "ENABLED";
    LUT4 blink_io_I_0_2_lut (.A(led1_pin_c), .B(clk_1s), .Z(blink_io_N_93)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/led.v(17[8] 20[6])
    defparam blink_io_I_0_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module clock_1s
//

module clock_1s (clk_1s, sys_clk_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_1s;
    input sys_clk_c;
    input GND_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/top_module.v(2[8:15])
    
    wire clk_cnt_31__N_92;
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n10338;
    wire [31:0]clk_cnt;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(8[12:19])
    
    wire n10339, n10363, n10364, n10337, n10336, n10335, n10362, 
        n10334, n10361, n10333, n10332, n10331, n10330, n10329, 
        n10328, n10327, n10371, n10370, n10369, n10368, n10367, 
        n10342, n10366, n10365, n10341, n10340;
    
    FD1S3AX clk_1s_12 (.D(clk_cnt_31__N_92), .CK(sys_clk_c), .Q(clk_1s)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=21, LSE_RLINE=26 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(18[7] 25[5])
    defparam clk_1s_12.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i0 (.D(n133[0]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i0.GSR = "ENABLED";
    CCU2D clk_cnt_898_add_4_25 (.A0(clk_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10338), .COUT(n10339), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_25.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_25.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_25.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_25.INJECT1_1 = "NO";
    CCU2D add_8899_8 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10363), .COUT(n10364));
    defparam add_8899_8.INIT0 = 16'h5555;
    defparam add_8899_8.INIT1 = 16'h5aaa;
    defparam add_8899_8.INJECT1_0 = "NO";
    defparam add_8899_8.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_23 (.A0(clk_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10337), .COUT(n10338), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_23.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_23.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_23.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_23.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_21 (.A0(clk_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10336), .COUT(n10337), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_21.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_21.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_21.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_21.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_19 (.A0(clk_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10335), .COUT(n10336), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_19.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_19.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_19.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_19.INJECT1_1 = "NO";
    CCU2D add_8899_6 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10362), .COUT(n10363));
    defparam add_8899_6.INIT0 = 16'h5555;
    defparam add_8899_6.INIT1 = 16'h5555;
    defparam add_8899_6.INJECT1_0 = "NO";
    defparam add_8899_6.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10334), .COUT(n10335), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_17.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_17.INJECT1_1 = "NO";
    CCU2D add_8899_4 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10361), .COUT(n10362));
    defparam add_8899_4.INIT0 = 16'h5aaa;
    defparam add_8899_4.INIT1 = 16'h5aaa;
    defparam add_8899_4.INJECT1_0 = "NO";
    defparam add_8899_4.INJECT1_1 = "NO";
    CCU2D add_8899_2 (.A0(clk_cnt[9]), .B0(clk_cnt[8]), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10361));
    defparam add_8899_2.INIT0 = 16'h7000;
    defparam add_8899_2.INIT1 = 16'h5555;
    defparam add_8899_2.INJECT1_0 = "NO";
    defparam add_8899_2.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10333), .COUT(n10334), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10332), .COUT(n10333), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10331), .COUT(n10332), .S0(n133[9]), .S1(n133[10]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_9 (.A0(n233[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10330), .COUT(n10331), .S0(n133[7]), .S1(n133[8]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10329), .COUT(n10330), .S0(n133[5]), .S1(n133[6]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10328), .COUT(n10329), .S0(n133[3]), .S1(n133[4]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10327), .COUT(n10328), .S0(n133[1]), .S1(n133[2]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10327), .S1(n133[0]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_1.INIT0 = 16'hF000;
    defparam clk_cnt_898_add_4_1.INIT1 = 16'h0555;
    defparam clk_cnt_898_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_1.INJECT1_1 = "NO";
    FD1S3IX clk_cnt_898__i1 (.D(n133[1]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i2 (.D(n133[2]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i3 (.D(n133[3]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i4 (.D(n133[4]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i5 (.D(n133[5]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i6 (.D(n133[6]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i7 (.D(n133[7]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(n233[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i8 (.D(n133[8]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i9 (.D(n133[9]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i10 (.D(n133[10]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i11 (.D(n133[11]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i12 (.D(n133[12]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i13 (.D(n133[13]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i14 (.D(n133[14]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i15 (.D(n133[15]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i15.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i16 (.D(n133[16]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i16.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i17 (.D(n133[17]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i17.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i18 (.D(n133[18]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i18.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i19 (.D(n133[19]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i19.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i20 (.D(n133[20]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i20.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i21 (.D(n133[21]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i21.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i22 (.D(n133[22]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i22.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i23 (.D(n133[23]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i23.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i24 (.D(n133[24]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i24.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i25 (.D(n133[25]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i25.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i26 (.D(n133[26]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i26.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i27 (.D(n133[27]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i27.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i28 (.D(n133[28]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i28.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i29 (.D(n133[29]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i29.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i30 (.D(n133[30]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i30.GSR = "ENABLED";
    FD1S3IX clk_cnt_898__i31 (.D(n133[31]), .CK(sys_clk_c), .CD(clk_cnt_31__N_92), 
            .Q(clk_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898__i31.GSR = "ENABLED";
    CCU2D add_8899_24 (.A0(clk_cnt[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10371), 
          .S1(clk_cnt_31__N_92));
    defparam add_8899_24.INIT0 = 16'h5555;
    defparam add_8899_24.INIT1 = 16'h0000;
    defparam add_8899_24.INJECT1_0 = "NO";
    defparam add_8899_24.INJECT1_1 = "NO";
    CCU2D add_8899_22 (.A0(clk_cnt[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10370), .COUT(n10371));
    defparam add_8899_22.INIT0 = 16'h5555;
    defparam add_8899_22.INIT1 = 16'h5555;
    defparam add_8899_22.INJECT1_0 = "NO";
    defparam add_8899_22.INJECT1_1 = "NO";
    CCU2D add_8899_20 (.A0(clk_cnt[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10369), .COUT(n10370));
    defparam add_8899_20.INIT0 = 16'h5555;
    defparam add_8899_20.INIT1 = 16'h5555;
    defparam add_8899_20.INJECT1_0 = "NO";
    defparam add_8899_20.INJECT1_1 = "NO";
    CCU2D add_8899_18 (.A0(clk_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10368), .COUT(n10369));
    defparam add_8899_18.INIT0 = 16'h5555;
    defparam add_8899_18.INIT1 = 16'h5555;
    defparam add_8899_18.INJECT1_0 = "NO";
    defparam add_8899_18.INJECT1_1 = "NO";
    CCU2D add_8899_16 (.A0(clk_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10367), .COUT(n10368));
    defparam add_8899_16.INIT0 = 16'h5aaa;
    defparam add_8899_16.INIT1 = 16'h5555;
    defparam add_8899_16.INJECT1_0 = "NO";
    defparam add_8899_16.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_33 (.A0(clk_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10342), .S0(n133[31]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_33.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_33.INIT1 = 16'h0000;
    defparam clk_cnt_898_add_4_33.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_33.INJECT1_1 = "NO";
    CCU2D add_8899_14 (.A0(clk_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10366), .COUT(n10367));
    defparam add_8899_14.INIT0 = 16'h5aaa;
    defparam add_8899_14.INIT1 = 16'h5555;
    defparam add_8899_14.INJECT1_0 = "NO";
    defparam add_8899_14.INJECT1_1 = "NO";
    CCU2D add_8899_12 (.A0(clk_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10365), .COUT(n10366));
    defparam add_8899_12.INIT0 = 16'h5555;
    defparam add_8899_12.INIT1 = 16'h5aaa;
    defparam add_8899_12.INJECT1_0 = "NO";
    defparam add_8899_12.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_31 (.A0(clk_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10341), .COUT(n10342), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_31.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_31.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_31.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_31.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_29 (.A0(clk_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10340), .COUT(n10341), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_29.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_29.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_29.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_29.INJECT1_1 = "NO";
    CCU2D add_8899_10 (.A0(clk_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10364), .COUT(n10365));
    defparam add_8899_10.INIT0 = 16'h5aaa;
    defparam add_8899_10.INIT1 = 16'h5aaa;
    defparam add_8899_10.INJECT1_0 = "NO";
    defparam add_8899_10.INJECT1_1 = "NO";
    CCU2D clk_cnt_898_add_4_27 (.A0(clk_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n10339), .COUT(n10340), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/argon/downloads/step/proj/4.ds18b20/clock.v(23[14:25])
    defparam clk_cnt_898_add_4_27.INIT0 = 16'hfaaa;
    defparam clk_cnt_898_add_4_27.INIT1 = 16'hfaaa;
    defparam clk_cnt_898_add_4_27.INJECT1_0 = "NO";
    defparam clk_cnt_898_add_4_27.INJECT1_1 = "NO";
    
endmodule
