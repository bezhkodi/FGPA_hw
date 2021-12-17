module d_latch
(
    input wire d,
    input wire e,
    output wire q,
    output wire q_n
);
  sr_latch sr_latch(.r(e & ~d), .s(e & d), .q(q), .q_n(q_n));
endmodule
