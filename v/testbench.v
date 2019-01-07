

module testbench();

reg CLK1,CLK2;
reg RST_n;  
reg [12:0]Data_In;
reg Enable;
reg IN_N_OUT;

wire [12:0]Data_Out;
wire Data_Ready;


  
initial begin
    CLK1 = 0;
    CLK2 = 0;
    RST_n = 1;
    IN_N_OUT = 0;
    #2 RST_n = 0;
    #2 RST_n = 1;
    #2 Enable = 1;
       Data_In = 13'b0010000000000;
    #2 Data_In = 13'b0010000000000;
  
    #20 IN_N_OUT = 1;

    #100 $finish;
    
  end
  
  always #1 CLK1 = ~CLK1;
  always #2 CLK2 = ~CLK2;
 

Top top1(CLK1,CLK2,RST_n,Data_In,Data_Out,Data_Ready,Enable,IN_N_OUT);    
endmodule

