
module lab3_tb(); 
    
    reg [3:0] inputA;
    reg [3:0] inputB;
    reg inputC;
    wire [3:0] result_sum;
    wire result_carry;
    integer i;
    integer j;

    // Instantiate the Ripple Carry Adder 4-bit module
    Ripple_Carry_Adder_4 lab3(
            .A(inputA),
            .B(inputB),
            .CarryIn(inputC),
            .Sum(result_sum),
            .CarryOut(result_carry)
        );
            
   initial begin
        // Test all possible combinations of input A and B
        for (i = 0; i < 16; i = i + 1) begin
            inputA = i;
            for (j = 0; j < 16; j = j + 1) begin
                inputB = j;
                // Set CarryIn to 0 for simplicity
                inputC = 0;
                // Apply some delay
                #10;
                // Display inputs and outputs
                $display("Input: A=%b, B=%b, C=%b, Sum=%b, Carry=%b", inputA, inputB, inputC, result_sum, result_carry);
            end
        end
        // Test all possible combinations of input A and B
        for (i = 0; i < 16; i = i + 1) begin
            inputA = i;
            for (j = 0; j < 16; j = j + 1) begin
                inputB = j;
                // Seeconf for loop Carry in to be 1
                inputC = 1;
                // Apply some delay
                #10;
                // Display inputs and outputs
                $display("Input: A=%b, B=%b, C=%b, Sum=%b, Carry=%b", inputA, inputB, inputC, result_sum, result_carry);
            end
        end
        // End simulation
        $finish;
    end
endmodule
