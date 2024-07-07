module tb_multiplexer;

  reg i0, i1, i2, i3, S0, S1;
  wire y;

  // Instantiate the multiplexer
  multiplexer mu (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .S0(S0),
    .S1(S1),
    .y(y)
  );

  // Initial block to apply stimulus
  initial begin
    S1 = 0; S0 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0; // Initial values
    #10 S1 = 0; S0 = 0; i0 = 1;                     // Change inputs and select
    #10 S1 = 0; S0 = 1; i1 = 1;                     // Change inputs and select
    #10 S1 = 0; S0 = 1; i1 = 1;                     // Change inputs and select
    #10 S1 = 1; S0 = 0; i2 = 0;                     // Change inputs and select
    #10 S1 = 1; S0 = 0; i2 = 1;                     // Change inputs and select
    #10 S1 = 1; S0 = 1; i3 = 0;                     // Change inputs and select
    #10 S1 = 1; S0 = 1; i3 = 1;                     // Change inputs and select
    #10 $finish;                                    // End simulation
  end

  // Display block to monitor signals
  initial begin 
    $monitor("%t S1=%b S0=%b i0=%b i1=%b i2=%b i3=%b y=%b",
             $time, S1, S0, i0, i1, i2, i3, y);
  end

  // Dump waveform data
  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0, tb_multiplexer); // Corrected module name to tb_multiplexer
  end

endmodule
