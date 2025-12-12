//NOT gate in verilog

module ex1 ( input logic a, 
            output logic y );
    assign y = ~a;
endmodule 
