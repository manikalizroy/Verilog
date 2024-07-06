module or_gate(a,b,y);
  input a,b;
  output reg y;
  
  always @(a,b)
    y=a|b;
  
endmodule
