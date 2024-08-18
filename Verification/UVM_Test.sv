class fir_filter_test extends uvm_test;
    fir_filter_env env;
    fir_filter_sequence seq;

    `uvm_component_utils(fir_filter_test)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        env = fir_filter_env::type_id::create("env", this);
        seq = fir_filter_sequence::type_id::create("seq");
    endfunction

    task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        seq.start(env.driver.seq_item_port);
        phase.drop_objection(this);
    endtask
endclass
