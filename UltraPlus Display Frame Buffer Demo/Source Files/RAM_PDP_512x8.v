//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           RAM_PDP_512x8.v
// Module:         RAM_PDP_512x8 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/05/01
// Content:        
//  
//                 
// History:
// 2016-05-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps

module RAM_PDP_512x8 (
    din,
    write_en,
    read_en,
    waddr, 
    wclk, 
    raddr, 
    rclk, 
    dout
); 

parameter addr_width = 9; 
parameter data_width = 8; 
    
input  [addr_width-1:0] waddr, raddr; 
input  [data_width-1:0] din; 
input  write_en, read_en, wclk, rclk; 
output [data_width-1:0] dout;

SB_RAM512x8   ram512x8_inst (
   .RDATA(dout[7:0]),
   .RADDR(raddr[8:0]),
   .RCLK(rclk),
   .RCLKE(1'b1),
   .RE(read_en),
   .WADDR(waddr[8:0]),
   .WCLK(wclk),
   .WCLKE(1'b1),
   .WDATA(din[7:0]),
   .WE(write_en)
   //.MASK(16'b0000000000000000)
);

defparam ram512x8_inst.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram512x8_inst.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;

endmodule
