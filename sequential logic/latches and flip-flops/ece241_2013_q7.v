module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    
    always @(posedge clk) begin
        case(j)
            1'b0: Q <= (k) ? 1'b0 : Q;
            1'b1: Q <= (k) ? (~Q) : 1'b1;
        endcase
    end
endmodule
