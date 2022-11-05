module Comportamental (a, b, ent, saida);

	input a, b, ent;
	output saida;

	always @(*) begin
		if (ent==0)begin 
			saida <= b;
		end
		else if(ent==1)begin
			saida <= a;
		end
	end

endmodule

		