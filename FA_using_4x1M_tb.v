`include "FA_4M.V"
module FAM_tb;
wire SUM,CARRY;
reg A,B,Cin;

FA_using_4X1M dut(A,B,Cin,SUM,CARRY);
initial begin
repeat(40) begin
    {A,B,Cin}=$urandom;
#10;

    $display("A=%B B=%b Cin=%b SUM=%b CARRY=%b", A,B,Cin,SUM,CARRY);
end
end
initial begin
    #500;
    $finish;
end
endmodule


