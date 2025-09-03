// Code your testbench here
// or browse Examples
//custom constructor is for memory creation
//if not using custom constructor we will create two handles which increases the complexity
class vlsi;
  int data; //class member /data member
  function new(input int datain=0);
    data=datain; //class member=function custom constructor argument
  endfunction
endclass

module tb;
  vlsi v;
  initial begin
    v=new(31); //object creation / new is called constructor
    $display("data=%0d",v.data);
  end
endmodule
    
  //output:
# KERNEL: data=31
