module mux(i0,i1,i2,i3,s,out);

input [1:0] s;
input i0,i1,i2,i3;
output out;

assign out = (s==0)?i0:
	     (s==1)?i1:
             (s==2)?i2:
             (s==3)?i3:1;

endmodule 


