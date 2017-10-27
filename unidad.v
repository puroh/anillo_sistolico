`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2017 00:27:06
// Design Name: 
// Module Name: unidad
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


module unidad(
    //input [7:0] x, //valor del modulo anterior
    input [15:0] x1,x2,x3,x4,//para x_init
    input [15:0] a1,a2,a3,a4,//datos de la matriz
    input reset,
    input clk,
    output [15:0] y //salida de un modulo
    );
	wire [15:0] y1,y2,y3,y4;
	
	assign y = y4;
	
	proc modulo1(
		.x(y4),
		.x_init(x1),
		.a(a1),
		.reset(reset),
		.clk(clk),
		.y(y1)				
	);
 

	proc modulo2(
		.x(y1),
		.x_init(x2),
		.a(a2),
		.reset(reset),
		.clk(clk),
		.y(y2)				
	);

	proc modulo3(
		.x(y2),
		.x_init(x3),
		.a(a3),
		.reset(reset),
		.clk(clk),
		.y(y3)				
	);

	proc modulo4(
		.x(y3),
		.x_init(x4),
		.a(a4),
		.reset(reset),
		.clk(clk),
		.y(y4)				
	);

endmodule
