// Code your testbench here
// or browse Examples
module top;
  int x; //signed data type (32 bit)
  byte y;
  bit [7:0]z;
 // byte unsigned y; //unsigned data type(8 bit)
  initial begin
    x=-15;
    y=x; //implicit conversion  //simple codes
    $display("y=%0d",y);
    y=byte'(x); //explicit conversion //complex code
    $display("y=%0d",y);
    z=bit'(x);
    $display("z=%0d",z);//bit is single bit so output would be a single 0 or 1
  end
endmodule

//output:
# KERNEL: y=-15
# KERNEL: y=-15
# KERNEL: z=1
             
