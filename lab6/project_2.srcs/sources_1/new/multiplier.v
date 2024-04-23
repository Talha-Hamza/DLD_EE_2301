`timescale 1ns / 1ps

module BinaryMultiplier(
  input CLK,
  input reset,
  input [7:0] multiplicand,
  input [7:0] multiplier,
  output reg [15:0] product = 0

);

reg [15:0] accumulator = 0;
reg [15:0] multc_shifter;
reg [2:0] counter = 3'b000;

reg [2:0] state = 3'b000; // Current state

always @(posedge CLK) begin
  case (state)
    3'b000 : begin // Reset on start signal
      if (reset) begin
        accumulator <= multiplier;
        multc_shifter <= {multiplicand, 8'b0}; // Shift multiplicand left
        counter <= 3'b000;
        state <= 3'b001; // Transition to Shift
      end
    end
  
    3'b001 : begin  // Check multiplier bit
    $display("checking bit: %b", multiplier[counter]);
      if (multiplier[counter] == 1) begin // Check previous bit (after increment in Shift)
        state <= 3'b010; // Add if required, transition to Add
      end else begin
        state <= 3'b011; // No addition needed, go back to Shift
      end
    end
   
    3'b010 : begin  // Perform addition if needed
      accumulator <= accumulator + multc_shifter;
      state <= 3'b011; // Transition back to Shift for next bit
    end
     
   3'b011 : begin  // Perform shift and update counter
    accumulator <= accumulator >> 1;
    counter <= counter + 1;
    state <= 3'b100; // Transition to Check and Add
  end
   
   3'b100: begin  
        if (counter == 7) begin
        state <= 3'b101;
        end
        else begin
        state <= 3'b001;
        end
        end
        
    3'b101: begin  // Final shift and store product
      accumulator <= accumulator >> 1; // Final right shift
      state <= 3'b110;
      end
      
    3'b110: begin  // Final shift and store product
      product <= accumulator; // Product is ready
      end
  endcase
end

endmodule
