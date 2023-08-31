`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 16:45:46
// Design Name: 
// Module Name: Moore_Fsm_tb
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


module Moore_Fsm_tb(

    );
    reg clk,rst,x;
    wire z;
    Moore_Fsm uut(clk,rst,,z);
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    
    initial begin
    $monitor("%0t: x=%0b,z=%0b",$time,x,z);
    x=1'b0;
    #1 rst=0;
    #2 rst=1;
    x=1'b1;
    repeat(5)
    #3 x=~x;
    end
endmodule
