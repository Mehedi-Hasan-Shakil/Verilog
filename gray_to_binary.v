module gray_to_binary(b, a);
	input [3:0] a;
	output [3:0] b;
	assign b[3] = a[3];
	xor(b[2], b[3], a[2]);
	xor(b[1], b[2], a[1]);
	xor(b[0], b[1], a[0]);
endmodule
