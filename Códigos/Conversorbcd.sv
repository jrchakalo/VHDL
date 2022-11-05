module Conversorbcd (x1, x2, y1, y2, a, b, c, d, e, f, g);

	input x1, x2, y1, y2;
	output logic a, b, c, d, e, f, g;
	
	logic [7:0] display;
	
	always @(*) begin
		case ({y2, y1, x2, x1})
			4'b0000: display = 7'b1111110;
			4'b0001: display = 7'b0110000;
			4'b0010: display = 7'b1101101;
			4'b0011: display = 7'b1111001;
			4'b0100: display = 7'b0110011;
			4'b0101: display = 7'b1011011;
			4'b0110: display = 7'b0011111;
			4'b0111: display = 7'b1110000;
			4'b1000: display = 7'b1111111;
			4'b1001: display = 7'b1110011;
			
			default: display = 7'b0000000;	
		endcase
	end
	
	assign {a, b, c, d, e, f, g} = display;	
	
endmodule
