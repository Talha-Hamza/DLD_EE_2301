module BinaryMultiplier(

  input CLK,
  input reset,
  input [7:0] multiplicand,
  input [7:0] multiplier,
  output reg [15:0] product = 0,
  output reg [15:0] accumulator,
  output reg [15:0] multc_shifter = 0, // Initialize multc_shifter
  output reg [7:0] count,
  STATE_Initial = 3'd0,
  STATE_1 = 3'd1,
  STATE_2 = 3'd2,
  STATE_3 = 3'd3,
  STATE_4 = 3'd4,
  STATE_HOLD = 3'd5
);

reg [2:0] CurrentState;
reg [2:0] NextState ;
reg STATE_RESET = 1;

always @(posedge CLK) begin

  if (STATE_RESET) begin
    $display("Resetting");
    multc_shifter <= {multiplicand, 8'b0};
    $display("Multiplicand: %b", multc_shifter);
    count <= 8'b11111111;
    accumulator <= multiplier;
    NextState <= STATE_Initial;
    STATE_RESET <= 1'b0;
    end

  case (CurrentState)
      
   STATE_HOLD: begin
      $display("Holding All Current Values");
        NextState <= STATE_HOLD;
    end
  
    STATE_Initial: begin
      $display("At Initial State");
      if (accumulator[0] == 1) begin
        NextState <= STATE_1;
      end else begin
        NextState <= STATE_2;
      end
    end

    STATE_1: begin
      $display("At State 1");
      accumulator <= accumulator + multc_shifter;
      NextState <= STATE_2;
    end

    STATE_2: begin
    NextState <= STATE_3;
      $display("At State 2");
      count <= count >> 1;
      accumulator <= accumulator >> 1'b1;
//      NextState <= STATE_3;
    end
    
    
    STATE_3: begin
      $display("At State 3");
      if (count > 8'b00000000) begin
        NextState <= STATE_Initial;
      end else begin
        NextState <= STATE_4;
      end
    end

    STATE_4: begin
      $display("At State 4");
      product <= accumulator;
      $display("Official Product", product);
      NextState <= STATE_HOLD;
    end


  endcase

  CurrentState <= NextState;
end

endmodule
