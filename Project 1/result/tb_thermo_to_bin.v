`timescale 1ns/1ns

module tb_thermo_to_bin;

  reg [14:0] t;
  wire[3:0] b;

thermo_to_bin dut(
  .thermo(t),
  .bin(b)
);

initial begin
  
   t = 15'b000000000000001;
    #1;     
  if (b == 4'b0001) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
  t = 15'b000000000000011;
    #1;     
  if (b == 4'b0010) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
 
end
  
endmodule