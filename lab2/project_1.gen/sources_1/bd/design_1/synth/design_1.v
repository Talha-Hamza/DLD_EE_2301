//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Feb 13 12:31:09 2024
//Host        : DESKTOP-2RCNUVR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire a_0_1;
  wire a_0_2;
  wire b_0_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_and2_2_y;
  wire xup_and3_0_y;
  wire xup_and3_1_y;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_inv_2_y;
  wire xup_or2_0_y;
  wire xup_or2_1_y;
  wire xup_xor2_1_y;

  assign G1 = xup_and2_0_y;
  assign G2 = xup_and2_1_y;
  assign R1 = xup_or2_0_y;
  assign R2 = xup_or2_1_y;
  assign Y1 = xup_and3_0_y;
  assign Y2 = xup_and3_1_y;
  assign a_0_1 = C0;
  assign a_0_2 = C2;
  assign b_0_1 = C1;
  design_1_xup_and2_0_0 xup_and2_0
       (.a(xup_xor2_1_y),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
  design_1_xup_and2_1_0 xup_and2_1
       (.a(a_0_2),
        .b(xup_xor2_1_y),
        .y(xup_and2_1_y));
  design_1_xup_and2_2_0 xup_and2_2
       (.a(xup_inv_2_y),
        .b(xup_inv_1_y),
        .y(xup_and2_2_y));
  design_1_xup_and3_0_0 xup_and3_0
       (.a(a_0_1),
        .b(b_0_1),
        .c(xup_inv_0_y),
        .y(xup_and3_0_y));
  design_1_xup_and3_1_0 xup_and3_1
       (.a(a_0_1),
        .b(b_0_1),
        .c(a_0_2),
        .y(xup_and3_1_y));
  design_1_xup_inv_0_0 xup_inv_0
       (.a(a_0_2),
        .y(xup_inv_0_y));
  design_1_xup_inv_1_0 xup_inv_1
       (.a(a_0_1),
        .y(xup_inv_1_y));
  design_1_xup_inv_2_0 xup_inv_2
       (.a(b_0_1),
        .y(xup_inv_2_y));
  design_1_xup_or2_0_1 xup_or2_0
       (.a(a_0_2),
        .b(xup_and2_2_y),
        .y(xup_or2_0_y));
  design_1_xup_or2_1_0 xup_or2_1
       (.a(xup_and2_2_y),
        .b(xup_inv_0_y),
        .y(xup_or2_1_y));
  design_1_xup_xor2_1_0 xup_xor2_1
       (.a(a_0_1),
        .b(b_0_1),
        .y(xup_xor2_1_y));
endmodule
