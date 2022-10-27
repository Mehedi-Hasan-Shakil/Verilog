module sync_random_seq_counter(q, clear, clk);
    input clk, clear;
    output [0:3] q;
    wire a,b,c,d,e,f,g,h;
    assign a = (q[1]&~q[2]&q[3]) | (~q[1]&q[2]&q[3]) | (q[1]&q[2]&~q[3]);
    assign b = ~q[1]|q[3]|q[2];
    jk_flip_flop jk1(q[0],,a,b,clear,clk);

    assign c = (~q[0]&~q[2]&~q[3]) | (~q[0]&q[2]&q[3]) | (q[0]&q[2]&~q[3]);
    assign d = ~q[0]|q[3]|q[2];
    jk_flip_flop jk2(q[1],,c,d,clear,clk);

    assign e = (q[0]&~q[3]&q[1]) | (~q[1]&q[0]&q[3]) | (q[1]&q[3]&~q[0]);
    assign f = ~q[0]|q[3]|q[1];
    jk_flip_flop jk3(q[2],,e,f,clear,clk);

    assign g = (q[1]&~q[2]&q[0]) | (~q[0]&~q[1]&~q[2]) | (q[1]&q[2]&~q[0]);
    assign h = ~q[0]|q[1]|q[2];
    jk_flip_flop jk4(q[3],,g,h,clear,clk);
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
