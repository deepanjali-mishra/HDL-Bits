module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
	
    always @(posedge clk) begin
        if(reset) q <= 4'b0;
        else begin
            if(q == 4'b1001) q <= 4'b0000;
            else q <= q + 1'b1;
        end
    end
            
endmodule


//Alternate

module top_module(
	input clk,
	input reset,
	output reg [3:0] q);
	
	always @(posedge clk)
		if (reset || q == 9)	// Count to 10 requires rolling over 9->0 instead of the more natural 15->0
			q <= 0;
		else
			q <= q+1;
	
endmodule
