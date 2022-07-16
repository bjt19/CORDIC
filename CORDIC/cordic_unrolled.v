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
// CREATED		"Fri Mar 25 20:02:47 2022"

module cordic_unrolled(
	reset,
	clock,
	clk_en,
	dataa,
	dataa_check,
	fixed_x_output,
	result,
	x_1,
	x_2,
	x_3,
	x_fixed,
	y_0,
	y_1,
	y_2,
	y_3,
	y_fixed,
	y_out,
	z_0,
	z_fixed,
	z_out,
	zo_0,
	zo_1,
	zo_2,
	zo_3
);


input wire	reset;
input wire	clock;
input wire	clk_en;
input wire	[31:0] dataa;
output wire	[31:0] dataa_check;
output wire	[17:0] fixed_x_output;
output wire	[31:0] result;
output wire	[17:0] x_1;
output wire	[17:0] x_2;
output wire	[17:0] x_3;
output wire	[17:0] x_fixed;
output wire	[17:0] y_0;
output wire	[17:0] y_1;
output wire	[17:0] y_2;
output wire	[17:0] y_3;
output wire	[17:0] y_fixed;
output wire	[31:0] y_out;
output wire	[17:0] z_0;
output wire	[17:0] z_fixed;
output wire	[31:0] z_out;
output wire	[17:0] zo_0;
output wire	[17:0] zo_1;
output wire	[17:0] zo_2;
output wire	[17:0] zo_3;

wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[4:0] SYNTHESIZED_WIRE_1;
wire	[17:0] SYNTHESIZED_WIRE_2;
wire	[17:0] SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_4;
wire	[4:0] SYNTHESIZED_WIRE_5;
wire	[17:0] SYNTHESIZED_WIRE_6;
wire	[17:0] SYNTHESIZED_WIRE_7;
wire	[17:0] SYNTHESIZED_WIRE_8;
wire	[4:0] SYNTHESIZED_WIRE_9;
wire	[17:0] SYNTHESIZED_WIRE_10;
wire	[17:0] SYNTHESIZED_WIRE_11;
wire	[17:0] SYNTHESIZED_WIRE_12;
wire	[4:0] SYNTHESIZED_WIRE_13;
wire	[17:0] SYNTHESIZED_WIRE_14;
wire	[17:0] SYNTHESIZED_WIRE_15;
wire	[17:0] SYNTHESIZED_WIRE_16;
wire	[4:0] SYNTHESIZED_WIRE_17;
wire	[17:0] SYNTHESIZED_WIRE_18;
wire	[17:0] SYNTHESIZED_WIRE_19;
wire	[17:0] SYNTHESIZED_WIRE_20;
wire	[4:0] SYNTHESIZED_WIRE_21;
wire	[17:0] SYNTHESIZED_WIRE_22;
wire	[17:0] SYNTHESIZED_WIRE_23;
wire	[17:0] SYNTHESIZED_WIRE_24;
wire	[4:0] SYNTHESIZED_WIRE_25;
wire	[17:0] SYNTHESIZED_WIRE_26;
wire	[17:0] SYNTHESIZED_WIRE_27;
wire	[17:0] SYNTHESIZED_WIRE_28;
wire	[4:0] SYNTHESIZED_WIRE_29;
wire	[17:0] SYNTHESIZED_WIRE_30;
wire	[17:0] SYNTHESIZED_WIRE_31;
wire	[17:0] SYNTHESIZED_WIRE_32;
wire	[4:0] SYNTHESIZED_WIRE_33;
wire	[17:0] SYNTHESIZED_WIRE_34;
wire	[17:0] SYNTHESIZED_WIRE_35;
wire	[17:0] SYNTHESIZED_WIRE_36;
wire	[4:0] SYNTHESIZED_WIRE_37;
wire	[17:0] SYNTHESIZED_WIRE_38;
wire	[17:0] SYNTHESIZED_WIRE_39;
wire	[17:0] SYNTHESIZED_WIRE_40;
wire	[4:0] SYNTHESIZED_WIRE_41;
wire	[17:0] SYNTHESIZED_WIRE_42;
wire	[17:0] SYNTHESIZED_WIRE_43;
wire	[17:0] SYNTHESIZED_WIRE_44;
wire	[4:0] SYNTHESIZED_WIRE_45;
wire	[17:0] SYNTHESIZED_WIRE_46;
wire	[17:0] SYNTHESIZED_WIRE_47;
wire	[17:0] SYNTHESIZED_WIRE_48;
wire	[4:0] SYNTHESIZED_WIRE_49;
wire	[17:0] SYNTHESIZED_WIRE_50;
wire	[17:0] SYNTHESIZED_WIRE_51;
wire	[17:0] SYNTHESIZED_WIRE_52;
wire	[4:0] SYNTHESIZED_WIRE_53;
wire	[17:0] SYNTHESIZED_WIRE_54;
wire	[17:0] SYNTHESIZED_WIRE_55;
wire	[17:0] SYNTHESIZED_WIRE_56;
wire	[4:0] SYNTHESIZED_WIRE_57;
wire	[17:0] SYNTHESIZED_WIRE_58;
wire	[17:0] SYNTHESIZED_WIRE_59;
wire	[17:0] SYNTHESIZED_WIRE_60;
wire	[4:0] SYNTHESIZED_WIRE_61;
wire	[17:0] SYNTHESIZED_WIRE_62;
wire	[17:0] SYNTHESIZED_WIRE_63;
wire	[17:0] SYNTHESIZED_WIRE_64;
wire	[17:0] SYNTHESIZED_WIRE_65;
wire	[17:0] SYNTHESIZED_WIRE_66;
wire	[17:0] SYNTHESIZED_WIRE_67;

assign	dataa_check = dataa;
assign	fixed_x_output = SYNTHESIZED_WIRE_65;
assign	x_1 = SYNTHESIZED_WIRE_34;
assign	x_2 = SYNTHESIZED_WIRE_38;
assign	x_3 = SYNTHESIZED_WIRE_42;
assign	x_fixed = SYNTHESIZED_WIRE_2;
assign	y_0 = SYNTHESIZED_WIRE_7;
assign	y_1 = SYNTHESIZED_WIRE_35;
assign	y_2 = SYNTHESIZED_WIRE_39;
assign	y_fixed = SYNTHESIZED_WIRE_3;
assign	z_0 = SYNTHESIZED_WIRE_6;
assign	z_fixed = SYNTHESIZED_WIRE_4;
assign	zo_0 = SYNTHESIZED_WIRE_8;
assign	zo_1 = SYNTHESIZED_WIRE_36;
assign	zo_2 = SYNTHESIZED_WIRE_40;
assign	zo_3 = SYNTHESIZED_WIRE_44;




float_to_fixed	b2v_in_conv_z(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(dataa),
	.result(SYNTHESIZED_WIRE_4));


float_to_fixed	b2v_in_conv_z1(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_0),
	.result(SYNTHESIZED_WIRE_2));


x_value	b2v_inst(
	.out(SYNTHESIZED_WIRE_0));


zero	b2v_inst18(
	.result(SYNTHESIZED_WIRE_1));


one	b2v_inst19(
	.result(SYNTHESIZED_WIRE_5));


y_value	b2v_inst2(
	.out(SYNTHESIZED_WIRE_3));


two	b2v_inst20(
	.result(SYNTHESIZED_WIRE_33));


three	b2v_inst21(
	.result(SYNTHESIZED_WIRE_37));


four	b2v_inst22(
	.result(SYNTHESIZED_WIRE_41));


five	b2v_inst24(
	.result(SYNTHESIZED_WIRE_45));


six	b2v_inst25(
	.result(SYNTHESIZED_WIRE_49));


seven	b2v_inst26(
	.result(SYNTHESIZED_WIRE_53));


eight	b2v_inst27(
	.result(SYNTHESIZED_WIRE_57));


nine	b2v_inst28(
	.result(SYNTHESIZED_WIRE_61));


ten	b2v_inst29(
	.result(SYNTHESIZED_WIRE_9));


eleven	b2v_inst30(
	.result(SYNTHESIZED_WIRE_13));


twelve	b2v_inst31(
	.result(SYNTHESIZED_WIRE_17));


thirteen	b2v_inst32(
	.result(SYNTHESIZED_WIRE_21));


fourteen	b2v_inst33(
	.result(SYNTHESIZED_WIRE_25));


fifteen	b2v_inst34(
	.result(SYNTHESIZED_WIRE_29));


cordic_iteration	b2v_iteration0(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_1),
	.x_in(SYNTHESIZED_WIRE_2),
	.y_in(SYNTHESIZED_WIRE_3),
	.z_in(SYNTHESIZED_WIRE_4),
	.x_out(SYNTHESIZED_WIRE_6),
	.y_out(SYNTHESIZED_WIRE_7),
	.z_out(SYNTHESIZED_WIRE_8));


cordic_iteration	b2v_iteration1(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_5),
	.x_in(SYNTHESIZED_WIRE_6),
	.y_in(SYNTHESIZED_WIRE_7),
	.z_in(SYNTHESIZED_WIRE_8),
	.x_out(SYNTHESIZED_WIRE_34),
	.y_out(SYNTHESIZED_WIRE_35),
	.z_out(SYNTHESIZED_WIRE_36));


cordic_iteration	b2v_iteration10(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_9),
	.x_in(SYNTHESIZED_WIRE_10),
	.y_in(SYNTHESIZED_WIRE_11),
	.z_in(SYNTHESIZED_WIRE_12),
	.x_out(SYNTHESIZED_WIRE_14),
	.y_out(SYNTHESIZED_WIRE_15),
	.z_out(SYNTHESIZED_WIRE_16));


cordic_iteration	b2v_iteration11(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_13),
	.x_in(SYNTHESIZED_WIRE_14),
	.y_in(SYNTHESIZED_WIRE_15),
	.z_in(SYNTHESIZED_WIRE_16),
	.x_out(SYNTHESIZED_WIRE_18),
	.y_out(SYNTHESIZED_WIRE_19),
	.z_out(SYNTHESIZED_WIRE_20));


cordic_iteration	b2v_iteration12(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_17),
	.x_in(SYNTHESIZED_WIRE_18),
	.y_in(SYNTHESIZED_WIRE_19),
	.z_in(SYNTHESIZED_WIRE_20),
	.x_out(SYNTHESIZED_WIRE_22),
	.y_out(SYNTHESIZED_WIRE_23),
	.z_out(SYNTHESIZED_WIRE_24));


cordic_iteration	b2v_iteration13(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_21),
	.x_in(SYNTHESIZED_WIRE_22),
	.y_in(SYNTHESIZED_WIRE_23),
	.z_in(SYNTHESIZED_WIRE_24),
	.x_out(SYNTHESIZED_WIRE_26),
	.y_out(SYNTHESIZED_WIRE_27),
	.z_out(SYNTHESIZED_WIRE_28));


cordic_iteration	b2v_iteration14(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_25),
	.x_in(SYNTHESIZED_WIRE_26),
	.y_in(SYNTHESIZED_WIRE_27),
	.z_in(SYNTHESIZED_WIRE_28),
	.x_out(SYNTHESIZED_WIRE_30),
	.y_out(SYNTHESIZED_WIRE_31),
	.z_out(SYNTHESIZED_WIRE_32));


cordic_iteration	b2v_iteration15(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_29),
	.x_in(SYNTHESIZED_WIRE_30),
	.y_in(SYNTHESIZED_WIRE_31),
	.z_in(SYNTHESIZED_WIRE_32),
	.x_out(SYNTHESIZED_WIRE_65),
	.y_out(SYNTHESIZED_WIRE_67),
	.z_out(SYNTHESIZED_WIRE_66));


cordic_iteration	b2v_iteration2(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_33),
	.x_in(SYNTHESIZED_WIRE_34),
	.y_in(SYNTHESIZED_WIRE_35),
	.z_in(SYNTHESIZED_WIRE_36),
	.x_out(SYNTHESIZED_WIRE_38),
	.y_out(SYNTHESIZED_WIRE_39),
	.z_out(SYNTHESIZED_WIRE_40));


cordic_iteration	b2v_iteration3(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_37),
	.x_in(SYNTHESIZED_WIRE_38),
	.y_in(SYNTHESIZED_WIRE_39),
	.z_in(SYNTHESIZED_WIRE_40),
	.x_out(SYNTHESIZED_WIRE_42),
	.y_out(SYNTHESIZED_WIRE_43),
	.z_out(SYNTHESIZED_WIRE_44));


cordic_iteration	b2v_iteration4(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_41),
	.x_in(SYNTHESIZED_WIRE_42),
	.y_in(SYNTHESIZED_WIRE_43),
	.z_in(SYNTHESIZED_WIRE_44),
	.x_out(SYNTHESIZED_WIRE_46),
	.y_out(SYNTHESIZED_WIRE_47),
	.z_out(SYNTHESIZED_WIRE_48));


cordic_iteration	b2v_iteration5(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_45),
	.x_in(SYNTHESIZED_WIRE_46),
	.y_in(SYNTHESIZED_WIRE_47),
	.z_in(SYNTHESIZED_WIRE_48),
	.x_out(SYNTHESIZED_WIRE_50),
	.y_out(SYNTHESIZED_WIRE_51),
	.z_out(SYNTHESIZED_WIRE_52));


cordic_iteration	b2v_iteration6(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_49),
	.x_in(SYNTHESIZED_WIRE_50),
	.y_in(SYNTHESIZED_WIRE_51),
	.z_in(SYNTHESIZED_WIRE_52),
	.x_out(SYNTHESIZED_WIRE_54),
	.y_out(SYNTHESIZED_WIRE_55),
	.z_out(SYNTHESIZED_WIRE_56));


cordic_iteration	b2v_iteration7(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_53),
	.x_in(SYNTHESIZED_WIRE_54),
	.y_in(SYNTHESIZED_WIRE_55),
	.z_in(SYNTHESIZED_WIRE_56),
	.x_out(SYNTHESIZED_WIRE_58),
	.y_out(SYNTHESIZED_WIRE_59),
	.z_out(SYNTHESIZED_WIRE_60));


cordic_iteration	b2v_iteration8(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_57),
	.x_in(SYNTHESIZED_WIRE_58),
	.y_in(SYNTHESIZED_WIRE_59),
	.z_in(SYNTHESIZED_WIRE_60),
	.x_out(SYNTHESIZED_WIRE_62),
	.y_out(SYNTHESIZED_WIRE_63),
	.z_out(SYNTHESIZED_WIRE_64));


cordic_iteration	b2v_iteration9(
	.clock(clock),
	.reset(reset),
	.iteration(SYNTHESIZED_WIRE_61),
	.x_in(SYNTHESIZED_WIRE_62),
	.y_in(SYNTHESIZED_WIRE_63),
	.z_in(SYNTHESIZED_WIRE_64),
	.x_out(SYNTHESIZED_WIRE_10),
	.y_out(SYNTHESIZED_WIRE_11),
	.z_out(SYNTHESIZED_WIRE_12));


fixed_to_float	b2v_out_conv_z(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_65),
	.result(result));


fixed_to_float	b2v_out_conv_z2(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_66),
	.result(z_out));


fixed_to_float	b2v_out_conv_z3(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(reset),
	.dataa(SYNTHESIZED_WIRE_67),
	.result(y_out));


endmodule
