module andgate( 
  input a,
  input b,
  output out);
  
  assign out = a & b; // &: bitwise-AND, &&: logical-AND
endmodule
