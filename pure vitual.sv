// Code your testbench here
// or browse Examples
virtual class base;
  //virtual can only work in inherited classes
  int a;
  int b;
  pure virtual function void display();
    //$display("a=%0d,b=%0d",a,b);
  //endfunction
endclass
class sub extends base;
  int a;
  int b;
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction
endclass
//should only use child class handle name to access.
module tb;
  base ba;
  sub s;
  initial begin
    s=new();
    ba=s;
    s.display();
    s.b=50;
    s.a=20;
    ba.display();
  end
endmodule
    //output:
# KERNEL: a=0,b=0
# KERNEL: a=20,b=50
