//顶层模块实现芯片内部信号整合与端口定义
`include "Cordic.v"
`include "Control.v"

module Top(CLK1,CLK2,RST_n,Data_in,Data_out,Data_Ready,Enable,IN_N_OUT);

input CLK1,CLK2; 
input RST_n; 
input [12:0]Data_in;
input Enable;
input IN_N_OUT;

output [12:0]Data_out;
output Data_Ready;
  
wire [12:0] I;
wire [12:0] Q;
wire [12:0] PM;
wire [12:0] AM;
wire Cordic_Enable,Cordic_Ready;
  
Control control1(.IN_N_OUT(IN_N_OUT),.Data_Ready(Data_Ready),.Enable(Enable),.Data_in(Data_in),.Data_out(Data_out),.CLK1(CLK1),.RST_n(RST_n),.PM(PM),.AM(AM),.Cordic_Ready(Cordic_Ready),.Cordic_Enable(Cordic_Enable),.I(I),.Q(Q));//接口模块
Cordic cordic1(.I(I),.Q(Q),.Cordic_Enable(Cordic_Enable),.CLK2(CLK2),.RST_n(RST_n),.PM(PM),.AM(AM),.Cordic_Ready(Cordic_Ready));//Cordic模块
  
endmodule

