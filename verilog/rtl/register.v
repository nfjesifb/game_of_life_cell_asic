module register(input i, input e, output reg o);
    wire [2:0] w;
    assign w[0] = (!i)&e;
    assign w[1] = i&e;
    assign w[2] = !(o|w[1]);
    //assign o = !(w[0]|w[2]);
    always @(w[0]|w[2]) o = !(w[0]|w[2]);
    
endmodule