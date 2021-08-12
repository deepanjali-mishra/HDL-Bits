/* Aim: To Create a module with 3 inputs and 4 outputs that behaves like wires that makes these connections:
a -> w
b -> x
b -> y
c -> z ,  input and output declarations actually declare a wire unless otherwise specified.*/

module top_module( 
  input a,b,c,
  output w,x,y,z);
  
  assign {w,x,y,z} = {a,b,b,c};
endmodule

