module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b1;
    wire cout;
   
    assign b1 = ({32{sub}}) ? ~b[31:0] : b[31:0];
    add16 uut1(a[15:0], b1[15:0],sub, sum[15:0], cout);
    add16 uut2(a[31:16], b1[31:16], cout, sum[31:16]);

endmodule
