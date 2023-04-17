// Code your half adder here
`include "and_gate.sv"
`include "xor_gate.sv"

module half_add(input adder_a,adder_b, output adder_s,adder_c);
  //instantiate AND and XOR gates
  and_gate a1(adder_c,adder_a,adder_b);        //complete these lines
  xor_gate x1(adder_s,adder_a,adder_b);
  
endmodule
