//NOT gate in verilog

module ex4_not ( input logic a, 
            output logic y );
    assign y = ~a;
endmodule 
