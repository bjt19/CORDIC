// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Fri Mar 25 23:58:51 2022"

module parallel_hw(
	clock,
	clk_en,
	reset,
	dataa,
	datab,
	result
);


input wire	clock;
input wire	clk_en;
input wire	reset;
input wire	[31:0] dataa;
input wire	[31:0] datab;
output wire	[31:0] result;

wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;





full_function	b2v_inst(
	.clk_en(clk_en),
	.clock(clock),
	.reset(reset),
	.dataa(dataa),
	.result(SYNTHESIZED_WIRE_0));


full_function	b2v_inst1(
	.clk_en(clk_en),
	.clock(clock),
	.reset(reset),
	.dataa(datab),
	.result(SYNTHESIZED_WIRE_1));


fp_add	b2v_inst4(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_0),
	.datab(SYNTHESIZED_WIRE_1),
	.result(result));


endmodule
