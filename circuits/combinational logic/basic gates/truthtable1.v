module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    assign f = (((~x3)&x2&(~x1)) || ((~x3)& x2 & x1) || (x3 & (~x2) & x1) || (x3 & x2 & x1)) ? 1'b1 : 1'b0;
        
endmodule
