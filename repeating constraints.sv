// Code your testbench here
// or browse Examples
class apb_tx;
  bit wr_rd=1; //to always do write operation.
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
  apb_tx tx=new(); //dynamic data type
  //size of tx=size(wr_rd)+size(addr)+size(data)+size(sel)  === 45 bits
  initial begin
    repeat(4) begin
      tx.randomize();
      tx.print();
    end
  end
endmodule

//output:
# KERNEL: wr_rd=1
# KERNEL: addr=e2
# KERNEL: data=56bc4659
# KERNEL: sel=5
# KERNEL: wr_rd=1
# KERNEL: addr=bc
# KERNEL: data=1da9b9a0
# KERNEL: sel=5
# KERNEL: wr_rd=1
# KERNEL: addr=c0
# KERNEL: data=947db9eb
# KERNEL: sel=12
# KERNEL: wr_rd=1
# KERNEL: addr=98
# KERNEL: data=25abb74a
# KERNEL: sel=12
