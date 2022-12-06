module system (input [7:0] i, input e, output o);
    wire [3:0] co_ct;
    wire ct_r;
    wire r_ct;
    
    counter co(i, co_ct);
    ctrl ct(co_ct, r_ct, ct_r);
    register r(ct_r, e, o);
    assign r_ct = o;
endmodule