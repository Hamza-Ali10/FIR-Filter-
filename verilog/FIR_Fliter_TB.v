`timescale 1ns / 10ps//////////////////////////////////////////////////////////////////////////////////
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


module FIR_Fliter_TB( );

//Cordic is used to synsthesize a noise signal comprising two sine waves at 2MHZ & 30 MHZ sampling rate
//the noise signal is resampled at 100MHz befor feeding the FIR lowpass fliter with a cutoff frequency of 10MHZ


localparam cordic_clk_period = 2;                  //To create 500MHZ Cordic sampling clock
localparam fir_clk_period = 10;                    //To create 100MHZ FIR lowpass fliter sampling clock
localparam signed [15:0] PI_POS = 16'h6488;        //+pi in fixed point 1.2.13
localparam signed [15:0] PI_NEG = 16'h9B78;        //-pi in fixed point 1.2.13
localparam phase_inc_2MHZ = 200;                   //phase jump for 2MHZ sine wave synthesis
localparam phase_inc_30MHZ= 3000;                  //phase jump for 30MHZ sine wave synthesis


reg cordic_clk = 1'b0;
reg fir_clk = 1'b0;
reg phase_tvalid = 1'b0;
reg signed [15:0] phase_2MHZ  = 0;                 //2MHZ phase sweep 1.2.13
reg signed [15:0] phase_30MHZ = 0;                 //30MHZ phase sweep 1.2.13

wire sincos_2MHZ_tvalid;                           //1.1.14 2MHZ sine/cos
wire signed [15:0] sin_2MHZ,cos_2MHZ;             

wire sincos_30MHZ_tvalid;                          //1.1.14 30MHZ sine/cos
wire signed [15:0] sin_30MHZ,cos_30MHZ;


reg signed [15:0] noise_signal = 'b0;              //resampled 2MH sine + 30 sine ,1.1.14
wire signed [15:0] fliter_signal;                // fliter_signal output from FIR low pass fliter


//2MHZ sine wave synthesis
cordic_0 cordic_inst_0 (
.aclk(cordic_clk),
.s_axis_phase_tvalid (phase_tvalid),
.s_axis_phase_tdata  (phase_2MHZ),
.m_axis_dout_tvalid (sincos_2MHZ_tvalid),
.m_axis_dout_tdata  ({sin_2MHZ,cos_2MHZ})
);

//30MHZ sine wave synthesis
cordic_0 cordic_inst_1 (
.aclk(cordic_clk),
.s_axis_phase_tvalid (phase_tvalid),
.s_axis_phase_tdata  (phase_30MHZ),
.m_axis_dout_tvalid (sincos_30MHZ_tvalid),
.m_axis_dout_tdata  ({sin_30MHZ,cos_30MHZ})
);

//2MHZ phase sweep 1.2.13
always@(posedge cordic_clk)
begin
    phase_tvalid <= 1'b1;
    
    if(phase_2MHZ+ phase_inc_2MHZ < PI_POS )
            begin
                   phase_2MHZ <= phase_2MHZ + phase_inc_2MHZ;
            end
    else
         begin
                   phase_2MHZ <= PI_NEG + (phase_2MHZ+ phase_inc_2MHZ-PI_POS);
           end
end



//30MHZ phase sweep 1.2.13
always@(posedge cordic_clk)
begin
    phase_tvalid = 1;
    
    if(phase_30MHZ+ phase_inc_30MHZ <= PI_POS )
            begin
                   phase_30MHZ <= phase_30MHZ + phase_inc_30MHZ;
            end
    else
         begin
                   phase_30MHZ <= PI_NEG + (phase_30MHZ+ phase_inc_30MHZ-PI_POS);
           end
end

always
begin
  cordic_clk = #(cordic_clk_period/2) ~cordic_clk;
end

always
begin
  fir_clk = #(fir_clk_period/2) ~fir_clk;
end


always@(posedge fir_clk)
begin
        noise_signal <= (sin_2MHZ+sin_30MHZ) / 2 ;
end



 FIR_Fliter dut
(
.CLK(fir_clk),
.Signal_Noise(noise_signal),
.Fliter_Signal(fliter_signal)
);


endmodule
