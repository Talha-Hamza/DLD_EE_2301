`timescale 1ns / 1ps

//Verilog model of a full adder
module Verilog_Adder(
    output Sum,
    output CarryOut,
    input A,
    input B,
    input CarryIn
    );
    
    assign Sum = A^B^CarryIn;
    assign CarryOut = (A&B)|(A&CarryIn)|(B&CarryIn);
endmodule