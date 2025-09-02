// Code your testbench here
// or browse Examples
module top;
  bit [2:0]x;
  bit [2:0]y;
  bit [3:0]z;
  bit clk=0;
  always #10 clk=~clk;
  task add();
    //for function
    //function void (return type ex: int) add();
    z=x+y;
    $display("x=%0d,y=%0d,z=%0d",x,y,z);
  endtask
  //endfunction
  initial begin
    x=5;
    y=7;
    add();
  end
  
  task simulation();
    x=7;
    y=7;
    add();
    #10;
    x=3;
    y=3;
    add();
    #10;
    x=6;
    y=6;
    add();
    #10;
  endtask

  task run();
    x=$urandom();
    y=$urandom();
    add();
  endtask
  
  task clock();
    @(posedge clk)
    x=$urandom();
    y=$urandom();
    add();
    clock();//goes back to task clock for next posedge clk till 200ns completes
    // if not given addition will be performed only one posedge clk
  endtask
    
  initial begin
    simulation();
    run();
    clock();
  end
    initial begin
      #200;
      $finish;
    end
endmodule

//output:
# KERNEL: x=5,y=7,z=12
# KERNEL: x=7,y=7,z=14
# KERNEL: x=3,y=3,z=6
# KERNEL: x=6,y=6,z=12
# KERNEL: x=6,y=3,z=9
# KERNEL: x=6,y=7,z=13
# KERNEL: x=4,y=3,z=7
# KERNEL: x=4,y=3,z=7
# KERNEL: x=5,y=3,z=8
# KERNEL: x=3,y=6,z=9
# KERNEL: x=5,y=0,z=5
# KERNEL: x=1,y=5,z=6
# KERNEL: x=1,y=2,z=3
