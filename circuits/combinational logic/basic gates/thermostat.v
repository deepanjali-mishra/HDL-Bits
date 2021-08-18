module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    assign heater = (mode == 1) ? (too_cold == 1) ? 1'b1:1'b0:1'b0;
    assign aircon = (mode == 0) ? (too_hot == 1) ? 1'b1: 1'b0:1'b0;
    assign fan = (fan_on == 1 || heater == 1 || aircon == 1) ? 1'b1:1'b0;

endmodule

//alternate
assign fan = heater | aircon | fan_on;
	
	// Heater is on when it's too cold and mode is "heating".
	assign heater = (mode & too_cold);
	
	// Aircon is on when it's too hot and mode is not "heating".
	assign aircon = (~mode & too_hot);
	
