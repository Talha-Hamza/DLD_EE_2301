`timescale 1ns / 1ps

module lab5c_tb;

// Parameters
parameter CLK_PERIOD = 10; // Clock period in ns

// Signals
reg CLK;
reg RESET;
reg [7:0] InputNumber;
reg RightNotLeft;
reg [2:0] N;
wire [7:0] OutputNumber;

// Instantiate the module under test
lab5c uut (
    .CLK(CLK),
    .RESET(RESET),
    .InputNumber(InputNumber),
    .RightNotLeft(RightNotLeft),
    .N(N),
    .OutputNumber(OutputNumber)
);

// Clock generation similar to RisingEdge_DFlipFlop_SyncReset
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

// Stimulus
initial begin
    #50;
    RESET = 1; // Start with reset asserted
    
    InputNumber = 8'b10010010; // Example input number
    RightNotLeft = 1; // Example shifting to the right
    N = 0; // Example shift amount
    #50;
        
    InputNumber = 8'b10010010; // Example input number
    RightNotLeft = 0; // Example shifting to the right
    N = 2; // Example shift amount
    #50;
    
    RESET = 0; // De-assert reset
    #50;
end

// Display results
initial begin
    $monitor("Time=%0t, InputNumber=%b, RightNotLeft=%b, N=%b, OutputNumber=%b", $time, InputNumber, RightNotLeft, N, OutputNumber);
end

endmodule
