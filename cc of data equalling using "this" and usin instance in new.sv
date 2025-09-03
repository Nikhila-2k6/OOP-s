// Code your testbench here
// or browse Examples
//custom constructor is for memory creation
//if not using custom constructor we will create two handles which increases the complexity

class vlsi;
  int data; //class member /data member
  bit [7:0]data1;
  shortint data2;
  function new(input int data=0,input bit [7:0]data1=8'h00,input shortint data2=0);
    this.data=data; //class member=function custom constructor argument
    this.data1=data1;
    this.data2=data2;
  endfunction
endclass

module tb;
  vlsi v;
  initial begin
    v=new(.data2(31),.data(11),.data1(7)); //object creation / new is called constructor
    $display("data=%0d,data1=%0d,data2=%0d",v.data,v.data1,v.data2);
  end
endmodule
    
  //output:
# KERNEL: data=11,data1=7,data2=31
