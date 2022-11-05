module Estrutural (a, b, ent, saida);

	input a, b, ent;
	output saida;
	logic ent_A, ent_B, ent_C;
	
	not nt1(ent_C, ent);
	and ad1(ent_B, b, ent_C);
	and ad2(ent_A, a, ent);
	or o1(saida, ent_B, ent_A);
	
endmodule
