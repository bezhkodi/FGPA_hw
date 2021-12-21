module master_spi
(
	input wire clock,
	input wire clock_master,
	input wire mes_inp,
	output wire mes_outp
);
					
	reg [7:0] counter = 8'd0;
	reg outp = 1'b0;
	assign mes_outp = outp;
	reg [3:0] step = 3'd7;
	always @(posedge clock)
	begin
		if ( step > 0 ) begin
			outp <= counter[step];
			step = step - 3'd1;
		end else begin
			step = 3'd7;
		end
	end
endmodule