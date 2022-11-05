module Comp2bits(x1, x2, y1, y2, f1, f2, f3);
	input x1, x2, y1, y2;
	output logic f1, f2, f3;
	
	always @(*) begin
		case ({x1, x2, y1, y2})
			4'b0001: f1 = 1;
			4'b0011: f1 = 1;
			4'b0010: f1 = 1;
			4'b0111: f1 = 1;
			4'b0110: f1 = 1;
			4'b1011: f1 = 1;
			
			default: f1 = 0;	
		endcase
	end
	
	always @(*) begin
		case ({x1, x2, y1, y2})
			4'b0000: f2 = 1;
			4'b0101: f2 = 1;
			4'b1010: f2 = 1;
			4'b1111: f2 = 1;
			
			default: f2 = 0;	
		endcase
	end
	
	always @(*) begin
		case ({x1, x2, y1, y2})
			4'b0100: f3 = 1;
			4'b1100: f3 = 1;
			4'b1101: f3 = 1;
			4'b1110: f3 = 1;
			4'b1000: f3 = 1;
			4'b1001: f3 = 1;
			
			default: f3 = 0;	
		endcase
	end
	
	
endmodule
