class fir_filter_sequence extends uvm_sequence #(fir_filter_seq_item);
    `uvm_object_utils(fir_filter_sequence)

    function new(string name = "fir_filter_sequence");
        super.new(name);
    endfunction

    task body();
        fir_filter_seq_item req;
        req = fir_filter_seq_item::type_id::create("req");

        // Create random or directed stimulus
        foreach (req.Signal_Noise) begin
            req.Signal_Noise = $random;
            start_item(req);
            finish_item(req);
        end
    endtask
endclass
