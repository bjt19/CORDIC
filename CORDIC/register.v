module register(clk,data_in,reset,data_out);


input clk;
input [17:0] data_in;
input reset;
reg	 [17:0] data_out;
output [17:0] data_out;

always @ (posedge clk) begin
	
	data_out <= reset ? 0 : data_in;
end

endmodule