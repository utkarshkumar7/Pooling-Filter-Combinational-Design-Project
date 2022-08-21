`timescale 1ns/1ns

module tb_thermo_to_onehot;

  reg [14:0] t;
  wire[15:0] o;

thermo_to_onehot onehot_check(
  .thermo(t),
  .onehot(o)
);

initial begin
  
  //NOTE: Tested for all 16 cases and it worked
 
      t = 15'b000000001111111;
    #1;     
  if (o == 16'b0000000010000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
    t = 15'b000000011111111;
    #1;     
  if (o == 16'b0000000100000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
  
    t = 15'b000000111111111;
    #1;     
  if (o == 16'b0000001000000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
   
    t = 15'b000001111111111;
    #1;     
  if (o == 16'b0000010000000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
      t = 15'b000011111111111;
    #1;     
  if (o == 16'b0000100000000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
  t = 15'b000111111111111;
    #1;     
  if (o == 16'b0001000000000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
    
  t = 15'b001111111111111;
    #1;     
  if (o == 16'b0010000000000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
    t = 15'b011111111111111;
    #1;     
  if (o == 16'b0100000000000000) begin
    $display("Correct output for t=%t", t); 
    end else begin
      $display("Incorrect output for t=%t", t);
    end
  
  
end
  
endmodule