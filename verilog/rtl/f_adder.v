module f_adder(input [2:0] i, output [1:0] o);
    wire w0, w1, w2;
    assign w0 = i[0]^i[1];
    assign w1 = i[0]&i[1];
    assign o[0] = w0^i[2];
    assign w2 = w0&i[2];
    assign o[1] = w2|w1;
endmodule