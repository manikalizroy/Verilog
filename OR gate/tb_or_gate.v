module tb_or_gate;
  reg A,B;
  wire Y;
  or_gate o1 (.a(A),.b(B),.y(Y));  
  initial begin
    $monitor("A=%b B=%b Y=%b",A,B,Y);
    A=0;
    B=0;
    #10
    A=0;
    B=1;
    #10
    A=1;
    B=0;
    #10
    A=1; B=1;
  end  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
