// Code your testbench here
// or browse Examples
module tb;
  task automatic arr(ref bit [2:0] a[8]);
    //bit [2:0] indicated size of array i.e 3
    //a[8] indicates the number of elements in the given array
  for(int i=0;i<=7;i++) begin
    a[i]=i;
  end 
  endtask
  bit [2:0] a[8];
  initial begin
    arr(a);
    for(int i=0;i<=7;i++) begin
      $display("a[%0d]=%0d",i,a[i]);
    end
  end
endmodule
//since pass by reference doesn't change the original data the first index will not be copied.
//so pass by reference is for multibit or vectors


//output:
# KERNEL: a[0]=0
# KERNEL: a[1]=1
# KERNEL: a[2]=2
# KERNEL: a[3]=3
# KERNEL: a[4]=4
# KERNEL: a[5]=5
# KERNEL: a[6]=6
# KERNEL: a[7]=7
