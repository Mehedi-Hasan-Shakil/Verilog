module ripple_carry_adder(s, cout, a, b, cin);
    input [3:0] a, b;
    input cin;
    output [3:0] s;
    output cout;
    wire c0, c1, c2;
    full_adder fa1(s[0], c0, a[0], b[0], cin);
    full_adder fa2(s[1], c1, a[1], b[1], c0);
    full_adder fa3(s[2], c2, a[2], b[2], c1);
    full_adder fa4(s[3], cout, a[3], b[3], c2);
endmodule
