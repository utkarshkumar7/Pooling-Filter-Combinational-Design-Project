`timescale 1ns/1ns

module tb_onehot_to_bin;

  reg [15:0] o;
  wire[3:0] b;

onehot_to_bin dut(
  .onehot(o),
  .bin(b)
);

initial begin
  
   o = 16'b0000000000000001;
    #1;     
  if (b == 4'b0000) begin
    $display("Correct output for o=%o", o); 
    end else begin
      $display("Incorrect output for o=%o", o);
    end
  
     o = 16'b0000000000000010;
    #1;     
  if (b == 4'b0001) begin
    $display("Correct output for o=%o", o); 
    end else begin
      $display("Incorrect output for o=%o", o);
    end
  
     o = 16'b0000000000000100;
    #1;     
  if (b == 4'b0010) begin
    $display("Correct output for o=%o", o); 
    end else begin
      $display("Incorrect output for o=%o", o);
    end
  
   o = 16'b0000000000001000;
    #1;     
  if (b == 4'b0011) begin
    $display("Correct output for o=%o", o); 
    end else begin
      $display("Incorrect output for o=%o", o);
    end
  
  o = 16'b0000000000010000;
    #1;     
  if (b == 4'b0100) begin
    $display("Correct output for o=%o", o); 
    end else begin
      $display("Incorrect output for o=%o", o);
    end
  
  o = 16'b1000000000000000;
    #1;     
  if (b == 4'b1111) begin
    $display("Correct output for o=%o", o); 
    end else begin
      $display("Incorrect output for o=%o", o);
    end
 
end
  
endmodule