/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Aug  3 03:45:38 2024
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module FIR_Fliter_DW01_add_1 ( A, B, CI, SUM, CO );
  input [34:0] A;
  input [34:0] B;
  output [34:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [29:2] carry;

  XOR3XLM U1_29 ( .A(A[29]), .B(B[29]), .C(carry[29]), .Y(SUM[29]) );
  ADDFX2M U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFX2M U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFX2M U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFX2M U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFX2M U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
endmodule


module FIR_Fliter_DW01_add_2 ( A, B, CI, SUM, CO );
  input [33:0] A;
  input [33:0] B;
  output [33:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [33:2] carry;

  XOR3XLM U1_33 ( .A(A[33]), .B(B[33]), .C(carry[33]), .Y(SUM[33]) );
  ADDFX2M U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFX2M U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFX2M U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFX2M U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFX2M U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFX2M U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFX2M U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFX2M U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFX2M U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module FIR_Fliter_DW01_add_3 ( A, B, CI, SUM, CO );
  input [33:0] A;
  input [33:0] B;
  output [33:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [33:2] carry;

  XOR3XLM U1_33 ( .A(A[33]), .B(B[33]), .C(carry[33]), .Y(SUM[33]) );
  ADDFX2M U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFX2M U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFX2M U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFX2M U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFX2M U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFX2M U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFX2M U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFX2M U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFX2M U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module FIR_Fliter ( CLK, Signal_Noise, Fliter_Signal, SI, SE, test_mode, 
        scan_clk, scan_rst, SO );
  input [15:0] Signal_Noise;
  output [15:0] Fliter_Signal;
  input CLK, SI, SE, test_mode, scan_clk, scan_rst;
  output SO;
  wire   m_clk, sum_0_0__32_, sum_0_0__31_, sum_0_0__30_, sum_0_0__29_,
         sum_0_0__28_, sum_0_0__27_, sum_0_0__26_, sum_0_0__25_, sum_0_0__24_,
         sum_0_0__23_, sum_0_0__22_, sum_0_0__21_, sum_0_0__20_, sum_0_0__19_,
         sum_0_0__18_, sum_0_0__17_, sum_0_0__16_, sum_0_0__15_, sum_0_0__14_,
         sum_0_0__13_, sum_0_0__12_, sum_0_0__11_, sum_0_0__10_, sum_0_0__9_,
         sum_0_0__8_, sum_0_0__7_, sum_0_0__6_, sum_0_0__5_, sum_0_0__4_,
         sum_0_0__3_, sum_0_0__2_, sum_0_0__1_, sum_0_0__0_, sum_0_1__32_,
         sum_0_1__31_, sum_0_1__30_, sum_0_1__29_, sum_0_1__28_, sum_0_1__27_,
         sum_0_1__26_, sum_0_1__25_, sum_0_1__24_, sum_0_1__23_, sum_0_1__22_,
         sum_0_1__21_, sum_0_1__20_, sum_0_1__19_, sum_0_1__18_, sum_0_1__17_,
         sum_0_1__16_, sum_0_1__15_, sum_0_1__14_, sum_0_1__13_, sum_0_1__12_,
         sum_0_1__11_, sum_0_1__10_, sum_0_1__9_, sum_0_1__8_, sum_0_1__7_,
         sum_0_1__6_, sum_0_1__5_, sum_0_1__4_, sum_0_1__3_, sum_0_1__2_,
         sum_0_1__1_, sum_0_1__0_, sum_0_2__32_, sum_0_2__31_, sum_0_2__30_,
         sum_0_2__29_, sum_0_2__28_, sum_0_2__27_, sum_0_2__26_, sum_0_2__25_,
         sum_0_2__24_, sum_0_2__23_, sum_0_2__22_, sum_0_2__21_, sum_0_2__20_,
         sum_0_2__19_, sum_0_2__18_, sum_0_2__17_, sum_0_2__16_, sum_0_2__15_,
         sum_0_2__14_, sum_0_2__13_, sum_0_2__12_, sum_0_2__11_, sum_0_2__10_,
         sum_0_2__9_, sum_0_2__8_, sum_0_2__7_, sum_0_2__6_, sum_0_2__5_,
         sum_0_2__4_, sum_0_2__3_, sum_0_2__2_, sum_0_2__1_, sum_0_2__0_,
         sum_0_3__32_, sum_0_3__31_, sum_0_3__30_, sum_0_3__29_, sum_0_3__28_,
         sum_0_3__27_, sum_0_3__26_, sum_0_3__25_, sum_0_3__24_, sum_0_3__23_,
         sum_0_3__22_, sum_0_3__21_, sum_0_3__20_, sum_0_3__19_, sum_0_3__18_,
         sum_0_3__17_, sum_0_3__16_, sum_0_3__15_, sum_0_3__14_, sum_0_3__13_,
         sum_0_3__12_, sum_0_3__11_, sum_0_3__10_, sum_0_3__9_, sum_0_3__8_,
         sum_0_3__7_, sum_0_3__6_, sum_0_3__5_, sum_0_3__4_, sum_0_3__3_,
         sum_0_3__2_, sum_0_3__1_, sum_0_3__0_, N268, N269, N270, N271, N272,
         N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, N283,
         N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294,
         N295, N296, N297, N298, N299, N300, N301, sum_1_0__33_, sum_1_0__32_,
         sum_1_0__31_, sum_1_0__30_, sum_1_0__29_, sum_1_0__28_, sum_1_0__27_,
         sum_1_0__26_, sum_1_0__25_, sum_1_0__24_, sum_1_0__23_, sum_1_0__22_,
         sum_1_0__21_, sum_1_0__20_, sum_1_0__19_, sum_1_0__18_, sum_1_0__17_,
         sum_1_0__16_, sum_1_0__15_, sum_1_0__14_, sum_1_0__13_, sum_1_0__12_,
         sum_1_0__11_, sum_1_0__10_, sum_1_0__9_, sum_1_0__8_, sum_1_0__7_,
         sum_1_0__6_, sum_1_0__5_, sum_1_0__4_, sum_1_0__3_, sum_1_0__2_,
         sum_1_0__1_, sum_1_0__0_, sum_1_1__33_, sum_1_1__32_, sum_1_1__31_,
         sum_1_1__30_, sum_1_1__29_, sum_1_1__28_, sum_1_1__27_, sum_1_1__26_,
         sum_1_1__25_, sum_1_1__24_, sum_1_1__23_, sum_1_1__22_, sum_1_1__21_,
         sum_1_1__20_, sum_1_1__19_, sum_1_1__18_, sum_1_1__17_, sum_1_1__16_,
         sum_1_1__15_, sum_1_1__14_, sum_1_1__13_, sum_1_1__12_, sum_1_1__11_,
         sum_1_1__10_, sum_1_1__9_, sum_1_1__8_, sum_1_1__7_, sum_1_1__6_,
         sum_1_1__5_, sum_1_1__4_, sum_1_1__3_, sum_1_1__2_, sum_1_1__1_,
         sum_1_1__0_, N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332,
         N333, N334, N335, N350, N351, N352, N353, N354, N355, N356, N357,
         N358, N359, N360, N361, N362, N363, N364, N365, N366, N367, N368,
         N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379,
         N380, N381, n512, n514, n516, n518, n520, n522, n524, n526, n528,
         n530, n532, n534, n536, n538, n540, n542, n662,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19;

  SDFFQX2M sum_0_reg_0__0_ ( .D(1'b0), .SI(SI), .SE(SE), .CK(m_clk), .Q(
        sum_0_0__0_) );
  SDFFQX1M sum_1_reg_1__0_ ( .D(N302), .SI(sum_1_0__33_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__0_) );
  SDFFQX1M sum_1_reg_0__0_ ( .D(N268), .SI(sum_0_3__32_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__0_) );
  SDFFQX1M sum_1_reg_1__1_ ( .D(N303), .SI(sum_1_1__0_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__1_) );
  SDFFQX1M sum_1_reg_0__1_ ( .D(N269), .SI(sum_1_0__0_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__1_) );
  SDFFQX1M sum_1_reg_1__2_ ( .D(N304), .SI(sum_1_1__1_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__2_) );
  SDFFQX1M sum_1_reg_0__2_ ( .D(N270), .SI(sum_1_0__1_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__2_) );
  SDFFQX1M sum_1_reg_1__3_ ( .D(N305), .SI(sum_1_1__2_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__3_) );
  SDFFQX1M sum_1_reg_0__3_ ( .D(N271), .SI(sum_1_0__2_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__3_) );
  SDFFQX1M sum_1_reg_1__4_ ( .D(N306), .SI(sum_1_1__3_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__4_) );
  SDFFQX1M sum_1_reg_0__4_ ( .D(N272), .SI(sum_1_0__3_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__4_) );
  SDFFQX1M sum_1_reg_1__5_ ( .D(N307), .SI(sum_1_1__4_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__5_) );
  SDFFQX1M sum_1_reg_0__5_ ( .D(N273), .SI(sum_1_0__4_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__5_) );
  SDFFQX1M sum_1_reg_1__6_ ( .D(N308), .SI(sum_1_1__5_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__6_) );
  SDFFQX1M sum_1_reg_0__6_ ( .D(N274), .SI(sum_1_0__5_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__6_) );
  SDFFQX1M sum_1_reg_1__7_ ( .D(N309), .SI(sum_1_1__6_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__7_) );
  SDFFQX1M sum_1_reg_0__7_ ( .D(N275), .SI(sum_1_0__6_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__7_) );
  SDFFQX1M sum_1_reg_1__8_ ( .D(N310), .SI(sum_1_1__7_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__8_) );
  SDFFQX1M sum_1_reg_0__8_ ( .D(N276), .SI(sum_1_0__7_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__8_) );
  SDFFQX1M sum_1_reg_1__9_ ( .D(N311), .SI(sum_1_1__8_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__9_) );
  SDFFQX1M sum_1_reg_0__9_ ( .D(N277), .SI(sum_1_0__8_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__9_) );
  SDFFQX1M sum_1_reg_1__10_ ( .D(N312), .SI(sum_1_1__9_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__10_) );
  SDFFQX1M sum_1_reg_0__10_ ( .D(N278), .SI(sum_1_0__9_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__10_) );
  SDFFQX1M sum_1_reg_1__11_ ( .D(N313), .SI(sum_1_1__10_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__11_) );
  SDFFQX1M sum_1_reg_0__11_ ( .D(N279), .SI(sum_1_0__10_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__11_) );
  SDFFQX1M sum_1_reg_1__12_ ( .D(N314), .SI(sum_1_1__11_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__12_) );
  SDFFQX1M sum_1_reg_0__12_ ( .D(N280), .SI(sum_1_0__11_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__12_) );
  SDFFQX1M sum_1_reg_1__13_ ( .D(N315), .SI(sum_1_1__12_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__13_) );
  SDFFQX1M sum_1_reg_0__13_ ( .D(N281), .SI(sum_1_0__12_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__13_) );
  SDFFQX1M sum_2_reg_0__14_ ( .D(N350), .SI(sum_1_1__33_), .SE(SE), .CK(m_clk), 
        .Q(N366) );
  SDFFQX1M sum_1_reg_1__14_ ( .D(N316), .SI(sum_1_1__13_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__14_) );
  SDFFQX1M sum_1_reg_0__14_ ( .D(N282), .SI(sum_1_0__13_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__14_) );
  SDFFQX1M sum_2_reg_0__15_ ( .D(N351), .SI(N366), .SE(SE), .CK(m_clk), .Q(
        N367) );
  SDFFQX1M sum_1_reg_1__15_ ( .D(N317), .SI(sum_1_1__14_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__15_) );
  SDFFQX1M sum_1_reg_0__15_ ( .D(N283), .SI(sum_1_0__14_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__15_) );
  SDFFQX1M sum_2_reg_0__16_ ( .D(N352), .SI(N367), .SE(SE), .CK(m_clk), .Q(
        N368) );
  SDFFQX1M sum_1_reg_1__16_ ( .D(N318), .SI(sum_1_1__15_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__16_) );
  SDFFQX1M sum_1_reg_0__16_ ( .D(N284), .SI(sum_1_0__15_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__16_) );
  SDFFQX1M sum_2_reg_0__17_ ( .D(N353), .SI(N368), .SE(SE), .CK(m_clk), .Q(
        N369) );
  SDFFQX1M sum_1_reg_1__17_ ( .D(N319), .SI(sum_1_1__16_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__17_) );
  SDFFQX1M sum_1_reg_0__17_ ( .D(N285), .SI(sum_1_0__16_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__17_) );
  SDFFQX1M sum_2_reg_0__18_ ( .D(N354), .SI(N369), .SE(SE), .CK(m_clk), .Q(
        N370) );
  SDFFQX1M sum_1_reg_1__18_ ( .D(N320), .SI(sum_1_1__17_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__18_) );
  SDFFQX1M sum_1_reg_0__18_ ( .D(N286), .SI(sum_1_0__17_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__18_) );
  SDFFQX1M sum_2_reg_0__19_ ( .D(N355), .SI(N370), .SE(SE), .CK(m_clk), .Q(
        N371) );
  SDFFQX1M sum_1_reg_1__19_ ( .D(N321), .SI(sum_1_1__18_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__19_) );
  SDFFQX1M sum_1_reg_0__19_ ( .D(N287), .SI(sum_1_0__18_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__19_) );
  SDFFQX1M sum_2_reg_0__20_ ( .D(N356), .SI(N371), .SE(SE), .CK(m_clk), .Q(
        N372) );
  SDFFQX1M sum_1_reg_1__20_ ( .D(N322), .SI(sum_1_1__19_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__20_) );
  SDFFQX1M sum_1_reg_0__20_ ( .D(N288), .SI(sum_1_0__19_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__20_) );
  SDFFQX1M sum_2_reg_0__21_ ( .D(N357), .SI(N372), .SE(SE), .CK(m_clk), .Q(
        N373) );
  SDFFQX1M sum_1_reg_1__21_ ( .D(N323), .SI(sum_1_1__20_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__21_) );
  SDFFQX1M sum_1_reg_0__21_ ( .D(N289), .SI(sum_1_0__20_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__21_) );
  SDFFQX1M sum_2_reg_0__22_ ( .D(N358), .SI(N373), .SE(SE), .CK(m_clk), .Q(
        N374) );
  SDFFQX1M sum_1_reg_1__22_ ( .D(N324), .SI(sum_1_1__21_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__22_) );
  SDFFQX1M sum_1_reg_0__22_ ( .D(N290), .SI(sum_1_0__21_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__22_) );
  SDFFQX1M sum_2_reg_0__23_ ( .D(N359), .SI(N374), .SE(SE), .CK(m_clk), .Q(
        N375) );
  SDFFQX1M sum_1_reg_1__23_ ( .D(N325), .SI(sum_1_1__22_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__23_) );
  SDFFQX1M sum_1_reg_0__23_ ( .D(N291), .SI(sum_1_0__22_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__23_) );
  SDFFQX1M sum_2_reg_0__24_ ( .D(N360), .SI(N375), .SE(SE), .CK(m_clk), .Q(
        N376) );
  SDFFQX1M sum_1_reg_1__24_ ( .D(N326), .SI(sum_1_1__23_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__24_) );
  SDFFQX1M sum_1_reg_0__24_ ( .D(N292), .SI(sum_1_0__23_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__24_) );
  SDFFQX1M sum_2_reg_0__25_ ( .D(N361), .SI(N376), .SE(SE), .CK(m_clk), .Q(
        N377) );
  SDFFQX1M sum_1_reg_1__25_ ( .D(N327), .SI(sum_1_1__24_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__25_) );
  SDFFQX1M sum_1_reg_0__25_ ( .D(N293), .SI(sum_1_0__24_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__25_) );
  SDFFQX1M sum_2_reg_0__26_ ( .D(N362), .SI(N377), .SE(SE), .CK(m_clk), .Q(
        N378) );
  SDFFQX1M sum_1_reg_1__26_ ( .D(N328), .SI(sum_1_1__25_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__26_) );
  SDFFQX1M sum_1_reg_0__26_ ( .D(N294), .SI(sum_1_0__25_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__26_) );
  SDFFQX1M sum_2_reg_0__27_ ( .D(N363), .SI(N378), .SE(SE), .CK(m_clk), .Q(
        N379) );
  SDFFQX1M sum_1_reg_1__27_ ( .D(N329), .SI(sum_1_1__26_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__27_) );
  SDFFQX1M sum_1_reg_0__27_ ( .D(N295), .SI(sum_1_0__26_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__27_) );
  SDFFQX1M sum_2_reg_0__28_ ( .D(N364), .SI(N379), .SE(SE), .CK(m_clk), .Q(
        N380) );
  SDFFQX1M sum_1_reg_1__28_ ( .D(N330), .SI(sum_1_1__27_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__28_) );
  SDFFQX1M sum_1_reg_0__28_ ( .D(N296), .SI(sum_1_0__27_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__28_) );
  SDFFQX1M sum_1_reg_1__29_ ( .D(N331), .SI(sum_1_1__28_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__29_) );
  SDFFQX1M sum_1_reg_0__29_ ( .D(N297), .SI(sum_1_0__28_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__29_) );
  SDFFQX1M sum_2_reg_0__29_ ( .D(N365), .SI(N380), .SE(SE), .CK(m_clk), .Q(
        N381) );
  SDFFQX1M sum_1_reg_1__30_ ( .D(N332), .SI(sum_1_1__29_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__30_) );
  SDFFQX1M sum_1_reg_0__30_ ( .D(N298), .SI(sum_1_0__29_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__30_) );
  SDFFQX1M sum_1_reg_1__31_ ( .D(N333), .SI(sum_1_1__30_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__31_) );
  SDFFQX1M sum_1_reg_0__31_ ( .D(N299), .SI(sum_1_0__30_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__31_) );
  SDFFQX1M sum_1_reg_1__32_ ( .D(N334), .SI(sum_1_1__31_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__32_) );
  SDFFQX1M sum_1_reg_0__32_ ( .D(N300), .SI(sum_1_0__31_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__32_) );
  SDFFQX1M sum_1_reg_1__33_ ( .D(N335), .SI(sum_1_1__32_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_1__33_) );
  SDFFQX1M sum_1_reg_0__33_ ( .D(N301), .SI(sum_1_0__32_), .SE(SE), .CK(m_clk), 
        .Q(sum_1_0__33_) );
  INVX8M U673 ( .A(n512), .Y(Fliter_Signal[0]) );
  INVX8M U675 ( .A(n514), .Y(Fliter_Signal[1]) );
  INVX8M U677 ( .A(n516), .Y(Fliter_Signal[2]) );
  INVX8M U679 ( .A(n518), .Y(Fliter_Signal[3]) );
  INVX8M U681 ( .A(n520), .Y(Fliter_Signal[4]) );
  INVX8M U683 ( .A(n522), .Y(Fliter_Signal[5]) );
  INVX8M U685 ( .A(n524), .Y(Fliter_Signal[6]) );
  INVX8M U687 ( .A(n526), .Y(Fliter_Signal[7]) );
  INVX8M U689 ( .A(n528), .Y(Fliter_Signal[8]) );
  INVX8M U691 ( .A(n530), .Y(Fliter_Signal[9]) );
  INVX8M U693 ( .A(n532), .Y(Fliter_Signal[10]) );
  INVX8M U695 ( .A(n534), .Y(Fliter_Signal[11]) );
  INVX8M U697 ( .A(n536), .Y(Fliter_Signal[12]) );
  INVX8M U699 ( .A(n538), .Y(Fliter_Signal[13]) );
  INVX8M U701 ( .A(n540), .Y(Fliter_Signal[14]) );
  INVXLM U702 ( .A(SO), .Y(n542) );
  INVX8M U703 ( .A(n542), .Y(Fliter_Signal[15]) );
  mux2X1_1 mux_clk ( .IN_0(CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(m_clk)
         );
  mux2X1_0 mux_reset ( .IN_0(1'b0), .IN_1(scan_rst), .SEL(test_mode) );
  FIR_Fliter_DW01_add_1 add_120 ( .A({sum_1_0__33_, sum_1_0__33_, sum_1_0__32_, 
        sum_1_0__31_, sum_1_0__30_, sum_1_0__29_, sum_1_0__28_, sum_1_0__27_, 
        sum_1_0__26_, sum_1_0__25_, sum_1_0__24_, sum_1_0__23_, sum_1_0__22_, 
        sum_1_0__21_, sum_1_0__20_, sum_1_0__19_, sum_1_0__18_, sum_1_0__17_, 
        sum_1_0__16_, sum_1_0__15_, sum_1_0__14_, sum_1_0__13_, sum_1_0__12_, 
        sum_1_0__11_, sum_1_0__10_, sum_1_0__9_, sum_1_0__8_, sum_1_0__7_, 
        sum_1_0__6_, sum_1_0__5_, sum_1_0__4_, sum_1_0__3_, sum_1_0__2_, 
        sum_1_0__1_, sum_1_0__0_}), .B({sum_1_1__33_, sum_1_1__33_, 
        sum_1_1__32_, sum_1_1__31_, sum_1_1__30_, sum_1_1__29_, sum_1_1__28_, 
        sum_1_1__27_, sum_1_1__26_, sum_1_1__25_, sum_1_1__24_, sum_1_1__23_, 
        sum_1_1__22_, sum_1_1__21_, sum_1_1__20_, sum_1_1__19_, sum_1_1__18_, 
        sum_1_1__17_, sum_1_1__16_, sum_1_1__15_, sum_1_1__14_, sum_1_1__13_, 
        sum_1_1__12_, sum_1_1__11_, sum_1_1__10_, sum_1_1__9_, sum_1_1__8_, 
        sum_1_1__7_, sum_1_1__6_, sum_1_1__5_, sum_1_1__4_, sum_1_1__3_, 
        sum_1_1__2_, sum_1_1__1_, sum_1_1__0_}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, N365, N364, N363, N362, 
        N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19}) );
  FIR_Fliter_DW01_add_2 add_114 ( .A({sum_0_2__32_, sum_0_2__32_, sum_0_2__31_, 
        sum_0_2__30_, sum_0_2__29_, sum_0_2__28_, sum_0_2__27_, sum_0_2__26_, 
        sum_0_2__25_, sum_0_2__24_, sum_0_2__23_, sum_0_2__22_, sum_0_2__21_, 
        sum_0_2__20_, sum_0_2__19_, sum_0_2__18_, sum_0_2__17_, sum_0_2__16_, 
        sum_0_2__15_, sum_0_2__14_, sum_0_2__13_, sum_0_2__12_, sum_0_2__11_, 
        sum_0_2__10_, sum_0_2__9_, sum_0_2__8_, sum_0_2__7_, sum_0_2__6_, 
        sum_0_2__5_, sum_0_2__4_, sum_0_2__3_, sum_0_2__2_, sum_0_2__1_, 
        sum_0_2__0_}), .B({sum_0_3__32_, sum_0_3__32_, sum_0_3__31_, 
        sum_0_3__30_, sum_0_3__29_, sum_0_3__28_, sum_0_3__27_, sum_0_3__26_, 
        sum_0_3__25_, sum_0_3__24_, sum_0_3__23_, sum_0_3__22_, sum_0_3__21_, 
        sum_0_3__20_, sum_0_3__19_, sum_0_3__18_, sum_0_3__17_, sum_0_3__16_, 
        sum_0_3__15_, sum_0_3__14_, sum_0_3__13_, sum_0_3__12_, sum_0_3__11_, 
        sum_0_3__10_, sum_0_3__9_, sum_0_3__8_, sum_0_3__7_, sum_0_3__6_, 
        sum_0_3__5_, sum_0_3__4_, sum_0_3__3_, sum_0_3__2_, sum_0_3__1_, 
        sum_0_3__0_}), .CI(1'b0), .SUM({N335, N334, N333, N332, N331, N330, 
        N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, 
        N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, 
        N305, N304, N303, N302}) );
  FIR_Fliter_DW01_add_3 add_113 ( .A({sum_0_0__32_, sum_0_0__32_, sum_0_0__31_, 
        sum_0_0__30_, sum_0_0__29_, sum_0_0__28_, sum_0_0__27_, sum_0_0__26_, 
        sum_0_0__25_, sum_0_0__24_, sum_0_0__23_, sum_0_0__22_, sum_0_0__21_, 
        sum_0_0__20_, sum_0_0__19_, sum_0_0__18_, sum_0_0__17_, sum_0_0__16_, 
        sum_0_0__15_, sum_0_0__14_, sum_0_0__13_, sum_0_0__12_, sum_0_0__11_, 
        sum_0_0__10_, sum_0_0__9_, sum_0_0__8_, sum_0_0__7_, sum_0_0__6_, 
        sum_0_0__5_, sum_0_0__4_, sum_0_0__3_, sum_0_0__2_, sum_0_0__1_, 
        sum_0_0__0_}), .B({sum_0_1__32_, sum_0_1__32_, sum_0_1__31_, 
        sum_0_1__30_, sum_0_1__29_, sum_0_1__28_, sum_0_1__27_, sum_0_1__26_, 
        sum_0_1__25_, sum_0_1__24_, sum_0_1__23_, sum_0_1__22_, sum_0_1__21_, 
        sum_0_1__20_, sum_0_1__19_, sum_0_1__18_, sum_0_1__17_, sum_0_1__16_, 
        sum_0_1__15_, sum_0_1__14_, sum_0_1__13_, sum_0_1__12_, sum_0_1__11_, 
        sum_0_1__10_, sum_0_1__9_, sum_0_1__8_, sum_0_1__7_, sum_0_1__6_, 
        sum_0_1__5_, sum_0_1__4_, sum_0_1__3_, sum_0_1__2_, sum_0_1__1_, 
        sum_0_1__0_}), .CI(1'b0), .SUM({N301, N300, N299, N298, N297, N296, 
        N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, 
        N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, 
        N271, N270, N269, N268}) );
  SDFFQX2M sum_0_reg_3__32_ ( .D(1'b0), .SI(sum_0_3__31_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__32_) );
  SDFFQX2M sum_0_reg_3__31_ ( .D(1'b0), .SI(sum_0_3__30_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__31_) );
  SDFFQX2M sum_0_reg_3__30_ ( .D(1'b0), .SI(sum_0_3__29_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__30_) );
  SDFFQX2M sum_0_reg_3__29_ ( .D(1'b0), .SI(sum_0_3__28_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__29_) );
  SDFFQX2M sum_0_reg_3__28_ ( .D(1'b0), .SI(sum_0_3__27_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__28_) );
  SDFFQX2M sum_0_reg_3__27_ ( .D(1'b0), .SI(sum_0_3__26_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__27_) );
  SDFFQX2M sum_0_reg_3__26_ ( .D(1'b0), .SI(sum_0_3__25_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__26_) );
  SDFFQX2M sum_0_reg_3__25_ ( .D(1'b0), .SI(sum_0_3__24_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__25_) );
  SDFFQX2M sum_0_reg_3__24_ ( .D(1'b0), .SI(sum_0_3__23_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__24_) );
  SDFFQX2M sum_0_reg_3__23_ ( .D(1'b0), .SI(sum_0_3__22_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__23_) );
  SDFFQX2M sum_0_reg_3__22_ ( .D(1'b0), .SI(sum_0_3__21_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__22_) );
  SDFFQX2M sum_0_reg_3__21_ ( .D(1'b0), .SI(sum_0_3__20_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__21_) );
  SDFFQX2M sum_0_reg_3__20_ ( .D(1'b0), .SI(sum_0_3__19_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__20_) );
  SDFFQX2M sum_0_reg_3__19_ ( .D(1'b0), .SI(sum_0_3__18_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__19_) );
  SDFFQX2M sum_0_reg_3__18_ ( .D(1'b0), .SI(sum_0_3__17_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__18_) );
  SDFFQX2M sum_0_reg_3__17_ ( .D(1'b0), .SI(sum_0_3__16_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__17_) );
  SDFFQX2M sum_0_reg_3__16_ ( .D(1'b0), .SI(sum_0_3__15_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__16_) );
  SDFFQX2M sum_0_reg_3__15_ ( .D(1'b0), .SI(sum_0_3__14_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__15_) );
  SDFFQX2M sum_0_reg_3__14_ ( .D(1'b0), .SI(sum_0_3__13_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__14_) );
  SDFFQX2M sum_0_reg_3__13_ ( .D(1'b0), .SI(sum_0_3__12_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__13_) );
  SDFFQX2M sum_0_reg_3__12_ ( .D(1'b0), .SI(sum_0_3__11_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__12_) );
  SDFFQX2M sum_0_reg_3__11_ ( .D(1'b0), .SI(sum_0_3__10_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__11_) );
  SDFFQX2M sum_0_reg_3__10_ ( .D(1'b0), .SI(sum_0_3__9_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__10_) );
  SDFFQX2M sum_0_reg_3__9_ ( .D(1'b0), .SI(sum_0_3__8_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__9_) );
  SDFFQX2M sum_0_reg_3__8_ ( .D(1'b0), .SI(sum_0_3__7_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__8_) );
  SDFFQX2M sum_0_reg_3__7_ ( .D(1'b0), .SI(sum_0_3__6_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__7_) );
  SDFFQX2M sum_0_reg_3__6_ ( .D(1'b0), .SI(sum_0_3__5_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__6_) );
  SDFFQX2M sum_0_reg_3__5_ ( .D(1'b0), .SI(sum_0_3__4_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__5_) );
  SDFFQX2M sum_0_reg_3__4_ ( .D(1'b0), .SI(sum_0_3__3_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__4_) );
  SDFFQX2M sum_0_reg_3__3_ ( .D(1'b0), .SI(sum_0_3__2_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__3_) );
  SDFFQX2M sum_0_reg_3__2_ ( .D(1'b0), .SI(sum_0_3__1_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__2_) );
  SDFFQX2M sum_0_reg_1__32_ ( .D(1'b0), .SI(sum_0_1__31_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__32_) );
  SDFFQX2M sum_0_reg_1__31_ ( .D(1'b0), .SI(sum_0_1__30_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__31_) );
  SDFFQX2M sum_0_reg_1__30_ ( .D(1'b0), .SI(sum_0_1__29_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__30_) );
  SDFFQX2M sum_0_reg_1__29_ ( .D(1'b0), .SI(sum_0_1__28_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__29_) );
  SDFFQX2M sum_0_reg_1__28_ ( .D(1'b0), .SI(sum_0_1__27_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__28_) );
  SDFFQX2M sum_0_reg_1__27_ ( .D(1'b0), .SI(sum_0_1__26_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__27_) );
  SDFFQX2M sum_0_reg_1__26_ ( .D(1'b0), .SI(sum_0_1__25_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__26_) );
  SDFFQX2M sum_0_reg_1__25_ ( .D(1'b0), .SI(sum_0_1__24_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__25_) );
  SDFFQX2M sum_0_reg_1__24_ ( .D(1'b0), .SI(sum_0_1__23_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__24_) );
  SDFFQX2M sum_0_reg_1__23_ ( .D(1'b0), .SI(sum_0_1__22_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__23_) );
  SDFFQX2M sum_0_reg_1__22_ ( .D(1'b0), .SI(sum_0_1__21_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__22_) );
  SDFFQX2M sum_0_reg_1__21_ ( .D(1'b0), .SI(sum_0_1__20_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__21_) );
  SDFFQX2M sum_0_reg_1__20_ ( .D(1'b0), .SI(sum_0_1__19_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__20_) );
  SDFFQX2M sum_0_reg_1__19_ ( .D(1'b0), .SI(sum_0_1__18_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__19_) );
  SDFFQX2M sum_0_reg_1__18_ ( .D(1'b0), .SI(sum_0_1__17_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__18_) );
  SDFFQX2M sum_0_reg_1__17_ ( .D(1'b0), .SI(sum_0_1__16_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__17_) );
  SDFFQX2M sum_0_reg_1__16_ ( .D(1'b0), .SI(sum_0_1__15_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__16_) );
  SDFFQX2M sum_0_reg_1__15_ ( .D(1'b0), .SI(sum_0_1__14_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__15_) );
  SDFFQX2M sum_0_reg_1__14_ ( .D(1'b0), .SI(sum_0_1__13_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__14_) );
  SDFFQX2M sum_0_reg_1__13_ ( .D(1'b0), .SI(sum_0_1__12_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__13_) );
  SDFFQX2M sum_0_reg_1__12_ ( .D(1'b0), .SI(sum_0_1__11_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__12_) );
  SDFFQX2M sum_0_reg_1__11_ ( .D(1'b0), .SI(sum_0_1__10_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__11_) );
  SDFFQX2M sum_0_reg_1__10_ ( .D(1'b0), .SI(sum_0_1__9_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__10_) );
  SDFFQX2M sum_0_reg_1__9_ ( .D(1'b0), .SI(sum_0_1__8_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__9_) );
  SDFFQX2M sum_0_reg_1__8_ ( .D(1'b0), .SI(sum_0_1__7_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__8_) );
  SDFFQX2M sum_0_reg_1__7_ ( .D(1'b0), .SI(sum_0_1__6_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__7_) );
  SDFFQX2M sum_0_reg_1__6_ ( .D(1'b0), .SI(sum_0_1__5_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__6_) );
  SDFFQX2M sum_0_reg_1__5_ ( .D(1'b0), .SI(sum_0_1__4_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__5_) );
  SDFFQX2M sum_0_reg_1__4_ ( .D(1'b0), .SI(sum_0_1__3_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__4_) );
  SDFFQX2M sum_0_reg_1__3_ ( .D(1'b0), .SI(sum_0_1__2_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__3_) );
  SDFFQX2M sum_0_reg_1__2_ ( .D(1'b0), .SI(sum_0_1__1_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__2_) );
  SDFFQX2M sum_0_reg_2__32_ ( .D(1'b0), .SI(sum_0_2__31_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__32_) );
  SDFFQX2M sum_0_reg_2__31_ ( .D(1'b0), .SI(sum_0_2__30_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__31_) );
  SDFFQX2M sum_0_reg_2__30_ ( .D(1'b0), .SI(sum_0_2__29_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__30_) );
  SDFFQX2M sum_0_reg_2__29_ ( .D(1'b0), .SI(sum_0_2__28_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__29_) );
  SDFFQX2M sum_0_reg_2__28_ ( .D(1'b0), .SI(sum_0_2__27_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__28_) );
  SDFFQX2M sum_0_reg_2__27_ ( .D(1'b0), .SI(sum_0_2__26_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__27_) );
  SDFFQX2M sum_0_reg_2__26_ ( .D(1'b0), .SI(sum_0_2__25_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__26_) );
  SDFFQX2M sum_0_reg_2__25_ ( .D(1'b0), .SI(sum_0_2__24_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__25_) );
  SDFFQX2M sum_0_reg_2__24_ ( .D(1'b0), .SI(sum_0_2__23_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__24_) );
  SDFFQX2M sum_0_reg_2__23_ ( .D(1'b0), .SI(sum_0_2__22_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__23_) );
  SDFFQX2M sum_0_reg_2__22_ ( .D(1'b0), .SI(sum_0_2__21_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__22_) );
  SDFFQX2M sum_0_reg_2__21_ ( .D(1'b0), .SI(sum_0_2__20_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__21_) );
  SDFFQX2M sum_0_reg_2__20_ ( .D(1'b0), .SI(sum_0_2__19_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__20_) );
  SDFFQX2M sum_0_reg_2__19_ ( .D(1'b0), .SI(sum_0_2__18_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__19_) );
  SDFFQX2M sum_0_reg_2__18_ ( .D(1'b0), .SI(sum_0_2__17_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__18_) );
  SDFFQX2M sum_0_reg_2__17_ ( .D(1'b0), .SI(sum_0_2__16_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__17_) );
  SDFFQX2M sum_0_reg_2__16_ ( .D(1'b0), .SI(sum_0_2__15_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__16_) );
  SDFFQX2M sum_0_reg_2__15_ ( .D(1'b0), .SI(sum_0_2__14_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__15_) );
  SDFFQX2M sum_0_reg_2__14_ ( .D(1'b0), .SI(sum_0_2__13_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__14_) );
  SDFFQX2M sum_0_reg_2__13_ ( .D(1'b0), .SI(sum_0_2__12_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__13_) );
  SDFFQX2M sum_0_reg_2__12_ ( .D(1'b0), .SI(sum_0_2__11_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__12_) );
  SDFFQX2M sum_0_reg_2__11_ ( .D(1'b0), .SI(sum_0_2__10_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__11_) );
  SDFFQX2M sum_0_reg_2__10_ ( .D(1'b0), .SI(sum_0_2__9_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__10_) );
  SDFFQX2M sum_0_reg_2__9_ ( .D(1'b0), .SI(sum_0_2__8_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__9_) );
  SDFFQX2M sum_0_reg_2__8_ ( .D(1'b0), .SI(sum_0_2__7_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__8_) );
  SDFFQX2M sum_0_reg_2__7_ ( .D(1'b0), .SI(sum_0_2__6_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__7_) );
  SDFFQX2M sum_0_reg_2__6_ ( .D(1'b0), .SI(sum_0_2__5_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__6_) );
  SDFFQX2M sum_0_reg_2__5_ ( .D(1'b0), .SI(sum_0_2__4_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__5_) );
  SDFFQX2M sum_0_reg_2__4_ ( .D(1'b0), .SI(sum_0_2__3_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__4_) );
  SDFFQX2M sum_0_reg_2__3_ ( .D(1'b0), .SI(sum_0_2__2_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__3_) );
  SDFFQX2M sum_0_reg_2__2_ ( .D(1'b0), .SI(sum_0_2__1_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__2_) );
  SDFFQX2M sum_0_reg_0__32_ ( .D(1'b0), .SI(sum_0_0__31_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__32_) );
  SDFFQX2M sum_0_reg_0__31_ ( .D(1'b0), .SI(sum_0_0__30_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__31_) );
  SDFFQX2M sum_0_reg_0__30_ ( .D(1'b0), .SI(sum_0_0__29_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__30_) );
  SDFFQX2M sum_0_reg_0__29_ ( .D(1'b0), .SI(sum_0_0__28_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__29_) );
  SDFFQX2M sum_0_reg_0__28_ ( .D(1'b0), .SI(sum_0_0__27_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__28_) );
  SDFFQX2M sum_0_reg_0__27_ ( .D(1'b0), .SI(sum_0_0__26_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__27_) );
  SDFFQX2M sum_0_reg_0__26_ ( .D(1'b0), .SI(sum_0_0__25_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__26_) );
  SDFFQX2M sum_0_reg_0__25_ ( .D(1'b0), .SI(sum_0_0__24_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__25_) );
  SDFFQX2M sum_0_reg_0__24_ ( .D(1'b0), .SI(sum_0_0__23_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__24_) );
  SDFFQX2M sum_0_reg_0__23_ ( .D(1'b0), .SI(sum_0_0__22_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__23_) );
  SDFFQX2M sum_0_reg_0__22_ ( .D(1'b0), .SI(sum_0_0__21_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__22_) );
  SDFFQX2M sum_0_reg_0__21_ ( .D(1'b0), .SI(sum_0_0__20_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__21_) );
  SDFFQX2M sum_0_reg_0__20_ ( .D(1'b0), .SI(sum_0_0__19_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__20_) );
  SDFFQX2M sum_0_reg_0__19_ ( .D(1'b0), .SI(sum_0_0__18_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__19_) );
  SDFFQX2M sum_0_reg_0__18_ ( .D(1'b0), .SI(sum_0_0__17_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__18_) );
  SDFFQX2M sum_0_reg_0__17_ ( .D(1'b0), .SI(sum_0_0__16_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__17_) );
  SDFFQX2M sum_0_reg_0__16_ ( .D(1'b0), .SI(sum_0_0__15_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__16_) );
  SDFFQX2M sum_0_reg_0__15_ ( .D(1'b0), .SI(sum_0_0__14_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__15_) );
  SDFFQX2M sum_0_reg_0__14_ ( .D(1'b0), .SI(sum_0_0__13_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__14_) );
  SDFFQX2M sum_0_reg_0__13_ ( .D(1'b0), .SI(sum_0_0__12_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__13_) );
  SDFFQX2M sum_0_reg_0__12_ ( .D(1'b0), .SI(sum_0_0__11_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__12_) );
  SDFFQX2M sum_0_reg_0__11_ ( .D(1'b0), .SI(sum_0_0__10_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__11_) );
  SDFFQX2M sum_0_reg_0__10_ ( .D(1'b0), .SI(sum_0_0__9_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__10_) );
  SDFFQX2M sum_0_reg_0__9_ ( .D(1'b0), .SI(sum_0_0__8_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__9_) );
  SDFFQX2M sum_0_reg_0__8_ ( .D(1'b0), .SI(sum_0_0__7_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__8_) );
  SDFFQX2M sum_0_reg_0__7_ ( .D(1'b0), .SI(sum_0_0__6_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__7_) );
  SDFFQX2M sum_0_reg_0__6_ ( .D(1'b0), .SI(sum_0_0__5_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__6_) );
  SDFFQX2M sum_0_reg_0__5_ ( .D(1'b0), .SI(sum_0_0__4_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__5_) );
  SDFFQX2M sum_0_reg_0__4_ ( .D(1'b0), .SI(sum_0_0__3_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__4_) );
  SDFFQX2M sum_0_reg_0__3_ ( .D(1'b0), .SI(sum_0_0__2_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__3_) );
  SDFFQX2M sum_0_reg_0__2_ ( .D(1'b0), .SI(sum_0_0__1_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__2_) );
  SDFFQX2M sum_0_reg_2__1_ ( .D(1'b0), .SI(sum_0_2__0_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__1_) );
  SDFFQX2M sum_0_reg_0__1_ ( .D(1'b0), .SI(sum_0_0__0_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_0__1_) );
  SDFFQX2M sum_0_reg_3__1_ ( .D(1'b0), .SI(sum_0_3__0_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__1_) );
  SDFFQX2M sum_0_reg_1__1_ ( .D(1'b0), .SI(sum_0_1__0_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__1_) );
  SDFFQX2M sum_0_reg_3__0_ ( .D(1'b0), .SI(sum_0_2__32_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_3__0_) );
  SDFFQX2M sum_0_reg_1__0_ ( .D(1'b0), .SI(sum_0_0__32_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_1__0_) );
  SDFFQX2M sum_0_reg_2__0_ ( .D(1'b0), .SI(sum_0_1__32_), .SE(SE), .CK(m_clk), 
        .Q(sum_0_2__0_) );
  SDFFQNX2M sum_3_reg_14_ ( .D(N366), .SI(N381), .SE(SE), .CK(m_clk), .QN(n512) );
  SDFFQNX2M sum_3_reg_29_ ( .D(N381), .SI(Fliter_Signal[14]), .SE(SE), .CK(
        m_clk), .QN(n662) );
  SDFFQNX2M sum_3_reg_28_ ( .D(N380), .SI(Fliter_Signal[13]), .SE(SE), .CK(
        m_clk), .QN(n540) );
  SDFFQNX2M sum_3_reg_27_ ( .D(N379), .SI(Fliter_Signal[12]), .SE(SE), .CK(
        m_clk), .QN(n538) );
  SDFFQNX2M sum_3_reg_26_ ( .D(N378), .SI(Fliter_Signal[11]), .SE(SE), .CK(
        m_clk), .QN(n536) );
  SDFFQNX2M sum_3_reg_25_ ( .D(N377), .SI(Fliter_Signal[10]), .SE(SE), .CK(
        m_clk), .QN(n534) );
  SDFFQNX2M sum_3_reg_24_ ( .D(N376), .SI(Fliter_Signal[9]), .SE(SE), .CK(
        m_clk), .QN(n532) );
  SDFFQNX2M sum_3_reg_23_ ( .D(N375), .SI(Fliter_Signal[8]), .SE(SE), .CK(
        m_clk), .QN(n530) );
  SDFFQNX2M sum_3_reg_22_ ( .D(N374), .SI(Fliter_Signal[7]), .SE(SE), .CK(
        m_clk), .QN(n528) );
  SDFFQNX2M sum_3_reg_21_ ( .D(N373), .SI(Fliter_Signal[6]), .SE(SE), .CK(
        m_clk), .QN(n526) );
  SDFFQNX2M sum_3_reg_20_ ( .D(N372), .SI(Fliter_Signal[5]), .SE(SE), .CK(
        m_clk), .QN(n524) );
  SDFFQNX2M sum_3_reg_19_ ( .D(N371), .SI(Fliter_Signal[4]), .SE(SE), .CK(
        m_clk), .QN(n522) );
  SDFFQNX2M sum_3_reg_18_ ( .D(N370), .SI(Fliter_Signal[3]), .SE(SE), .CK(
        m_clk), .QN(n520) );
  SDFFQNX2M sum_3_reg_17_ ( .D(N369), .SI(Fliter_Signal[2]), .SE(SE), .CK(
        m_clk), .QN(n518) );
  SDFFQNX2M sum_3_reg_16_ ( .D(N368), .SI(Fliter_Signal[1]), .SE(SE), .CK(
        m_clk), .QN(n516) );
  SDFFQNX2M sum_3_reg_15_ ( .D(N367), .SI(Fliter_Signal[0]), .SE(SE), .CK(
        m_clk), .QN(n514) );
  CLKINVX40M U672 ( .A(n662), .Y(SO) );
endmodule

