module top_module (
    input clk,
    input x,
    output z
); 
    wire w1, w2, w3,w4,w5,w6;
   
    always @(posedge clk) begin
		w4 <= w1;
	end
    always @(posedge clk) begin
		w5 <= w2;
	end
    always @(posedge clk) begin
		w6 <= w3;
	end
    
    assign w1 = w4 ^ x;
    assign w2 = (~w5) & x;
    assign w3 = (~w6) || x;
    assign z  = ~(w4 || w5 || w6);
endmodule
          
