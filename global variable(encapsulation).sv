// Code your testbench here
// or browse Examples
class parent;
  int a=7;
  int b=1;
  function void print();
    $display("a=%0d,b=%0d",a,b);
  endfunction
endclass

class child extends parent;
  int c;
  function void sub();
    c=a-b;
    $display("c=%0d",c);
  endfunction
endclass

module tb;
  child c;
  initial begin
    c=new();
    c.print();
    c.sub();
  end
endmodule

//output:
# KERNEL: a=7,b=1
# KERNEL: c=6
