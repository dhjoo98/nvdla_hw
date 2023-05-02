`define VLIB_BYPASS_POWER_CG
`define NV_FPGA_FIFOGEN
`define FIFOGEN_MASTER_CLK_GATING_DISABLED
`define FPGA
`define RAM_DISABLE_POWER_GATING_FPGA // the rest are code internally used global variables. 
`define SYNTHESIS  // good to be defined here. //  for vivado to run synthesis 