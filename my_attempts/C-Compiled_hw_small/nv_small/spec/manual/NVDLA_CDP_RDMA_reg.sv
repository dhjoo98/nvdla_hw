//   Ordt 171103.01 autogenerated file 
//   Input: NVDLA_CDP_RDMA.rdl
//   Parms: opendla.parms
//   Date: Wed Dec 30 08:27:41 UTC 2020
//

import uvm_pkg::*;
import ordt_uvm_reg_pkg::*;

// S_STATUS
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_STATUS extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl STATUS_0;
  rand uvm_reg_field_rdl STATUS_1;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.STATUS_0 = new("STATUS_0");
    this.STATUS_0.set_rdl_access_info(1, 0, 0, 1, 0, 0);
    this.STATUS_0.configure(this, 2, 0, "RO", 1, 2'h0, 1, 0, 0);
    this.STATUS_0.add_def_property("spec_access", "r");
    this.STATUS_0.add_def_property("spec_sw_default", "0x0");
    this.STATUS_0.add_def_property("sw_default_mask", "0x0");
    this.STATUS_0.add_def_property("reset_mask", "0x3");
    this.STATUS_1 = new("STATUS_1");
    this.STATUS_1.set_rdl_access_info(1, 0, 0, 1, 0, 0);
    this.STATUS_1.configure(this, 2, 16, "RO", 1, 2'h0, 1, 0, 0);
    this.STATUS_1.add_def_property("spec_access", "r");
    this.STATUS_1.add_def_property("spec_sw_default", "0x0");
    this.STATUS_1.add_def_property("sw_default_mask", "0x0");
    this.STATUS_1.add_def_property("reset_mask", "0x3");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "STATUS_0"}, 0, 2);
    add_hdl_path_slice({rdl_reg_name, "STATUS_1"}, 16, 2);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_STATUS

// S_POINTER
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_POINTER extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl PRODUCER;
  rand uvm_reg_field_rdl CONSUMER;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_POINTER");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.PRODUCER = new("PRODUCER");
    this.PRODUCER.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.PRODUCER.configure(this, 1, 0, "RW", 0, 1'h0, 1, 1, 0);
    this.PRODUCER.add_def_property("spec_access", "rw");
    this.PRODUCER.add_def_property("spec_sw_default", "0x0");
    this.PRODUCER.add_def_property("sw_default_mask", "0x0");
    this.PRODUCER.add_def_property("reset_mask", "0x1");
    this.CONSUMER = new("CONSUMER");
    this.CONSUMER.set_rdl_access_info(1, 0, 0, 1, 0, 0);
    this.CONSUMER.configure(this, 1, 16, "RO", 1, 1'h0, 1, 0, 0);
    this.CONSUMER.add_def_property("spec_access", "r");
    this.CONSUMER.add_def_property("spec_sw_default", "0x0");
    this.CONSUMER.add_def_property("sw_default_mask", "0x0");
    this.CONSUMER.add_def_property("reset_mask", "0x1");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "PRODUCER"}, 0, 1);
    add_hdl_path_slice({rdl_reg_name, "CONSUMER"}, 16, 1);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_POINTER

// D_OP_ENABLE
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OP_ENABLE extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl OP_EN;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OP_ENABLE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.OP_EN = new("OP_EN");
    this.OP_EN.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.OP_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 1, 1);
    this.OP_EN.add_def_property("spec_access", "rwto");
    this.OP_EN.add_def_property("spec_sw_default", "0x0");
    this.OP_EN.add_def_property("sw_default_mask", "0x0");
    this.OP_EN.add_def_property("reset_mask", "0x1");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "OP_EN"}, 0, 1);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OP_ENABLE

// D_DATA_CUBE_WIDTH
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl WIDTH;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.WIDTH = new("WIDTH");
    this.WIDTH.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.WIDTH.configure(this, 13, 0, "RW", 0, 13'h0, 1, 1, 1);
    this.WIDTH.add_def_property("spec_access", "rw");
    this.WIDTH.add_def_property("spec_sw_default", "0x0");
    this.WIDTH.add_def_property("sw_default_mask", "0x0");
    this.WIDTH.add_def_property("reset_mask", "0x1fff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "WIDTH"}, 0, 13);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH

// D_DATA_CUBE_HEIGHT
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl HEIGHT;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.HEIGHT = new("HEIGHT");
    this.HEIGHT.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.HEIGHT.configure(this, 13, 0, "RW", 0, 13'h0, 1, 1, 1);
    this.HEIGHT.add_def_property("spec_access", "rw");
    this.HEIGHT.add_def_property("spec_sw_default", "0x0");
    this.HEIGHT.add_def_property("sw_default_mask", "0x0");
    this.HEIGHT.add_def_property("reset_mask", "0x1fff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "HEIGHT"}, 0, 13);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT

// D_DATA_CUBE_CHANNEL
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl CHANNEL;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.CHANNEL = new("CHANNEL");
    this.CHANNEL.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.CHANNEL.configure(this, 13, 0, "RW", 0, 13'h0, 1, 1, 1);
    this.CHANNEL.add_def_property("spec_access", "rw");
    this.CHANNEL.add_def_property("spec_sw_default", "0x0");
    this.CHANNEL.add_def_property("sw_default_mask", "0x0");
    this.CHANNEL.add_def_property("reset_mask", "0x1fff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "CHANNEL"}, 0, 13);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL

// D_SRC_BASE_ADDR_LOW
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl SRC_BASE_ADDR_LOW;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.SRC_BASE_ADDR_LOW = new("SRC_BASE_ADDR_LOW");
    this.SRC_BASE_ADDR_LOW.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.SRC_BASE_ADDR_LOW.configure(this, 32, 0, "RW", 0, 32'h0, 1, 1, 1);
    this.SRC_BASE_ADDR_LOW.add_def_property("spec_access", "rw");
    this.SRC_BASE_ADDR_LOW.add_def_property("spec_sw_default", "0x0");
    this.SRC_BASE_ADDR_LOW.add_def_property("sw_default_mask", "0x0");
    this.SRC_BASE_ADDR_LOW.add_def_property("reset_mask", "0xffffffff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "SRC_BASE_ADDR_LOW"}, 0, 32);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW

// D_SRC_BASE_ADDR_HIGH
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl SRC_BASE_ADDR_HIGH;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.SRC_BASE_ADDR_HIGH = new("SRC_BASE_ADDR_HIGH");
    this.SRC_BASE_ADDR_HIGH.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.SRC_BASE_ADDR_HIGH.configure(this, 32, 0, "RW", 0, 32'h0, 1, 1, 1);
    this.SRC_BASE_ADDR_HIGH.add_def_property("spec_access", "rw");
    this.SRC_BASE_ADDR_HIGH.add_def_property("spec_sw_default", "0x0");
    this.SRC_BASE_ADDR_HIGH.add_def_property("sw_default_mask", "0x0");
    this.SRC_BASE_ADDR_HIGH.add_def_property("reset_mask", "0xffffffff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "SRC_BASE_ADDR_HIGH"}, 0, 32);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH

// D_SRC_LINE_STRIDE
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl SRC_LINE_STRIDE;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.SRC_LINE_STRIDE = new("SRC_LINE_STRIDE");
    this.SRC_LINE_STRIDE.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.SRC_LINE_STRIDE.configure(this, 32, 0, "RW", 0, 32'h0, 1, 1, 1);
    this.SRC_LINE_STRIDE.add_def_property("spec_access", "rw");
    this.SRC_LINE_STRIDE.add_def_property("spec_sw_default", "0x0");
    this.SRC_LINE_STRIDE.add_def_property("sw_default_mask", "0x0");
    this.SRC_LINE_STRIDE.add_def_property("reset_mask", "0xffffffff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "SRC_LINE_STRIDE"}, 0, 32);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE

// D_SRC_SURFACE_STRIDE
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl SRC_SURFACE_STRIDE;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.SRC_SURFACE_STRIDE = new("SRC_SURFACE_STRIDE");
    this.SRC_SURFACE_STRIDE.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.SRC_SURFACE_STRIDE.configure(this, 32, 0, "RW", 0, 32'h0, 1, 1, 1);
    this.SRC_SURFACE_STRIDE.add_def_property("spec_access", "rw");
    this.SRC_SURFACE_STRIDE.add_def_property("spec_sw_default", "0x0");
    this.SRC_SURFACE_STRIDE.add_def_property("sw_default_mask", "0x0");
    this.SRC_SURFACE_STRIDE.add_def_property("reset_mask", "0xffffffff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "SRC_SURFACE_STRIDE"}, 0, 32);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE

// D_SRC_DMA_CFG
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_DMA_CFG extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl SRC_RAM_TYPE;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_DMA_CFG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.SRC_RAM_TYPE = new("SRC_RAM_TYPE");
    this.SRC_RAM_TYPE.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.SRC_RAM_TYPE.configure(this, 1, 0, "RW", 0, 1'h0, 1, 1, 1);
    this.SRC_RAM_TYPE.add_def_property("spec_access", "rw");
    this.SRC_RAM_TYPE.add_def_property("spec_sw_default", "0x0");
    this.SRC_RAM_TYPE.add_def_property("sw_default_mask", "0x0");
    this.SRC_RAM_TYPE.add_def_property("reset_mask", "0x1");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "SRC_RAM_TYPE"}, 0, 1);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_DMA_CFG

// D_SRC_COMPRESSION_EN
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl SRC_COMPRESSION_EN;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.SRC_COMPRESSION_EN = new("SRC_COMPRESSION_EN");
    this.SRC_COMPRESSION_EN.set_rdl_access_info(1, 0, 1, 0, 0, 0);
    this.SRC_COMPRESSION_EN.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 1);
    this.SRC_COMPRESSION_EN.add_def_property("spec_access", "c");
    this.SRC_COMPRESSION_EN.add_def_property("spec_sw_default", "0x0");
    this.SRC_COMPRESSION_EN.add_def_property("sw_default_mask", "0x0");
    this.SRC_COMPRESSION_EN.add_def_property("reset_mask", "0x1");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "SRC_COMPRESSION_EN"}, 0, 1);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN

// D_OPERATION_MODE
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OPERATION_MODE extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl OPERATION_MODE;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OPERATION_MODE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.OPERATION_MODE = new("OPERATION_MODE");
    this.OPERATION_MODE.set_rdl_access_info(1, 0, 1, 0, 0, 0);
    this.OPERATION_MODE.configure(this, 2, 0, "RO", 0, 2'h0, 1, 0, 1);
    this.OPERATION_MODE.add_def_property("spec_access", "c");
    this.OPERATION_MODE.add_def_property("spec_sw_default", "0x0");
    this.OPERATION_MODE.add_def_property("sw_default_mask", "0x0");
    this.OPERATION_MODE.add_def_property("reset_mask", "0x3");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "OPERATION_MODE"}, 0, 2);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OPERATION_MODE

// D_DATA_FORMAT
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_FORMAT extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl INPUT_DATA;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_FORMAT");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.INPUT_DATA = new("INPUT_DATA");
    this.INPUT_DATA.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.INPUT_DATA.configure(this, 2, 0, "RW", 0, 2'h0, 1, 1, 1);
    this.INPUT_DATA.add_def_property("spec_access", "rw");
    this.INPUT_DATA.add_def_property("spec_sw_default", "0x0");
    this.INPUT_DATA.add_def_property("sw_default_mask", "0x0");
    this.INPUT_DATA.add_def_property("reset_mask", "0x3");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "INPUT_DATA"}, 0, 2);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_FORMAT

// D_PERF_ENABLE
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_ENABLE extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl DMA_EN;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_ENABLE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.DMA_EN = new("DMA_EN");
    this.DMA_EN.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.DMA_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 1, 1);
    this.DMA_EN.add_def_property("spec_access", "rw");
    this.DMA_EN.add_def_property("spec_sw_default", "0x0");
    this.DMA_EN.add_def_property("sw_default_mask", "0x0");
    this.DMA_EN.add_def_property("reset_mask", "0x1");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "DMA_EN"}, 0, 1);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_ENABLE

// D_PERF_READ_STALL
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_READ_STALL extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl PERF_READ_STALL;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_READ_STALL");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.PERF_READ_STALL = new("PERF_READ_STALL");
    this.PERF_READ_STALL.set_rdl_access_info(1, 0, 0, 1, 0, 0);
    this.PERF_READ_STALL.configure(this, 32, 0, "RO", 1, 32'h0, 1, 0, 1);
    this.PERF_READ_STALL.add_def_property("spec_access", "r");
    this.PERF_READ_STALL.add_def_property("spec_sw_default", "0x0");
    this.PERF_READ_STALL.add_def_property("sw_default_mask", "0x0");
    this.PERF_READ_STALL.add_def_property("reset_mask", "0xffffffff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "PERF_READ_STALL"}, 0, 32);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_READ_STALL

// D_CYA
class reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_CYA extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl CYA;
  
  function new(string name = "reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_CYA");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.CYA = new("CYA");
    this.CYA.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.CYA.configure(this, 32, 0, "RW", 0, 32'h0, 1, 1, 1);
    this.CYA.add_def_property("spec_access", "rw");
    this.CYA.add_def_property("spec_sw_default", "0x0");
    this.CYA.add_def_property("sw_default_mask", "0x0");
    this.CYA.add_def_property("reset_mask", "0xffffffff");
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "CYA"}, 0, 32);
  endfunction: build
  
endclass : reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_CYA

// Block NVDLA_CDP_RDMA
class block_addrmap_NVDLA_NVDLA_CDP_RDMA extends uvm_reg_block_rdl;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_STATUS S_STATUS;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_S_POINTER S_POINTER;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OP_ENABLE D_OP_ENABLE;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH D_DATA_CUBE_WIDTH;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT D_DATA_CUBE_HEIGHT;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL D_DATA_CUBE_CHANNEL;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW D_SRC_BASE_ADDR_LOW;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH D_SRC_BASE_ADDR_HIGH;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE D_SRC_LINE_STRIDE;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE D_SRC_SURFACE_STRIDE;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_DMA_CFG D_SRC_DMA_CFG;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN D_SRC_COMPRESSION_EN;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_OPERATION_MODE D_OPERATION_MODE;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_DATA_FORMAT D_DATA_FORMAT;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_ENABLE D_PERF_ENABLE;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_PERF_READ_STALL D_PERF_READ_STALL;
  rand reg_addrmap_NVDLA_NVDLA_CDP_RDMA_D_CYA D_CYA;
  
  function new(string name = "block_addrmap_NVDLA_NVDLA_CDP_RDMA");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.S_STATUS = new("S_STATUS");
    this.S_STATUS.configure(this, null, "");
    this.S_STATUS.set_rdl_tag("S_STATUS_");
    this.S_STATUS.set_reg_test_info(0, 0, 32);
    this.S_STATUS.build();
    this.default_map.add_reg(this.S_STATUS, `UVM_REG_ADDR_WIDTH'h0, "RO", 0);
    this.S_POINTER = new("S_POINTER");
    this.S_POINTER.configure(this, null, "");
    this.S_POINTER.set_rdl_tag("S_POINTER_");
    this.S_POINTER.set_reg_test_info(0, 0, 0);
    this.S_POINTER.build();
    this.default_map.add_reg(this.S_POINTER, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
    this.D_OP_ENABLE = new("D_OP_ENABLE");
    this.D_OP_ENABLE.configure(this, null, "");
    this.D_OP_ENABLE.set_rdl_tag("D_OP_ENABLE_");
    this.D_OP_ENABLE.set_reg_test_info(0, 0, 2);
    this.D_OP_ENABLE.build();
    this.default_map.add_reg(this.D_OP_ENABLE, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
    this.D_DATA_CUBE_WIDTH = new("D_DATA_CUBE_WIDTH");
    this.D_DATA_CUBE_WIDTH.configure(this, null, "");
    this.D_DATA_CUBE_WIDTH.set_rdl_tag("D_DATA_CUBE_WIDTH_");
    this.D_DATA_CUBE_WIDTH.set_reg_test_info(0, 0, 2);
    this.D_DATA_CUBE_WIDTH.build();
    this.default_map.add_reg(this.D_DATA_CUBE_WIDTH, `UVM_REG_ADDR_WIDTH'hc, "RW", 0);
    this.D_DATA_CUBE_HEIGHT = new("D_DATA_CUBE_HEIGHT");
    this.D_DATA_CUBE_HEIGHT.configure(this, null, "");
    this.D_DATA_CUBE_HEIGHT.set_rdl_tag("D_DATA_CUBE_HEIGHT_");
    this.D_DATA_CUBE_HEIGHT.set_reg_test_info(0, 0, 2);
    this.D_DATA_CUBE_HEIGHT.build();
    this.default_map.add_reg(this.D_DATA_CUBE_HEIGHT, `UVM_REG_ADDR_WIDTH'h10, "RW", 0);
    this.D_DATA_CUBE_CHANNEL = new("D_DATA_CUBE_CHANNEL");
    this.D_DATA_CUBE_CHANNEL.configure(this, null, "");
    this.D_DATA_CUBE_CHANNEL.set_rdl_tag("D_DATA_CUBE_CHANNEL_");
    this.D_DATA_CUBE_CHANNEL.set_reg_test_info(0, 0, 2);
    this.D_DATA_CUBE_CHANNEL.build();
    this.default_map.add_reg(this.D_DATA_CUBE_CHANNEL, `UVM_REG_ADDR_WIDTH'h14, "RW", 0);
    this.D_SRC_BASE_ADDR_LOW = new("D_SRC_BASE_ADDR_LOW");
    this.D_SRC_BASE_ADDR_LOW.configure(this, null, "");
    this.D_SRC_BASE_ADDR_LOW.set_rdl_tag("D_SRC_BASE_ADDR_LOW_");
    this.D_SRC_BASE_ADDR_LOW.set_reg_test_info(0, 0, 2);
    this.D_SRC_BASE_ADDR_LOW.build();
    this.default_map.add_reg(this.D_SRC_BASE_ADDR_LOW, `UVM_REG_ADDR_WIDTH'h18, "RW", 0);
    this.D_SRC_BASE_ADDR_HIGH = new("D_SRC_BASE_ADDR_HIGH");
    this.D_SRC_BASE_ADDR_HIGH.configure(this, null, "");
    this.D_SRC_BASE_ADDR_HIGH.set_rdl_tag("D_SRC_BASE_ADDR_HIGH_");
    this.D_SRC_BASE_ADDR_HIGH.set_reg_test_info(0, 0, 2);
    this.D_SRC_BASE_ADDR_HIGH.build();
    this.default_map.add_reg(this.D_SRC_BASE_ADDR_HIGH, `UVM_REG_ADDR_WIDTH'h1c, "RW", 0);
    this.D_SRC_LINE_STRIDE = new("D_SRC_LINE_STRIDE");
    this.D_SRC_LINE_STRIDE.configure(this, null, "");
    this.D_SRC_LINE_STRIDE.set_rdl_tag("D_SRC_LINE_STRIDE_");
    this.D_SRC_LINE_STRIDE.set_reg_test_info(0, 0, 2);
    this.D_SRC_LINE_STRIDE.build();
    this.default_map.add_reg(this.D_SRC_LINE_STRIDE, `UVM_REG_ADDR_WIDTH'h20, "RW", 0);
    this.D_SRC_SURFACE_STRIDE = new("D_SRC_SURFACE_STRIDE");
    this.D_SRC_SURFACE_STRIDE.configure(this, null, "");
    this.D_SRC_SURFACE_STRIDE.set_rdl_tag("D_SRC_SURFACE_STRIDE_");
    this.D_SRC_SURFACE_STRIDE.set_reg_test_info(0, 0, 2);
    this.D_SRC_SURFACE_STRIDE.build();
    this.default_map.add_reg(this.D_SRC_SURFACE_STRIDE, `UVM_REG_ADDR_WIDTH'h24, "RW", 0);
    this.D_SRC_DMA_CFG = new("D_SRC_DMA_CFG");
    this.D_SRC_DMA_CFG.configure(this, null, "");
    this.D_SRC_DMA_CFG.set_rdl_tag("D_SRC_DMA_CFG_");
    this.D_SRC_DMA_CFG.set_reg_test_info(0, 0, 2);
    this.D_SRC_DMA_CFG.build();
    this.default_map.add_reg(this.D_SRC_DMA_CFG, `UVM_REG_ADDR_WIDTH'h28, "RW", 0);
    this.D_SRC_COMPRESSION_EN = new("D_SRC_COMPRESSION_EN");
    this.D_SRC_COMPRESSION_EN.configure(this, null, "");
    this.D_SRC_COMPRESSION_EN.set_rdl_tag("D_SRC_COMPRESSION_EN_");
    this.D_SRC_COMPRESSION_EN.set_reg_test_info(0, 0, 0);
    this.D_SRC_COMPRESSION_EN.build();
    this.default_map.add_reg(this.D_SRC_COMPRESSION_EN, `UVM_REG_ADDR_WIDTH'h2c, "RO", 0);
    this.D_OPERATION_MODE = new("D_OPERATION_MODE");
    this.D_OPERATION_MODE.configure(this, null, "");
    this.D_OPERATION_MODE.set_rdl_tag("D_OPERATION_MODE_");
    this.D_OPERATION_MODE.set_reg_test_info(0, 0, 0);
    this.D_OPERATION_MODE.build();
    this.default_map.add_reg(this.D_OPERATION_MODE, `UVM_REG_ADDR_WIDTH'h30, "RO", 0);
    this.D_DATA_FORMAT = new("D_DATA_FORMAT");
    this.D_DATA_FORMAT.configure(this, null, "");
    this.D_DATA_FORMAT.set_rdl_tag("D_DATA_FORMAT_");
    this.D_DATA_FORMAT.set_reg_test_info(0, 0, 2);
    this.D_DATA_FORMAT.build();
    this.default_map.add_reg(this.D_DATA_FORMAT, `UVM_REG_ADDR_WIDTH'h34, "RW", 0);
    this.D_PERF_ENABLE = new("D_PERF_ENABLE");
    this.D_PERF_ENABLE.configure(this, null, "");
    this.D_PERF_ENABLE.set_rdl_tag("D_PERF_ENABLE_");
    this.D_PERF_ENABLE.set_reg_test_info(0, 0, 2);
    this.D_PERF_ENABLE.build();
    this.default_map.add_reg(this.D_PERF_ENABLE, `UVM_REG_ADDR_WIDTH'h38, "RW", 0);
    this.D_PERF_READ_STALL = new("D_PERF_READ_STALL");
    this.D_PERF_READ_STALL.configure(this, null, "");
    this.D_PERF_READ_STALL.set_rdl_tag("D_PERF_READ_STALL_");
    this.D_PERF_READ_STALL.set_reg_test_info(0, 0, 32);
    this.D_PERF_READ_STALL.build();
    this.default_map.add_reg(this.D_PERF_READ_STALL, `UVM_REG_ADDR_WIDTH'h3c, "RO", 0);
    this.D_CYA = new("D_CYA");
    this.D_CYA.configure(this, null, "");
    this.D_CYA.set_rdl_tag("D_CYA_");
    this.D_CYA.set_reg_test_info(0, 0, 2);
    this.D_CYA.build();
    this.default_map.add_reg(this.D_CYA, `UVM_REG_ADDR_WIDTH'h40, "RW", 0);
  endfunction: build
  
  `uvm_object_utils(block_addrmap_NVDLA_NVDLA_CDP_RDMA)
endclass : block_addrmap_NVDLA_NVDLA_CDP_RDMA

// Base block
class block_addrmap_NVDLA extends uvm_reg_block_rdl;
  rand block_addrmap_NVDLA_NVDLA_CDP_RDMA NVDLA_CDP_RDMA;
  
  function new(string name = "block_addrmap_NVDLA");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", `UVM_REG_ADDR_WIDTH'h0, 4, UVM_LITTLE_ENDIAN, 1);
    this.set_rdl_address_map(1);
    this.set_rdl_address_map_hdl_path({`ADDRMAP_NVDLA_PIO_INSTANCE_PATH, ".pio_logic"});
    this.NVDLA_CDP_RDMA = block_addrmap_NVDLA_NVDLA_CDP_RDMA::type_id::create("NVDLA_CDP_RDMA",, get_full_name());
    this.NVDLA_CDP_RDMA.configure(this, "");
    this.NVDLA_CDP_RDMA.set_rdl_tag("NVDLA_CDP_RDMA_");
    this.NVDLA_CDP_RDMA.build();
    this.default_map.add_submap(this.NVDLA_CDP_RDMA.default_map, `UVM_REG_ADDR_WIDTH'hc000);
    set_hdl_path_root({`ADDRMAP_NVDLA_PIO_INSTANCE_PATH, ".pio_logic"});
    this.add_callbacks();
  endfunction: build
  
  `uvm_object_utils(block_addrmap_NVDLA)
endclass : block_addrmap_NVDLA
