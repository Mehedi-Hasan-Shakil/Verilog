module bcd_to_excess3(b, a);
	input [3:0] a;
	output [3:0] b;
	wire p, q;
	assign b[0] = ~a[0];
	xnor(b[1], a[1], a[0]);
	or(p, a[1], a[0]);
	xor(b[2], a[2], p);
	and(q, a[2], p);
	or(b[3], a[3], q);
endmodule
