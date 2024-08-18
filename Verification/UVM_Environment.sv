class fir_filter_env extends uvm_env;
    fir_filter_driver driver;
    fir_filter_monitor monitor;

    `uvm_component_utils(fir_filter_env)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        driver = fir_filter_driver::type_id::create("driver", this);
        monitor = fir_filter_monitor::type_id::create("monitor", this);

        uvm_config_db #(fir_filter_if)::set(this, "driver", "vif", vif);
        uvm_config_db #(fir_filter_if)::set(this, "monitor", "vif", vif);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction
endclass
