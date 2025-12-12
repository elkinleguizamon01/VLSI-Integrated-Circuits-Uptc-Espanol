//AND & OR gate in verilog

module ex3_and_or ( input logic a, b, c 
            output logic y );
    assign y = (a & b) || (c & a) || (c & b);
endmodule 
