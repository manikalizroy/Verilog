module tb_full_adder;
  reg A, B, Cin;     // Input registers
  wire Sum, Cout;    // Output wires

  // Instantiate the full adder
  full_adder fa (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

  initial begin
    // Monitor the changes in A, B, Cin, Sum, and Cout
    $monitor("A=%b B=%b Cin=%b Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

    // Apply test vectors
    A = 0; B = 0; Cin = 0; #10;
    A = 0; B = 1; Cin = 0; #10;
    A = 1; B = 0; Cin = 0; #10;
    A = 1; B = 1; Cin = 0; #10;
    A = 0; B = 0; Cin = 1; #10;
    A = 0; B = 1; Cin = 1; #10;
    A = 1; B = 0; Cin = 1; #10;
    A = 1; B = 1; Cin = 1; #10;

    // End simulation
    $finish;
  end
  
  initial begin
    // Dump waveform data for viewing
    $dumpfile("full_adder.vcd");
    $dumpvars(0, tb_full_adder);
  end
endmodule
