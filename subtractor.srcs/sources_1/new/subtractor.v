`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/17 20:23:01
// Design Name: 
// Module Name: subtractor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module subtractor
(
    input   wire        sys_clk     ,
    input   wire        sys_rst_n   ,
    input   wire [9:0]  num_1       ,
    input   wire [9:0]  num_2       ,
    
    output  reg  [10:0] result
);

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n==1'b0)
        result  <=  10'd0;
    else if(num_1==num_2)
        result  <=  10'd0;
    else if(num_1>num_2)
        result  <=  num_1 - num_2;
    else if(num_1<num_2)
        result  <=  num_2 - num_1;

endmodule

