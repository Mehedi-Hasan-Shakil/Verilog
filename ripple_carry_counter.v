module ripple_carry_counter(q, q_bar, clear, clk);
	input clk, clear;
	output [3:0] q, q_bar;
	jk_flip_flop jk1(q[0], q_bar[0], 1, 1, clear, clk);
	jk_flip_flop jk2(q[1], q_bar[1], 1, 1, clear, q[0]);
	jk_flip_flop jk3(q[2], q_bar[2], 1, 1, clear, q[1]);
	jk_flip_flop jk4(q[3], q_bar[3], 1, 1, clear, q[2]);
endmodule
