// Code your testbench here
// or browse Examples
class first;
  int data=50;
endclass
class second;
  first f;
  function new();
    f=new();
  endfunction
endclass
module tb;
  second s;
  initial begin
    s=new();
    $display("data=%0d",s.f.data);
    s.f.data=60;
    $display("data=%0d",s.f.data);
  end
endmodule
//output:
# KERNEL: data=50
# KERNEL: data=60
