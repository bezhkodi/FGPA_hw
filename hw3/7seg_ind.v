module seven_seg(input wire clock,
					 input wire [15:0] display_val,
					 output wire [3:0] pos,
					 output wire [7:0] seg);
					 
	reg [2:0] cl_cl = 3'd7;
	wire display_clock = cl_cl[2];
	reg [1:0] i = 2'd0;
	reg [7:0] seg_code = 8'd0;
	reg [3:0] val = 3'd0;
	
	always @(posedge clock)
	begin
		if (cl_cl > 0) begin
			cl_cl <= cl_cl - 3'd1;
		end else begin
			cl_cl <= 3'd7; 
		end
	end
	
	assign seg = seg_code;
	assign pos = 4'd1 << i;
	
	always @(posedge display_clock)
	begin
		val <= display_val[(i * 4) +: 4];
		case(val)
			4'd0: seg_code = 8'b11111100;
			4'd1: seg_code = 8'b01100000;
			4'd2: seg_code = 8'b11011010;
			4'd3: seg_code = 8'b11110010;
			4'd4: seg_code = 8'b01100110;
			4'd5: seg_code = 8'b10110110;
			4'd6: seg_code = 8'b10111110;
			4'd7: seg_code = 8'b11100000;
			4'd8: seg_code = 8'b11111110;
			4'd9: seg_code = 8'b11110110;
			4'hA: seg_code = 8'b11101110;
			4'hB: seg_code = 8'b00111100;
			4'hC: seg_code = 8'b10011100;
			4'hD: seg_code = 8'b01111010;
			4'hE: seg_code = 8'b10011110;
			4'hF: seg_code = 8'b10001110;
		endcase
		i <= i + 2'd1;
	end

endmodule