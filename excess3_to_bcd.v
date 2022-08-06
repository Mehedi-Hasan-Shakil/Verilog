module excess3_to_bcd(b, a);
	input [3:0] a;
	output [3:0] b;
	assign b[0] = ~a[0];
	xor(b[1], a[1], a[0]);
	xor(b[2], a[2], (~a[1] | ~a[0]));
	and(b[3], a[3], (a[2] | (a[1] & a[0])));
endmodule
