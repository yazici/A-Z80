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
// CREATED		"Sun Sep 21 23:21:21 2014"

module data_pins(
	bus_db_pin_oe,
	bus_db_pin_re,
	ctl_bus_db_we,
	bus_db_oe,
	nclk,
	D,
	db
);


input wire	bus_db_pin_oe;
input wire	bus_db_pin_re;
input wire	ctl_bus_db_we;
input wire	bus_db_oe;
input wire	nclk;
inout wire	[7:0] D;
inout wire	[7:0] db;

reg	[7:0] dout;
wire	[7:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;





always@(posedge nclk)
begin
if (SYNTHESIZED_WIRE_1)
	begin
	dout[7:0] <= SYNTHESIZED_WIRE_0[7:0];
	end
end

assign	SYNTHESIZED_WIRE_3 = {ctl_bus_db_we,ctl_bus_db_we,ctl_bus_db_we,ctl_bus_db_we,ctl_bus_db_we,ctl_bus_db_we,ctl_bus_db_we,ctl_bus_db_we} & db;

assign	SYNTHESIZED_WIRE_2 = {bus_db_pin_re,bus_db_pin_re,bus_db_pin_re,bus_db_pin_re,bus_db_pin_re,bus_db_pin_re,bus_db_pin_re,bus_db_pin_re} & D;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_1 = ctl_bus_db_we | bus_db_pin_re;

assign	db[7] = bus_db_oe ? dout[7] : 1'bz;
assign	db[6] = bus_db_oe ? dout[6] : 1'bz;
assign	db[5] = bus_db_oe ? dout[5] : 1'bz;
assign	db[4] = bus_db_oe ? dout[4] : 1'bz;
assign	db[3] = bus_db_oe ? dout[3] : 1'bz;
assign	db[2] = bus_db_oe ? dout[2] : 1'bz;
assign	db[1] = bus_db_oe ? dout[1] : 1'bz;
assign	db[0] = bus_db_oe ? dout[0] : 1'bz;

assign	D[7] = bus_db_pin_oe ? dout[7] : 1'bz;
assign	D[6] = bus_db_pin_oe ? dout[6] : 1'bz;
assign	D[5] = bus_db_pin_oe ? dout[5] : 1'bz;
assign	D[4] = bus_db_pin_oe ? dout[4] : 1'bz;
assign	D[3] = bus_db_pin_oe ? dout[3] : 1'bz;
assign	D[2] = bus_db_pin_oe ? dout[2] : 1'bz;
assign	D[1] = bus_db_pin_oe ? dout[1] : 1'bz;
assign	D[0] = bus_db_pin_oe ? dout[0] : 1'bz;


endmodule