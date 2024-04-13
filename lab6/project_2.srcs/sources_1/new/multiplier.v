`timescale 1ns / 1ps

module BinaryMultiplier(
  input [3:0] multiplicand,
  input [3:0] multiplier,
  output reg [8:0] accumulator,
  output [7:0] product,
  input start
);

reg state1 = 0;
reg state2 = 0;
reg state3 = 0;
reg [8:0] multiplicand_shifted; // Shifted multiplicand for addition
reg count = 0; // Counter for counting multiplicand bits added to accumulator

always @(*) begin

  if (start) begin
    // Load multiplier into accumulator starting from index 0
    accumulator <= {multiplier}; // Concatenate multiplier with 4'b0 to shift it left by 4 bits
    state1 <= 1;
    count <= 0;
  end 
  
  if (state1) begin 
      
      if (accumulator[0]) begin
      multiplicand_shifted <= {multiplicand, 4'b0};
      accumulator <= accumulator + multiplicand_shifted; 
      end
      
      if (count == 3) begin
      state3 <= 1; 
      end
      
      else begin state2 <= 1; end 
  
  end
   
  if (state2)begin
    accumulator <= accumulator >>> 1;
    if (count == 3) begin
      state3 <= 1; 
    end
     
    else begin state1 <= 1; end
     
    state2 <=0;
  end
     
 if (state3)begin
    accumulator <= accumulator >>> 1;
    state3 <=0;
  end
     
  else begin
    // Set everything to zero
    accumulator <= 9'b0;
    state1 <= 0;
    state2 <= 0;
    state3 <= 0;
  end
end

// Output product
assign product = accumulator[7:0];