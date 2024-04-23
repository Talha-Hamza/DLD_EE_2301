`timescale 1ns / 1ps

module BinaryMultiplier_TB;

  // Signals
  reg CLK;
  reg reset;
  reg [7:0] multiplier;
  reg [7:0] multiplicand;
  wire [15:0] product;
;

  // Instantiate the module
  BinaryMultiplier dut (
    .CLK(CLK),
    .reset(reset),
    .product(product),
    .multiplicand(multiplicand),
    .multiplier(multiplier)

  );

  // Clock generation
  initial begin
    CLK = 0;
    forever #10 CLK = ~CLK;
  end
  
always @(posedge CLK) begin

    $display("Product: %d", product);
    
end
  // Stimulus
  initial begin
    // Initialize inputs in binary
    multiplicand = 8'b00010010;
    multiplier = 8'b00000011;
    reset = 1;

  end

endmodule