module tb_xor_gate;
  reg A,B;
  wire Y;
  
  xor_gate x1 (.a(A),.b(B),.y(Y));
  
  initial begin
    A=1'b0;
    B=1'b0;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    A=1'b0;
    B=1'b1;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    A=1'b1;
    B=1'b0;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    A=1'b1;
    B=1'b1;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
endmodule
