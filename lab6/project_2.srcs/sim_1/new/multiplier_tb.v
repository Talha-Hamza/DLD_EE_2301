`timescale 1ns / 1ps

module BinaryMultiplier_TB;

  // Signals
  reg CLK;
  reg reset;
  reg [7:0] multiplier;
  reg [7:0] multiplicand;
  wire [15:0] product;
  wire [15:0] accumulator;
  wire [15:0] multc_shifter;
  wire [7:0] count;

  // Instantiate the module
  BinaryMultiplier dut (
    .CLK(CLK),
    .reset(reset),
    .product(product),
    .accumulator(accumulator),
    .multiplicand(multiplicand),
    .multiplier(multiplier),
    .multc_shifter(multc_shifter),
    .count(count)
  );

  // Clock generation
  initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
  end
  
always @(posedge CLK) begin
//    #10 $display("Multiplier: %b", multiplier);
//    $display("Multiplicand: %b", multiplicand);
//    $display("start: %b", start);
//    $display("Multplicand shifter: %b", multc_shifter);
    $display("Count: %b", count);
    // Display outputs in binary
//    $display("Product: %b", product);
    $display("Accumulator: %b", accumulator);
    
end


  // Stimulus
  initial begin
    // Initialize inputs in binary
    multiplicand = 8'b00000011;
    multiplier = 8'b00000011;
    reset = 1;
    #10 reset = 0; 

  end

endmodule
