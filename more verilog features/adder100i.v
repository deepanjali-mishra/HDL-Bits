module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    fa uut2(sum[0], cout[0], a[0], b[0], cin);
    
    genvar i;
    generate
        for(i=1;i<100; i++)
            begin: loop
                fa uut1(sum[i],cout[i],a[i],b[i],cout[i-1]);
                
              
            end
    endgenerate
    

endmodule

module fa(sum, cout, a, b,c);
    input a,b,c;
    output reg sum, cout;
    
    assign {cout, sum} = a + b + c;
endmodule
