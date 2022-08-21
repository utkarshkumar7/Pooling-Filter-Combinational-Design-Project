`timescale 1ns/1ns

//TESTBENCH FOR THERMO_MAJ 

module tb_thermo_maj;

    reg [14:0] in1, in2, in3, in4;
    wire [3:0] out;

    thermo_maj t(
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .out(out)
    );

    initial begin
      
      //Test case 1: second largest between 0001, 0010, 0100, 1111
      //This should output 0100
      
        in1 = 15'b000000000000001; //0001
        in2 = 15'b000000000000011; //0010
        in3 = 15'b000000000001111; //0100
        in4 = 15'b111111111111111; //1111
      
        #10;
      if (out == 4'b0100) begin
        $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
      
     //Test case 2: second largest between 0001, 0010, 0001, 0011
     //Expected output: 0010

        in1 = 15'b000000000000001; //0001
        in2 = 15'b000000000000011; //0010
        in3 = 15'b000000000000001; //0001
        in4 = 15'b000000000000111; //0011
        #10;
      if (out == 4'b0010) begin
         $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
        
      //Test case 3: second largest between 1001, 1001, 1001, 0011
      //Expected output: 1001 
      
        in1 = 15'b000000111111111; //1001
        in2 = 15'b000000111111111; //1001
        in3 = 15'b000000111111111; //1001
        in4 = 15'b000000000000111; //0011
        #10;
      if (out == 4'b1001) begin
         $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
      
      //Test case 4: second largest between 0111, 1010, 1011, 0000
      //Expected output: 1010 
      
        in1 = 15'b000000001111111; //0111
        in2 = 15'b000001111111111; //1010
        in3 = 15'b000011111111111; //1011
        in4 = 15'b000000000000000; //0000
        #10;
      if (out == 4'b1010) begin
         $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
      
      //Test case 5: second largest between 0010, 0010, 0010, 0010
      //Expected output: 0010 

        in1 = 15'b000000000000011;//0010
        in2 = 15'b000000000000011;//0010
        in3 = 15'b000000000000011;//0010
        in4 = 15'b000000000000011;//0010
        #10;
      if (out == 4'b0010) begin
        $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end

      //Test case 6: second largest between 1111, 1111, 1111, 1111
      //Expected output: 1111 
      
        in1 = 15'b111111111111111; //1111
        in2 = 15'b111111111111111; //1111
        in3 = 15'b111111111111111; //1111
        in4 = 15'b111111111111111; //1111
        #10;
      if (out == 4'b1111) begin
         $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
      
      //Test case 7: second largest between 0000, 0000, 0000, 0000
      //Expected output: 0000 
      
        in1 = 15'b000000000000000; //0000
        in2 = 15'b000000000000000; //0000
        in3 = 15'b000000000000000; //0000
        in4 = 15'b000000000000000; //0000
        #10;
      if (out == 4'b0000) begin
         $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
      
      //Test case 8: second largest between 0001, 0001, 0001, 0011
      //Expected output: 0001
      
        in1 = 15'b000000000000001; //0001
        in2 = 15'b000000000000001; //0001
        in3 = 15'b000000000000001; //0001
        in4 = 15'b000000000000111; //0011
        #10;
      if (out == 4'b0001) begin
         $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
      
      //Test case 9: Testing the error message
      //Expected output: incorrect 
      
        in1 = 15'b000000000000001; //incorrect input
        in2 = 15'b000000000000001; 
        in3 = 15'b000000000000011; 
        in4 = 15'b000000000000011; 
        #10;
      if (out == 4'b0000) begin
         $display("Second largest module gives = %4b : Correct", out);
        end else begin
          $display("Second largest module gives = %4b : Incorrect", out);
        end
      
    end

endmodule