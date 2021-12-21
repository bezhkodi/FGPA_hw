module slave_spi
( 
	input wire clock,
	input wire s_inp,
	output wire [15:0] display_val,
	output wire s_outp
);
					
	reg [7:0] val = 8'd0;
	reg [7:0] data = 8'd0;
	assign display_val = {data, 8'd0};
	reg [3:0] step = 3'd7;
	
	always @(posedge clock)
	begin
		if (step > 3'd0) begin
			val <= (val << 1) + s_inp;
			step = step - 3'd1;
		end else begin
			step = 3'd7;
			data <= val;
		end
	end
endmodule