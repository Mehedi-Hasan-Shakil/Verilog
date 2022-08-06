module ripple_carry_counter(q, clear, clk);
	input clk, clear;
	output [3:0] q;
	jk_flip_flop jk1(q[0], 1, 1, clear, clk);
	jk_flip_flop jk2(q[1], 1, 1, clear, q[0]);
	jk_flip_flop jk3(q[2], 1, 1, clear, q[1]);
	jk_flip_flop jk4(q[3], 1, 1, clear, q[2]);
endmodule
