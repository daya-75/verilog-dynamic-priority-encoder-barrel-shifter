module 8_bit_barrel_shifter (
    input  [7:0] data_in,
    input  [2:0] shift,
    input   dir,        // 0 -> left, 1 -> right
    output reg [7:0] data_out
);
    always @(*) begin
        if (dir == 1'b0) begin
            data_out = data_in << shift; //Logical left
        end else begin
            data_out = data_in >> shift; //Logical right
        end
    end
endmodule
