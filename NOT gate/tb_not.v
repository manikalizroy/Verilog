module tb_not_gate;
  reg X;
  wire Y;
  not_gate n1(.x(X),.y(Y));
  
  initial begin
    $monitor("X=%b Y=%b",X,Y);
    X=1'b0;
    #10
    X=1'b1;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 
endmodule
