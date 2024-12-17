
module iopads(clock, reset, halt, 
	rw_address,
	read_data,
	read_request,
	read_response,
	write_data,
	write_strobe,
	write_request,
	write_response,
	irq_external,
	irq_external_response,
	irq_timer,
	irq_timer_response,
	irq_software,
	irq_software_response,
	irq_fast,
	irq_fast_response,
	real_time_clock,
     rw_address_O,
     clock_I, reset_I, halt_I,
     read_data_I,
     read_request_O,
     read_response_I,
     write_data_O,
     write_strobe_O,
     write_request_O,
     write_response_I,
     irq_external_I,
     irq_external_response_O,
     irq_timer_I,
     irq_timer_response_O,
     irq_software_I,
     irq_software_response_O,
     irq_fast_I,
     irq_fast_response_O,
     real_time_clock_I);

     input clock, reset, halt;
	output [31:0] rw_address;
	input [31:0] read_data;
	output read_request;
	input read_response;
	output [31:0] write_data;
	output [3:0] write_strobe;
	output write_request;
     input write_response;
     input irq_external;
	output irq_external_response;
	input irq_timer;
	output irq_timer_response;
	input irq_software;
	output irq_software_response;
	input [15:0] irq_fast;
	output [15:0] irq_fast_response;
     input  [63:0] real_time_clock;

     output clock_I, reset_I, halt_I;
     input [31:0]  rw_address_O;
     output  [31:0]  read_data_I;
     input read_request_O;
     output  read_response_I;
     input [31:0]  write_data_O;
     input [3:0 ]  write_strobe_O;
     input write_request_O;
     output  write_response_I;
     output  irq_external_I;
     input irq_external_response_O;
     output  irq_timer_I;
     input irq_timer_response_O;
     output  irq_software_I;
     input irq_software_response_O;
     output  [15:0]  irq_fast_I;
     input [15:0]  irq_fast_response_O;
     output  [63:0]  real_time_clock_I;

     ICP PAD_clk_i(.PAD(clock), .Y(clock_I));
     ICP PAD_reset_i(.PAD(reset), .Y(reset_I));
     ICP PAD_halt_i(.PAD(halt), .Y(halt_I));

     BD8P PAD_rw_address_o_0(.A(rw_address_O[0]), .PAD(rw_address[0]));
     BD8P PAD_rw_address_o_1(.A(rw_address_O[1]), .PAD(rw_address[1]));
     BD8P PAD_rw_address_o_2(.A(rw_address_O[2]), .PAD(rw_address[2]));
     BD8P PAD_rw_address_o_3(.A(rw_address_O[3]), .PAD(rw_address[3]));
     BD8P PAD_rw_address_o_4(.A(rw_address_O[4]), .PAD(rw_address[4]));
     BD8P PAD_rw_address_o_5(.A(rw_address_O[5]), .PAD(rw_address[5]));
     BD8P PAD_rw_address_o_6(.A(rw_address_O[6]), .PAD(rw_address[6]));
     BD8P PAD_rw_address_o_7(.A(rw_address_O[7]), .PAD(rw_address[7]));
     BD8P PAD_rw_address_o_8(.A(rw_address_O[8]), .PAD(rw_address[8]));
     BD8P PAD_rw_address_o_9(.A(rw_address_O[9]), .PAD(rw_address[9]));
     BD8P PAD_rw_address_o_10(.A(rw_address_O[10]), .PAD(rw_address[10]));
     BD8P PAD_rw_address_o_11(.A(rw_address_O[11]), .PAD(rw_address[11]));
     BD8P PAD_rw_address_o_12(.A(rw_address_O[12]), .PAD(rw_address[12]));
     BD8P PAD_rw_address_o_13(.A(rw_address_O[13]), .PAD(rw_address[13]));
     BD8P PAD_rw_address_o_14(.A(rw_address_O[14]), .PAD(rw_address[14]));
     BD8P PAD_rw_address_o_15(.A(rw_address_O[15]), .PAD(rw_address[15]));
     BD8P PAD_rw_address_o_16(.A(rw_address_O[16]), .PAD(rw_address[16]));
     BD8P PAD_rw_address_o_17(.A(rw_address_O[17]), .PAD(rw_address[17]));
     BD8P PAD_rw_address_o_18(.A(rw_address_O[18]), .PAD(rw_address[18]));
     BD8P PAD_rw_address_o_19(.A(rw_address_O[19]), .PAD(rw_address[19]));
     BD8P PAD_rw_address_o_20(.A(rw_address_O[20]), .PAD(rw_address[20]));
     BD8P PAD_rw_address_o_21(.A(rw_address_O[21]), .PAD(rw_address[21]));
     BD8P PAD_rw_address_o_22(.A(rw_address_O[22]), .PAD(rw_address[22]));
     BD8P PAD_rw_address_o_23(.A(rw_address_O[23]), .PAD(rw_address[23]));
     BD8P PAD_rw_address_o_24(.A(rw_address_O[24]), .PAD(rw_address[24]));
     BD8P PAD_rw_address_o_25(.A(rw_address_O[25]), .PAD(rw_address[25]));
     BD8P PAD_rw_address_o_26(.A(rw_address_O[26]), .PAD(rw_address[26]));
     BD8P PAD_rw_address_o_27(.A(rw_address_O[27]), .PAD(rw_address[27]));
     BD8P PAD_rw_address_o_28(.A(rw_address_O[28]), .PAD(rw_address[28]));
     BD8P PAD_rw_address_o_29(.A(rw_address_O[29]), .PAD(rw_address[29]));
     BD8P PAD_rw_address_o_30(.A(rw_address_O[30]), .PAD(rw_address[30]));
     BD8P PAD_rw_address_o_31(.A(rw_address_O[31]), .PAD(rw_address[31]));

     ICP PAD_read_data_i_0(.PAD(read_data[0]), .Y(read_data_I[0]));
     ICP PAD_read_data_i_1(.PAD(read_data[1]), .Y(read_data_I[1]));
     ICP PAD_read_data_i_2(.PAD(read_data[2]), .Y(read_data_I[2]));
     ICP PAD_read_data_i_3(.PAD(read_data[3]), .Y(read_data_I[3]));
     ICP PAD_read_data_i_4(.PAD(read_data[4]), .Y(read_data_I[4]));
     ICP PAD_read_data_i_5(.PAD(read_data[5]), .Y(read_data_I[5]));
     ICP PAD_read_data_i_6(.PAD(read_data[6]), .Y(read_data_I[6]));
     ICP PAD_read_data_i_7(.PAD(read_data[7]), .Y(read_data_I[7]));
     ICP PAD_read_data_i_8(.PAD(read_data[8]), .Y(read_data_I[8]));
     ICP PAD_read_data_i_9(.PAD(read_data[9]), .Y(read_data_I[9]));
     ICP PAD_read_data_i_10(.PAD(read_data[10]), .Y(read_data_I[10]));
     ICP PAD_read_data_i_11(.PAD(read_data[11]), .Y(read_data_I[11]));
     ICP PAD_read_data_i_12(.PAD(read_data[12]), .Y(read_data_I[12]));
     ICP PAD_read_data_i_13(.PAD(read_data[13]), .Y(read_data_I[13]));
     ICP PAD_read_data_i_14(.PAD(read_data[14]), .Y(read_data_I[14]));
     ICP PAD_read_data_i_15(.PAD(read_data[15]), .Y(read_data_I[15]));
     ICP PAD_read_data_i_16(.PAD(read_data[16]), .Y(read_data_I[16]));
     ICP PAD_read_data_i_17(.PAD(read_data[17]), .Y(read_data_I[17]));
     ICP PAD_read_data_i_18(.PAD(read_data[18]), .Y(read_data_I[18]));
     ICP PAD_read_data_i_19(.PAD(read_data[19]), .Y(read_data_I[19]));
     ICP PAD_read_data_i_20(.PAD(read_data[20]), .Y(read_data_I[20]));
     ICP PAD_read_data_i_21(.PAD(read_data[21]), .Y(read_data_I[21]));
     ICP PAD_read_data_i_22(.PAD(read_data[22]), .Y(read_data_I[22]));
     ICP PAD_read_data_i_23(.PAD(read_data[23]), .Y(read_data_I[23]));
     ICP PAD_read_data_i_24(.PAD(read_data[24]), .Y(read_data_I[24]));
     ICP PAD_read_data_i_25(.PAD(read_data[25]), .Y(read_data_I[25]));
     ICP PAD_read_data_i_26(.PAD(read_data[26]), .Y(read_data_I[26]));
     ICP PAD_read_data_i_27(.PAD(read_data[27]), .Y(read_data_I[27]));
     ICP PAD_read_data_i_28(.PAD(read_data[28]), .Y(read_data_I[28]));
     ICP PAD_read_data_i_29(.PAD(read_data[29]), .Y(read_data_I[29]));
     ICP PAD_read_data_i_30(.PAD(read_data[30]), .Y(read_data_I[30]));
     ICP PAD_read_data_i_31(.PAD(read_data[31]), .Y(read_data_I[31]));

     BD8P PAD_read_request_o(.A(read_request_O), .PAD(read_request));
     ICP PAD_read_response_i(.PAD(read_response), .Y(read_response_I));

     BD8P PAD_write_data_o_0(.A(write_data_O[0]), .PAD(write_data[0]));
     BD8P PAD_write_data_o_1(.A(write_data_O[1]), .PAD(write_data[1]));
     BD8P PAD_write_data_o_2(.A(write_data_O[2]), .PAD(write_data[2]));
     BD8P PAD_write_data_o_3(.A(write_data_O[3]), .PAD(write_data[3]));
     BD8P PAD_write_data_o_4(.A(write_data_O[4]), .PAD(write_data[4]));
     BD8P PAD_write_data_o_5(.A(write_data_O[5]), .PAD(write_data[5]));
     BD8P PAD_write_data_o_6(.A(write_data_O[6]), .PAD(write_data[6]));
     BD8P PAD_write_data_o_7(.A(write_data_O[7]), .PAD(write_data[7]));
     BD8P PAD_write_data_o_8(.A(write_data_O[8]), .PAD(write_data[8]));
     BD8P PAD_write_data_o_9(.A(write_data_O[9]), .PAD(write_data[9]));
     BD8P PAD_write_data_o_10(.A(write_data_O[10]), .PAD(write_data[10]));
     BD8P PAD_write_data_o_11(.A(write_data_O[11]), .PAD(write_data[11]));
     BD8P PAD_write_data_o_12(.A(write_data_O[12]), .PAD(write_data[12]));
     BD8P PAD_write_data_o_13(.A(write_data_O[13]), .PAD(write_data[13]));
     BD8P PAD_write_data_o_14(.A(write_data_O[14]), .PAD(write_data[14]));
     BD8P PAD_write_data_o_15(.A(write_data_O[15]), .PAD(write_data[15]));
     BD8P PAD_write_data_o_16(.A(write_data_O[16]), .PAD(write_data[16]));
     BD8P PAD_write_data_o_17(.A(write_data_O[17]), .PAD(write_data[17]));
     BD8P PAD_write_data_o_18(.A(write_data_O[18]), .PAD(write_data[18]));
     BD8P PAD_write_data_o_19(.A(write_data_O[19]), .PAD(write_data[19]));
     BD8P PAD_write_data_o_20(.A(write_data_O[20]), .PAD(write_data[20]));
     BD8P PAD_write_data_o_21(.A(write_data_O[21]), .PAD(write_data[21]));
     BD8P PAD_write_data_o_22(.A(write_data_O[22]), .PAD(write_data[22]));
     BD8P PAD_write_data_o_23(.A(write_data_O[23]), .PAD(write_data[23]));
     BD8P PAD_write_data_o_24(.A(write_data_O[24]), .PAD(write_data[24]));
     BD8P PAD_write_data_o_25(.A(write_data_O[25]), .PAD(write_data[25]));
     BD8P PAD_write_data_o_26(.A(write_data_O[26]), .PAD(write_data[26]));
     BD8P PAD_write_data_o_27(.A(write_data_O[27]), .PAD(write_data[27]));
     BD8P PAD_write_data_o_28(.A(write_data_O[28]), .PAD(write_data[28]));
     BD8P PAD_write_data_o_29(.A(write_data_O[29]), .PAD(write_data[29]));
     BD8P PAD_write_data_o_30(.A(write_data_O[30]), .PAD(write_data[30]));
     BD8P PAD_write_data_o_31(.A(write_data_O[31]), .PAD(write_data[31]));

     BD8P PAD_write_strobe_o_0(.A(write_strobe_O[0]), .PAD(write_strobe[0]));
     BD8P PAD_write_strobe_o_1(.A(write_strobe_O[1]), .PAD(write_strobe[1]));
     BD8P PAD_write_strobe_o_2(.A(write_strobe_O[2]), .PAD(write_strobe[2]));
     BD8P PAD_write_strobe_o_3(.A(write_strobe_O[3]), .PAD(write_strobe[3]));
     
     BD8P PAD_write_request_o(.A(write_request_O), .PAD(write_request));
     ICP PAD_write_response_i(.PAD(write_response), .Y(write_response_I));

     ICP PAD_irq_external_i(.PAD(irq_external), .Y(irq_external_I));
     BD8P PAD_irq_external_response_o(.A(irq_external_response_O), .PAD(irq_external_response));

     ICP PAD_irq_timer_i(.PAD(irq_timer), .Y(irq_timer_I));
     BD8P PAD_irq_timer_response_o(.A(irq_timer_response_O), .PAD(irq_timer_response));

     ICP PAD_irq_software_i(.PAD(irq_software), .Y(irq_software_I));
     BD8P PAD_irq_software_response_o(.A(irq_software_response_O), .PAD(irq_software_response));
     
     ICP PAD_irq_fast_i_0(.PAD(irq_fast[0]), .Y(irq_fast_I[0]));
     ICP PAD_irq_fast_i_1(.PAD(irq_fast[1]), .Y(irq_fast_I[1]));
     ICP PAD_irq_fast_i_2(.PAD(irq_fast[2]), .Y(irq_fast_I[2]));
     ICP PAD_irq_fast_i_3(.PAD(irq_fast[3]), .Y(irq_fast_I[3]));
     ICP PAD_irq_fast_i_4(.PAD(irq_fast[4]), .Y(irq_fast_I[4]));
     ICP PAD_irq_fast_i_5(.PAD(irq_fast[5]), .Y(irq_fast_I[5]));
     ICP PAD_irq_fast_i_6(.PAD(irq_fast[6]), .Y(irq_fast_I[6]));
     ICP PAD_irq_fast_i_7(.PAD(irq_fast[7]), .Y(irq_fast_I[7]));
     ICP PAD_irq_fast_i_8(.PAD(irq_fast[8]), .Y(irq_fast_I[8]));
     ICP PAD_irq_fast_i_9(.PAD(irq_fast[9]), .Y(irq_fast_I[9]));
     ICP PAD_irq_fast_i_10(.PAD(irq_fast[10]), .Y(irq_fast_I[10]));
     ICP PAD_irq_fast_i_11(.PAD(irq_fast[11]), .Y(irq_fast_I[11]));
     ICP PAD_irq_fast_i_12(.PAD(irq_fast[12]), .Y(irq_fast_I[12]));
     ICP PAD_irq_fast_i_13(.PAD(irq_fast[13]), .Y(irq_fast_I[13]));
     ICP PAD_irq_fast_i_14(.PAD(irq_fast[14]), .Y(irq_fast_I[14]));
     ICP PAD_irq_fast_i_15(.PAD(irq_fast[15]), .Y(irq_fast_I[15]));

     BD8P PAD_irq_fast_response_o_0(.A(irq_fast_response_O[0]), .PAD(irq_fast_response[0]));
     BD8P PAD_irq_fast_response_o_1(.A(irq_fast_response_O[1]), .PAD(irq_fast_response[1]));
     BD8P PAD_irq_fast_response_o_2(.A(irq_fast_response_O[2]), .PAD(irq_fast_response[2]));
     BD8P PAD_irq_fast_response_o_3(.A(irq_fast_response_O[3]), .PAD(irq_fast_response[3]));
     BD8P PAD_irq_fast_response_o_4(.A(irq_fast_response_O[4]), .PAD(irq_fast_response[4]));
     BD8P PAD_irq_fast_response_o_5(.A(irq_fast_response_O[5]), .PAD(irq_fast_response[5]));
     BD8P PAD_irq_fast_response_o_6(.A(irq_fast_response_O[6]), .PAD(irq_fast_response[6]));
     BD8P PAD_irq_fast_response_o_7(.A(irq_fast_response_O[7]), .PAD(irq_fast_response[7]));
     BD8P PAD_irq_fast_response_o_8(.A(irq_fast_response_O[8]), .PAD(irq_fast_response[8]));
     BD8P PAD_irq_fast_response_o_9(.A(irq_fast_response_O[9]), .PAD(irq_fast_response[9]));
     BD8P PAD_irq_fast_response_o_10(.A(irq_fast_response_O[10]), .PAD(irq_fast_response[10]));
     BD8P PAD_irq_fast_response_o_11(.A(irq_fast_response_O[11]), .PAD(irq_fast_response[11]));
     BD8P PAD_irq_fast_response_o_12(.A(irq_fast_response_O[12]), .PAD(irq_fast_response[12]));
     BD8P PAD_irq_fast_response_o_13(.A(irq_fast_response_O[13]), .PAD(irq_fast_response[13]));
     BD8P PAD_irq_fast_response_o_14(.A(irq_fast_response_O[14]), .PAD(irq_fast_response[14]));
     BD8P PAD_irq_fast_response_o_15(.A(irq_fast_response_O[15]), .PAD(irq_fast_response[15]));

     ICP PAD_real_time_clock_i_0(.PAD(real_time_clock[0]), .Y(real_time_clock_I[0]));
     ICP PAD_real_time_clock_i_1(.PAD(real_time_clock[1]), .Y(real_time_clock_I[1]));
     ICP PAD_real_time_clock_i_2(.PAD(real_time_clock[2]), .Y(real_time_clock_I[2]));
     ICP PAD_real_time_clock_i_3(.PAD(real_time_clock[3]), .Y(real_time_clock_I[3]));
     ICP PAD_real_time_clock_i_4(.PAD(real_time_clock[4]), .Y(real_time_clock_I[4]));
     ICP PAD_real_time_clock_i_5(.PAD(real_time_clock[5]), .Y(real_time_clock_I[5]));
     ICP PAD_real_time_clock_i_6(.PAD(real_time_clock[6]), .Y(real_time_clock_I[6]));
     ICP PAD_real_time_clock_i_7(.PAD(real_time_clock[7]), .Y(real_time_clock_I[7]));
     ICP PAD_real_time_clock_i_8(.PAD(real_time_clock[8]), .Y(real_time_clock_I[8]));
     ICP PAD_real_time_clock_i_9(.PAD(real_time_clock[9]), .Y(real_time_clock_I[9]));
     ICP PAD_real_time_clock_i_10(.PAD(real_time_clock[10]), .Y(real_time_clock_I[10]));
     ICP PAD_real_time_clock_i_11(.PAD(real_time_clock[11]), .Y(real_time_clock_I[11]));
     ICP PAD_real_time_clock_i_12(.PAD(real_time_clock[12]), .Y(real_time_clock_I[12]));
     ICP PAD_real_time_clock_i_13(.PAD(real_time_clock[13]), .Y(real_time_clock_I[13]));
     ICP PAD_real_time_clock_i_14(.PAD(real_time_clock[14]), .Y(real_time_clock_I[14]));
     ICP PAD_real_time_clock_i_15(.PAD(real_time_clock[15]), .Y(real_time_clock_I[15]));
     ICP PAD_real_time_clock_i_16(.PAD(real_time_clock[16]), .Y(real_time_clock_I[16]));
     ICP PAD_real_time_clock_i_17(.PAD(real_time_clock[17]), .Y(real_time_clock_I[17]));
     ICP PAD_real_time_clock_i_18(.PAD(real_time_clock[18]), .Y(real_time_clock_I[18]));
     ICP PAD_real_time_clock_i_19(.PAD(real_time_clock[19]), .Y(real_time_clock_I[19]));
     ICP PAD_real_time_clock_i_20(.PAD(real_time_clock[20]), .Y(real_time_clock_I[20]));
     ICP PAD_real_time_clock_i_21(.PAD(real_time_clock[21]), .Y(real_time_clock_I[21]));
     ICP PAD_real_time_clock_i_22(.PAD(real_time_clock[22]), .Y(real_time_clock_I[22]));
     ICP PAD_real_time_clock_i_23(.PAD(real_time_clock[23]), .Y(real_time_clock_I[23]));
     ICP PAD_real_time_clock_i_24(.PAD(real_time_clock[24]), .Y(real_time_clock_I[24]));
     ICP PAD_real_time_clock_i_25(.PAD(real_time_clock[25]), .Y(real_time_clock_I[25]));
     ICP PAD_real_time_clock_i_26(.PAD(real_time_clock[26]), .Y(real_time_clock_I[26]));
     ICP PAD_real_time_clock_i_27(.PAD(real_time_clock[27]), .Y(real_time_clock_I[27]));
     ICP PAD_real_time_clock_i_28(.PAD(real_time_clock[28]), .Y(real_time_clock_I[28]));
     ICP PAD_real_time_clock_i_29(.PAD(real_time_clock[29]), .Y(real_time_clock_I[29]));
     ICP PAD_real_time_clock_i_30(.PAD(real_time_clock[30]), .Y(real_time_clock_I[30]));
     ICP PAD_real_time_clock_i_31(.PAD(real_time_clock[31]), .Y(real_time_clock_I[31]));
     ICP PAD_real_time_clock_i_32(.PAD(real_time_clock[32]), .Y(real_time_clock_I[32]));
     ICP PAD_real_time_clock_i_33(.PAD(real_time_clock[33]), .Y(real_time_clock_I[33]));
     ICP PAD_real_time_clock_i_34(.PAD(real_time_clock[34]), .Y(real_time_clock_I[34]));
     ICP PAD_real_time_clock_i_35(.PAD(real_time_clock[35]), .Y(real_time_clock_I[35]));
     ICP PAD_real_time_clock_i_36(.PAD(real_time_clock[36]), .Y(real_time_clock_I[36]));
     ICP PAD_real_time_clock_i_37(.PAD(real_time_clock[37]), .Y(real_time_clock_I[37]));
     ICP PAD_real_time_clock_i_38(.PAD(real_time_clock[38]), .Y(real_time_clock_I[38]));
     ICP PAD_real_time_clock_i_39(.PAD(real_time_clock[39]), .Y(real_time_clock_I[39]));
     ICP PAD_real_time_clock_i_40(.PAD(real_time_clock[40]), .Y(real_time_clock_I[40]));
     ICP PAD_real_time_clock_i_41(.PAD(real_time_clock[41]), .Y(real_time_clock_I[41]));
     ICP PAD_real_time_clock_i_42(.PAD(real_time_clock[42]), .Y(real_time_clock_I[42]));
     ICP PAD_real_time_clock_i_43(.PAD(real_time_clock[43]), .Y(real_time_clock_I[43]));
     ICP PAD_real_time_clock_i_44(.PAD(real_time_clock[44]), .Y(real_time_clock_I[44]));
     ICP PAD_real_time_clock_i_45(.PAD(real_time_clock[45]), .Y(real_time_clock_I[45]));
     ICP PAD_real_time_clock_i_46(.PAD(real_time_clock[46]), .Y(real_time_clock_I[46]));
     ICP PAD_real_time_clock_i_47(.PAD(real_time_clock[47]), .Y(real_time_clock_I[47]));
     ICP PAD_real_time_clock_i_48(.PAD(real_time_clock[48]), .Y(real_time_clock_I[48]));
     ICP PAD_real_time_clock_i_49(.PAD(real_time_clock[49]), .Y(real_time_clock_I[49]));
     ICP PAD_real_time_clock_i_50(.PAD(real_time_clock[50]), .Y(real_time_clock_I[50]));
     ICP PAD_real_time_clock_i_51(.PAD(real_time_clock[51]), .Y(real_time_clock_I[51]));
     ICP PAD_real_time_clock_i_52(.PAD(real_time_clock[52]), .Y(real_time_clock_I[52]));
     ICP PAD_real_time_clock_i_53(.PAD(real_time_clock[53]), .Y(real_time_clock_I[53]));
     ICP PAD_real_time_clock_i_54(.PAD(real_time_clock[54]), .Y(real_time_clock_I[54]));
     ICP PAD_real_time_clock_i_55(.PAD(real_time_clock[55]), .Y(real_time_clock_I[55]));
     ICP PAD_real_time_clock_i_56(.PAD(real_time_clock[56]), .Y(real_time_clock_I[56]));
     ICP PAD_real_time_clock_i_57(.PAD(real_time_clock[57]), .Y(real_time_clock_I[57]));
     ICP PAD_real_time_clock_i_58(.PAD(real_time_clock[58]), .Y(real_time_clock_I[58]));
     ICP PAD_real_time_clock_i_59(.PAD(real_time_clock[59]), .Y(real_time_clock_I[59]));
     ICP PAD_real_time_clock_i_60(.PAD(real_time_clock[60]), .Y(real_time_clock_I[60]));
     ICP PAD_real_time_clock_i_61(.PAD(real_time_clock[61]), .Y(real_time_clock_I[61]));
     ICP PAD_real_time_clock_i_62(.PAD(real_time_clock[62]), .Y(real_time_clock_I[62]));
     ICP PAD_real_time_clock_i_63(.PAD(real_time_clock[63]), .Y(real_time_clock_I[63]));

	VDDORPADP PAD_vdd_E();
	VDDPADP PAD_vdd_core_E();

	VDDPADP PAD_vdd_core_N();
	GNDORPADP PAD_vss_core_N();

	GNDORPADP PAD_vss_W();

	GNDORPADP PAD_vss_S();

	CORNERP PAD_corner_ll();
	CORNERP PAD_corner_lr();
	CORNERP PAD_corner_ul();
	CORNERP PAD_corner_ur();	
endmodule

module top(clock, 
              reset, 
              halt, 
              rw_address,
              read_data,
              read_request,
              read_response,
              write_data,
              write_strobe,
              write_request,
              write_response,
              irq_external,
              irq_external_response,
              irq_timer,
              irq_timer_response,
              irq_software,
              irq_software_response,
              irq_fast,
              irq_fast_response,
              real_time_clock);

     input  clock;
     input  reset;
     input  halt;

     output [31:0]  rw_address;
     input [31:0]  read_data;
     output  read_request;
     input  read_response;
     output [31:0]  write_data;
     output [3:0 ]  write_strobe;
     output  write_request;
     input  write_response;

     input  irq_external;
     output  irq_external_response;
     input  irq_timer;
     output  irq_timer_response;
     input  irq_software;
     output  irq_software_response;
     input [15:0]  irq_fast;
     output [15:0]  irq_fast_response;

     input [63:0]  real_time_clock;


	wire clock_I, reset_I, halt_I;
	
	wire [31:0]  rw_address_O;
	wire  [31:0]  read_data_I;
	wire read_request_O;
	wire  read_response_I;
	wire [31:0]  write_data_O;
	wire [3:0 ]  write_strobe_O;
	wire write_request_O;

	wire  write_response_I;

	wire  irq_external_I;
	wire irq_external_response_O;
	wire  irq_timer_I;
	wire irq_timer_response_O;
	wire  irq_software_I;
	wire irq_software_response_O;
	wire  [15:0]  irq_fast_I;
	wire [15:0]  irq_fast_response_O;

	wire  [63:0]  real_time_clock_I;

	rvsteel_core top_INST(
	  .clock(clock_I),
  	  .reset(reset_I),
          .halt(halt_I),
          .rw_address(rw_address_O),
          .read_data(read_data_I),
          .read_request(read_request_O),
          .read_response(read_response_I),
          .write_data(write_data_O),
          .write_strobe(write_strobe_O),
          .write_request(write_request_O),
          .write_response(write_response_I),
          .irq_external(irq_external_I),
          .irq_external_response(irq_external_response_O),
          .irq_timer(irq_timer_I),
          .irq_timer_response(irq_timer_response_O),
          .irq_software(irq_software_I),
          .irq_software_response(irq_software_response_O),
          .irq_fast(irq_fast_I),
          .irq_fast_response(irq_fast_response_O),
          .real_time_clock(real_time_clock_I)
	);

	iopads IOPADS_INST(
          .clock(clock),
          .reset(reset),
          .halt(halt),
          .rw_address(rw_address),
          .read_data(read_data),
          .read_request(read_request),
          .read_response(read_response),
          .write_data(write_data),
          .write_strobe(write_strobe),
          .write_request(write_request),
          .write_response(write_response),
          .irq_external(irq_external),
          .irq_external_response(irq_external_response),
          .irq_timer(irq_timer),
          .irq_timer_response(irq_timer_response),
          .irq_software(irq_software),
          .irq_software_response(irq_software_response),
          .irq_fast(irq_fast),
          .irq_fast_response(irq_fast_response),
          .real_time_clock(real_time_clock)
	);
endmodule