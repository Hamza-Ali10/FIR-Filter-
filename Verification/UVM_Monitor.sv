class fir_filter_monitor extends uvm_monitor;
    fir_filter_if vif;

    `uvm_component_utils(fir_filter_monitor)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db #(fir_filter_if)::get(this, "", "vif", vif))
            `uvm_fatal("NOVIF", "No virtual interface specified for monitor instance")
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            @(posedge vif.CLK);
            // Sample the interface
            `uvm_info("MONITOR", $sformatf("Signal_Noise: %0d, Fliter_Signal: %0d", vif.Signal_Noise, vif.Fliter_Signal), UVM_MEDIUM)
        end
    endtask
endclass
