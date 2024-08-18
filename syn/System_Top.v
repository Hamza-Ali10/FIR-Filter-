/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Aug  2 23:54:45 2024
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
  wire   [34:1] carry;

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
  wire   [33:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
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
  wire   [33:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
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
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module FIR_Fliter ( CLK, Signal_Noise, Fliter_Signal, SI, SE, test_mode, 
        scan_clk, scan_rst, SO );
  input [15:0] Signal_Noise;
  output [15:0] Fliter_Signal;
  input CLK, SI, SE, test_mode, scan_clk, scan_rst;
  output SO;
  wire   n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, m_clk, \sum_0[0][32] , \sum_0[0][31] , \sum_0[0][30] ,
         \sum_0[0][29] , \sum_0[0][28] , \sum_0[0][27] , \sum_0[0][26] ,
         \sum_0[0][25] , \sum_0[0][24] , \sum_0[0][23] , \sum_0[0][22] ,
         \sum_0[0][21] , \sum_0[0][20] , \sum_0[0][19] , \sum_0[0][18] ,
         \sum_0[0][17] , \sum_0[0][16] , \sum_0[0][15] , \sum_0[0][14] ,
         \sum_0[0][13] , \sum_0[0][12] , \sum_0[0][11] , \sum_0[0][10] ,
         \sum_0[0][9] , \sum_0[0][8] , \sum_0[0][7] , \sum_0[0][6] ,
         \sum_0[0][5] , \sum_0[0][4] , \sum_0[0][3] , \sum_0[0][2] ,
         \sum_0[0][1] , \sum_0[0][0] , \sum_0[1][32] , \sum_0[1][31] ,
         \sum_0[1][30] , \sum_0[1][29] , \sum_0[1][28] , \sum_0[1][27] ,
         \sum_0[1][26] , \sum_0[1][25] , \sum_0[1][24] , \sum_0[1][23] ,
         \sum_0[1][22] , \sum_0[1][21] , \sum_0[1][20] , \sum_0[1][19] ,
         \sum_0[1][18] , \sum_0[1][17] , \sum_0[1][16] , \sum_0[1][15] ,
         \sum_0[1][14] , \sum_0[1][13] , \sum_0[1][12] , \sum_0[1][11] ,
         \sum_0[1][10] , \sum_0[1][9] , \sum_0[1][8] , \sum_0[1][7] ,
         \sum_0[1][6] , \sum_0[1][5] , \sum_0[1][4] , \sum_0[1][3] ,
         \sum_0[1][2] , \sum_0[1][1] , \sum_0[1][0] , \sum_0[2][32] ,
         \sum_0[2][31] , \sum_0[2][30] , \sum_0[2][29] , \sum_0[2][28] ,
         \sum_0[2][27] , \sum_0[2][26] , \sum_0[2][25] , \sum_0[2][24] ,
         \sum_0[2][23] , \sum_0[2][22] , \sum_0[2][21] , \sum_0[2][20] ,
         \sum_0[2][19] , \sum_0[2][18] , \sum_0[2][17] , \sum_0[2][16] ,
         \sum_0[2][15] , \sum_0[2][14] , \sum_0[2][13] , \sum_0[2][12] ,
         \sum_0[2][11] , \sum_0[2][10] , \sum_0[2][9] , \sum_0[2][8] ,
         \sum_0[2][7] , \sum_0[2][6] , \sum_0[2][5] , \sum_0[2][4] ,
         \sum_0[2][3] , \sum_0[2][2] , \sum_0[2][1] , \sum_0[2][0] ,
         \sum_0[3][32] , \sum_0[3][31] , \sum_0[3][30] , \sum_0[3][29] ,
         \sum_0[3][28] , \sum_0[3][27] , \sum_0[3][26] , \sum_0[3][25] ,
         \sum_0[3][24] , \sum_0[3][23] , \sum_0[3][22] , \sum_0[3][21] ,
         \sum_0[3][20] , \sum_0[3][19] , \sum_0[3][18] , \sum_0[3][17] ,
         \sum_0[3][16] , \sum_0[3][15] , \sum_0[3][14] , \sum_0[3][13] ,
         \sum_0[3][12] , \sum_0[3][11] , \sum_0[3][10] , \sum_0[3][9] ,
         \sum_0[3][8] , \sum_0[3][7] , \sum_0[3][6] , \sum_0[3][5] ,
         \sum_0[3][4] , \sum_0[3][3] , \sum_0[3][2] , \sum_0[3][1] ,
         \sum_0[3][0] , N268, N269, N270, N271, N272, N273, N274, N275, N276,
         N277, N278, N279, N280, N281, N282, N283, N284, N285, N286, N287,
         N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298,
         N299, N300, N301, \sum_1[0][33] , \sum_1[0][32] , \sum_1[0][31] ,
         \sum_1[0][30] , \sum_1[0][29] , \sum_1[0][28] , \sum_1[0][27] ,
         \sum_1[0][26] , \sum_1[0][25] , \sum_1[0][24] , \sum_1[0][23] ,
         \sum_1[0][22] , \sum_1[0][21] , \sum_1[0][20] , \sum_1[0][19] ,
         \sum_1[0][18] , \sum_1[0][17] , \sum_1[0][16] , \sum_1[0][15] ,
         \sum_1[0][14] , \sum_1[0][13] , \sum_1[0][12] , \sum_1[0][11] ,
         \sum_1[0][10] , \sum_1[0][9] , \sum_1[0][8] , \sum_1[0][7] ,
         \sum_1[0][6] , \sum_1[0][5] , \sum_1[0][4] , \sum_1[0][3] ,
         \sum_1[0][2] , \sum_1[0][1] , \sum_1[0][0] , \sum_1[1][33] ,
         \sum_1[1][32] , \sum_1[1][31] , \sum_1[1][30] , \sum_1[1][29] ,
         \sum_1[1][28] , \sum_1[1][27] , \sum_1[1][26] , \sum_1[1][25] ,
         \sum_1[1][24] , \sum_1[1][23] , \sum_1[1][22] , \sum_1[1][21] ,
         \sum_1[1][20] , \sum_1[1][19] , \sum_1[1][18] , \sum_1[1][17] ,
         \sum_1[1][16] , \sum_1[1][15] , \sum_1[1][14] , \sum_1[1][13] ,
         \sum_1[1][12] , \sum_1[1][11] , \sum_1[1][10] , \sum_1[1][9] ,
         \sum_1[1][8] , \sum_1[1][7] , \sum_1[1][6] , \sum_1[1][5] ,
         \sum_1[1][4] , \sum_1[1][3] , \sum_1[1][2] , \sum_1[1][1] ,
         \sum_1[1][0] , N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332,
         N333, N334, N335, N350, N351, N352, N353, N354, N355, N356, N357,
         N358, N359, N360, N361, N362, N363, N364, N365, N366, N367, N368,
         N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379,
         N380, N381, n10, n12, n14, n16, n18, n20, n22, n24, n26, n28, n30,
         n32, n34, n36, n38, n40;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18;

  mux2X1_1 mux_clk ( .IN_0(CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(m_clk)
         );
  mux2X1_0 mux_reset ( .IN_0(1'b0), .IN_1(scan_rst), .SEL(test_mode) );
  FIR_Fliter_DW01_add_1 add_120 ( .A({\sum_1[0][33] , \sum_1[0][33] , 
        \sum_1[0][32] , \sum_1[0][31] , \sum_1[0][30] , \sum_1[0][29] , 
        \sum_1[0][28] , \sum_1[0][27] , \sum_1[0][26] , \sum_1[0][25] , 
        \sum_1[0][24] , \sum_1[0][23] , \sum_1[0][22] , \sum_1[0][21] , 
        \sum_1[0][20] , \sum_1[0][19] , \sum_1[0][18] , \sum_1[0][17] , 
        \sum_1[0][16] , \sum_1[0][15] , \sum_1[0][14] , \sum_1[0][13] , 
        \sum_1[0][12] , \sum_1[0][11] , \sum_1[0][10] , \sum_1[0][9] , 
        \sum_1[0][8] , \sum_1[0][7] , \sum_1[0][6] , \sum_1[0][5] , 
        \sum_1[0][4] , \sum_1[0][3] , \sum_1[0][2] , \sum_1[0][1] , 
        \sum_1[0][0] }), .B({\sum_1[1][33] , \sum_1[1][33] , \sum_1[1][32] , 
        \sum_1[1][31] , \sum_1[1][30] , \sum_1[1][29] , \sum_1[1][28] , 
        \sum_1[1][27] , \sum_1[1][26] , \sum_1[1][25] , \sum_1[1][24] , 
        \sum_1[1][23] , \sum_1[1][22] , \sum_1[1][21] , \sum_1[1][20] , 
        \sum_1[1][19] , \sum_1[1][18] , \sum_1[1][17] , \sum_1[1][16] , 
        \sum_1[1][15] , \sum_1[1][14] , \sum_1[1][13] , \sum_1[1][12] , 
        \sum_1[1][11] , \sum_1[1][10] , \sum_1[1][9] , \sum_1[1][8] , 
        \sum_1[1][7] , \sum_1[1][6] , \sum_1[1][5] , \sum_1[1][4] , 
        \sum_1[1][3] , \sum_1[1][2] , \sum_1[1][1] , \sum_1[1][0] }), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, N365, N364, N363, N362, N361, N360, N359, 
        N358, N357, N356, N355, N354, N353, N352, N351, N350, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18}) );
  FIR_Fliter_DW01_add_2 add_114 ( .A({\sum_0[2][32] , \sum_0[2][32] , 
        \sum_0[2][31] , \sum_0[2][30] , \sum_0[2][29] , \sum_0[2][28] , 
        \sum_0[2][27] , \sum_0[2][26] , \sum_0[2][25] , \sum_0[2][24] , 
        \sum_0[2][23] , \sum_0[2][22] , \sum_0[2][21] , \sum_0[2][20] , 
        \sum_0[2][19] , \sum_0[2][18] , \sum_0[2][17] , \sum_0[2][16] , 
        \sum_0[2][15] , \sum_0[2][14] , \sum_0[2][13] , \sum_0[2][12] , 
        \sum_0[2][11] , \sum_0[2][10] , \sum_0[2][9] , \sum_0[2][8] , 
        \sum_0[2][7] , \sum_0[2][6] , \sum_0[2][5] , \sum_0[2][4] , 
        \sum_0[2][3] , \sum_0[2][2] , \sum_0[2][1] , \sum_0[2][0] }), .B({
        \sum_0[3][32] , \sum_0[3][32] , \sum_0[3][31] , \sum_0[3][30] , 
        \sum_0[3][29] , \sum_0[3][28] , \sum_0[3][27] , \sum_0[3][26] , 
        \sum_0[3][25] , \sum_0[3][24] , \sum_0[3][23] , \sum_0[3][22] , 
        \sum_0[3][21] , \sum_0[3][20] , \sum_0[3][19] , \sum_0[3][18] , 
        \sum_0[3][17] , \sum_0[3][16] , \sum_0[3][15] , \sum_0[3][14] , 
        \sum_0[3][13] , \sum_0[3][12] , \sum_0[3][11] , \sum_0[3][10] , 
        \sum_0[3][9] , \sum_0[3][8] , \sum_0[3][7] , \sum_0[3][6] , 
        \sum_0[3][5] , \sum_0[3][4] , \sum_0[3][3] , \sum_0[3][2] , 
        \sum_0[3][1] , \sum_0[3][0] }), .CI(1'b0), .SUM({N335, N334, N333, 
        N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, 
        N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, 
        N308, N307, N306, N305, N304, N303, N302}) );
  FIR_Fliter_DW01_add_3 add_113 ( .A({\sum_0[0][32] , \sum_0[0][32] , 
        \sum_0[0][31] , \sum_0[0][30] , \sum_0[0][29] , \sum_0[0][28] , 
        \sum_0[0][27] , \sum_0[0][26] , \sum_0[0][25] , \sum_0[0][24] , 
        \sum_0[0][23] , \sum_0[0][22] , \sum_0[0][21] , \sum_0[0][20] , 
        \sum_0[0][19] , \sum_0[0][18] , \sum_0[0][17] , \sum_0[0][16] , 
        \sum_0[0][15] , \sum_0[0][14] , \sum_0[0][13] , \sum_0[0][12] , 
        \sum_0[0][11] , \sum_0[0][10] , \sum_0[0][9] , \sum_0[0][8] , 
        \sum_0[0][7] , \sum_0[0][6] , \sum_0[0][5] , \sum_0[0][4] , 
        \sum_0[0][3] , \sum_0[0][2] , \sum_0[0][1] , \sum_0[0][0] }), .B({
        \sum_0[1][32] , \sum_0[1][32] , \sum_0[1][31] , \sum_0[1][30] , 
        \sum_0[1][29] , \sum_0[1][28] , \sum_0[1][27] , \sum_0[1][26] , 
        \sum_0[1][25] , \sum_0[1][24] , \sum_0[1][23] , \sum_0[1][22] , 
        \sum_0[1][21] , \sum_0[1][20] , \sum_0[1][19] , \sum_0[1][18] , 
        \sum_0[1][17] , \sum_0[1][16] , \sum_0[1][15] , \sum_0[1][14] , 
        \sum_0[1][13] , \sum_0[1][12] , \sum_0[1][11] , \sum_0[1][10] , 
        \sum_0[1][9] , \sum_0[1][8] , \sum_0[1][7] , \sum_0[1][6] , 
        \sum_0[1][5] , \sum_0[1][4] , \sum_0[1][3] , \sum_0[1][2] , 
        \sum_0[1][1] , \sum_0[1][0] }), .CI(1'b0), .SUM({N301, N300, N299, 
        N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, 
        N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, 
        N274, N273, N272, N271, N270, N269, N268}) );
  DFFQX2M \sum_0_reg[1][31]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][31] ) );
  DFFQX2M \sum_0_reg[1][30]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][30] ) );
  DFFQX2M \sum_0_reg[3][31]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][31] ) );
  DFFQX2M \sum_0_reg[3][30]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][30] ) );
  DFFQX2M \sum_1_reg[1][29]  ( .D(N331), .CK(m_clk), .Q(\sum_1[1][29] ) );
  DFFQX2M \sum_1_reg[1][28]  ( .D(N330), .CK(m_clk), .Q(\sum_1[1][28] ) );
  DFFQX2M \sum_1_reg[1][27]  ( .D(N329), .CK(m_clk), .Q(\sum_1[1][27] ) );
  DFFQX2M \sum_1_reg[1][26]  ( .D(N328), .CK(m_clk), .Q(\sum_1[1][26] ) );
  DFFQX2M \sum_0_reg[0][31]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][31] ) );
  DFFQX2M \sum_0_reg[0][30]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][30] ) );
  DFFQX2M \sum_0_reg[2][31]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][31] ) );
  DFFQX2M \sum_0_reg[2][30]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][30] ) );
  DFFQX2M \sum_1_reg[0][29]  ( .D(N297), .CK(m_clk), .Q(\sum_1[0][29] ) );
  DFFQX2M \sum_1_reg[0][28]  ( .D(N296), .CK(m_clk), .Q(\sum_1[0][28] ) );
  DFFQX2M \sum_1_reg[0][27]  ( .D(N295), .CK(m_clk), .Q(\sum_1[0][27] ) );
  DFFQX2M \sum_1_reg[0][26]  ( .D(N294), .CK(m_clk), .Q(\sum_1[0][26] ) );
  DFFQX2M \sum_0_reg[1][32]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][32] ) );
  DFFQX2M \sum_0_reg[3][32]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][32] ) );
  DFFQX2M \sum_0_reg[0][32]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][32] ) );
  DFFQX2M \sum_0_reg[2][32]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][32] ) );
  DFFQX2M \sum_0_reg[1][29]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][29] ) );
  DFFQX2M \sum_0_reg[1][28]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][28] ) );
  DFFQX2M \sum_0_reg[1][27]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][27] ) );
  DFFQX2M \sum_0_reg[3][29]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][29] ) );
  DFFQX2M \sum_0_reg[3][28]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][28] ) );
  DFFQX2M \sum_0_reg[3][27]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][27] ) );
  DFFQX2M \sum_1_reg[1][25]  ( .D(N327), .CK(m_clk), .Q(\sum_1[1][25] ) );
  DFFQX2M \sum_1_reg[1][24]  ( .D(N326), .CK(m_clk), .Q(\sum_1[1][24] ) );
  DFFQX2M \sum_1_reg[1][23]  ( .D(N325), .CK(m_clk), .Q(\sum_1[1][23] ) );
  DFFQX2M \sum_0_reg[0][29]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][29] ) );
  DFFQX2M \sum_0_reg[0][28]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][28] ) );
  DFFQX2M \sum_0_reg[0][27]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][27] ) );
  DFFQX2M \sum_0_reg[2][29]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][29] ) );
  DFFQX2M \sum_0_reg[2][28]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][28] ) );
  DFFQX2M \sum_0_reg[2][27]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][27] ) );
  DFFQX2M \sum_1_reg[0][25]  ( .D(N293), .CK(m_clk), .Q(\sum_1[0][25] ) );
  DFFQX2M \sum_1_reg[0][24]  ( .D(N292), .CK(m_clk), .Q(\sum_1[0][24] ) );
  DFFQX2M \sum_1_reg[0][23]  ( .D(N291), .CK(m_clk), .Q(\sum_1[0][23] ) );
  DFFQX2M \sum_0_reg[1][26]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][26] ) );
  DFFQX2M \sum_0_reg[1][25]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][25] ) );
  DFFQX2M \sum_0_reg[1][24]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][24] ) );
  DFFQX2M \sum_0_reg[1][23]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][23] ) );
  DFFQX2M \sum_0_reg[3][26]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][26] ) );
  DFFQX2M \sum_0_reg[3][25]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][25] ) );
  DFFQX2M \sum_0_reg[3][24]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][24] ) );
  DFFQX2M \sum_0_reg[3][23]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][23] ) );
  DFFQX2M \sum_1_reg[1][22]  ( .D(N324), .CK(m_clk), .Q(\sum_1[1][22] ) );
  DFFQX2M \sum_1_reg[1][21]  ( .D(N323), .CK(m_clk), .Q(\sum_1[1][21] ) );
  DFFQX2M \sum_1_reg[1][20]  ( .D(N322), .CK(m_clk), .Q(\sum_1[1][20] ) );
  DFFQX2M \sum_1_reg[1][19]  ( .D(N321), .CK(m_clk), .Q(\sum_1[1][19] ) );
  DFFQX2M \sum_0_reg[0][26]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][26] ) );
  DFFQX2M \sum_0_reg[0][25]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][25] ) );
  DFFQX2M \sum_0_reg[0][24]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][24] ) );
  DFFQX2M \sum_0_reg[0][23]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][23] ) );
  DFFQX2M \sum_0_reg[2][26]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][26] ) );
  DFFQX2M \sum_0_reg[2][25]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][25] ) );
  DFFQX2M \sum_0_reg[2][24]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][24] ) );
  DFFQX2M \sum_0_reg[2][23]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][23] ) );
  DFFQX2M \sum_1_reg[0][22]  ( .D(N290), .CK(m_clk), .Q(\sum_1[0][22] ) );
  DFFQX2M \sum_1_reg[0][21]  ( .D(N289), .CK(m_clk), .Q(\sum_1[0][21] ) );
  DFFQX2M \sum_1_reg[0][20]  ( .D(N288), .CK(m_clk), .Q(\sum_1[0][20] ) );
  DFFQX2M \sum_1_reg[0][19]  ( .D(N287), .CK(m_clk), .Q(\sum_1[0][19] ) );
  DFFQX2M \sum_0_reg[1][22]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][22] ) );
  DFFQX2M \sum_0_reg[1][21]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][21] ) );
  DFFQX2M \sum_0_reg[1][20]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][20] ) );
  DFFQX2M \sum_0_reg[3][22]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][22] ) );
  DFFQX2M \sum_0_reg[3][21]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][21] ) );
  DFFQX2M \sum_0_reg[3][20]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][20] ) );
  DFFQX2M \sum_1_reg[1][18]  ( .D(N320), .CK(m_clk), .Q(\sum_1[1][18] ) );
  DFFQX2M \sum_1_reg[1][17]  ( .D(N319), .CK(m_clk), .Q(\sum_1[1][17] ) );
  DFFQX2M \sum_1_reg[1][16]  ( .D(N318), .CK(m_clk), .Q(\sum_1[1][16] ) );
  DFFQX2M \sum_0_reg[0][22]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][22] ) );
  DFFQX2M \sum_0_reg[0][21]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][21] ) );
  DFFQX2M \sum_0_reg[0][20]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][20] ) );
  DFFQX2M \sum_0_reg[2][22]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][22] ) );
  DFFQX2M \sum_0_reg[2][21]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][21] ) );
  DFFQX2M \sum_0_reg[2][20]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][20] ) );
  DFFQX2M \sum_1_reg[0][18]  ( .D(N286), .CK(m_clk), .Q(\sum_1[0][18] ) );
  DFFQX2M \sum_1_reg[0][17]  ( .D(N285), .CK(m_clk), .Q(\sum_1[0][17] ) );
  DFFQX2M \sum_1_reg[0][16]  ( .D(N284), .CK(m_clk), .Q(\sum_1[0][16] ) );
  DFFQX2M \sum_0_reg[1][19]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][19] ) );
  DFFQX2M \sum_0_reg[1][18]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][18] ) );
  DFFQX2M \sum_0_reg[1][17]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][17] ) );
  DFFQX2M \sum_0_reg[1][16]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][16] ) );
  DFFQX2M \sum_0_reg[3][19]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][19] ) );
  DFFQX2M \sum_0_reg[3][18]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][18] ) );
  DFFQX2M \sum_0_reg[3][17]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][17] ) );
  DFFQX2M \sum_0_reg[3][16]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][16] ) );
  DFFQX2M \sum_1_reg[1][15]  ( .D(N317), .CK(m_clk), .Q(\sum_1[1][15] ) );
  DFFQX2M \sum_1_reg[1][14]  ( .D(N316), .CK(m_clk), .Q(\sum_1[1][14] ) );
  DFFQX2M \sum_1_reg[1][13]  ( .D(N315), .CK(m_clk), .Q(\sum_1[1][13] ) );
  DFFQX2M \sum_1_reg[1][12]  ( .D(N314), .CK(m_clk), .Q(\sum_1[1][12] ) );
  DFFQX2M \sum_0_reg[0][19]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][19] ) );
  DFFQX2M \sum_0_reg[0][18]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][18] ) );
  DFFQX2M \sum_0_reg[0][17]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][17] ) );
  DFFQX2M \sum_0_reg[0][16]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][16] ) );
  DFFQX2M \sum_0_reg[2][19]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][19] ) );
  DFFQX2M \sum_0_reg[2][18]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][18] ) );
  DFFQX2M \sum_0_reg[2][17]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][17] ) );
  DFFQX2M \sum_0_reg[2][16]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][16] ) );
  DFFQX2M \sum_1_reg[0][15]  ( .D(N283), .CK(m_clk), .Q(\sum_1[0][15] ) );
  DFFQX2M \sum_1_reg[0][14]  ( .D(N282), .CK(m_clk), .Q(\sum_1[0][14] ) );
  DFFQX2M \sum_1_reg[0][13]  ( .D(N281), .CK(m_clk), .Q(\sum_1[0][13] ) );
  DFFQX2M \sum_1_reg[0][12]  ( .D(N280), .CK(m_clk), .Q(\sum_1[0][12] ) );
  DFFQX2M \sum_0_reg[1][15]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][15] ) );
  DFFQX2M \sum_0_reg[1][14]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][14] ) );
  DFFQX2M \sum_0_reg[1][13]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][13] ) );
  DFFQX2M \sum_0_reg[3][15]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][15] ) );
  DFFQX2M \sum_0_reg[3][14]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][14] ) );
  DFFQX2M \sum_0_reg[3][13]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][13] ) );
  DFFQX2M \sum_1_reg[1][11]  ( .D(N313), .CK(m_clk), .Q(\sum_1[1][11] ) );
  DFFQX2M \sum_1_reg[1][10]  ( .D(N312), .CK(m_clk), .Q(\sum_1[1][10] ) );
  DFFQX2M \sum_1_reg[1][9]  ( .D(N311), .CK(m_clk), .Q(\sum_1[1][9] ) );
  DFFQX2M \sum_0_reg[0][15]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][15] ) );
  DFFQX2M \sum_0_reg[0][14]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][14] ) );
  DFFQX2M \sum_0_reg[0][13]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][13] ) );
  DFFQX2M \sum_0_reg[2][15]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][15] ) );
  DFFQX2M \sum_0_reg[2][14]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][14] ) );
  DFFQX2M \sum_0_reg[2][13]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][13] ) );
  DFFQX2M \sum_1_reg[0][11]  ( .D(N279), .CK(m_clk), .Q(\sum_1[0][11] ) );
  DFFQX2M \sum_1_reg[0][10]  ( .D(N278), .CK(m_clk), .Q(\sum_1[0][10] ) );
  DFFQX2M \sum_1_reg[0][9]  ( .D(N277), .CK(m_clk), .Q(\sum_1[0][9] ) );
  DFFQX2M \sum_0_reg[1][12]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][12] ) );
  DFFQX2M \sum_0_reg[1][11]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][11] ) );
  DFFQX2M \sum_0_reg[1][10]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][10] ) );
  DFFQX2M \sum_0_reg[1][9]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][9] ) );
  DFFQX2M \sum_0_reg[3][12]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][12] ) );
  DFFQX2M \sum_0_reg[3][11]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][11] ) );
  DFFQX2M \sum_0_reg[3][10]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][10] ) );
  DFFQX2M \sum_0_reg[3][9]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][9] ) );
  DFFQX2M \sum_1_reg[1][8]  ( .D(N310), .CK(m_clk), .Q(\sum_1[1][8] ) );
  DFFQX2M \sum_1_reg[1][7]  ( .D(N309), .CK(m_clk), .Q(\sum_1[1][7] ) );
  DFFQX2M \sum_1_reg[1][6]  ( .D(N308), .CK(m_clk), .Q(\sum_1[1][6] ) );
  DFFQX2M \sum_1_reg[1][5]  ( .D(N307), .CK(m_clk), .Q(\sum_1[1][5] ) );
  DFFQX2M \sum_0_reg[0][12]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][12] ) );
  DFFQX2M \sum_0_reg[0][11]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][11] ) );
  DFFQX2M \sum_0_reg[0][10]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][10] ) );
  DFFQX2M \sum_0_reg[0][9]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][9] ) );
  DFFQX2M \sum_0_reg[2][12]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][12] ) );
  DFFQX2M \sum_0_reg[2][11]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][11] ) );
  DFFQX2M \sum_0_reg[2][10]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][10] ) );
  DFFQX2M \sum_0_reg[2][9]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][9] ) );
  DFFQX2M \sum_1_reg[0][8]  ( .D(N276), .CK(m_clk), .Q(\sum_1[0][8] ) );
  DFFQX2M \sum_1_reg[0][7]  ( .D(N275), .CK(m_clk), .Q(\sum_1[0][7] ) );
  DFFQX2M \sum_1_reg[0][6]  ( .D(N274), .CK(m_clk), .Q(\sum_1[0][6] ) );
  DFFQX2M \sum_1_reg[0][5]  ( .D(N273), .CK(m_clk), .Q(\sum_1[0][5] ) );
  DFFQX2M \sum_0_reg[1][8]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][8] ) );
  DFFQX2M \sum_0_reg[1][7]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][7] ) );
  DFFQX2M \sum_0_reg[1][6]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][6] ) );
  DFFQX2M \sum_0_reg[3][8]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][8] ) );
  DFFQX2M \sum_0_reg[3][7]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][7] ) );
  DFFQX2M \sum_0_reg[3][6]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][6] ) );
  DFFQX2M \sum_1_reg[1][4]  ( .D(N306), .CK(m_clk), .Q(\sum_1[1][4] ) );
  DFFQX2M \sum_1_reg[1][3]  ( .D(N305), .CK(m_clk), .Q(\sum_1[1][3] ) );
  DFFQX2M \sum_1_reg[1][2]  ( .D(N304), .CK(m_clk), .Q(\sum_1[1][2] ) );
  DFFQX2M \sum_0_reg[0][8]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][8] ) );
  DFFQX2M \sum_0_reg[0][7]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][7] ) );
  DFFQX2M \sum_0_reg[0][6]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][6] ) );
  DFFQX2M \sum_0_reg[2][8]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][8] ) );
  DFFQX2M \sum_0_reg[2][7]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][7] ) );
  DFFQX2M \sum_0_reg[2][6]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][6] ) );
  DFFQX2M \sum_1_reg[0][4]  ( .D(N272), .CK(m_clk), .Q(\sum_1[0][4] ) );
  DFFQX2M \sum_1_reg[0][3]  ( .D(N271), .CK(m_clk), .Q(\sum_1[0][3] ) );
  DFFQX2M \sum_1_reg[0][2]  ( .D(N270), .CK(m_clk), .Q(\sum_1[0][2] ) );
  DFFQX2M \sum_0_reg[1][5]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][5] ) );
  DFFQX2M \sum_0_reg[1][4]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][4] ) );
  DFFQX2M \sum_0_reg[1][3]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][3] ) );
  DFFQX2M \sum_0_reg[1][2]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][2] ) );
  DFFQX2M \sum_0_reg[3][5]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][5] ) );
  DFFQX2M \sum_0_reg[3][4]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][4] ) );
  DFFQX2M \sum_0_reg[3][3]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][3] ) );
  DFFQX2M \sum_0_reg[3][2]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][2] ) );
  DFFQX2M \sum_1_reg[1][1]  ( .D(N303), .CK(m_clk), .Q(\sum_1[1][1] ) );
  DFFQX2M \sum_1_reg[1][0]  ( .D(N302), .CK(m_clk), .Q(\sum_1[1][0] ) );
  DFFQX2M \sum_1_reg[0][0]  ( .D(N268), .CK(m_clk), .Q(\sum_1[0][0] ) );
  DFFQX2M \sum_0_reg[0][5]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][5] ) );
  DFFQX2M \sum_0_reg[0][4]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][4] ) );
  DFFQX2M \sum_0_reg[0][3]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][3] ) );
  DFFQX2M \sum_0_reg[0][2]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][2] ) );
  DFFQX2M \sum_0_reg[2][5]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][5] ) );
  DFFQX2M \sum_0_reg[2][4]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][4] ) );
  DFFQX2M \sum_0_reg[2][3]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][3] ) );
  DFFQX2M \sum_0_reg[2][2]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][2] ) );
  DFFQX2M \sum_1_reg[0][1]  ( .D(N269), .CK(m_clk), .Q(\sum_1[0][1] ) );
  DFFQX2M \sum_0_reg[1][1]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][1] ) );
  DFFQX2M \sum_0_reg[3][1]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][1] ) );
  DFFQX2M \sum_0_reg[0][1]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][1] ) );
  DFFQX2M \sum_0_reg[2][1]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][1] ) );
  DFFQX2M \sum_0_reg[1][0]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[1][0] ) );
  DFFQX2M \sum_0_reg[3][0]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[3][0] ) );
  DFFQX2M \sum_0_reg[0][0]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[0][0] ) );
  DFFQX2M \sum_0_reg[2][0]  ( .D(1'b0), .CK(m_clk), .Q(\sum_0[2][0] ) );
  DFFQX2M \sum_1_reg[0][33]  ( .D(N301), .CK(m_clk), .Q(\sum_1[0][33] ) );
  DFFQX2M \sum_1_reg[0][32]  ( .D(N300), .CK(m_clk), .Q(\sum_1[0][32] ) );
  DFFQX2M \sum_1_reg[0][31]  ( .D(N299), .CK(m_clk), .Q(\sum_1[0][31] ) );
  DFFQX2M \sum_1_reg[0][30]  ( .D(N298), .CK(m_clk), .Q(\sum_1[0][30] ) );
  DFFQX2M \sum_1_reg[1][33]  ( .D(N335), .CK(m_clk), .Q(\sum_1[1][33] ) );
  DFFQX2M \sum_1_reg[1][32]  ( .D(N334), .CK(m_clk), .Q(\sum_1[1][32] ) );
  DFFQX2M \sum_1_reg[1][31]  ( .D(N333), .CK(m_clk), .Q(\sum_1[1][31] ) );
  DFFQX2M \sum_1_reg[1][30]  ( .D(N332), .CK(m_clk), .Q(\sum_1[1][30] ) );
  DFFQX2M \sum_2_reg[0][29]  ( .D(N365), .CK(m_clk), .Q(N381) );
  DFFQX2M \sum_2_reg[0][28]  ( .D(N364), .CK(m_clk), .Q(N380) );
  DFFQX2M \sum_2_reg[0][27]  ( .D(N363), .CK(m_clk), .Q(N379) );
  DFFQX2M \sum_2_reg[0][26]  ( .D(N362), .CK(m_clk), .Q(N378) );
  DFFQX2M \sum_2_reg[0][25]  ( .D(N361), .CK(m_clk), .Q(N377) );
  DFFQX2M \sum_2_reg[0][24]  ( .D(N360), .CK(m_clk), .Q(N376) );
  DFFQX2M \sum_2_reg[0][23]  ( .D(N359), .CK(m_clk), .Q(N375) );
  DFFQX2M \sum_2_reg[0][22]  ( .D(N358), .CK(m_clk), .Q(N374) );
  DFFQX2M \sum_2_reg[0][21]  ( .D(N357), .CK(m_clk), .Q(N373) );
  DFFQX2M \sum_2_reg[0][20]  ( .D(N356), .CK(m_clk), .Q(N372) );
  DFFQX2M \sum_2_reg[0][19]  ( .D(N355), .CK(m_clk), .Q(N371) );
  DFFQX2M \sum_2_reg[0][18]  ( .D(N354), .CK(m_clk), .Q(N370) );
  DFFQX2M \sum_2_reg[0][17]  ( .D(N353), .CK(m_clk), .Q(N369) );
  DFFQX2M \sum_2_reg[0][16]  ( .D(N352), .CK(m_clk), .Q(N368) );
  DFFQX2M \sum_2_reg[0][15]  ( .D(N351), .CK(m_clk), .Q(N367) );
  DFFQX2M \sum_2_reg[0][14]  ( .D(N350), .CK(m_clk), .Q(N366) );
  DFFQX2M \sum_3_reg[29]  ( .D(N381), .CK(m_clk), .Q(n42) );
  DFFQX2M \sum_3_reg[28]  ( .D(N380), .CK(m_clk), .Q(n43) );
  DFFQX2M \sum_3_reg[27]  ( .D(N379), .CK(m_clk), .Q(n44) );
  DFFQX2M \sum_3_reg[26]  ( .D(N378), .CK(m_clk), .Q(n45) );
  DFFQX2M \sum_3_reg[25]  ( .D(N377), .CK(m_clk), .Q(n46) );
  DFFQX2M \sum_3_reg[24]  ( .D(N376), .CK(m_clk), .Q(n47) );
  DFFQX2M \sum_3_reg[23]  ( .D(N375), .CK(m_clk), .Q(n48) );
  DFFQX2M \sum_3_reg[22]  ( .D(N374), .CK(m_clk), .Q(n49) );
  DFFQX2M \sum_3_reg[21]  ( .D(N373), .CK(m_clk), .Q(n50) );
  DFFQX2M \sum_3_reg[20]  ( .D(N372), .CK(m_clk), .Q(n51) );
  DFFQX2M \sum_3_reg[19]  ( .D(N371), .CK(m_clk), .Q(n52) );
  DFFQX2M \sum_3_reg[18]  ( .D(N370), .CK(m_clk), .Q(n53) );
  DFFQX2M \sum_3_reg[17]  ( .D(N369), .CK(m_clk), .Q(n54) );
  DFFQX2M \sum_3_reg[16]  ( .D(N368), .CK(m_clk), .Q(n55) );
  DFFQX2M \sum_3_reg[15]  ( .D(N367), .CK(m_clk), .Q(n56) );
  DFFQX2M \sum_3_reg[14]  ( .D(N366), .CK(m_clk), .Q(n57) );
  INVXLM U170 ( .A(n57), .Y(n10) );
  INVX8M U171 ( .A(n10), .Y(Fliter_Signal[0]) );
  INVXLM U172 ( .A(n56), .Y(n12) );
  INVX8M U173 ( .A(n12), .Y(Fliter_Signal[1]) );
  INVXLM U174 ( .A(n55), .Y(n14) );
  INVX8M U175 ( .A(n14), .Y(Fliter_Signal[2]) );
  INVXLM U176 ( .A(n54), .Y(n16) );
  INVX8M U177 ( .A(n16), .Y(Fliter_Signal[3]) );
  INVXLM U178 ( .A(n53), .Y(n18) );
  INVX8M U179 ( .A(n18), .Y(Fliter_Signal[4]) );
  INVXLM U180 ( .A(n52), .Y(n20) );
  INVX8M U181 ( .A(n20), .Y(Fliter_Signal[5]) );
  INVXLM U182 ( .A(n51), .Y(n22) );
  INVX8M U183 ( .A(n22), .Y(Fliter_Signal[6]) );
  INVXLM U184 ( .A(n50), .Y(n24) );
  INVX8M U185 ( .A(n24), .Y(Fliter_Signal[7]) );
  INVXLM U186 ( .A(n49), .Y(n26) );
  INVX8M U187 ( .A(n26), .Y(Fliter_Signal[8]) );
  INVXLM U188 ( .A(n48), .Y(n28) );
  INVX8M U189 ( .A(n28), .Y(Fliter_Signal[9]) );
  INVXLM U190 ( .A(n47), .Y(n30) );
  INVX8M U191 ( .A(n30), .Y(Fliter_Signal[10]) );
  INVXLM U192 ( .A(n46), .Y(n32) );
  INVX8M U193 ( .A(n32), .Y(Fliter_Signal[11]) );
  INVXLM U194 ( .A(n45), .Y(n34) );
  INVX8M U195 ( .A(n34), .Y(Fliter_Signal[12]) );
  INVXLM U196 ( .A(n44), .Y(n36) );
  INVX8M U197 ( .A(n36), .Y(Fliter_Signal[13]) );
  INVXLM U198 ( .A(n43), .Y(n38) );
  INVX8M U199 ( .A(n38), .Y(Fliter_Signal[14]) );
  INVXLM U200 ( .A(n42), .Y(n40) );
  INVX8M U201 ( .A(n40), .Y(Fliter_Signal[15]) );
endmodule

