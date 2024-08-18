/*
Project        : 3x3 Matrix inversion using QR decomposition and CORDIC
Standard doc.  : 
Module name    : CORDIC rotation block
Dependancy     :
Design doc.    : 
References     : 
Description    : takes the angle, x and y 
                  and rotates.
Owner          : Yahia Ahmed
*/

module cordic_rot
#(parameter WIDTH = 16)
(  // Inputs
  input                                         clk,
                                                rst_n,
  input signed        [WIDTH-1:0]               x_start,
                                                y_start,
  input signed        [WIDTH-1:0]               angle,

  // Outputs
  output reg signed   [WIDTH-1:0]               xnew, 
                                                ynew
);
  //the constant of rotations
  wire                [WIDTH-1:0]               factor;
  // Generate table of atan values
  wire signed         [WIDTH-1:0]               atan_table  [0:14];

  // make sure rotation angle is in -pi/2 to pi/2 range
  wire                [1:0]                     quadrant;

  //forgenerate signals
  reg signed          [WIDTH-1:0]               x           [0:15];
  reg signed          [WIDTH-1:0]               y           [0:15];
  reg signed          [WIDTH-1:0]               z           [0:15];

  //Multiplication Signals
  wire signed         [2*WIDTH-1:0]             multx,
                                                multy;
                          
  assign atan_table[00] = 16'b0010000000000000; // 45.000 degrees -> atan(2^0)
  assign atan_table[01] = 16'b0001001011100100; // 26.565 degrees -> atan(2^-1)
  assign atan_table[02] = 16'b0000100111111011; // 14.036 degrees -> atan(2^-2)
  assign atan_table[03] = 16'b0000010100010001; // atan(2^-3)
  assign atan_table[04] = 16'b0000001010001011;
  assign atan_table[05] = 16'b0000000101000101;
  assign atan_table[06] = 16'b0000000010100010;
  assign atan_table[07] = 16'b0000000001010001;
  assign atan_table[08] = 16'b0000000000101000;
  assign atan_table[09] = 16'b0000000000010100;
  assign atan_table[10] = 16'b0000000000001010;
  assign atan_table[11] = 16'b0000000000000101;
  assign atan_table[12] = 16'b0000000000000010;
  assign atan_table[13] = 16'b0000000000000001;
  assign atan_table[14] = 16'b0000000000000000;

  assign quadrant = angle[15:14];

  always @(posedge clk, negedge rst_n)
    begin // make sure the rotation angle is in the -pi/2 to pi/2 range
      case(quadrant)
        2'b00,
        2'b11: // no changes needed for these quadrants
          begin
            x[0] <= x_start;
            y[0] <= y_start;
            z[0] <= angle;
          end

        2'b01:
          begin
            x[0] <= -y_start;
            y[0] <= x_start;
            z[0] <= {2'b00,angle[13:0]}; // subtract pi/2 for angle in this quadrant
          end

        2'b10:
          begin
            x[0] <= y_start;
            y[0] <= -x_start;
            z[0] <= {2'b11,angle[13:0]}; // add pi/2 to angles in this quadrant
          end
      endcase
    end


  // run through iterations
  genvar i;

  generate
    for (i=0; i < 15; i=i+1)
      begin: xyz
        wire z_sign;
        wire signed [WIDTH-1:0] x_shr, y_shr;

        assign x_shr = x[i] >>> i; // signed shift right
        assign y_shr = y[i] >>> i;

        //the sign of the current rotation angle
        assign z_sign = z[i][15];

        always @(posedge clk, negedge rst_n)
          begin
            // add/subtract shifted data
            x[i+1] <= z_sign ? x[i] + y_shr         :   x[i] - y_shr;
            y[i+1] <= z_sign ? y[i] - x_shr         :   y[i] + x_shr;
            z[i+1] <= z_sign ? z[i] + atan_table[i] :   z[i] - atan_table[i];
          end
      end
  endgenerate

  assign factor = 'b0000100110110111;

  // assign output
  assign multx   = x[15]*factor;
  assign multy   = y[15]*factor;

  always @(posedge clk, negedge rst_n)
    begin
      xnew = multx[27:12]; //truncation for fixed point
      ynew = multy[27:12]; //truncation for fixed point
    end


endmodule



