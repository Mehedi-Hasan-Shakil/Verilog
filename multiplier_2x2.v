module multiplier_2x2(p, a, b);
	input [1:0] a, b; //b is multiplicand and a is multiplier
	output [3:0] p;
	wire c1;
	assign p[0] = a[0] & b[0];
	half_adder ha1(p[1], c1, a[0]&b[1], a[1]&b[0]);
	half_adder ha2(p[2], p[3], c1, a[1]&b[1]);
endmodule

module half_adder(s, c, a, b);
	input a, b;
	output s,c;
	assign s = a ^ b;
	assign c = a & b;
endmodule
