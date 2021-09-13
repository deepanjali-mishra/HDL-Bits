module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @(posedge areset or posedge clk ) begin
        if(areset) q <= 8'b0;
        else q <= d;
    end

endmodule
