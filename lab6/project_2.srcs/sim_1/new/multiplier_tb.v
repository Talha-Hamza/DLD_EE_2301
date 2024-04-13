`timescale 1ns / 1ps

module BinaryMultiplier_TB;

    // Inputs
    reg [3:0] multiplicand_tb;
    reg [3:0] multiplier_tb;
    reg start;
    reg CLK;

    // Outputs
    wire [8:0] accumulator_tb;
    wire [7:0] product_tb;

    // Instantiate the module
    BinaryMultiplier dut (
        .multiplicand(multiplicand_tb),
        .multiplier(multiplier_tb),
        .accumulator(accumulator_tb),
        .product(product_tb),
        .start(start),
        .clock(CLK)
    );

    // Testbench behavior
    initial begin
        CLK = 1;
        forever #25 CLK = ~CLK; // Toggle every 25 ns for a 50 ns period
    end
    
    // Initialize inputs
    initial begin
        multiplicand_tb = 4'b1111; 
        multiplier_tb = 4'b1111;   
        start = 1;
        
        #10; // Wait for some time to stabilize signals before displaying
    end
    
    // Display outputs
    always @(*) begin
        $display("Time=%0t multiplicand=%b, multiplier=%b, accumulator=%b, product=%b", $time, multiplicand_tb, multiplier_tb, accumulator_tb, product_tb);
    end

endmodule
