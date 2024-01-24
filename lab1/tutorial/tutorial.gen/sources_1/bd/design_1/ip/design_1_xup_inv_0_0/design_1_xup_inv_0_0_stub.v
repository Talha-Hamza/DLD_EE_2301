// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jan 19 10:54:22 2024
// Host        : DESKTOP-2RCNUVR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Hamza/Documents/UMN-EE-coursework/Spring 2024/EE
//               2301/labs/lab1/tutorial/tutorial.gen/sources_1/bd/design_1/ip/design_1_xup_inv_0_0/design_1_xup_inv_0_0_stub.v}
// Design      : design_1_xup_inv_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_inv,Vivado 2023.2" *)
module design_1_xup_inv_0_0(a, y)
/* synthesis syn_black_box black_box_pad_pin="a,y" */;
  input a;
  output y;
endmodule
