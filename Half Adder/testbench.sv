 module tb_half_adder;
  reg A, B;        // Input registers
  wire Sum, Carry; // Output wires

  // Instantiate the half adder
  half_adder ha (.A(A), .B(B), .Sum(Sum), .Carry(Carry));

  initial begin
    // Monitor the changes in A, B, Sum, and Carry
    $monitor("A=%b B=%b Sum=%b Carry=%b", A, B, Sum, Carry);

    // Apply test vectors
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    // End simulation
    $finish;
  end
  
  initial begin
    // Dump waveform data for viewing
    $dumpfile("half_adder.vcd");
    $dumpvars(0, tb_half_adder);
  end
endmodule
