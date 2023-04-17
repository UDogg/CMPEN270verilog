// Commented lines start with //.

// Include your design files
// "design.sv" is included by default

// Testbench starts here
module adder_testbench();

  reg tb_a, tb_b;
  wire tb_s, tb_c;

  // Design Under Test (DUT)
  half_add dut(tb_a,tb_b,tb_s,tb_c);

  // initial block is only used in testbenches
  initial
  begin
    
    // Enable wave dump
    $dumpfile("dump.vcd"); 
    $dumpvars;
    
    $display("Test case 1.");
    // Test case 1
    tb_a = 1'b0;
    tb_b = 1'b0;
    #50; // wait for 50 time units
    
    // Test case 2
    $display("Test case 2.");
    tb_a = 1'b0;
    tb_b = 1'b1;
    #50;
    
    // Test case 3
    $display("Test case 3.");
    tb_a = 1'b1;
    tb_b = 1'b0;
    #50;
    
    // Test case 4
    $display("Test case 4.");
    tb_a = 1'b1;
    tb_b = 1'b1;
    #50;
    
    // Finish the simulation
    $finish;
    
  end

endmodule
