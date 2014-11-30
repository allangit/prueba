`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:50 11/28/2014 
// Design Name: 
// Module Name:    MUX 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX (
		input wire[1:0]cuadrado,circulo,recta,
		input wire [1:0]selec,
		output reg [1:0]out
	   );

		always @*
			case(selec)
				2'b00: out= cuadrado;
				2'b01: out= circulo;
				2'b10: out= recta;
				2'b11: out=cuadrado;
			endcase
endmodule

