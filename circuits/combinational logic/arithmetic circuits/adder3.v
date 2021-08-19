module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire [2:0] w1,w2;
    
    fadd uut1(a[0],b[0],cin,cout[0],sum[0]);
    fadd uut2(a[1],b[1],cout[0],cout[1],sum[1]);
    fadd uut3(a[2],b[2],cout[1],cout[2],sum[2]);
 
endmodule

module fadd(a,b,c,cout,sum);
    input a,b,c;
    output sum,cout;
    assign sum = a ^ b ^ c;
    assign cout = (a & b) | (b & c) | (c & a);
endmodule
