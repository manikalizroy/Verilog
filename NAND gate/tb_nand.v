module tb_nand_gate;
  reg A,B;
  wire Y;
  nand_gate na1 (.a(A),.b(B),.y(Y)); 
  initial begin
    $monitor("A=%b B=%b Y=%b",A,B,Y);
    A=1'b0;
    B=1'b0;
    #10
    A=1'b0;
    B=1'b1;
    #10
    A=1'b1;
    B=1'b0;
    #10
    A=1'b1;
    B=1'b1;
  end 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 
endmodule
