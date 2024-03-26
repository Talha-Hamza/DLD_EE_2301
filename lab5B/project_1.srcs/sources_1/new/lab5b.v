`timescale 1ns / 1ps

module lab5b(
    input CLK,      // Clock input
    input RESET,    // Synchronous reset input
    input [2:0] a,  // Three-bit unsigned integer input 'a'
    input [2:0] b,  // Three-bit unsigned integer input 'b'
    output [2:0] sum,  // Three-bit integer output 'sum'
    output cout        // Overflow output
);

reg [2:0] myReg;
reg [3:0] myChecker;
reg cout;

always @(posedge CLK or posedge RESET) begin
    if (RESET) begin
        myReg <= 3'b0;
        cout <= 1'b0;
        myChecker <= 4'b0;
    end
    else begin
        myReg <= a + b;
        myChecker <= a + b;
        if (myChecker[3])
            cout <= 1'b1;
        else
            cout <= 1'b0;
    end
end

assign sum = myReg;

endmodule
