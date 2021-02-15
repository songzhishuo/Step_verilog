// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Feb 15 00:45:42 2021
//
// Verilog Description of module uart_loop
//

module uart_loop (sys_clk, sys_rst_n, recv_done, recv_data, tx_busy, 
            send_en, send_data) /* synthesis syn_module_defined=1 */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(23[8:17])
    input sys_clk;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(24[20:27])
    input sys_rst_n;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(25[22:31])
    input recv_done;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(27[22:31])
    input [7:0]recv_data;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    input tx_busy;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(30[22:29])
    output send_en;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(31[22:29])
    output [7:0]send_data;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(24[20:27])
    
    wire VCC_net, GND_net, sys_rst_n_c, recv_done_c, recv_data_c_7, 
        recv_data_c_6, recv_data_c_5, recv_data_c_4, recv_data_c_3, 
        recv_data_c_2, recv_data_c_1, recv_data_c_0, tx_busy_c, send_en_c, 
        send_data_c_7, send_data_c_6, send_data_c_5, send_data_c_4, 
        send_data_c_3, send_data_c_2, send_data_c_1, send_data_c_0, 
        recv_done_d0, recv_done_d1, tx_ready, n78, send_en_N_13, sys_clk_c_enable_8, 
        tx_ready_N_16;
    
    VLO i57 (.Z(GND_net));
    LUT4 i50_3_lut_4_lut (.A(recv_done_d1), .B(recv_done_d0), .C(tx_ready), 
         .D(tx_busy_c), .Z(tx_ready_N_16)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(48[25:55])
    defparam i50_3_lut_4_lut.init = 16'hf444;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 tx_ready_I_0_28_2_lut (.A(tx_ready), .B(tx_busy_c), .Z(send_en_N_13)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(75[17:39])
    defparam tx_ready_I_0_28_2_lut.init = 16'h2222;
    FD1S3AX tx_ready_24 (.D(tx_ready_N_16), .CK(sys_clk_c), .Q(tx_ready));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam tx_ready_24.GSR = "ENABLED";
    FD1P3AX send_data_i0_i1 (.D(recv_data_c_0), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_0));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i1.GSR = "ENABLED";
    VHI i58 (.Z(VCC_net));
    FD1S3AX recv_done_d1_23 (.D(recv_done_d0), .CK(sys_clk_c), .Q(recv_done_d1));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(56[10] 59[8])
    defparam recv_done_d1_23.GSR = "ENABLED";
    FD1P3IX send_en_25 (.D(n78), .SP(send_en_N_13), .CD(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_en_c));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_en_25.GSR = "ENABLED";
    FD1S3AX recv_done_d0_22 (.D(recv_done_c), .CK(sys_clk_c), .Q(recv_done_d0));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(56[10] 59[8])
    defparam recv_done_d0_22.GSR = "ENABLED";
    LUT4 m1_lut (.Z(n78)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3AX send_data_i0_i2 (.D(recv_data_c_1), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_1));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i2.GSR = "ENABLED";
    OB send_data_pad_7 (.I(send_data_c_7), .O(send_data[7]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    OB send_en_pad (.I(send_en_c), .O(send_en));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(31[22:29])
    OB send_data_pad_6 (.I(send_data_c_6), .O(send_data[6]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    OB send_data_pad_5 (.I(send_data_c_5), .O(send_data[5]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    OB send_data_pad_4 (.I(send_data_c_4), .O(send_data[4]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    OB send_data_pad_3 (.I(send_data_c_3), .O(send_data[3]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    OB send_data_pad_2 (.I(send_data_c_2), .O(send_data[2]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    OB send_data_pad_1 (.I(send_data_c_1), .O(send_data[1]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    OB send_data_pad_0 (.I(send_data_c_0), .O(send_data[0]));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(32[22:31])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(24[20:27])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(25[22:31])
    IB recv_done_pad (.I(recv_done), .O(recv_done_c));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(27[22:31])
    IB recv_data_pad_7 (.I(recv_data[7]), .O(recv_data_c_7));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB recv_data_pad_6 (.I(recv_data[6]), .O(recv_data_c_6));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB recv_data_pad_5 (.I(recv_data[5]), .O(recv_data_c_5));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB recv_data_pad_4 (.I(recv_data[4]), .O(recv_data_c_4));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB recv_data_pad_3 (.I(recv_data[3]), .O(recv_data_c_3));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB recv_data_pad_2 (.I(recv_data[2]), .O(recv_data_c_2));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB recv_data_pad_1 (.I(recv_data[1]), .O(recv_data_c_1));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB recv_data_pad_0 (.I(recv_data[0]), .O(recv_data_c_0));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(28[22:31])
    IB tx_busy_pad (.I(tx_busy), .O(tx_busy_c));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(30[22:29])
    LUT4 recv_done_flag_I_0_2_lut_rep_1 (.A(recv_done_d1), .B(recv_done_d0), 
         .Z(sys_clk_c_enable_8)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(48[25:55])
    defparam recv_done_flag_I_0_2_lut_rep_1.init = 16'h4444;
    FD1P3AX send_data_i0_i3 (.D(recv_data_c_2), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_2));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i3.GSR = "ENABLED";
    FD1P3AX send_data_i0_i4 (.D(recv_data_c_3), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_3));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i4.GSR = "ENABLED";
    FD1P3AX send_data_i0_i5 (.D(recv_data_c_4), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_4));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i5.GSR = "ENABLED";
    FD1P3AX send_data_i0_i6 (.D(recv_data_c_5), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_5));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i6.GSR = "ENABLED";
    FD1P3AX send_data_i0_i7 (.D(recv_data_c_6), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_6));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i7.GSR = "ENABLED";
    FD1P3AX send_data_i0_i8 (.D(recv_data_c_7), .SP(sys_clk_c_enable_8), 
            .CK(sys_clk_c), .Q(send_data_c_7));   // c:/users/argon/desktop/verilog/test_bink/uart_loop.v(69[10] 79[8])
    defparam send_data_i0_i8.GSR = "ENABLED";
    GSR GSR_INST (.GSR(sys_rst_n_c));
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

