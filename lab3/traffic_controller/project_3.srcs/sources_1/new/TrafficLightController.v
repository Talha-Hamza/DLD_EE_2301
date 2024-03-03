`timescale 1ns / 1ps


module TrafficLightController(
    
    output G1, G2, Y1, Y2, R1, R2,
    output [2:0] led,
    
    input C1,
    input C2,
    input C0
    );
    
    assign led[0] = C0;
    assign led[1] = C1;
    assign led[2] = C2;

    
    assign G1 = ~(C2)&(C0^C1); // Green light 1
    assign G2 = (C2)&(C0^C1); // Green light 2
    
    assign Y1 = ~(C2)& C0 & C1; // Yellow light 1
    assign Y2 = (C2)& C0 & C1; // Yellow light 2
    
    assign R1 = C2 | ((~C0) & (~C1)); // Red light 1
    assign R2 = ~C2 | ((~C0) & (~C1)); // Red light 2
    
endmodule
