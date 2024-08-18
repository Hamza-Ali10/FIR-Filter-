//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali Morsi
// 
// Create Date: 07/01/2024 06:37:38 PM
// Design Name: 
// Module Name: FIR_Fliter_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*FIR fliter lowpass fliter with cutoff frequency of 10MHZ at 100MHZ samplimg rate     */
module FIR_Fliter(
      input CLK,                                      //100MHZ sampling clock 
      input signed [15:0] Signal_Noise,          //nosie signal input 1.1.14
      output signed [15:0] Fliter_Signal         // fliter_signal output 1.1.14
);

integer i,j;

//coefficients for 9 taP FIR
//10MHZ cutoff Frequency 100MHZ sampling rate


reg signed [15:0] coeff [0:8] ={
                                            16'h 04F6,
                                            16'h 0AE4,
                                            16'h 1089,
                                            16'h 1496,
                                            16'h 160F,
                                            16'h 1496,
                                            16'h 1089,
                                            16'h 0AE4,
                                            16'h 04F6
};

reg signed [15:0] delay_signal [0:8];
reg signed [31:0] prod  [0:8];
reg signed [32:0] sum_0 [0:4];
reg signed [33:0] sum_1 [0:2];
reg signed [34:0] sum_2 [0:1];
reg signed [35:0] sum_3;

//Feed the noise input signal into a 9 tapdelay line to prep for convolution operation
always@(posedge CLK)
begin
    delay_signal[0] <= Signal_Noise;
    for ( i = 1 ; i<=8 ; i = i+1 )
    begin 
        delay_signal[i] <= delay_signal[i-1];
    end
end


//Pipelined mutiply and accumulate 
always@(posedge CLK)
begin
    for ( j = 0 ; j<=8 ; j = j+1 )
    begin 
        prod[j] <= delay_signal[j] * coeff[j];
    end
end

always@(posedge CLK)
begin
    sum_0[0]<= prod[0]+prod[1];
    sum_0[1]<= prod[2]+prod[3];
    sum_0[2]<= prod[4]+prod[5];
    sum_0[3]<= prod[6]+prod[7];
    sum_0[4]<= prod[8];
end

always@(posedge CLK)
begin
    sum_1[0]<=sum_0[0]+sum_0[1];
    sum_1[1]<=sum_0[2]+sum_0[3];
    sum_1[2]<=sum_0[4];
end

always@(posedge CLK)
begin
    sum_2[0]<=sum_1[0]+sum_1[1];
    sum_2[1]<=sum_1[2];
end


always@(posedge CLK)
begin
    sum_3 <=sum_2[0]+sum_2[1];
end

// fliter_signal output 1.1.14
assign  Fliter_Signal = $signed(sum_3[35:14]);


endmodule
