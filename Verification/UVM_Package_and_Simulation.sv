package fir_filter_pkg;
    import uvm_pkg::*;
    `include "fir_filter_seq_item.sv"
    `include "fir_filter_sequence.sv"
    `include "fir_filter_driver.sv"
    `include "fir_filter_monitor.sv"
    `include "fir_filter_env.sv"
    `include "fir_filter_test.sv"
endpackage

module fir_filter_tb;
    import fir_filter_pkg::*;
    import uvm_pkg::*;

    fir_filter_if vif();
    initial begin
        uvm_config_db #(virtual fir_filter_if)::set(null, "*", "vif", vif);
        run_test("fir_filter_test");
    end
endmodule
