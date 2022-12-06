module counter(input [7:0] i, output [3:0] o);

//counter start
    wire [13:0] w;
    wire [7:0] rear;
    f_adder f0(i[2:0], w[1:0]);
    f_adder f1(i[5:3], w[3:2]);
    h_adder h0(i[7:6], w[5:4]);
    
    assign rear[0] = w[0];
    assign rear[1] = w[2];
    assign rear[2] = w[4];
    assign rear[3] = w[1];
    assign rear[4] = w[3];
    assign rear[5] = w[5];
    f_adder f2(rear[2:0], w[7:6]);
    f_adder f3(rear[5:3], w[9:8]);
    assign o[0] = w[6];
    h_adder h1(w[8:7], w[11:10]);
    assign o[1] = w[10];
    assign rear[6] = w[11];
    assign rear[7] = w[9];
    h_adder h2(rear[7:6], w[13:12]);
    assign o[2] = w[12];
    assign o[3] = w[13];
    
endmodule