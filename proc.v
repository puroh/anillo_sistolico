`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2017 11:30:15
// Design Name: 
// Module Name: proc
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


module proc(
    input [15:0] x,
    input [15:0] x_init,
    input [15:0] a,
    input reset,
    input clk,
    output[15:0] y
    );
    reg [2:0] cuenta;
    reg [2:0] suma;
    reg [15:0]ym;
    
    assign y = ym;
    always @ (posedge clk )
    begin
        if (reset == 1'b1)			
            cuenta = 3'b000;
        else
		begin
        if (cuenta < 3'b011)
             cuenta = cuenta + 3'b001;
        else
        	cuenta = 3'b000; 
		end         
	end
	
    
    always @(posedge clk )
    begin
        if (reset == 1'b1)
        	begin
             ym = x_init;
             suma = 3'b000;
        	end
		else
        begin   
        	if (cuenta < 3'b011)
        		begin
             	ym = x;
            	 suma = suma + x *a;
        		end
       	 else
        		begin
            	ym = suma + x * a;
             	suma = 3'b000; 
        		end
         end
     end
    
    
endmodule
