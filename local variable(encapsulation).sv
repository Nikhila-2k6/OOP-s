// Code your testbench here
// or browse Examples
class parent;
  local int a=7; //local works within a single class so it shows error
  local int b=1;
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
ERROR VCP5248 "Cannot access local/protected member ""a"" from this scope." "testbench.sv" 14  8
ERROR VCP5248 "Cannot access local/protected member ""b"" from this scope." "testbench.sv" 14  10
FAILURE "Compile failure 2 Errors 0 Warnings  Analysis time: 0[s]."
