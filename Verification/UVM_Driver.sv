class fir_filter_driver extends uvm_driver #(fir_filter_seq_item);
    fir_filter_if vif;

    `uvm_component_utils(fir_filter_driver)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db #(fir_filter_if)::get(this, "", "vif", vif))
            `uvm_fatal("NOVIF", "No virtual interface specified for driver instance")
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(req);

            // Drive the interface
            vif.cb.Signal_Noise <= req.Signal_Noise;
            @(posedge vif.CLK);
            seq_item_port.item_done();
        end
    endtask
endclass
