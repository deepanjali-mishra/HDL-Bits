module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] q1,q2;
    wire cout;
    add16 uut1(a[15:0], b[15:0],0, sum[15:0],cout);
    add16 uut2(a[31:16],b[31:16],0,q1);
    add16 uut3(a[31:16],b[31:16],1,q2);
    
    assign sum[31:16] = (cout) ? q2 : q1;

endmodule
