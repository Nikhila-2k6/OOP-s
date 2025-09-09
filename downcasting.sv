class ethernet_packet;
  int a;
endclass

class good_ethernet_packet extends ethernet_packet;
  int b;
endclass

module tb;
  bit y;
  ethernet_packet eth_pkt;
  good_ethernet_packet g_pkt;
  initial begin
    eth_pkt=new();
    g_pkt=new();
    $cast(g_pkt,eth_pkt);
    y=$cast(g_pkt,eth_pkt);
    $display("y=%0d",y);
  end 
endmodule
  
  //output:
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#13_0@.
# KERNEL: y=0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
