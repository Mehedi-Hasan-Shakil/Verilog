module counter_with_enable_input(q, enable, clear, clk);
	input enable, clear, clk;
	output [3:0] q;
	wire a, b, c;
	jk_flip_flop jk1(q[0],,enable,enable, clear, clk);
	assign a = enable & q[0];
	jk_flip_flop jk2(q[1],,a,a,clear,clk);
	assign b = a & q[1];
	jk_flip_flop jk3(q[2],,b,b,clear,clk);
	assign c = b & q[2];
	jk_flip_flop jk4(q[3],,c,c,clear,clk);
endmodule

module jk_flip_flop(q, q_bar, j, k, clear, clk);
	input j, k, clear, clk;
	output q, q_bar;
	wire a, b, c, d, y, y_bar, c_bar;
	nand(a, q_bar, j, clk, clear);
	nand(b, k, clk, q);
	nand(c, a, d);
	nand(d, c, clear, b);
	not(c_bar, clk);
	nand(y, c, c_bar);
	nand(y_bar, d, c_bar);
	nand(q, y, q_bar);
	nand(q_bar, q, clear, y_bar);
endmodule
