module MUX_4x1(I,S,Y);
input  [3:0] I;
input  [1:0] S;
output Y;
assign Y=(S[1]?(S[0]?I[3]:I[2]):(S[0]?I[1]:I[0]));
endmodule

module FA_using_4X1M(A,B,Cin,SUM,CARRY);
input A,B,Cin;
output SUM,CARRY;

MUX_4x1 fa1({Cin,(~Cin),(~Cin),Cin},{A,B},SUM);
MUX_4x1 fa2({1'b1, Cin, Cin,1'b0},{A,B},CARRY);
endmodule

