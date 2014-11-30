`timescale 1ns / 1ps
module muxprueba;

	// Inputs
	reg [1:0] cuadrado;
	reg [1:0] circulo;
	reg [1:0] recta;
	reg [1:0] selec;

	// Outputs
	wire [1:0] out;

	// Instantiate the Unit Under Test (UUT)
	MUX uut (
		.cuadrado(cuadrado), 
		.circulo(circulo), 
		.recta(recta), 
		.selec(selec), 
		.out(out)
	);

	initial begin
		$dumpfile("muxprueba.vcd");
		$dumpvars(0,muxprueba);
		#10
			selec=2'b00;
			#1cuadrado=2'b11;
			#1recta=2'b10;
			#1circulo=2'b01;
			
		#10
			selec=2'b01;
			#1cuadrado=2'b00;
			#1recta=2'b10;
			#1circulo=2'b01;
			
		#10
			#1cuadrado=2'b11;
			#1recta=2'b10;
			#1circulo=2'b01;
         selec=2'b10;
		#10
			#1cuadrado=2'b11;
			#1recta=2'b10;
			#1circulo=2'b01;
         selec=2'b11;
			$finish;
	end
      
endmodule
