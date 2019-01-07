module test(
	        output wire signed [7:0] a1,
	        output wire signed [7:0] a2,
	        output wire  [7:0] b1,
	        output wire  [7:0] b2);

wire signed [7:0] a = 8'b10111111;
wire  [7:0] b = 8'b10111111;

assign a1 = a>>2;
assign a2 = a>>>2;
assign b1 = b>>2;
assign b2 = b>>>2;

endmodule