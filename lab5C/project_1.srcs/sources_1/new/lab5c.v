`timescale 1ns / 1ps

module lab5c(
    input CLK,            // Clock input
    input RESET,          // Synchronous reset input
    input [7:0] InputNumber,     // 8-bit unsigned integer input number
    input RightNotLeft,         // Shift controller, Right = 1 ; Left = 0
    input [2:0] N,              // Representing the number of digits to shift
    output [7:0] OutputNumber  // Output number
);

reg [7:0] myReg;

always @(posedge CLK or posedge RESET) begin
    if (RESET) begin
        myReg <= 8'b0;
    end
    else begin
        myReg <= InputNumber;
        if (RightNotLeft)
            myReg <= InputNumber >> N;
        else
            myReg <= InputNumber << N;
    end
end

assign OutputNumber = myReg;

endmodule
