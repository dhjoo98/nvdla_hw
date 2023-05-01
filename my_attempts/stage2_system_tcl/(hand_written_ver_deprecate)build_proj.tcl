#*****************************************************************************
#
# Copyright (C) 2019 - 2021 Xilinx, Inc.  All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
#******************************************************************************

set my_board [get_board_parts xilinx.com:vmk180:part0:* -latest_file_version]
create_project -force vivado/versal_restart_trd . -part [get_property PART_NAME [get_board_parts $my_board]]
set_property board_part $my_board [current_project]
set_property  ip_repo_paths  ../ip_repo [current_project]
update_ip_catalog

# fixed for refernce!!
#####source scripts/pl_subsystem.tcl -> creating the pl_subsystem block
# Hierarchical cell: pl_subsystem
proc create_hier_cell_pl_subsystem { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_pl_subsystem() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk  #create a new pin 
  create_bd_pin -dir I -from 2 -to 0 Din
  create_bd_pin -dir O -from 2 -to 0 dout
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI
  create_bd_pin -dir I -type rst ext_reset_in

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
 ] $axi_gpio_0

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Output_Width {27} \
 ] $c_counter_binary_0

  # Create instance: design_ver, and set properties
  set design_ver [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant design_ver ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {32} \
   CONFIG.CONST_VAL {1} \
 ] $design_ver

  # Create instance: pl_alive_0, and set properties
  set pl_alive_0 [ create_bd_cell -type ip -vlnv user.org:user:pl_alive pl_alive_0 ]

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset proc_sys_reset_0 ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {3} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {26} \
   CONFIG.DIN_TO {26} \
   CONFIG.DIN_WIDTH {27} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create interface connections
  connect_bd_intf_net -intf_net s00_axi [get_bd_intf_pins S00_AXI] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]

  # Create port connections
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net pl_alive_0_alive [get_bd_pins pl_alive_0/alive] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net pl_alive_0_por [get_bd_pins pl_alive_0/por] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins smartconnect_0/aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net [get_bd_pins clk] [get_bd_pins axi_gpio_0/s_axi_aclk]
  connect_bd_net [get_bd_pins clk] [get_bd_pins c_counter_binary_0/CLK]
  connect_bd_net [get_bd_pins clk] [get_bd_pins pl_alive_0/clk]
  connect_bd_net [get_bd_pins clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net [get_bd_pins clk] [get_bd_pins smartconnect_0/aclk]
  connect_bd_net -net versal_cips_0_lpd_gpio_o [get_bd_pins Din] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins dout] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_0/In2] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins design_ver/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins pl_alive_0/ack] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins pl_alive_0/pulse] [get_bd_pins xlslice_1/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


###source scripts/subsystem_restart.tcl
create_bd_design versal_restart_trd

update_compile_order -fileset sources_1

create_bd_cell -type ip -vlnv xilinx.com:ip:versal_cips versal_cips_0

apply_bd_automation -rule xilinx.com:bd_rule:cips \
	-config { \
		board_preset {Yes} \
		boot_config {Custom} \
		configure_noc {Add new AXI NoC} \
		debug_config {JTAG} \
		design_flow {Full System} \
		mc_type {DDR} \
		num_mc {1} \
		pl_clocks {1} \
		pl_resets {1} \
	}  [get_bd_cells versal_cips_0]

validate_bd_design
save_bd_design

# Set CIPS params for NCI ports
set_property -dict [list \
	CONFIG.PS_PMC_CONFIG { \
	  PS_USE_FPD_AXI_NOC0 1 \
      	  PS_USE_FPD_AXI_NOC1 1 \
        } ] \
[get_bd_cells versal_cips_0]

# Configure NOC for new ports
set_property -dict [list CONFIG.NUM_SI {8} CONFIG.NUM_CLKS {8}] [get_bd_cells axi_noc_0]
set_property -dict [list CONFIG.CATEGORY {ps_nci} CONFIG.CONNECTIONS {MC_1 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} }] [get_bd_intf_pins /axi_noc_0/S06_AXI]
set_property -dict [list CONFIG.CATEGORY {ps_nci} CONFIG.CONNECTIONS {MC_2 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} }] [get_bd_intf_pins /axi_noc_0/S07_AXI]
set_property -dict [list CONFIG.ASSOCIATED_BUSIF {S06_AXI}] [get_bd_pins /axi_noc_0/aclk6]
set_property -dict [list CONFIG.ASSOCIATED_BUSIF {S07_AXI}] [get_bd_pins /axi_noc_0/aclk7]

# Connect new ports between CIPS and NOC
connect_bd_intf_net [get_bd_intf_pins versal_cips_0/FPD_AXI_NOC_0] [get_bd_intf_pins axi_noc_0/S06_AXI]
connect_bd_intf_net [get_bd_intf_pins versal_cips_0/FPD_AXI_NOC_1] [get_bd_intf_pins axi_noc_0/S07_AXI]
connect_bd_net [get_bd_pins versal_cips_0/fpd_axi_noc_axi0_clk] [get_bd_pins axi_noc_0/aclk6]
connect_bd_net [get_bd_pins versal_cips_0/fpd_axi_noc_axi1_clk] [get_bd_pins axi_noc_0/aclk7]

assign_bd_address
validate_bd_design
save_bd_design

# Set pl clock, FPD master, IPI
set_property -dict [list \
	CONFIG.PS_PMC_CONFIG { \
      	  PS_USE_M_AXI_FPD 1 \
      	  PMC_CRP_PL0_REF_CTRL_FREQMHZ 100 \
	  PS_GEN_IPI0_ENABLE 1  \
	  PS_GEN_IPI1_ENABLE 1  \
	  PS_GEN_IPI2_ENABLE 1  \
	  PS_GEN_IPI3_ENABLE 1  \
	  PS_GEN_IPI4_ENABLE 1  \
	  PS_GEN_IPI5_ENABLE 1  \
	  PS_GEN_IPI6_ENABLE 1  \
      	} \
] [get_bd_cells versal_cips_0]

# Set GPIO EMIO, UART_1, IPI Master, I2C0
set_property -dict [list \
	CONFIG.PS_PMC_CONFIG { \
      	  PS_GEN_IPI1_MASTER {R5_0} \
      	  PS_GEN_IPI2_MASTER {R5_1} \
      	  PS_GPIO_EMIO_PERIPHERAL_ENABLE {1} \
      	  PS_GPIO_EMIO_WIDTH {3}	\
      	  PS_I2C0_PERIPHERAL {ENABLE {1} IO {PMC_MIO 46 .. 47}} \
      	  PS_TTC1_PERIPHERAL_ENABLE {1} \
      	  PS_TTC2_PERIPHERAL_ENABLE {1} \
      	  PS_TTC3_PERIPHERAL_ENABLE {1} \
	  PS_UART1_PERIPHERAL {{ENABLE 1} {IO EMIO}} \
	} \
] [get_bd_cells versal_cips_0]


# Enable WWDT0/1
set_property -dict [list \
	CONFIG.PS_PMC_CONFIG { \
 	  PS_WWDT0_CLK {{ENABLE 1} {IO APB}}  \
	  PS_WWDT0_PERIPHERAL {{ENABLE 1} {IO EMIO}}  \
	  PS_WWDT1_CLK {{ENABLE 0} {IO APB}}  \
	  PS_WWDT1_PERIPHERAL {{ENABLE 1} {IO EMIO}} \
	} \
] [get_bd_cells versal_cips_0]


# Enable coherency
set_property -dict [list CONFIG.PS_PMC_CONFIG {PMC_SD1_COHERENCY 0}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_USB_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_GEM0_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_GEM1_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA0_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA1_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA2_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA3_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA4_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA5_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA6_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_LPDMA7_COHERENCY 1}] [get_bd_cells /versal_cips_0]
set_property -dict [list CONFIG.PS_PMC_CONFIG {PS_RPU_COHERENCY 0}] [get_bd_cells /versal_cips_0]

# Create instance: pl_subsystem
create_hier_cell_pl_subsystem [current_bd_instance .] pl_subsystem

# Create ports
set UART_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART_1 ]


# Create interface connections
connect_bd_intf_net -intf_net versal_cips_0_UART1 [get_bd_intf_ports UART_1] [get_bd_intf_pins versal_cips_0/UART1]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins pl_subsystem/S00_AXI] [get_bd_intf_pins versal_cips_0/M_AXI_FPD]

# Create port connections

connect_bd_net [get_bd_pins versal_cips_0/pl0_ref_clk] [get_bd_pins pl_subsystem/clk]
connect_bd_net [get_bd_pins versal_cips_0/pl0_ref_clk] [get_bd_pins versal_cips_0/m_axi_fpd_aclk]
connect_bd_net -net versal_cips_0_lpd_gpio_o [get_bd_pins versal_cips_0/lpd_gpio_o] [get_bd_pins pl_subsystem/Din]
connect_bd_net -net versal_cips_0_pl0_resetn [get_bd_pins pl_subsystem/ext_reset_in] [get_bd_pins versal_cips_0/pl0_resetn]
connect_bd_net -net xlconcat_0_dout [get_bd_pins versal_cips_0/lpd_gpio_i] [get_bd_pins pl_subsystem/dout]

# Create address segments
assign_bd_address [get_bd_addr_segs *]




set bdwrapper [make_wrapper -files [get_files versal_restart_trd.bd] -top]
add_files -norecurse $bdwrapper
update_compile_order -fileset sources_1

add_files -fileset constrs_1 -norecurse xdc/subsystem_design_top.xdc

validate_bd_design
save_bd_design
