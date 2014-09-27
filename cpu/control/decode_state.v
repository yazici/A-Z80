// Copyright (C) 1991-2011 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Full Version"
// CREATED		"Sun Aug 31 11:17:02 2014"

module decode_state(
	ctl_state_iy_set,
	ctl_state_ixiy_clr,
	ctl_state_ixiy_we,
	ctl_state_halt_set,
	ctl_state_halt_clr,
	ctl_state_tbl_clr,
	ctl_state_tbl_ed_set,
	ctl_state_tbl_cb_set,
	ctl_state_alu,
	clk,
	reset,
	address_is_1,
	ctl_repeat_we,
	in_halt,
	table_cb,
	table_ed,
	table_xx,
	use_ix,
	use_ixiy,
	in_alu,
	repeat_en
);


input wire	ctl_state_iy_set;
input wire	ctl_state_ixiy_clr;
input wire	ctl_state_ixiy_we;
input wire	ctl_state_halt_set;
input wire	ctl_state_halt_clr;
input wire	ctl_state_tbl_clr;
input wire	ctl_state_tbl_ed_set;
input wire	ctl_state_tbl_cb_set;
input wire	ctl_state_alu;
input wire	clk;
input wire	reset;
input wire	address_is_1;
input wire	ctl_repeat_we;
output wire	in_halt;
output wire	table_cb;
output wire	table_ed;
output wire	table_xx;
output wire	use_ix;
output wire	use_ixiy;
output wire	in_alu;
output wire	repeat_en;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;

assign	in_alu = ctl_state_alu;
assign	table_cb = SYNTHESIZED_WIRE_4;
assign	table_ed = SYNTHESIZED_WIRE_3;
assign	use_ix = SYNTHESIZED_WIRE_2;



assign	repeat_en =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_9 = ctl_state_tbl_clr | ctl_state_tbl_ed_set | ctl_state_tbl_cb_set;

assign	SYNTHESIZED_WIRE_7 = ctl_state_halt_clr | ctl_state_halt_set;

assign	use_ixiy = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	table_xx = ~(SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4);

assign	SYNTHESIZED_WIRE_8 = ~(ctl_state_iy_set | ctl_state_ixiy_clr);


mem_cell	b2v_instCB(
	.D(ctl_state_tbl_cb_set),
	.we(SYNTHESIZED_WIRE_9),
	.clk(clk),
	.reset(reset),
	.Q(SYNTHESIZED_WIRE_4));


mem_cell	b2v_instED(
	.D(ctl_state_tbl_ed_set),
	.we(SYNTHESIZED_WIRE_9),
	.clk(clk),
	.reset(reset),
	.Q(SYNTHESIZED_WIRE_3));


mem_cell	b2v_instHALT(
	.D(ctl_state_halt_set),
	.we(SYNTHESIZED_WIRE_7),
	.clk(clk),
	.reset(reset),
	.Q(in_halt));


mem_cell	b2v_instIX1(
	.D(SYNTHESIZED_WIRE_8),
	.we(ctl_state_ixiy_we),
	.clk(clk),
	.reset(reset),
	.Q(SYNTHESIZED_WIRE_2));


mem_cell	b2v_instIY1(
	.D(ctl_state_iy_set),
	.we(ctl_state_ixiy_we),
	.clk(clk),
	.reset(reset),
	.Q(SYNTHESIZED_WIRE_1));


mem_cell	b2v_instNonRep(
	.D(address_is_1),
	.we(ctl_repeat_we),
	.clk(clk),
	.reset(reset),
	.Q(SYNTHESIZED_WIRE_0));


endmodule