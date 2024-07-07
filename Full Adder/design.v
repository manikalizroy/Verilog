module full_adder (
  input A,       // First input
  input B,       // Second input
  input Cin,     // Carry-in input
  output Sum,    // Sum output
  output Cout    // Carry-out output
);
  // Sum is the XOR of A, B, and Cin
  assign Sum = A ^ B ^ Cin;

  // Carry-out is the OR of the ANDs of each pair of inputs
  assign Cout = (A & B) | (B & Cin) | (Cin & A);
endmodule
