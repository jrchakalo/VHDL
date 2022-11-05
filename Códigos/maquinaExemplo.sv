module maquinaExemplo (input Y, Clk, Rst, output logic Z);

	logic [1:0] estado_atual;
	logic [1:0]	estado_meio;
	logic [1:0]	estado_final;
	parameter Est1 = 0, Est2 = 1;

	always_ff @(*)	begin
		case(estado_atual)
			Est1: begin
				Z = 0;
			end
			Est2: begin
				if((estado_meio == 0) && (estado_final == 1)) begin
					Z = 1;
				end else begin
					Z = 0;
				end
			end
		endcase
	end
					
			
	always_ff @(posedge Clk, negedge Rst) begin
		if(~Rst) begin
			estado_atual <= 0;
			estado_meio <= 0;
			estado_final <= 0;
		end else begin
			case(estado_atual)
				Est1: begin
					estado_final <= estado_meio;
					estado_meio <= Est1;
					estado_atual <= Y;
				end
				Est2: begin
					estado_final <= estado_meio;
					estado_meio <= Est2;
					estado_atual <= Y;
				end
			endcase
		end
	end
    
endmodule

