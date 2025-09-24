// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
virtual class remote;
 pure virtual function void presspower();
   /* $display("Default : no device is selected"); //remote idle condition
  endfunction*/
endclass

class fan extends remote;
  function void presspower();
    $display("fan on/off");
  endfunction
endclass

class ac extends remote;
 /* function void presspower();
    $display("ac on/off");
  endfunction*/
  //since we haven't given method here it shows error unlike polymorphism.
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
ERROR VCP2938 "Cannot declare class ac as non abstract class due to not implemented pure virtual methods:" "testbench.sv" 17  9
ERROR VCP2941 "... see pure virtual method: presspower declaration." "testbench.sv" 6  39
