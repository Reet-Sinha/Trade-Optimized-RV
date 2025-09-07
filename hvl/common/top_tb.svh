int timeout;
initial begin
    timeout = 100;
end

logic d;
logic resetn;
logic q;

d_ff dut(.*);

initial begin
    resetn = 1'b0;
    d <= 1'b0;
    #10 resetn <= 1'b1; 
    #5      d <= 1'b1;
    #8      d <= 1'b0;
    #2      d <= 1'b1;
    #10     d <= 1'b0;


end

always @( posedge clk ) begin
    if(timeout == 0) begin
        $finish;
    end
    timeout <= timeout - 1;
end



