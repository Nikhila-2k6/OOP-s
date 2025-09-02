// Code your testbench here
// or browse Examples
//pass by value(values are copied into arguments)(original values remain same)
module tb;
  task swap(input bit [3:0]a,b);
    //a and b are called arguments
    bit [3:0] temp;
    temp=a;
    a=b;
    b=temp;
    $display("a=%0d,b=%0d",a,b);
  endtask
  //we cannot assign values to arguments so we declare them again
  bit [3:0] a;
  bit [3:0] b;
  initial begin
    a=9;
    b=7;
    swap(a,b);
    #10;
    $display("a=%0d,b=%0d",a,b);
  end
endmodule
//output:
# KERNEL: a=7,b=9
# KERNEL: a=9,b=7
  
