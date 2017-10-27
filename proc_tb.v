`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2017 11:30:15
// Design Name: 
// Module Name: proc_tb
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


module proc_tb( );
    reg [7:0] x;
    reg [7:0] x_init;
    reg  [7:0] a;
    reg reset;
    reg clk;
    wire [7:0] y;


	proc uut(
		.x(x),
		.x_init(x_init),
		.a(a),
		.reset(reset),
		.clk(clk),
		.y(y)
	);

	always begin
		clk =1'b1;
		#50;
		clk =1'b0;
		#50;
		end

initial begin
	reset = 1'b1;
	#50;
	reset = 1'b0;
	#50;
	a  = 8'h01;
	x_init = 8'h01;
	x  = 8'h01;
	#100;
	reset = 1'b1;
	#50;
	reset = 1'b0;
	#50;
		
	#100;// 1, 2, 3, 4
end

endmodule
