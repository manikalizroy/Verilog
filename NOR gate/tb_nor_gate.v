module tb_nor_gate;
  reg A,B;
  wire Y;
  
  nor_gate no1 (.a(A),.b(B),.y(Y));
  
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
