`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2017 14:07:25
// Design Name: 
// Module Name: unidad_tb
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


module unidad_tb();
   
    reg [15:0] a1,a2,a3,a4;
    reg reset;
    reg clk;
    wire [15:0] y;
	parameter x1 = 16'h0004;
    parameter x2 = 16'h0003;
    parameter x3 = 16'h0002;
    parameter x4 = 16'h0001;

	unidad uut(
		.x1(x1),
		.x2(x2),
		.x3(x3),
		.x4(x4),		
		.a1(a1),
		.a2(a2),
		.a3(a3),
		.a4(a4),
		.reset(reset),
		.clk(clk),		
		.y(y)
		);

	always begin
		clk = 1'b1;
		#50;
		clk = 1'b0;
		#50;
		end

initial begin
	
	reset = 1'b1;
	#50;
	reset = 1'b0;
	#50;
	a1 = 16'h0001;
	a2 = 16'h0008;
	a3 = 16'h000a;
	a4 = 16'h000f;
	#100;
	a1 = 16'h0001;
	a2 = 16'h0005;
	a3 = 16'h0009;
	a4 = 16'h000e;
	#100;
	a1 = 16'h0003;
	a2 = 16'h0006;
	a3 = 16'h000c;
	a4 = 16'h000d;
	#100;

	a1 = 16'h0004;
	a2 = 16'h0007;
	a3 = 16'h000b;
	a4 = 16'h0010;
	#100;
	end

endmodule
