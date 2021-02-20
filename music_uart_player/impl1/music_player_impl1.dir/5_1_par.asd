[ActiveSupport PAR]
; Global primary clocks
GLOBAL_PRIMARY_USED = 2;
; Global primary clock #0
GLOBAL_PRIMARY_0_SIGNALNAME = sys_clk_c;
GLOBAL_PRIMARY_0_DRIVERTYPE = PIO;
GLOBAL_PRIMARY_0_LOADNUM = 89;
; Global primary clock #1
GLOBAL_PRIMARY_1_SIGNALNAME = divide_1ms/clk_p;
GLOBAL_PRIMARY_1_DRIVERTYPE = SLICE;
GLOBAL_PRIMARY_1_LOADNUM = 30;
; # of global secondary clocks
GLOBAL_SECONDARY_USED = 3;
; Global secondary clock #0
GLOBAL_SECONDARY_0_SIGNALNAME = m_beep/n15125;
GLOBAL_SECONDARY_0_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_0_LOADNUM = 10;
GLOBAL_SECONDARY_0_SIGTYPE = RST;
; Global secondary clock #1
GLOBAL_SECONDARY_1_SIGNALNAME = divide_1ms/n34497;
GLOBAL_SECONDARY_1_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_1_LOADNUM = 17;
GLOBAL_SECONDARY_1_SIGTYPE = RST;
; Global secondary clock #2
GLOBAL_SECONDARY_2_SIGNALNAME = u_uart_recv/rx_flag;
GLOBAL_SECONDARY_2_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_2_LOADNUM = 16;
GLOBAL_SECONDARY_2_SIGTYPE = RST;
; I/O Bank 0 Usage
BANK_0_USED = 2;
BANK_0_AVAIL = 26;
BANK_0_VCCIO = 2.5V;
BANK_0_VREF1 = NA;
; I/O Bank 1 Usage
BANK_1_USED = 2;
BANK_1_AVAIL = 26;
BANK_1_VCCIO = 2.5V;
BANK_1_VREF1 = NA;
; I/O Bank 2 Usage
BANK_2_USED = 2;
BANK_2_AVAIL = 28;
BANK_2_VCCIO = 2.5V;
BANK_2_VREF1 = NA;
; I/O Bank 3 Usage
BANK_3_USED = 0;
BANK_3_AVAIL = 7;
BANK_3_VCCIO = NA;
BANK_3_VREF1 = NA;
; I/O Bank 4 Usage
BANK_4_USED = 0;
BANK_4_AVAIL = 8;
BANK_4_VCCIO = NA;
BANK_4_VREF1 = NA;
; I/O Bank 5 Usage
BANK_5_USED = 1;
BANK_5_AVAIL = 10;
BANK_5_VCCIO = 2.5V;
BANK_5_VREF1 = NA;
