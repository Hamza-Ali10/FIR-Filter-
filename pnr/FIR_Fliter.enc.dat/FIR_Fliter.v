/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Aug  2 23:46:23 2024
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire LTIE_LTIELO_NET;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   AO2B2X2M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(LTIE_LTIELO_NET));
endmodule

module FIR_Fliter_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [34:0] A;
   input [34:0] B;
   input CI;
   output [34:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [29:2] carry;

   XOR3XLM U1_29 (.Y(SUM[29]), 
	.C(carry[29]), 
	.B(B[29]), 
	.A(A[29]));
   ADDFX2M U1_28 (.S(SUM[28]), 
	.CO(carry[29]), 
	.CI(carry[28]), 
	.B(B[28]), 
	.A(A[28]));
   ADDFX2M U1_27 (.S(SUM[27]), 
	.CO(carry[28]), 
	.CI(carry[27]), 
	.B(B[27]), 
	.A(A[27]));
   ADDFX2M U1_26 (.S(SUM[26]), 
	.CO(carry[27]), 
	.CI(carry[26]), 
	.B(B[26]), 
	.A(A[26]));
   ADDFX2M U1_25 (.S(SUM[25]), 
	.CO(carry[26]), 
	.CI(carry[25]), 
	.B(B[25]), 
	.A(A[25]));
   ADDFX2M U1_24 (.S(SUM[24]), 
	.CO(carry[25]), 
	.CI(carry[24]), 
	.B(B[24]), 
	.A(A[24]));
   ADDFX2M U1_23 (.S(SUM[23]), 
	.CO(carry[24]), 
	.CI(carry[23]), 
	.B(B[23]), 
	.A(A[23]));
   ADDFX2M U1_22 (.S(SUM[22]), 
	.CO(carry[23]), 
	.CI(carry[22]), 
	.B(B[22]), 
	.A(A[22]));
   ADDFX2M U1_21 (.S(SUM[21]), 
	.CO(carry[22]), 
	.CI(carry[21]), 
	.B(B[21]), 
	.A(A[21]));
   ADDFX2M U1_20 (.S(SUM[20]), 
	.CO(carry[21]), 
	.CI(carry[20]), 
	.B(B[20]), 
	.A(A[20]));
   ADDFX2M U1_19 (.S(SUM[19]), 
	.CO(carry[20]), 
	.CI(carry[19]), 
	.B(B[19]), 
	.A(A[19]));
   ADDFX2M U1_18 (.S(SUM[18]), 
	.CO(carry[19]), 
	.CI(carry[18]), 
	.B(B[18]), 
	.A(A[18]));
   ADDFX2M U1_17 (.S(SUM[17]), 
	.CO(carry[18]), 
	.CI(carry[17]), 
	.B(B[17]), 
	.A(A[17]));
   ADDFX2M U1_16 (.S(SUM[16]), 
	.CO(carry[17]), 
	.CI(carry[16]), 
	.B(B[16]), 
	.A(A[16]));
   ADDFX2M U1_15 (.S(SUM[15]), 
	.CO(carry[16]), 
	.CI(carry[15]), 
	.B(B[15]), 
	.A(A[15]));
   ADDFX2M U1_11 (.CO(carry[12]), 
	.CI(carry[11]), 
	.B(B[11]), 
	.A(A[11]));
   ADDFX2M U1_12 (.CO(carry[13]), 
	.CI(carry[12]), 
	.B(B[12]), 
	.A(A[12]));
   ADDFX2M U1_13 (.CO(carry[14]), 
	.CI(carry[13]), 
	.B(B[13]), 
	.A(A[13]));
   ADDFX2M U1_14 (.S(SUM[14]), 
	.CO(carry[15]), 
	.CI(carry[14]), 
	.B(B[14]), 
	.A(A[14]));
   ADDFX2M U1_7 (.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_8 (.CO(carry[9]), 
	.CI(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   ADDFX2M U1_9 (.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
   ADDFX2M U1_10 (.CO(carry[11]), 
	.CI(carry[10]), 
	.B(B[10]), 
	.A(A[10]));
   ADDFX2M U1_3 (.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_4 (.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_5 (.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_6 (.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_1 (.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_2 (.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module FIR_Fliter_DW01_add_2 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [33:0] A;
   input [33:0] B;
   input CI;
   output [33:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [33:2] carry;

   XOR3XLM U1_33 (.Y(SUM[33]), 
	.C(carry[33]), 
	.B(B[33]), 
	.A(A[33]));
   ADDFX2M U1_32 (.S(SUM[32]), 
	.CO(carry[33]), 
	.CI(carry[32]), 
	.B(B[32]), 
	.A(A[32]));
   ADDFX2M U1_31 (.S(SUM[31]), 
	.CO(carry[32]), 
	.CI(carry[31]), 
	.B(B[31]), 
	.A(A[31]));
   ADDFX2M U1_30 (.S(SUM[30]), 
	.CO(carry[31]), 
	.CI(carry[30]), 
	.B(B[30]), 
	.A(A[30]));
   ADDFX2M U1_29 (.S(SUM[29]), 
	.CO(carry[30]), 
	.CI(carry[29]), 
	.B(B[29]), 
	.A(A[29]));
   ADDFX2M U1_28 (.S(SUM[28]), 
	.CO(carry[29]), 
	.CI(carry[28]), 
	.B(B[28]), 
	.A(A[28]));
   ADDFX2M U1_27 (.S(SUM[27]), 
	.CO(carry[28]), 
	.CI(carry[27]), 
	.B(B[27]), 
	.A(A[27]));
   ADDFX2M U1_26 (.S(SUM[26]), 
	.CO(carry[27]), 
	.CI(carry[26]), 
	.B(B[26]), 
	.A(A[26]));
   ADDFX2M U1_25 (.S(SUM[25]), 
	.CO(carry[26]), 
	.CI(carry[25]), 
	.B(B[25]), 
	.A(A[25]));
   ADDFX2M U1_24 (.S(SUM[24]), 
	.CO(carry[25]), 
	.CI(carry[24]), 
	.B(B[24]), 
	.A(A[24]));
   ADDFX2M U1_23 (.S(SUM[23]), 
	.CO(carry[24]), 
	.CI(carry[23]), 
	.B(B[23]), 
	.A(A[23]));
   ADDFX2M U1_22 (.S(SUM[22]), 
	.CO(carry[23]), 
	.CI(carry[22]), 
	.B(B[22]), 
	.A(A[22]));
   ADDFX2M U1_21 (.S(SUM[21]), 
	.CO(carry[22]), 
	.CI(carry[21]), 
	.B(B[21]), 
	.A(A[21]));
   ADDFX2M U1_20 (.S(SUM[20]), 
	.CO(carry[21]), 
	.CI(carry[20]), 
	.B(B[20]), 
	.A(A[20]));
   ADDFX2M U1_19 (.S(SUM[19]), 
	.CO(carry[20]), 
	.CI(carry[19]), 
	.B(B[19]), 
	.A(A[19]));
   ADDFX2M U1_18 (.S(SUM[18]), 
	.CO(carry[19]), 
	.CI(carry[18]), 
	.B(B[18]), 
	.A(A[18]));
   ADDFX2M U1_17 (.S(SUM[17]), 
	.CO(carry[18]), 
	.CI(carry[17]), 
	.B(B[17]), 
	.A(A[17]));
   ADDFX2M U1_16 (.S(SUM[16]), 
	.CO(carry[17]), 
	.CI(carry[16]), 
	.B(B[16]), 
	.A(A[16]));
   ADDFX2M U1_15 (.S(SUM[15]), 
	.CO(carry[16]), 
	.CI(carry[15]), 
	.B(B[15]), 
	.A(A[15]));
   ADDFX2M U1_14 (.S(SUM[14]), 
	.CO(carry[15]), 
	.CI(carry[14]), 
	.B(B[14]), 
	.A(A[14]));
   ADDFX2M U1_13 (.S(SUM[13]), 
	.CO(carry[14]), 
	.CI(carry[13]), 
	.B(B[13]), 
	.A(A[13]));
   ADDFX2M U1_12 (.S(SUM[12]), 
	.CO(carry[13]), 
	.CI(carry[12]), 
	.B(B[12]), 
	.A(A[12]));
   ADDFX2M U1_11 (.S(SUM[11]), 
	.CO(carry[12]), 
	.CI(carry[11]), 
	.B(B[11]), 
	.A(A[11]));
   ADDFX2M U1_10 (.S(SUM[10]), 
	.CO(carry[11]), 
	.CI(carry[10]), 
	.B(B[10]), 
	.A(A[10]));
   ADDFX2M U1_9 (.S(SUM[9]), 
	.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
   ADDFX2M U1_8 (.S(SUM[8]), 
	.CO(carry[9]), 
	.CI(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module FIR_Fliter_DW01_add_3 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [33:0] A;
   input [33:0] B;
   input CI;
   output [33:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [33:2] carry;

   XOR3XLM U1_33 (.Y(SUM[33]), 
	.C(carry[33]), 
	.B(B[33]), 
	.A(A[33]));
   ADDFX2M U1_32 (.S(SUM[32]), 
	.CO(carry[33]), 
	.CI(carry[32]), 
	.B(B[32]), 
	.A(A[32]));
   ADDFX2M U1_31 (.S(SUM[31]), 
	.CO(carry[32]), 
	.CI(carry[31]), 
	.B(B[31]), 
	.A(A[31]));
   ADDFX2M U1_30 (.S(SUM[30]), 
	.CO(carry[31]), 
	.CI(carry[30]), 
	.B(B[30]), 
	.A(A[30]));
   ADDFX2M U1_29 (.S(SUM[29]), 
	.CO(carry[30]), 
	.CI(carry[29]), 
	.B(B[29]), 
	.A(A[29]));
   ADDFX2M U1_28 (.S(SUM[28]), 
	.CO(carry[29]), 
	.CI(carry[28]), 
	.B(B[28]), 
	.A(A[28]));
   ADDFX2M U1_27 (.S(SUM[27]), 
	.CO(carry[28]), 
	.CI(carry[27]), 
	.B(B[27]), 
	.A(A[27]));
   ADDFX2M U1_26 (.S(SUM[26]), 
	.CO(carry[27]), 
	.CI(carry[26]), 
	.B(B[26]), 
	.A(A[26]));
   ADDFX2M U1_25 (.S(SUM[25]), 
	.CO(carry[26]), 
	.CI(carry[25]), 
	.B(B[25]), 
	.A(A[25]));
   ADDFX2M U1_24 (.S(SUM[24]), 
	.CO(carry[25]), 
	.CI(carry[24]), 
	.B(B[24]), 
	.A(A[24]));
   ADDFX2M U1_23 (.S(SUM[23]), 
	.CO(carry[24]), 
	.CI(carry[23]), 
	.B(B[23]), 
	.A(A[23]));
   ADDFX2M U1_22 (.S(SUM[22]), 
	.CO(carry[23]), 
	.CI(carry[22]), 
	.B(B[22]), 
	.A(A[22]));
   ADDFX2M U1_21 (.S(SUM[21]), 
	.CO(carry[22]), 
	.CI(carry[21]), 
	.B(B[21]), 
	.A(A[21]));
   ADDFX2M U1_20 (.S(SUM[20]), 
	.CO(carry[21]), 
	.CI(carry[20]), 
	.B(B[20]), 
	.A(A[20]));
   ADDFX2M U1_19 (.S(SUM[19]), 
	.CO(carry[20]), 
	.CI(carry[19]), 
	.B(B[19]), 
	.A(A[19]));
   ADDFX2M U1_18 (.S(SUM[18]), 
	.CO(carry[19]), 
	.CI(carry[18]), 
	.B(B[18]), 
	.A(A[18]));
   ADDFX2M U1_17 (.S(SUM[17]), 
	.CO(carry[18]), 
	.CI(carry[17]), 
	.B(B[17]), 
	.A(A[17]));
   ADDFX2M U1_16 (.S(SUM[16]), 
	.CO(carry[17]), 
	.CI(carry[16]), 
	.B(B[16]), 
	.A(A[16]));
   ADDFX2M U1_15 (.S(SUM[15]), 
	.CO(carry[16]), 
	.CI(carry[15]), 
	.B(B[15]), 
	.A(A[15]));
   ADDFX2M U1_14 (.S(SUM[14]), 
	.CO(carry[15]), 
	.CI(carry[14]), 
	.B(B[14]), 
	.A(A[14]));
   ADDFX2M U1_13 (.S(SUM[13]), 
	.CO(carry[14]), 
	.CI(carry[13]), 
	.B(B[13]), 
	.A(A[13]));
   ADDFX2M U1_12 (.S(SUM[12]), 
	.CO(carry[13]), 
	.CI(carry[12]), 
	.B(B[12]), 
	.A(A[12]));
   ADDFX2M U1_11 (.S(SUM[11]), 
	.CO(carry[12]), 
	.CI(carry[11]), 
	.B(B[11]), 
	.A(A[11]));
   ADDFX2M U1_10 (.S(SUM[10]), 
	.CO(carry[11]), 
	.CI(carry[10]), 
	.B(B[10]), 
	.A(A[10]));
   ADDFX2M U1_9 (.S(SUM[9]), 
	.CO(carry[10]), 
	.CI(carry[9]), 
	.B(B[9]), 
	.A(A[9]));
   ADDFX2M U1_8 (.S(SUM[8]), 
	.CO(carry[9]), 
	.CI(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module FIR_Fliter (
	CLK, 
	Signal_Noise, 
	Fliter_Signal, 
	SI, 
	SE, 
	test_mode, 
	scan_clk, 
	scan_rst, 
	SO);
   input CLK;
   input [15:0] Signal_Noise;
   output [15:0] Fliter_Signal;
   input SI;
   input SE;
   input test_mode;
   input scan_clk;
   input scan_rst;
   output SO;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire m_clk;
   wire sum_0_0__32_;
   wire sum_0_0__31_;
   wire sum_0_0__30_;
   wire sum_0_0__29_;
   wire sum_0_0__28_;
   wire sum_0_0__27_;
   wire sum_0_0__26_;
   wire sum_0_0__25_;
   wire sum_0_0__24_;
   wire sum_0_0__23_;
   wire sum_0_0__22_;
   wire sum_0_0__21_;
   wire sum_0_0__20_;
   wire sum_0_0__19_;
   wire sum_0_0__18_;
   wire sum_0_0__17_;
   wire sum_0_0__16_;
   wire sum_0_0__15_;
   wire sum_0_0__14_;
   wire sum_0_0__13_;
   wire sum_0_0__12_;
   wire sum_0_0__11_;
   wire sum_0_0__10_;
   wire sum_0_0__9_;
   wire sum_0_0__8_;
   wire sum_0_0__7_;
   wire sum_0_0__6_;
   wire sum_0_0__5_;
   wire sum_0_0__4_;
   wire sum_0_0__3_;
   wire sum_0_0__2_;
   wire sum_0_0__1_;
   wire sum_0_0__0_;
   wire sum_0_1__32_;
   wire sum_0_1__31_;
   wire sum_0_1__30_;
   wire sum_0_1__29_;
   wire sum_0_1__28_;
   wire sum_0_1__27_;
   wire sum_0_1__26_;
   wire sum_0_1__25_;
   wire sum_0_1__24_;
   wire sum_0_1__23_;
   wire sum_0_1__22_;
   wire sum_0_1__21_;
   wire sum_0_1__20_;
   wire sum_0_1__19_;
   wire sum_0_1__18_;
   wire sum_0_1__17_;
   wire sum_0_1__16_;
   wire sum_0_1__15_;
   wire sum_0_1__14_;
   wire sum_0_1__13_;
   wire sum_0_1__12_;
   wire sum_0_1__11_;
   wire sum_0_1__10_;
   wire sum_0_1__9_;
   wire sum_0_1__8_;
   wire sum_0_1__7_;
   wire sum_0_1__6_;
   wire sum_0_1__5_;
   wire sum_0_1__4_;
   wire sum_0_1__3_;
   wire sum_0_1__2_;
   wire sum_0_1__1_;
   wire sum_0_1__0_;
   wire sum_0_2__32_;
   wire sum_0_2__31_;
   wire sum_0_2__30_;
   wire sum_0_2__29_;
   wire sum_0_2__28_;
   wire sum_0_2__27_;
   wire sum_0_2__26_;
   wire sum_0_2__25_;
   wire sum_0_2__24_;
   wire sum_0_2__23_;
   wire sum_0_2__22_;
   wire sum_0_2__21_;
   wire sum_0_2__20_;
   wire sum_0_2__19_;
   wire sum_0_2__18_;
   wire sum_0_2__17_;
   wire sum_0_2__16_;
   wire sum_0_2__15_;
   wire sum_0_2__14_;
   wire sum_0_2__13_;
   wire sum_0_2__12_;
   wire sum_0_2__11_;
   wire sum_0_2__10_;
   wire sum_0_2__9_;
   wire sum_0_2__8_;
   wire sum_0_2__7_;
   wire sum_0_2__6_;
   wire sum_0_2__5_;
   wire sum_0_2__4_;
   wire sum_0_2__3_;
   wire sum_0_2__2_;
   wire sum_0_2__1_;
   wire sum_0_2__0_;
   wire sum_0_3__32_;
   wire sum_0_3__31_;
   wire sum_0_3__30_;
   wire sum_0_3__29_;
   wire sum_0_3__28_;
   wire sum_0_3__27_;
   wire sum_0_3__26_;
   wire sum_0_3__25_;
   wire sum_0_3__24_;
   wire sum_0_3__23_;
   wire sum_0_3__22_;
   wire sum_0_3__21_;
   wire sum_0_3__20_;
   wire sum_0_3__19_;
   wire sum_0_3__18_;
   wire sum_0_3__17_;
   wire sum_0_3__16_;
   wire sum_0_3__15_;
   wire sum_0_3__14_;
   wire sum_0_3__13_;
   wire sum_0_3__12_;
   wire sum_0_3__11_;
   wire sum_0_3__10_;
   wire sum_0_3__9_;
   wire sum_0_3__8_;
   wire sum_0_3__7_;
   wire sum_0_3__6_;
   wire sum_0_3__5_;
   wire sum_0_3__4_;
   wire sum_0_3__3_;
   wire sum_0_3__2_;
   wire sum_0_3__1_;
   wire sum_0_3__0_;
   wire N268;
   wire N269;
   wire N270;
   wire N271;
   wire N272;
   wire N273;
   wire N274;
   wire N275;
   wire N276;
   wire N277;
   wire N278;
   wire N279;
   wire N280;
   wire N281;
   wire N282;
   wire N283;
   wire N284;
   wire N285;
   wire N286;
   wire N287;
   wire N288;
   wire N289;
   wire N290;
   wire N291;
   wire N292;
   wire N293;
   wire N294;
   wire N295;
   wire N296;
   wire N297;
   wire N298;
   wire N299;
   wire N300;
   wire N301;
   wire sum_1_0__33_;
   wire sum_1_0__32_;
   wire sum_1_0__31_;
   wire sum_1_0__30_;
   wire sum_1_0__29_;
   wire sum_1_0__28_;
   wire sum_1_0__27_;
   wire sum_1_0__26_;
   wire sum_1_0__25_;
   wire sum_1_0__24_;
   wire sum_1_0__23_;
   wire sum_1_0__22_;
   wire sum_1_0__21_;
   wire sum_1_0__20_;
   wire sum_1_0__19_;
   wire sum_1_0__18_;
   wire sum_1_0__17_;
   wire sum_1_0__16_;
   wire sum_1_0__15_;
   wire sum_1_0__14_;
   wire sum_1_0__13_;
   wire sum_1_0__12_;
   wire sum_1_0__11_;
   wire sum_1_0__10_;
   wire sum_1_0__9_;
   wire sum_1_0__8_;
   wire sum_1_0__7_;
   wire sum_1_0__6_;
   wire sum_1_0__5_;
   wire sum_1_0__4_;
   wire sum_1_0__3_;
   wire sum_1_0__2_;
   wire sum_1_0__1_;
   wire sum_1_0__0_;
   wire sum_1_1__33_;
   wire sum_1_1__32_;
   wire sum_1_1__31_;
   wire sum_1_1__30_;
   wire sum_1_1__29_;
   wire sum_1_1__28_;
   wire sum_1_1__27_;
   wire sum_1_1__26_;
   wire sum_1_1__25_;
   wire sum_1_1__24_;
   wire sum_1_1__23_;
   wire sum_1_1__22_;
   wire sum_1_1__21_;
   wire sum_1_1__20_;
   wire sum_1_1__19_;
   wire sum_1_1__18_;
   wire sum_1_1__17_;
   wire sum_1_1__16_;
   wire sum_1_1__15_;
   wire sum_1_1__14_;
   wire sum_1_1__13_;
   wire sum_1_1__12_;
   wire sum_1_1__11_;
   wire sum_1_1__10_;
   wire sum_1_1__9_;
   wire sum_1_1__8_;
   wire sum_1_1__7_;
   wire sum_1_1__6_;
   wire sum_1_1__5_;
   wire sum_1_1__4_;
   wire sum_1_1__3_;
   wire sum_1_1__2_;
   wire sum_1_1__1_;
   wire sum_1_1__0_;
   wire N302;
   wire N303;
   wire N304;
   wire N305;
   wire N306;
   wire N307;
   wire N308;
   wire N309;
   wire N310;
   wire N311;
   wire N312;
   wire N313;
   wire N314;
   wire N315;
   wire N316;
   wire N317;
   wire N318;
   wire N319;
   wire N320;
   wire N321;
   wire N322;
   wire N323;
   wire N324;
   wire N325;
   wire N326;
   wire N327;
   wire N328;
   wire N329;
   wire N330;
   wire N331;
   wire N332;
   wire N333;
   wire N334;
   wire N335;
   wire N350;
   wire N351;
   wire N352;
   wire N353;
   wire N354;
   wire N355;
   wire N356;
   wire N357;
   wire N358;
   wire N359;
   wire N360;
   wire N361;
   wire N362;
   wire N363;
   wire N364;
   wire N365;
   wire N366;
   wire N367;
   wire N368;
   wire N369;
   wire N370;
   wire N371;
   wire N372;
   wire N373;
   wire N374;
   wire N375;
   wire N376;
   wire N377;
   wire N378;
   wire N379;
   wire N380;
   wire N381;
   wire n512;
   wire n514;
   wire n516;
   wire n518;
   wire n520;
   wire n522;
   wire n524;
   wire n526;
   wire n528;
   wire n530;
   wire n532;
   wire n534;
   wire n536;
   wire n538;
   wire n540;
   wire n542;
   wire n662;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire SYNOPSYS_UNCONNECTED_5;
   wire SYNOPSYS_UNCONNECTED_6;
   wire SYNOPSYS_UNCONNECTED_7;
   wire SYNOPSYS_UNCONNECTED_8;
   wire SYNOPSYS_UNCONNECTED_9;
   wire SYNOPSYS_UNCONNECTED_10;
   wire SYNOPSYS_UNCONNECTED_11;
   wire SYNOPSYS_UNCONNECTED_12;
   wire SYNOPSYS_UNCONNECTED_13;
   wire SYNOPSYS_UNCONNECTED_14;
   wire SYNOPSYS_UNCONNECTED_15;
   wire SYNOPSYS_UNCONNECTED_16;
   wire SYNOPSYS_UNCONNECTED_17;
   wire SYNOPSYS_UNCONNECTED_18;
   wire SYNOPSYS_UNCONNECTED_19;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFQX2M sum_0_reg_0__0_ (.SI(SI), 
	.SE(SE), 
	.Q(sum_0_0__0_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__0_ (.SI(sum_1_0__33_), 
	.SE(SE), 
	.Q(sum_1_1__0_), 
	.D(N302), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__0_ (.SI(sum_0_3__32_), 
	.SE(SE), 
	.Q(sum_1_0__0_), 
	.D(N268), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__1_ (.SI(sum_1_1__0_), 
	.SE(SE), 
	.Q(sum_1_1__1_), 
	.D(N303), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__1_ (.SI(sum_1_0__0_), 
	.SE(SE), 
	.Q(sum_1_0__1_), 
	.D(N269), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__2_ (.SI(sum_1_1__1_), 
	.SE(SE), 
	.Q(sum_1_1__2_), 
	.D(N304), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__2_ (.SI(sum_1_0__1_), 
	.SE(SE), 
	.Q(sum_1_0__2_), 
	.D(N270), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__3_ (.SI(sum_1_1__2_), 
	.SE(SE), 
	.Q(sum_1_1__3_), 
	.D(N305), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__3_ (.SI(sum_1_0__2_), 
	.SE(SE), 
	.Q(sum_1_0__3_), 
	.D(N271), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__4_ (.SI(sum_1_1__3_), 
	.SE(SE), 
	.Q(sum_1_1__4_), 
	.D(N306), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__4_ (.SI(sum_1_0__3_), 
	.SE(SE), 
	.Q(sum_1_0__4_), 
	.D(N272), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__5_ (.SI(sum_1_1__4_), 
	.SE(SE), 
	.Q(sum_1_1__5_), 
	.D(N307), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__5_ (.SI(sum_1_0__4_), 
	.SE(SE), 
	.Q(sum_1_0__5_), 
	.D(N273), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__6_ (.SI(sum_1_1__5_), 
	.SE(SE), 
	.Q(sum_1_1__6_), 
	.D(N308), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__6_ (.SI(sum_1_0__5_), 
	.SE(SE), 
	.Q(sum_1_0__6_), 
	.D(N274), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__7_ (.SI(sum_1_1__6_), 
	.SE(SE), 
	.Q(sum_1_1__7_), 
	.D(N309), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__7_ (.SI(sum_1_0__6_), 
	.SE(SE), 
	.Q(sum_1_0__7_), 
	.D(N275), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__8_ (.SI(sum_1_1__7_), 
	.SE(SE), 
	.Q(sum_1_1__8_), 
	.D(N310), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__8_ (.SI(sum_1_0__7_), 
	.SE(SE), 
	.Q(sum_1_0__8_), 
	.D(N276), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__9_ (.SI(sum_1_1__8_), 
	.SE(SE), 
	.Q(sum_1_1__9_), 
	.D(N311), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__9_ (.SI(sum_1_0__8_), 
	.SE(SE), 
	.Q(sum_1_0__9_), 
	.D(N277), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__10_ (.SI(sum_1_1__9_), 
	.SE(SE), 
	.Q(sum_1_1__10_), 
	.D(N312), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__10_ (.SI(sum_1_0__9_), 
	.SE(SE), 
	.Q(sum_1_0__10_), 
	.D(N278), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__11_ (.SI(sum_1_1__10_), 
	.SE(SE), 
	.Q(sum_1_1__11_), 
	.D(N313), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__11_ (.SI(sum_1_0__10_), 
	.SE(SE), 
	.Q(sum_1_0__11_), 
	.D(N279), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__12_ (.SI(sum_1_1__11_), 
	.SE(SE), 
	.Q(sum_1_1__12_), 
	.D(N314), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__12_ (.SI(sum_1_0__11_), 
	.SE(SE), 
	.Q(sum_1_0__12_), 
	.D(N280), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__13_ (.SI(sum_1_1__12_), 
	.SE(SE), 
	.Q(sum_1_1__13_), 
	.D(N315), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__13_ (.SI(sum_1_0__12_), 
	.SE(SE), 
	.Q(sum_1_0__13_), 
	.D(N281), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__14_ (.SI(sum_1_1__33_), 
	.SE(SE), 
	.Q(N366), 
	.D(N350), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__14_ (.SI(sum_1_1__13_), 
	.SE(SE), 
	.Q(sum_1_1__14_), 
	.D(N316), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__14_ (.SI(sum_1_0__13_), 
	.SE(SE), 
	.Q(sum_1_0__14_), 
	.D(N282), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__15_ (.SI(N366), 
	.SE(SE), 
	.Q(N367), 
	.D(N351), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__15_ (.SI(sum_1_1__14_), 
	.SE(SE), 
	.Q(sum_1_1__15_), 
	.D(N317), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__15_ (.SI(sum_1_0__14_), 
	.SE(SE), 
	.Q(sum_1_0__15_), 
	.D(N283), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__16_ (.SI(N367), 
	.SE(SE), 
	.Q(N368), 
	.D(N352), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__16_ (.SI(sum_1_1__15_), 
	.SE(SE), 
	.Q(sum_1_1__16_), 
	.D(N318), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__16_ (.SI(sum_1_0__15_), 
	.SE(SE), 
	.Q(sum_1_0__16_), 
	.D(N284), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__17_ (.SI(N368), 
	.SE(SE), 
	.Q(N369), 
	.D(N353), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__17_ (.SI(sum_1_1__16_), 
	.SE(SE), 
	.Q(sum_1_1__17_), 
	.D(N319), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__17_ (.SI(sum_1_0__16_), 
	.SE(SE), 
	.Q(sum_1_0__17_), 
	.D(N285), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__18_ (.SI(N369), 
	.SE(SE), 
	.Q(N370), 
	.D(N354), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__18_ (.SI(sum_1_1__17_), 
	.SE(SE), 
	.Q(sum_1_1__18_), 
	.D(N320), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__18_ (.SI(sum_1_0__17_), 
	.SE(SE), 
	.Q(sum_1_0__18_), 
	.D(N286), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__19_ (.SI(N370), 
	.SE(SE), 
	.Q(N371), 
	.D(N355), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__19_ (.SI(sum_1_1__18_), 
	.SE(SE), 
	.Q(sum_1_1__19_), 
	.D(N321), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__19_ (.SI(sum_1_0__18_), 
	.SE(SE), 
	.Q(sum_1_0__19_), 
	.D(N287), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__20_ (.SI(N371), 
	.SE(SE), 
	.Q(N372), 
	.D(N356), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__20_ (.SI(sum_1_1__19_), 
	.SE(SE), 
	.Q(sum_1_1__20_), 
	.D(N322), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__20_ (.SI(sum_1_0__19_), 
	.SE(SE), 
	.Q(sum_1_0__20_), 
	.D(N288), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__21_ (.SI(N372), 
	.SE(SE), 
	.Q(N373), 
	.D(N357), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__21_ (.SI(sum_1_1__20_), 
	.SE(SE), 
	.Q(sum_1_1__21_), 
	.D(N323), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__21_ (.SI(sum_1_0__20_), 
	.SE(SE), 
	.Q(sum_1_0__21_), 
	.D(N289), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__22_ (.SI(N373), 
	.SE(SE), 
	.Q(N374), 
	.D(N358), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__22_ (.SI(sum_1_1__21_), 
	.SE(SE), 
	.Q(sum_1_1__22_), 
	.D(N324), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__22_ (.SI(sum_1_0__21_), 
	.SE(SE), 
	.Q(sum_1_0__22_), 
	.D(N290), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__23_ (.SI(N374), 
	.SE(SE), 
	.Q(N375), 
	.D(N359), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__23_ (.SI(sum_1_1__22_), 
	.SE(SE), 
	.Q(sum_1_1__23_), 
	.D(N325), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__23_ (.SI(sum_1_0__22_), 
	.SE(SE), 
	.Q(sum_1_0__23_), 
	.D(N291), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__24_ (.SI(N375), 
	.SE(SE), 
	.Q(N376), 
	.D(N360), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__24_ (.SI(sum_1_1__23_), 
	.SE(SE), 
	.Q(sum_1_1__24_), 
	.D(N326), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__24_ (.SI(sum_1_0__23_), 
	.SE(SE), 
	.Q(sum_1_0__24_), 
	.D(N292), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__25_ (.SI(N376), 
	.SE(SE), 
	.Q(N377), 
	.D(N361), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__25_ (.SI(sum_1_1__24_), 
	.SE(SE), 
	.Q(sum_1_1__25_), 
	.D(N327), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__25_ (.SI(sum_1_0__24_), 
	.SE(SE), 
	.Q(sum_1_0__25_), 
	.D(N293), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__26_ (.SI(N377), 
	.SE(SE), 
	.Q(N378), 
	.D(N362), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__26_ (.SI(sum_1_1__25_), 
	.SE(SE), 
	.Q(sum_1_1__26_), 
	.D(N328), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__26_ (.SI(sum_1_0__25_), 
	.SE(SE), 
	.Q(sum_1_0__26_), 
	.D(N294), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__27_ (.SI(N378), 
	.SE(SE), 
	.Q(N379), 
	.D(N363), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__27_ (.SI(sum_1_1__26_), 
	.SE(SE), 
	.Q(sum_1_1__27_), 
	.D(N329), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__27_ (.SI(sum_1_0__26_), 
	.SE(SE), 
	.Q(sum_1_0__27_), 
	.D(N295), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__28_ (.SI(N379), 
	.SE(SE), 
	.Q(N380), 
	.D(N364), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__28_ (.SI(sum_1_1__27_), 
	.SE(SE), 
	.Q(sum_1_1__28_), 
	.D(N330), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__28_ (.SI(sum_1_0__27_), 
	.SE(SE), 
	.Q(sum_1_0__28_), 
	.D(N296), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__29_ (.SI(sum_1_1__28_), 
	.SE(SE), 
	.Q(sum_1_1__29_), 
	.D(N331), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__29_ (.SI(sum_1_0__28_), 
	.SE(SE), 
	.Q(sum_1_0__29_), 
	.D(N297), 
	.CK(m_clk));
   SDFFQX1M sum_2_reg_0__29_ (.SI(N380), 
	.SE(SE), 
	.Q(N381), 
	.D(N365), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__30_ (.SI(sum_1_1__29_), 
	.SE(SE), 
	.Q(sum_1_1__30_), 
	.D(N332), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__30_ (.SI(sum_1_0__29_), 
	.SE(SE), 
	.Q(sum_1_0__30_), 
	.D(N298), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__31_ (.SI(sum_1_1__30_), 
	.SE(SE), 
	.Q(sum_1_1__31_), 
	.D(N333), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__31_ (.SI(sum_1_0__30_), 
	.SE(SE), 
	.Q(sum_1_0__31_), 
	.D(N299), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__32_ (.SI(sum_1_1__31_), 
	.SE(SE), 
	.Q(sum_1_1__32_), 
	.D(N334), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__32_ (.SI(sum_1_0__31_), 
	.SE(SE), 
	.Q(sum_1_0__32_), 
	.D(N300), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_1__33_ (.SI(sum_1_1__32_), 
	.SE(SE), 
	.Q(sum_1_1__33_), 
	.D(N335), 
	.CK(m_clk));
   SDFFQX1M sum_1_reg_0__33_ (.SI(sum_1_0__32_), 
	.SE(SE), 
	.Q(sum_1_0__33_), 
	.D(N301), 
	.CK(m_clk));
   CLKINVX12M U673 (.Y(Fliter_Signal[0]), 
	.A(n512));
   CLKINVX12M U675 (.Y(Fliter_Signal[1]), 
	.A(n514));
   CLKINVX12M U677 (.Y(Fliter_Signal[2]), 
	.A(n516));
   CLKINVX12M U679 (.Y(Fliter_Signal[3]), 
	.A(n518));
   CLKINVX12M U681 (.Y(Fliter_Signal[4]), 
	.A(n520));
   CLKINVX12M U683 (.Y(Fliter_Signal[5]), 
	.A(n522));
   CLKINVX12M U685 (.Y(Fliter_Signal[6]), 
	.A(n524));
   CLKINVX12M U687 (.Y(Fliter_Signal[7]), 
	.A(n526));
   CLKINVX12M U689 (.Y(Fliter_Signal[8]), 
	.A(n528));
   CLKINVX12M U691 (.Y(Fliter_Signal[9]), 
	.A(n530));
   CLKINVX12M U693 (.Y(Fliter_Signal[10]), 
	.A(n532));
   CLKINVX12M U695 (.Y(Fliter_Signal[11]), 
	.A(n534));
   CLKINVX12M U697 (.Y(Fliter_Signal[12]), 
	.A(n536));
   CLKINVX12M U699 (.Y(Fliter_Signal[13]), 
	.A(n538));
   CLKINVX12M U701 (.Y(Fliter_Signal[14]), 
	.A(n540));
   INVXLM U702 (.Y(n542), 
	.A(SO));
   CLKINVX12M U703 (.Y(Fliter_Signal[15]), 
	.A(n542));
   mux2X1_1 mux_clk (.IN_0(CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(m_clk));
   mux2X1_0 mux_reset (.IN_0(1'b0), 
	.IN_1(scan_rst), 
	.SEL(test_mode));
   FIR_Fliter_DW01_add_1 add_120 (.A({ sum_1_0__33_,
		sum_1_0__33_,
		sum_1_0__32_,
		sum_1_0__31_,
		sum_1_0__30_,
		sum_1_0__29_,
		sum_1_0__28_,
		sum_1_0__27_,
		sum_1_0__26_,
		sum_1_0__25_,
		sum_1_0__24_,
		sum_1_0__23_,
		sum_1_0__22_,
		sum_1_0__21_,
		sum_1_0__20_,
		sum_1_0__19_,
		sum_1_0__18_,
		sum_1_0__17_,
		sum_1_0__16_,
		sum_1_0__15_,
		sum_1_0__14_,
		sum_1_0__13_,
		sum_1_0__12_,
		sum_1_0__11_,
		sum_1_0__10_,
		sum_1_0__9_,
		sum_1_0__8_,
		sum_1_0__7_,
		sum_1_0__6_,
		sum_1_0__5_,
		sum_1_0__4_,
		sum_1_0__3_,
		sum_1_0__2_,
		sum_1_0__1_,
		sum_1_0__0_ }), 
	.B({ sum_1_1__33_,
		sum_1_1__33_,
		sum_1_1__32_,
		sum_1_1__31_,
		sum_1_1__30_,
		sum_1_1__29_,
		sum_1_1__28_,
		sum_1_1__27_,
		sum_1_1__26_,
		sum_1_1__25_,
		sum_1_1__24_,
		sum_1_1__23_,
		sum_1_1__22_,
		sum_1_1__21_,
		sum_1_1__20_,
		sum_1_1__19_,
		sum_1_1__18_,
		sum_1_1__17_,
		sum_1_1__16_,
		sum_1_1__15_,
		sum_1_1__14_,
		sum_1_1__13_,
		sum_1_1__12_,
		sum_1_1__11_,
		sum_1_1__10_,
		sum_1_1__9_,
		sum_1_1__8_,
		sum_1_1__7_,
		sum_1_1__6_,
		sum_1_1__5_,
		sum_1_1__4_,
		sum_1_1__3_,
		sum_1_1__2_,
		sum_1_1__1_,
		sum_1_1__0_ }), 
	.CI(1'b0), 
	.SUM({ SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		SYNOPSYS_UNCONNECTED_5,
		N365,
		N364,
		N363,
		N362,
		N361,
		N360,
		N359,
		N358,
		N357,
		N356,
		N355,
		N354,
		N353,
		N352,
		N351,
		N350,
		SYNOPSYS_UNCONNECTED_6,
		SYNOPSYS_UNCONNECTED_7,
		SYNOPSYS_UNCONNECTED_8,
		SYNOPSYS_UNCONNECTED_9,
		SYNOPSYS_UNCONNECTED_10,
		SYNOPSYS_UNCONNECTED_11,
		SYNOPSYS_UNCONNECTED_12,
		SYNOPSYS_UNCONNECTED_13,
		SYNOPSYS_UNCONNECTED_14,
		SYNOPSYS_UNCONNECTED_15,
		SYNOPSYS_UNCONNECTED_16,
		SYNOPSYS_UNCONNECTED_17,
		SYNOPSYS_UNCONNECTED_18,
		SYNOPSYS_UNCONNECTED_19 }));
   FIR_Fliter_DW01_add_2 add_114 (.A({ sum_0_2__32_,
		sum_0_2__32_,
		sum_0_2__31_,
		sum_0_2__30_,
		sum_0_2__29_,
		sum_0_2__28_,
		sum_0_2__27_,
		sum_0_2__26_,
		sum_0_2__25_,
		sum_0_2__24_,
		sum_0_2__23_,
		sum_0_2__22_,
		sum_0_2__21_,
		sum_0_2__20_,
		sum_0_2__19_,
		sum_0_2__18_,
		sum_0_2__17_,
		sum_0_2__16_,
		sum_0_2__15_,
		sum_0_2__14_,
		sum_0_2__13_,
		sum_0_2__12_,
		sum_0_2__11_,
		sum_0_2__10_,
		sum_0_2__9_,
		sum_0_2__8_,
		sum_0_2__7_,
		sum_0_2__6_,
		sum_0_2__5_,
		sum_0_2__4_,
		sum_0_2__3_,
		sum_0_2__2_,
		sum_0_2__1_,
		sum_0_2__0_ }), 
	.B({ sum_0_3__32_,
		sum_0_3__32_,
		sum_0_3__31_,
		sum_0_3__30_,
		sum_0_3__29_,
		sum_0_3__28_,
		sum_0_3__27_,
		sum_0_3__26_,
		sum_0_3__25_,
		sum_0_3__24_,
		sum_0_3__23_,
		sum_0_3__22_,
		sum_0_3__21_,
		sum_0_3__20_,
		sum_0_3__19_,
		sum_0_3__18_,
		sum_0_3__17_,
		sum_0_3__16_,
		sum_0_3__15_,
		sum_0_3__14_,
		sum_0_3__13_,
		sum_0_3__12_,
		sum_0_3__11_,
		sum_0_3__10_,
		sum_0_3__9_,
		sum_0_3__8_,
		sum_0_3__7_,
		sum_0_3__6_,
		sum_0_3__5_,
		sum_0_3__4_,
		sum_0_3__3_,
		sum_0_3__2_,
		sum_0_3__1_,
		sum_0_3__0_ }), 
	.CI(1'b0), 
	.SUM({ N335,
		N334,
		N333,
		N332,
		N331,
		N330,
		N329,
		N328,
		N327,
		N326,
		N325,
		N324,
		N323,
		N322,
		N321,
		N320,
		N319,
		N318,
		N317,
		N316,
		N315,
		N314,
		N313,
		N312,
		N311,
		N310,
		N309,
		N308,
		N307,
		N306,
		N305,
		N304,
		N303,
		N302 }));
   FIR_Fliter_DW01_add_3 add_113 (.A({ sum_0_0__32_,
		sum_0_0__32_,
		sum_0_0__31_,
		sum_0_0__30_,
		sum_0_0__29_,
		sum_0_0__28_,
		sum_0_0__27_,
		sum_0_0__26_,
		sum_0_0__25_,
		sum_0_0__24_,
		sum_0_0__23_,
		sum_0_0__22_,
		sum_0_0__21_,
		sum_0_0__20_,
		sum_0_0__19_,
		sum_0_0__18_,
		sum_0_0__17_,
		sum_0_0__16_,
		sum_0_0__15_,
		sum_0_0__14_,
		sum_0_0__13_,
		sum_0_0__12_,
		sum_0_0__11_,
		sum_0_0__10_,
		sum_0_0__9_,
		sum_0_0__8_,
		sum_0_0__7_,
		sum_0_0__6_,
		sum_0_0__5_,
		sum_0_0__4_,
		sum_0_0__3_,
		sum_0_0__2_,
		sum_0_0__1_,
		sum_0_0__0_ }), 
	.B({ sum_0_1__32_,
		sum_0_1__32_,
		sum_0_1__31_,
		sum_0_1__30_,
		sum_0_1__29_,
		sum_0_1__28_,
		sum_0_1__27_,
		sum_0_1__26_,
		sum_0_1__25_,
		sum_0_1__24_,
		sum_0_1__23_,
		sum_0_1__22_,
		sum_0_1__21_,
		sum_0_1__20_,
		sum_0_1__19_,
		sum_0_1__18_,
		sum_0_1__17_,
		sum_0_1__16_,
		sum_0_1__15_,
		sum_0_1__14_,
		sum_0_1__13_,
		sum_0_1__12_,
		sum_0_1__11_,
		sum_0_1__10_,
		sum_0_1__9_,
		sum_0_1__8_,
		sum_0_1__7_,
		sum_0_1__6_,
		sum_0_1__5_,
		sum_0_1__4_,
		sum_0_1__3_,
		sum_0_1__2_,
		sum_0_1__1_,
		sum_0_1__0_ }), 
	.CI(1'b0), 
	.SUM({ N301,
		N300,
		N299,
		N298,
		N297,
		N296,
		N295,
		N294,
		N293,
		N292,
		N291,
		N290,
		N289,
		N288,
		N287,
		N286,
		N285,
		N284,
		N283,
		N282,
		N281,
		N280,
		N279,
		N278,
		N277,
		N276,
		N275,
		N274,
		N273,
		N272,
		N271,
		N270,
		N269,
		N268 }));
   SDFFQX2M sum_0_reg_3__32_ (.SI(sum_0_3__31_), 
	.SE(SE), 
	.Q(sum_0_3__32_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__31_ (.SI(sum_0_3__30_), 
	.SE(SE), 
	.Q(sum_0_3__31_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__30_ (.SI(sum_0_3__29_), 
	.SE(SE), 
	.Q(sum_0_3__30_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__29_ (.SI(sum_0_3__28_), 
	.SE(SE), 
	.Q(sum_0_3__29_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__28_ (.SI(sum_0_3__27_), 
	.SE(SE), 
	.Q(sum_0_3__28_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__27_ (.SI(sum_0_3__26_), 
	.SE(SE), 
	.Q(sum_0_3__27_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__26_ (.SI(sum_0_3__25_), 
	.SE(SE), 
	.Q(sum_0_3__26_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__25_ (.SI(sum_0_3__24_), 
	.SE(SE), 
	.Q(sum_0_3__25_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__24_ (.SI(sum_0_3__23_), 
	.SE(SE), 
	.Q(sum_0_3__24_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__23_ (.SI(sum_0_3__22_), 
	.SE(SE), 
	.Q(sum_0_3__23_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__22_ (.SI(sum_0_3__21_), 
	.SE(SE), 
	.Q(sum_0_3__22_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__21_ (.SI(sum_0_3__20_), 
	.SE(SE), 
	.Q(sum_0_3__21_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__20_ (.SI(sum_0_3__19_), 
	.SE(SE), 
	.Q(sum_0_3__20_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__19_ (.SI(sum_0_3__18_), 
	.SE(SE), 
	.Q(sum_0_3__19_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__18_ (.SI(sum_0_3__17_), 
	.SE(SE), 
	.Q(sum_0_3__18_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__17_ (.SI(sum_0_3__16_), 
	.SE(SE), 
	.Q(sum_0_3__17_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__16_ (.SI(sum_0_3__15_), 
	.SE(SE), 
	.Q(sum_0_3__16_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__15_ (.SI(sum_0_3__14_), 
	.SE(SE), 
	.Q(sum_0_3__15_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__14_ (.SI(sum_0_3__13_), 
	.SE(SE), 
	.Q(sum_0_3__14_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__13_ (.SI(sum_0_3__12_), 
	.SE(SE), 
	.Q(sum_0_3__13_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__12_ (.SI(sum_0_3__11_), 
	.SE(SE), 
	.Q(sum_0_3__12_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__11_ (.SI(sum_0_3__10_), 
	.SE(SE), 
	.Q(sum_0_3__11_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__10_ (.SI(sum_0_3__9_), 
	.SE(SE), 
	.Q(sum_0_3__10_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__9_ (.SI(sum_0_3__8_), 
	.SE(SE), 
	.Q(sum_0_3__9_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__8_ (.SI(sum_0_3__7_), 
	.SE(SE), 
	.Q(sum_0_3__8_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__7_ (.SI(sum_0_3__6_), 
	.SE(SE), 
	.Q(sum_0_3__7_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__6_ (.SI(sum_0_3__5_), 
	.SE(SE), 
	.Q(sum_0_3__6_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__5_ (.SI(sum_0_3__4_), 
	.SE(SE), 
	.Q(sum_0_3__5_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__4_ (.SI(sum_0_3__3_), 
	.SE(SE), 
	.Q(sum_0_3__4_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__3_ (.SI(sum_0_3__2_), 
	.SE(SE), 
	.Q(sum_0_3__3_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__2_ (.SI(sum_0_3__1_), 
	.SE(SE), 
	.Q(sum_0_3__2_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__32_ (.SI(sum_0_1__31_), 
	.SE(SE), 
	.Q(sum_0_1__32_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__31_ (.SI(sum_0_1__30_), 
	.SE(SE), 
	.Q(sum_0_1__31_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__30_ (.SI(sum_0_1__29_), 
	.SE(SE), 
	.Q(sum_0_1__30_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__29_ (.SI(sum_0_1__28_), 
	.SE(SE), 
	.Q(sum_0_1__29_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__28_ (.SI(sum_0_1__27_), 
	.SE(SE), 
	.Q(sum_0_1__28_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__27_ (.SI(sum_0_1__26_), 
	.SE(SE), 
	.Q(sum_0_1__27_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__26_ (.SI(sum_0_1__25_), 
	.SE(SE), 
	.Q(sum_0_1__26_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__25_ (.SI(sum_0_1__24_), 
	.SE(SE), 
	.Q(sum_0_1__25_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__24_ (.SI(sum_0_1__23_), 
	.SE(SE), 
	.Q(sum_0_1__24_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__23_ (.SI(sum_0_1__22_), 
	.SE(SE), 
	.Q(sum_0_1__23_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__22_ (.SI(sum_0_1__21_), 
	.SE(SE), 
	.Q(sum_0_1__22_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__21_ (.SI(sum_0_1__20_), 
	.SE(SE), 
	.Q(sum_0_1__21_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__20_ (.SI(sum_0_1__19_), 
	.SE(SE), 
	.Q(sum_0_1__20_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__19_ (.SI(sum_0_1__18_), 
	.SE(SE), 
	.Q(sum_0_1__19_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__18_ (.SI(sum_0_1__17_), 
	.SE(SE), 
	.Q(sum_0_1__18_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__17_ (.SI(sum_0_1__16_), 
	.SE(SE), 
	.Q(sum_0_1__17_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__16_ (.SI(sum_0_1__15_), 
	.SE(SE), 
	.Q(sum_0_1__16_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__15_ (.SI(sum_0_1__14_), 
	.SE(SE), 
	.Q(sum_0_1__15_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__14_ (.SI(sum_0_1__13_), 
	.SE(SE), 
	.Q(sum_0_1__14_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__13_ (.SI(sum_0_1__12_), 
	.SE(SE), 
	.Q(sum_0_1__13_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__12_ (.SI(sum_0_1__11_), 
	.SE(SE), 
	.Q(sum_0_1__12_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__11_ (.SI(sum_0_1__10_), 
	.SE(SE), 
	.Q(sum_0_1__11_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__10_ (.SI(sum_0_1__9_), 
	.SE(SE), 
	.Q(sum_0_1__10_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__9_ (.SI(sum_0_1__8_), 
	.SE(SE), 
	.Q(sum_0_1__9_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__8_ (.SI(sum_0_1__7_), 
	.SE(SE), 
	.Q(sum_0_1__8_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__7_ (.SI(sum_0_1__6_), 
	.SE(SE), 
	.Q(sum_0_1__7_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__6_ (.SI(sum_0_1__5_), 
	.SE(SE), 
	.Q(sum_0_1__6_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__5_ (.SI(sum_0_1__4_), 
	.SE(SE), 
	.Q(sum_0_1__5_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__4_ (.SI(sum_0_1__3_), 
	.SE(SE), 
	.Q(sum_0_1__4_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__3_ (.SI(sum_0_1__2_), 
	.SE(SE), 
	.Q(sum_0_1__3_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__2_ (.SI(sum_0_1__1_), 
	.SE(SE), 
	.Q(sum_0_1__2_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__32_ (.SI(sum_0_2__31_), 
	.SE(SE), 
	.Q(sum_0_2__32_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__31_ (.SI(sum_0_2__30_), 
	.SE(SE), 
	.Q(sum_0_2__31_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__30_ (.SI(sum_0_2__29_), 
	.SE(SE), 
	.Q(sum_0_2__30_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__29_ (.SI(sum_0_2__28_), 
	.SE(SE), 
	.Q(sum_0_2__29_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__28_ (.SI(sum_0_2__27_), 
	.SE(SE), 
	.Q(sum_0_2__28_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__27_ (.SI(sum_0_2__26_), 
	.SE(SE), 
	.Q(sum_0_2__27_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__26_ (.SI(sum_0_2__25_), 
	.SE(SE), 
	.Q(sum_0_2__26_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__25_ (.SI(sum_0_2__24_), 
	.SE(SE), 
	.Q(sum_0_2__25_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__24_ (.SI(sum_0_2__23_), 
	.SE(SE), 
	.Q(sum_0_2__24_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__23_ (.SI(sum_0_2__22_), 
	.SE(SE), 
	.Q(sum_0_2__23_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__22_ (.SI(sum_0_2__21_), 
	.SE(SE), 
	.Q(sum_0_2__22_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__21_ (.SI(sum_0_2__20_), 
	.SE(SE), 
	.Q(sum_0_2__21_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__20_ (.SI(sum_0_2__19_), 
	.SE(SE), 
	.Q(sum_0_2__20_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__19_ (.SI(sum_0_2__18_), 
	.SE(SE), 
	.Q(sum_0_2__19_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__18_ (.SI(sum_0_2__17_), 
	.SE(SE), 
	.Q(sum_0_2__18_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__17_ (.SI(sum_0_2__16_), 
	.SE(SE), 
	.Q(sum_0_2__17_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__16_ (.SI(sum_0_2__15_), 
	.SE(SE), 
	.Q(sum_0_2__16_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__15_ (.SI(sum_0_2__14_), 
	.SE(SE), 
	.Q(sum_0_2__15_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__14_ (.SI(sum_0_2__13_), 
	.SE(SE), 
	.Q(sum_0_2__14_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__13_ (.SI(sum_0_2__12_), 
	.SE(SE), 
	.Q(sum_0_2__13_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__12_ (.SI(sum_0_2__11_), 
	.SE(SE), 
	.Q(sum_0_2__12_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__11_ (.SI(sum_0_2__10_), 
	.SE(SE), 
	.Q(sum_0_2__11_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__10_ (.SI(sum_0_2__9_), 
	.SE(SE), 
	.Q(sum_0_2__10_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__9_ (.SI(sum_0_2__8_), 
	.SE(SE), 
	.Q(sum_0_2__9_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__8_ (.SI(sum_0_2__7_), 
	.SE(SE), 
	.Q(sum_0_2__8_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__7_ (.SI(sum_0_2__6_), 
	.SE(SE), 
	.Q(sum_0_2__7_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__6_ (.SI(sum_0_2__5_), 
	.SE(SE), 
	.Q(sum_0_2__6_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__5_ (.SI(sum_0_2__4_), 
	.SE(SE), 
	.Q(sum_0_2__5_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__4_ (.SI(sum_0_2__3_), 
	.SE(SE), 
	.Q(sum_0_2__4_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__3_ (.SI(sum_0_2__2_), 
	.SE(SE), 
	.Q(sum_0_2__3_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__2_ (.SI(sum_0_2__1_), 
	.SE(SE), 
	.Q(sum_0_2__2_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__32_ (.SI(sum_0_0__31_), 
	.SE(SE), 
	.Q(sum_0_0__32_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__31_ (.SI(sum_0_0__30_), 
	.SE(SE), 
	.Q(sum_0_0__31_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__30_ (.SI(sum_0_0__29_), 
	.SE(SE), 
	.Q(sum_0_0__30_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__29_ (.SI(sum_0_0__28_), 
	.SE(SE), 
	.Q(sum_0_0__29_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__28_ (.SI(sum_0_0__27_), 
	.SE(SE), 
	.Q(sum_0_0__28_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__27_ (.SI(sum_0_0__26_), 
	.SE(SE), 
	.Q(sum_0_0__27_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__26_ (.SI(sum_0_0__25_), 
	.SE(SE), 
	.Q(sum_0_0__26_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__25_ (.SI(sum_0_0__24_), 
	.SE(SE), 
	.Q(sum_0_0__25_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__24_ (.SI(sum_0_0__23_), 
	.SE(SE), 
	.Q(sum_0_0__24_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__23_ (.SI(sum_0_0__22_), 
	.SE(SE), 
	.Q(sum_0_0__23_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__22_ (.SI(sum_0_0__21_), 
	.SE(SE), 
	.Q(sum_0_0__22_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__21_ (.SI(sum_0_0__20_), 
	.SE(SE), 
	.Q(sum_0_0__21_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__20_ (.SI(sum_0_0__19_), 
	.SE(SE), 
	.Q(sum_0_0__20_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__19_ (.SI(sum_0_0__18_), 
	.SE(SE), 
	.Q(sum_0_0__19_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__18_ (.SI(sum_0_0__17_), 
	.SE(SE), 
	.Q(sum_0_0__18_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__17_ (.SI(sum_0_0__16_), 
	.SE(SE), 
	.Q(sum_0_0__17_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__16_ (.SI(sum_0_0__15_), 
	.SE(SE), 
	.Q(sum_0_0__16_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__15_ (.SI(sum_0_0__14_), 
	.SE(SE), 
	.Q(sum_0_0__15_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__14_ (.SI(sum_0_0__13_), 
	.SE(SE), 
	.Q(sum_0_0__14_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__13_ (.SI(sum_0_0__12_), 
	.SE(SE), 
	.Q(sum_0_0__13_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__12_ (.SI(sum_0_0__11_), 
	.SE(SE), 
	.Q(sum_0_0__12_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__11_ (.SI(sum_0_0__10_), 
	.SE(SE), 
	.Q(sum_0_0__11_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__10_ (.SI(sum_0_0__9_), 
	.SE(SE), 
	.Q(sum_0_0__10_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__9_ (.SI(sum_0_0__8_), 
	.SE(SE), 
	.Q(sum_0_0__9_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__8_ (.SI(sum_0_0__7_), 
	.SE(SE), 
	.Q(sum_0_0__8_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__7_ (.SI(sum_0_0__6_), 
	.SE(SE), 
	.Q(sum_0_0__7_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__6_ (.SI(sum_0_0__5_), 
	.SE(SE), 
	.Q(sum_0_0__6_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__5_ (.SI(sum_0_0__4_), 
	.SE(SE), 
	.Q(sum_0_0__5_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__4_ (.SI(sum_0_0__3_), 
	.SE(SE), 
	.Q(sum_0_0__4_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__3_ (.SI(sum_0_0__2_), 
	.SE(SE), 
	.Q(sum_0_0__3_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__2_ (.SI(sum_0_0__1_), 
	.SE(SE), 
	.Q(sum_0_0__2_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__1_ (.SI(sum_0_2__0_), 
	.SE(SE), 
	.Q(sum_0_2__1_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_0__1_ (.SI(sum_0_0__0_), 
	.SE(SE), 
	.Q(sum_0_0__1_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__1_ (.SI(sum_0_3__0_), 
	.SE(SE), 
	.Q(sum_0_3__1_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__1_ (.SI(sum_0_1__0_), 
	.SE(SE), 
	.Q(sum_0_1__1_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_3__0_ (.SI(sum_0_2__32_), 
	.SE(SE), 
	.Q(sum_0_3__0_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_1__0_ (.SI(sum_0_0__32_), 
	.SE(SE), 
	.Q(sum_0_1__0_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQX2M sum_0_reg_2__0_ (.SI(sum_0_1__32_), 
	.SE(SE), 
	.Q(sum_0_2__0_), 
	.D(LTIE_LTIELO_NET), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_14_ (.SI(N381), 
	.SE(SE), 
	.QN(n512), 
	.D(N366), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_29_ (.SI(Fliter_Signal[14]), 
	.SE(SE), 
	.QN(n662), 
	.D(N381), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_28_ (.SI(Fliter_Signal[13]), 
	.SE(SE), 
	.QN(n540), 
	.D(N380), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_27_ (.SI(Fliter_Signal[12]), 
	.SE(SE), 
	.QN(n538), 
	.D(N379), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_26_ (.SI(Fliter_Signal[11]), 
	.SE(SE), 
	.QN(n536), 
	.D(N378), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_25_ (.SI(Fliter_Signal[10]), 
	.SE(SE), 
	.QN(n534), 
	.D(N377), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_24_ (.SI(Fliter_Signal[9]), 
	.SE(SE), 
	.QN(n532), 
	.D(N376), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_23_ (.SI(Fliter_Signal[8]), 
	.SE(SE), 
	.QN(n530), 
	.D(N375), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_22_ (.SI(Fliter_Signal[7]), 
	.SE(SE), 
	.QN(n528), 
	.D(N374), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_21_ (.SI(Fliter_Signal[6]), 
	.SE(SE), 
	.QN(n526), 
	.D(N373), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_20_ (.SI(Fliter_Signal[5]), 
	.SE(SE), 
	.QN(n524), 
	.D(N372), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_19_ (.SI(Fliter_Signal[4]), 
	.SE(SE), 
	.QN(n522), 
	.D(N371), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_18_ (.SI(Fliter_Signal[3]), 
	.SE(SE), 
	.QN(n520), 
	.D(N370), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_17_ (.SI(Fliter_Signal[2]), 
	.SE(SE), 
	.QN(n518), 
	.D(N369), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_16_ (.SI(Fliter_Signal[1]), 
	.SE(SE), 
	.QN(n516), 
	.D(N368), 
	.CK(m_clk));
   SDFFQNX2M sum_3_reg_15_ (.SI(Fliter_Signal[0]), 
	.SE(SE), 
	.QN(n514), 
	.D(N367), 
	.CK(m_clk));
   CLKINVX1M U672 (.Y(SO), 
	.A(n662));
endmodule

