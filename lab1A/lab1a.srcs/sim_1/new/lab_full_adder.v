`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2024 11:59:18 AM
// Design Name: 
// Module Name: full_adder_tb
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
module full_adder_tb(

);

reg inputX, inputY, inputZ;
wire Sum;
wire CarryOut;

design_1_wrapper Instance_1_of_Adder(
.X(inputX),
.Y(inputY),
.Z(inputZ),
.OUT1(Sum),
.OUT2(CarryOut));
initial
begin
inputX = 0; inputY = 0; inputZ = 0;
#50
inputX = 0; inputY = 0; inputZ = 1;
#50
inputX = 0; inputY = 1; inputZ = 0;
#50
inputX = 0; inputY = 1; inputZ = 1;
#50
inputX = 1; inputY = 0; inputZ = 0;
#50
inputX = 1; inputY = 0; inputZ = 1;
#50
inputX = 1; inputY = 1; inputZ = 0;
#50
inputX = 1; inputY = 1; inputZ = 1;
end
endmodule
    
