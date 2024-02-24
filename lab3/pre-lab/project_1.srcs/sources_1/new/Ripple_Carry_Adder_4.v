`timescale 1ns / 1ps
//Verilog model of a 4-bit ripple carry adder
//Uses the module Verilog_Adder.v
module Ripple_Carry_Adder_4(
    output [3:0] Sum,
    output CarryOut,
    input [3:0] A,
    input [3:0] B,
    input CarryIn
    );
    wire [3:1] c;
    
    //Instantiate the 4 full adders
    Verilog_Adder FA0(Sum[0], c[1], A[0], B[0], CarryIn);
    Verilog_Adder FA1(Sum[1], c[2], A[1], B[1], c[1]);
    Verilog_Adder FA3(Sum[2], c[3], A[2], B[2], c[2]);
    Verilog_Adder FA4(Sum[3], CarryOut, A[3], B[3], c[3]);
endmodule

