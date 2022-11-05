module DivisorClk1hz(clk, clk2, reset);

	input clk, reset;
	output logic clk2;
	
	logic [16:0] cont;
	
	always @(posedge clk)begin
		if(!reset) begin
			clk2 <= 0;
			cont <= 0;
		end 
		else begin
			if (cont == 16'd24999999) begin
				clk2 <= ~clk2;
				cont <= 16'd0;
			end
			else begin
				cont <= cont + 16'd1;
			end
		end
	end
	
endmodule
