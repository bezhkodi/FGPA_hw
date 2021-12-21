module sr_latch(
    input wire s,
    input wire r,
    output wire q,
    output wire q_n
);
  assign q   =~ ( r | q_n);
  assign q_n =~ ( s | q );
endmodule
