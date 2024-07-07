module half_adder (
  input A,       // First input
  input B,       // Second input
  output Sum,    // Sum output
  output Carry   // Carry output
);
  // Sum is the XOR of A and B
  assign Sum = A ^ B;
  
  // Carry is the AND of A and B
  assign Carry = A & B;
endmodule
