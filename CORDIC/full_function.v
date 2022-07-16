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
// CREATED		"Fri Mar 25 23:25:31 2022"

module full_function(
	clock,
	clk_en,
	reset,
	dataa,
	const1,
	const2,
	const3,
	cordic,
	cordic_mult,
	divide,
	half,
	result,
	square
);


input wire	clock;
input wire	clk_en;
input wire	reset;
input wire	[31:0] dataa;
output wire	[31:0] const1;
output wire	[31:0] const2;
output wire	[31:0] const3;
output wire	[31:0] cordic;
output wire	[31:0] cordic_mult;
output wire	[31:0] divide;
output wire	[31:0] half;
output wire	[31:0] result;
output wire	[31:0] square;

wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	[31:0] SYNTHESIZED_WIRE_3;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	[31:0] SYNTHESIZED_WIRE_5;
wire	[31:0] SYNTHESIZED_WIRE_6;
wire	[31:0] SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_8;

assign	const1 = SYNTHESIZED_WIRE_0;
assign	const2 = SYNTHESIZED_WIRE_2;
assign	const3 = SYNTHESIZED_WIRE_3;
assign	cordic = SYNTHESIZED_WIRE_4;
assign	cordic_mult = SYNTHESIZED_WIRE_6;
assign	divide = SYNTHESIZED_WIRE_8;
assign	half = SYNTHESIZED_WIRE_7;
assign	square = SYNTHESIZED_WIRE_5;




fp_sub	b2v_inst(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(dataa),
	.datab(SYNTHESIZED_WIRE_0),
	.result(SYNTHESIZED_WIRE_1));


fp_mult	b2v_inst1(
	.clk_en(clk_en),
	.clock(clock),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_1),
	.datab(SYNTHESIZED_WIRE_2),
	.result(SYNTHESIZED_WIRE_8));


fp_mult	b2v_inst2(
	.clk_en(clk_en),
	.clock(clock),
	.aclr(reset),
	.dataa(dataa),
	.datab(dataa),
	.result(SYNTHESIZED_WIRE_5));


fp_mult	b2v_inst3(
	.clk_en(clk_en),
	.clock(clock),
	.aclr(reset),
	.dataa(dataa),
	.datab(SYNTHESIZED_WIRE_3),
	.result(SYNTHESIZED_WIRE_7));


fp_mult	b2v_inst4(
	.clk_en(clk_en),
	.clock(clock),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_4),
	.datab(SYNTHESIZED_WIRE_5),
	.result(SYNTHESIZED_WIRE_6));


fp_add	b2v_inst5(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_6),
	.datab(SYNTHESIZED_WIRE_7),
	.result(result));


cordic_unrolled	b2v_inst6(
	.clk_en(clk_en),
	.clock(clock),
	.reset(reset),
	.dataa(SYNTHESIZED_WIRE_8),
	.result(SYNTHESIZED_WIRE_4));


inv_one_two_eight	b2v_inst7(
	.result(SYNTHESIZED_WIRE_2));


one_two_eight	b2v_inst8(
	.result(SYNTHESIZED_WIRE_0));


point_five	b2v_inst9(
	.result(SYNTHESIZED_WIRE_3));


endmodule
