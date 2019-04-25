module fa_gate(a , b , carryin , sum , carryout);

input a,b,carryin;
output sum,carryout;
wire w1,w2,w3;

xor x1 ( w1 , a ,b ) ;
and a1 ( w2 , a , b ) ;
xor x2 ( sum , carryin , w1 );
and a2 ( w3 , w1 , carryin );
or  o3 ( carryout , w2 ,w3 );

endmodule
