module tb_fir_filter;

    // Clock and reset signals
    logic CLK;
    logic signed [15:0] Signal_Noise;
    logic signed [15:0] Fliter_Signal;

    // Instantiate the interface
    fir_filter_if fir_filter_if_inst (
        .CLK(CLK),
        .Signal_Noise(Signal_Noise),
        .Fliter_Signal(Fliter_Signal)
    );

    // Instantiate the DUT
    FIR_Filter dut (
        .CLK(fir_filter_if_inst.CLK),
        .Signal_Noise(fir_filter_if_inst.Signal_Noise),
        .Fliter_Signal(fir_filter_if_inst.Fliter_Signal)
    );

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // 100 MHz clock
    end

    // UVM environment instantiation
    initial begin
        run_test("fir_filter_test");
    end

endmodule
