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
  wire [2:0] counter;

  // Instantiate the module
  BinaryMultiplier dut (
    .CLK(CLK),
    .reset(reset),
    .product(product),
    .accumulator(accumulator),
    .multiplicand(multiplicand),
    .multiplier(multiplier),
    .multc_shifter(multc_shifter),
    .counter(counter)
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
    $display("Multplicand shifter: %b", multc_shifter);
    $display("Count: %b", counter);
    // Display outputs in binary
    $display("Product: %d", product);
    $display("Accumulator: %b", accumulator);
    
end


  // Stimulus
  initial begin
    // Initialize inputs in binary
    multiplicand = 8'b00000101;
    multiplier = 8'b00000011;
    reset = 1;
//    #10 reset = 0; 

  end

endmodule