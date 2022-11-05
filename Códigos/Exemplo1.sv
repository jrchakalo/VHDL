module Exemplo1 (A, B, Soma, Carr);

	input A, B;
	output Soma, Carr;

	assign Soma = A ^ B;

	assign Carr = A & B;

endmodule

