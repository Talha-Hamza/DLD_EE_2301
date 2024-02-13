//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Feb 13 12:31:09 2024
//Host        : DESKTOP-2RCNUVR running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (C0,
    C1,
    C2,
    G1,
    G2,
    R1,
    R2,
    Y1,
    Y2);
  input C0;
  input C1;
  input C2;
  output G1;
  output G2;
  output R1;
  output R2;
  output Y1;
  output Y2;

  wire C0;
  wire C1;
  wire C2;
  wire G1;
  wire G2;
  wire R1;
  wire R2;
  wire Y1;
  wire Y2;

  design_1 design_1_i
       (.C0(C0),
        .C1(C1),
        .C2(C2),
        .G1(G1),
        .G2(G2),
        .R1(R1),
        .R2(R2),
        .Y1(Y1),
        .Y2(Y2));
endmodule
