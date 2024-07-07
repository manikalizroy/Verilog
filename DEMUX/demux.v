module demux_1x4 (
  input wire d,       // Data input
  input wire S0,      // Select input bit 0
  input wire S1,      // Select input bit 1
  output reg y0,      // Output 0
  output reg y1,      // Output 1
  output reg y2,      // Output 2
  output reg y3       // Output 3
);

  // Dataflow modeling using conditional assignment
  always @ (d or S0 or S1) begin
    case ({S1, S0})
      2'b00: begin // S1S0 = 00
        y0 = d;
        y1 = 1'b0;
        y2 = 1'b0;
        y3 = 1'b0;
      end
      2'b01: begin // S1S0 = 01
        y0 = 1'b0;
        y1 = d;
        y2 = 1'b0;
        y3 = 1'b0;
      end
      2'b10: begin // S1S0 = 10
        y0 = 1'b0;
        y1 = 1'b0;
        y2 = d;
        y3 = 1'b0;
      end
      2'b11: begin // S1S0 = 11
        y0 = 1'b0;
        y1 = 1'b0;
        y2 = 1'b0;
        y3 = d;
      end
      default: begin // Default case
        y0 = 1'b0;
        y1 = 1'b0;
        y2 = 1'b0;
        y3 = 1'b0;
      end
    endcase
  end

endmodule
