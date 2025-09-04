// Code your testbench here
// or browse Examples
class packet;
  int count;
endclass

class vlsi;
  int a;//non object property(data type).
  int b;//non object property
  packet pck=new();//object property
endclass

module tb;
  vlsi v1,v2;
  initial begin 
  	v1=new();
  	v2=new();
  	v2.a=10;
    v2.pck.count=50;
  	v1=new v2; //v1=v2.a and v2.b or v1.a and v1.b= v2.a and v2.b
 	 $display("v1=%0d",v1.a);
 	 $display("v1=%0p",v1);
 	 v2.a=20;
 	 $display("v1=%0p",v1);
  end
endmodule
//shallow copy cannot be applied for object property.
//even though it can be used to create a memory location for destination handle it will not work for object property.so we go for deep copy.
 //shallow copy copies handle name for object property and copies values for non object property.

//output:
# KERNEL: v1=10
# KERNEL: v1=10 0 <class handle>
# KERNEL: v1=10 0 <class handle>
