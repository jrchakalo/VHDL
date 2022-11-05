module Divisor (clk, clk2, reset);

	input clk, reset;
	output logic clk2;
	
	logic [1:0] cont;
	
	always_ff @(posedge clk)begin
		if(!reset) begin
			clk2 <= 0;
			cont <= 0;
		end 
		else begin
			if (cont == 2'd0) begin
				clk2 <= ~clk2;
				cont <= 2'd0;
			end
			else begin
				cont <= cont + 2'd1;
			end
		end
	end
	
endmodule
	