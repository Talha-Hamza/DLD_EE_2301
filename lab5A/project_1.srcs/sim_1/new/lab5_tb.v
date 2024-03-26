`timescale 1ns / 1ps

module lab5a_tb;

// Parameters
parameter CLK_PERIOD = 10; // Clock period in ns

// Signals
reg CLK;
reg RESET;
wire A, B, C;

// Instantiate the module under test
lab5a uut (
    .CLK(CLK),
    .RESET(RESET),
    .A(A),
    .B(B),
    .C(C)
);

// Clock generation similar to RisingEdge_DFlipFlop_SyncReset
initial begin
    CLK = 0;
    forever #10 CLK = ~CLK;
end

// Initial Reset
initial begin
    RESET = 1;
    #100;
end

// Stimulus
initial begin
    RESET = 0;
    #100; // wait for 100 time units after reset
    RESET = 1; // Assert reset again
    #100;
//    $finish; // End simulation
end

// Display results
initial begin
    $monitor("Time=%0t, A=%b, B=%b, C=%b", $time, A, B, C);
end

endmodule
