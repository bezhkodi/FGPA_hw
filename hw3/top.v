module top(
	input wire clock,
	output wire DS_EN1, DS_EN2, DS_EN3, DS_EN4,
	output wire DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G
);
			  
	reg [19:0] cl_cr = 1;
	wire clock_int;
	wire clock_master;
	assign clock_int = cl_cr[15];
	assign clock_master = cl_cr[19];//clock_master will be 16 times slower than clock interface
	
	always @(posedge clock)
	begin
		if (cl_cr < 20'hFFFFF) begin
			cl_cr <= cl_cr + 20'h1;
		end else begin
			cl_cr <= 20'h0;
		end
	end
	
	wire mes_inp;
	wire mes_outp;
	wire [15:0] display_val;
	wire [3:0] pos;
	wire [7:0] seg;
	
	assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = ~pos;
	assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} = seg[6:0];
	
	master_spi master_spi(.clock(clock_int), .clock_master(clock_master), .mes_inp(mes_inp), .mes_outp(mes_outp));
	slave_spi slave_spi(.clock(clock_int), .s_inp(mes_outp), .display_val(display_val), .s_outp(mes_inp));
	seven_seg seven_seg(.clock(clock), .display_val(display_val), .pos(pos), .seg(seg));
				
	
endmodule