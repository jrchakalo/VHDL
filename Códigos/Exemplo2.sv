module Exemplo2 (X, A, B, Saida);

	input X, A, B;
	output Saida;

	assign Saida = X ? (A&B) : (A|B);

endmodule
