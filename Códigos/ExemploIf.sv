module ExemploIf (clk, reset, A, Q);

	input clk, reset, A;
	output Q;

	logic Q;

	always @(posedge clk) begin
		if(reset)
			Q <= 0;
		else
			Q <= A;
	end

endmodule

		
