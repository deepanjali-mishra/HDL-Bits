module top_module (input x, input y, output z);
   wire a1,a2,a3,a4,a5,a6;
    
    sample_a uut1(x,y,a1);
    sample_b uut2(x,y,a2);
    sample_a uut3(x,y,a3);
    sample_b uut4(x,y,a4);
    assign a5 = a1 | a2;
    assign a6 = a3 & a4;
    assign z = a5 ^ a6;
  
endmodule

//circuit a 
module sample_a (input x, input y, output z);
    assign z = (x ^ y) & x;

endmodule
//circuit b
module sample_b(input x, input y, output z);
    assign z = ~(x ^ y);
endmodule


