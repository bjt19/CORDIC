module y_value(out);



output [17:0] out;
localparam [17:0] value=18'b000000000000000000;


assign out[17:0] = value[17:0];


endmodule