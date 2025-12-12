//AND & OR gate in verilog

module ex1 ( input logic a, b, c 
            output logic y );
    assign y = (a & b) || (c & a) || (c & b);
endmodule 
