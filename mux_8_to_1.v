/*This circuit is taken from Lecture 05,
  provided by Dr. Mahboob Qaosar sir, page-8
*/
module mux_2_to_1(out, i0, i1, s);
    input i0, i1, s;
    output out;
    wire s_bar, a, b;
  
    not(s_bar, s);
    and(a, i0, s_bar);
    and(b, i1, s);
    or(out, a, b);
endmodule

module mux_8_to_1(out, i, s);
    input [7:0] i;
    input [2:0] s;
    output out;
    wire out_m1, out_m2, out_m3, out_m4;
    wire out_m5, out_m6;
  
    mux_2_to_1 m1(out_m1, i[0], i[1], s[0]);
    mux_2_to_1 m2(out_m2, i[2], i[3], s[0]);
    mux_2_to_1 m3(out_m3, i[4], i[5], s[0]);
    mux_2_to_1 m4(out_m4, i[6], i[7], s[0]);
    
    mux_2_to_1 m5(out_m5, out_m1, out_m2, s[1]);
    mux_2_to_1 m6(out_m6, out_m3, out_m4, s[1]);
    
    mux_2_to_1 m7(out, out_m5, out_m6, s[2]);
endmodule
