module matrix_multiplication(input a,b,clk,output c);
reg [7:0]a1[0:1][0:1];
reg [7:0]b1[0:1][0:1];
reg [7:0]c1[0:1][0:1];
int i,j,k;
always @(posedge clk) begin
    {a1[0][0],a1[0][1],a1[1][0],a1[1][1]}=a;
    {b1[0][0],b1[0][1],b1[1][0],b1[1][1]}=b;
    for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
            for(int k=0;k<3;k++){
                c1=c1+a1[i][0]*b[0][j];
            }
        }
    }
c={c1[0][0],c1[0][1],c1[1][0],c1[1][1]};    
end
endmodule