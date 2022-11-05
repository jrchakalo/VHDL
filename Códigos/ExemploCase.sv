module ExemploCase (A, B, X, Y);

	input A,B;
	input [1:0] X;
	output Y;

	logic [1:0] X;
	logic Y;

	always @(*) begin
		case (X)
			2'b00: Y = A + B;
			2'b01: Y = A - B;
			2'b10: Y = A / B;
		endcase
	end

endmodule
