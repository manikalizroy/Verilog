//design
module multiplexer (
  input wire i0,      // First input
  input wire i1,      // Second input
  input wire i2,      // Third input
  input wire i3,      // Fourth input
  input wire S0,      // Select input bit 0
  input wire S1,      // Select input bit 1
  output wire y       // Output
);
  // Dataflow modeling using conditional operator
  assign y = (S1 == 0 && S0 == 0) ? i0 :
             (S1 == 0 && S0 == 1) ? i1 :
             (S1 == 1 && S0 == 0) ? i2 :
             i3;
endmodule
