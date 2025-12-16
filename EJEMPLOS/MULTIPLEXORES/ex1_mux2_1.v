//mux2_1 gate in verilog

module ex1_mux2_1 ( input logic i_a, i_b, i_x, 
            output logic o_y );
    assign o_y = ((~i_a & i_x) || (i_a & i_b));
endmodule 
