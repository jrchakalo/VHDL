module Maquinadelavar(est_atual, valvula_agua, modo_agitar, modo_girar, clk, rst, inicio, tempo, cheio, secar);
	output logic valvula_agua, modo_agitar, modo_girar;
	input clk, rst, inicio, tempo, cheio, secar;
	
	output logic est_atual;
	parameter espera = 0, encher = 1, agitar = 2, girar = 3;
	
	always_ff @(*)begin
		case (est_atual)
			espera: begin
				valvula_agua = 0;
				modo_agitar=0;
				modo_girar=0;
			end
			encher: begin
				valvula_agua = 1;
				modo_agitar=0;
				modo_girar=0;
			end
			agitar: begin
			valvula_agua = 0;
				modo_agitar=1;
				modo_girar=0;
			end
			girar: begin
			valvula_agua = 0;
				modo_agitar=0;
				modo_girar=1;
			end
		endcase
	end
	
	always_ff @(posedge clk, negedge rst)begin
		if(~rst)
			est_atual <= espera;
		else begin
			case(est_atual)
				espera: if(inicio == 1)
					est_atual <= encher;
				encher: if(cheio == 1)
					est_atual <= agitar;
				agitar: if(tempo == 1)
					est_atual <= girar;
				girar: if(secar == 0)
					est_atual <= espera;
			endcase
		end
	end
endmodule
