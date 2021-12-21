module d_flip_flop
(
    input wire d,
    input wire e,
    output wire q,
    output wire q_n
);
wire s0;
d_latch d_latch1(.d(d), .e(e), .q(s0), .q_n());
d_latch d_latch2(.d(s0), .e(e), .q(q), .q_n(q_n));
endmodule