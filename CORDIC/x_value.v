module x_value(out);



output [31:0] out;
localparam [31:0] value=32'b00111111000110110111010011101110;


assign out[31:0] = value[31:0];


endmodule