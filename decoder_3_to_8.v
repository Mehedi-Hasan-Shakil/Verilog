/*This circuit is taken from Lecture 04,
  provided by Dr. Mahboob Qaosar sir, page-8
*/
module decoder_3_to_8(d, a, en);
    input [2:0] a;
    input en;
    output [7:0] d;
    wire a0_bar, a1_bar, a2_bar;
    
    not(a0_bar, a[0]);
    not(a1_bar, a[1]);
    not(a2_bar, a[2]);
    
    and(d[0], a0_bar, a1_bar, a2_bar, en);
    and(d[1], a[0], a1_bar, a2_bar, en);
    and(d[2], a0_bar, a[1], a2_bar, en);
    and(d[3], a[0], a[1], a2_bar, en);
    and(d[4], a0_bar, a1_bar, a[2], en);
    and(d[5], a[0], a1_bar, a[2], en);
    and(d[6], a0_bar, a[1], a[2], en);
    and(d[7], a[0], a[1], a[2], en);
endmodule
