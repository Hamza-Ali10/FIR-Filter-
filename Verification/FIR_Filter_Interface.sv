interface fir_filter_if (
    input logic CLK,
    input logic signed [15:0] Signal_Noise,
    output logic signed [15:0] Fliter_Signal
);
    // Clocking block for synchronization
    clocking cb @(posedge CLK);
        input Signal_Noise;
        output Fliter_Signal;
    endclocking
endinterface
