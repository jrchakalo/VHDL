module ExemploBlocking 	(clk, A, C);

	input clk, A;
	output C;

	logic B;

	always @ (posedge clk) begin
		B = A;
		C = B;
	end

endmodule
