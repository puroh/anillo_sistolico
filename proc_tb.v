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
    reg [15:0] x;
    reg [15:0] x_init;
    reg  [15:0] a;
    reg reset;
    reg clk;
    wire [15:0] y;


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
	a  = 16'h0003;
	x_init = 16'h0002;
	x  = 16'h0001;
	#100;

		
	#100;// 1, 2, 3, 4
end

endmodule
