// Code your testbench here
// or browse Examples
module tb;
  task arr(input bit [2:0] a[8]);
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
//since code contains "input" so it is pass by value
//in pass by value the original data remains same so all the indexes value is same
//you declared that task argument as an input that indicates pass by value.
//pass by value copies the values(copies all zeros
//so pass by values are only for scalars/single bits

//output:
# KERNEL: a[0]=0
# KERNEL: a[1]=0
# KERNEL: a[2]=0
# KERNEL: a[3]=0
# KERNEL: a[4]=0
# KERNEL: a[5]=0
# KERNEL: a[6]=0
# KERNEL: a[7]=0
     
