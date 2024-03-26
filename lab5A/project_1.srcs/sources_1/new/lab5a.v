`timescale 1ns / 1ps




module lab5a(
    input CLK,
    input RESET,
    output A,
    output B,
    output C
);

reg myA = 0;
reg myB = 0; 
reg myC = 0;

wire NA;
wire NB;
wire NC;

assign NA = ~(myB & myC);
assign NB = myA;
assign NC = myB;

wire NRST = ~RESET;

always @(posedge CLK)
    if (NRST) begin
        myA <= 1'b0;
        myB <= 1'b0;
        myC <= 1'b0;
    end
    
    else begin
        myA <= NA;
        myB <= NB;
        myC <=NC;
    end 
    
assign A = myA;
assign B = myB;
assign C = myC;


endmodule

