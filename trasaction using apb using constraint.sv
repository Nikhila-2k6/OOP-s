// Code your testbench here
// or browse Examples
class apb_tx;
  rand bit wr_rd; //to select randomly we use rand here.
  rand bit [7:0]addr;
  rand bit [31:0]data;
  rand bit [3:0]sel;
  
  //methods:task and function
  function void print();
    $display("wr_rd=%0b",wr_rd);
    $display("addr=%0h",addr);
    $display("data=%0h",data);
    $display("sel=%0d",sel);
  endfunction
 
  //constraint:compulsory rule need to follow.
  constraint sel_c{
    sel inside {4'b0010,4'b010,4'b1100,4'b0101};
  }
endclass

module tb;
  //integer a; //static data type(32 bit)
  apb_tx tx; //dynamic data type
  //size of tx=size(wr_rd)+size(addr)+size(data)+size(sel)  === 45 bits
  initial begin
    tx=new();
    tx.print();
    //$display("tx=%0p",txt);
    tx.randomize();
    //$display("tx=%0p",txt);
    tx.print();
  end
endmodule

//output:
# KERNEL: wr_rd=0
# KERNEL: addr=0
# KERNEL: data=0
# KERNEL: sel=0
# KERNEL: wr_rd=1
# KERNEL: addr=d4
# KERNEL: data=ba001ddf
# KERNEL: sel=5
