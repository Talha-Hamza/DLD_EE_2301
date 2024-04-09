`timescale 1ns / 1ps

module lab5a_tb;

// Signals
reg CLK;
reg RESET;
reg A, B, C;

// Instantiate the module under test
lab5a uut (
    .CLK(CLK),
    .RESET(RESET),
    .A(A),
    .B(B),
    .C(C)
);

// Clock generation with 50 nanosecond period
initial begin
    CLK = 1;
    forever #25 CLK = ~CLK; // Toggle every 25 ns for a 50 ns period
end

// Initial Reset
initial begin
    RESET = 1;
    #50;
    RESET = 0;
    #350;
    RESET = 1;
    #20;
    RESET = 0;
end

// Initial Signal A setup
initial begin
    A = 0;
    #50;
    A = 1;
    #250;
    A = 0;
    #120;
    A = 1;
end


initial begin
    B = 0;
    #100;
    B = 1;
    #300;
    B = 0;
    #100;
    B = 1;
end

initial begin
    C = 0;
    #200;
    C = 1;
    #200;
    C = 0;
end

// Display results
initial begin
    $monitor("Time=%0t, A=%b, B=%b, C=%b", $time, A, B, C);
end

endmodule
