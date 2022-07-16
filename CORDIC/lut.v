module lut(count,angle);

input [3:0]count;
reg 	[17:0] angle;
output[17:0] angle;


always @ (count) begin
case(count) 
	4'b0000: angle=18'b001100100100001111;
	4'b0001: angle=18'b000111011010110001;
	4'b0010: angle=18'b000011111010110110;
	4'b0011: angle=18'b000001111111010101;
	4'b0100: angle=18'b000000111111111010;
	4'b0101: angle=18'b000000011111111111;
	4'b0110: angle=18'b000000001111111111;
	4'b0111: angle=18'b000000000111111111;
	4'b1000: angle=18'b000000000011111111;
	4'b1001: angle=18'b000000000001111111;
	4'b1010: angle=18'b000000000000111111;
	4'b1011: angle=18'b000000000000011111;
	4'b1100: angle=18'b000000000000001111;
	4'b1101: angle=18'b000000000000000111;
	4'b1110: angle=18'b000000000000000011;
	4'b1111: angle=18'b000000000000000001;
	default: angle=18'b000000000000000000; //default 0 
endcase
end

endmodule

