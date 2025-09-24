// Code your testbench here
// or browse Examples
class remote;
  virtual function void presspower();
    //if not used virtual only default will be printed
    $display("Default : no device is selected"); //remote idle condition
  endfunction
endclass

class fan extends remote;
  function void presspower();
    $display("fan on/off");
  endfunction
endclass

class ac extends remote;
  function void presspower();
    $display("ac on/off");
  endfunction
endclass

class light extends remote;
  function void presspower();
    $display("light on/off");
  endfunction
endclass

module tb;
  remote device[3]; //multiple devices should be opearted so we use arrays.
  initial begin
    //polymorphism
    //base class handle=child class
    device[0]=fan::new();//assigning fan value as [0] and creating memoory.
    device[1]=ac::new();
    device[2]=light::new();
    //for repeating
    foreach(device[i]) device[i].presspower();
  end
endmodule

//output:
# KERNEL: fan on/off
# KERNEL: ac on/off
# KERNEL: light on/off
