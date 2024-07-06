module tb_and_gate;
  reg A,B;
  wire Y;

  and_gate a1 (.a(A),.b(B),.y(Y));
  
  initial begin
    $monitor("A=%b B=%b Y=%b",A,B,Y);
    A=0;B=0;
    #10A=0;B=1;
    #10A=1;B=0;
    #10A=1;B=1;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end  
endmodule
