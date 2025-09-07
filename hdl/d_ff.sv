module d_ff(
    input logic clk,
    input logic resetn,
    input logic d,
    output logic q
);

always_ff @(posedge clk ) begin
    if(!resetn) begin
        q <= 1'b0;
    end else begin
        q <= d;
    end
end




endmodule