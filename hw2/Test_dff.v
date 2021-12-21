module TestDFF;
	reg clock = 0;
	reg d = 0;
	wire q;
	wire q_n;
	always #10 clock <= ~clock;
	d_flip_flop d_flip_flop(.d(d), .e(clock), .q(q), .q_n(q_n));
	initial begin
		$dumpvars(0, TestDFF);
		d = 0;
		#10; d = 1;
		#10; d = 0;
		#10; d = 1;
		#10; d = 1;
		#10; d = 0;
		#10; d = 0;
		#10; d = 1;
		#10; d = 0;
		#10;
		$finish;
	end
endmodule