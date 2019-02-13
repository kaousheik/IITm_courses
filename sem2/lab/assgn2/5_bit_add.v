module fiveadd(x,y,s,c);

input [4:0] x, y;
output [4:0] s,c;
fa f1(x[0], y[0], 0, s[0], c[0]);
fa f2(x[1], y[1], c[0], s[1], c[1]);
fa f3(x[2], y[2], c[1], s[2], c[2]);
fa f4(x[3], y[3], c[2], s[3], c[3]);
fa f5(x[4], y[4], c[3], s[4], c[4]);

endmodule
