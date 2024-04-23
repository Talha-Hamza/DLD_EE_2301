module BinaryMultiplier(
  input CLK,
  input reset,
  input [7:0] multiplicand,
  input [7:0] multiplier,
  output reg [15:0] product = 0,
  output reg [15:0] accumulator = 0,
  output reg [15:0] multc_shifter,
  output reg [2:0] counter = 3'b000,
  state_0 = 3'b000,
  state_1 = 3'b001,
  state_2 = 3'b010,
  state_3 = 3'b011,
  state_4 = 3'b100,
  state_5 = 3'b101,
  state_6 = 3'b110
);

reg [2:0] state = 3'b000; // Current state

always @(posedge CLK) begin
  case (state)
    state_0 : begin // Reset on start signal
      if (reset) begin
        accumulator <= multiplier;
        multc_shifter <= {multiplicand, 8'b0}; // Shift multiplicand left
        counter <= state_0;
        state <= state_1; // Transition to Shift
      end
    end
  
    state_1 : begin  // Check multiplier bit
    $display("checking bit: %b", multiplier[counter]);
      if (multiplier[counter] == 1) begin // Check previous bit (after increment in Shift)
        state <= state_2; // Add if required, transition to Add
      end else begin
        state <= state_3; // No addition needed, go back to Shift
      end
    end
   
    state_2 : begin  // Perform addition if needed
      accumulator <= accumulator + multc_shifter;
      state <= state_3; // Transition back to Shift for next bit
    end
     
   state_3 : begin  // Perform shift and update counter
    accumulator <= accumulator >> 1;
    counter <= counter + 1;
    state <= state_4; // Transition to Check and Add
  end
   
   state_4: begin  
        if (counter == 7) begin
        state <= state_5;
        end
        else begin
        state <= state_1;
        end
        end
        
    state_5: begin  // Final shift and store product
      accumulator <= accumulator >> 1; // Final right shift
      state <= state_6;
      end
      
    state_6: begin  // Final shift and store product
      product <= accumulator; // Product is ready
      end
      
    
  endcase
end

endmodule
