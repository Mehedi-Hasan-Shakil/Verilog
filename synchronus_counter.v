module synchronous_counter(q, q_bar, clear, clk);
	input clear, clk;
	output [3:0] q, q_bar;
	wire a, b, c;
	jk_flip_flop jk1(q[0], q_bar[0], 1, 1, clear, clk);
	and(a, 1, q[0]);
	jk_flip_flop jk2(q[1], q_bar[1], a, a, clear, clk);
	and(b, a, q[1]);
	jk_flip_flop jk3(q[2], q_bar[2], b, b, clear, clk);
	and(c, b, q[2]);
	jk_flip_flop jk4(q[3], q_bar[3], c, c, clear, clk);
endmodule
