module ctrl(input [3:0] i, input regin, output o);
    wire [3:0] wc;

    assign wc[0] = i[0] & i[1];
    assign wc[1] = !(i[2] | i[3]);

    assign wc[2] = !(i[0] | i[2] | i[3]);
    assign wc[3] = wc[2] & i[1];
    
    assign o = (wc[3] & regin) | (wc[0] & wc[1]);

endmodule