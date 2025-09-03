// Code your testbench here
// or browse Examples
module tb;
  task automatic swap(const ref bit [3:0]a,ref bit [3:0]b);
    bit [3:0] temp;
    temp=a;
    //we cannot assign b value to a since a is constant
    //a=b;
    b=temp;
    $display("a=%0d,b=%0d",a,b);
  endtask
  bit [3:0] a,b;
  initial begin
    a=9;
    b=5;
    swap(a,b);
    $display("a=%0d,b=%0d",a,b);
  end
endmodule
//output:
# KERNEL: a=9,b=9
# KERNEL: a=9,b=9
