//fulladder gate in verilog

module ex1_fulladder ( input logic i_a, i_b, i_c,
            output logic o_s, o_c );
    assign o_s = ((i_b & i_c) || (i_a & i_b));
    assign o_c = ((~i_a & ((~i_b & i_c) | (i_b & (~i_c)))) | (i_a & (((~i_b) & (~i_c)) | (i_b & i_c))));
endmodule 
