module Fluxo (a, b, ent, saida);

	input a, b, ent;
	output saida;
	
	assign saida = (ent&a) | (~ent&b);
	
endmodule
