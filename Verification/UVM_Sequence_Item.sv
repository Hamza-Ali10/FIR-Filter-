class fir_filter_seq_item extends uvm_sequence_item;
    rand logic signed [15:0] Signal_Noise;

    `uvm_object_utils(fir_filter_seq_item)

    function new(string name = "fir_filter_seq_item");
        super.new(name);
    endfunction

    function void do_copy(uvm_object rhs);
        super.do_copy(rhs);
        `uvm_field_int(Signal_Noise, UVM_ALL_ON)
    endfunction

    function bit do_compare(uvm_object rhs);
        bit comp;
        super.do_compare(rhs);
        `uvm_field_int(Signal_Noise, UVM_ALL_ON)
        return comp;
    endfunction

    function void do_print(uvm_printer printer);
        super.do_print(printer);
        `uvm_field_int(Signal_Noise, UVM_ALL_ON)
    endfunction
endclass
