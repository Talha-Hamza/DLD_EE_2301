`timescale 1ns / 1ps

module lab2_new_tb(
    ); 
    reg input0, input1, input2;
    wire green1;
    wire green2;
    wire red1;
    wire red2;
    wire yellow1;
    wire yellow2;
  
  
    design_1_wrapper lab2(
            .C0(input0),
            .C1(input1),
            .C2(input2),
            .G1(green1),
            .G2(green2),
            .R1(red1),
            .R2(red2),
            .Y1(yellow1),
            .Y2(yellow2));
    initial
        begin
            input2 = 0; input1 = 0; input0 = 0;
            #50
            input2 = 0; input1 = 0; input0 = 1;
            #50
            input2 = 0; input1 = 1; input0 = 0;
            #50
            input2 = 0; input1 = 1; input0 = 1;
            #50
            input2 = 1; input1 = 0; input0 = 0;
            #50
            input2 = 1; input1 = 0; input0 = 1;
            #50
            input2 = 1; input1 = 1; input0 = 0;
            #50
            input2 = 1; input1 = 1; input0 = 1;
        end
endmodule

