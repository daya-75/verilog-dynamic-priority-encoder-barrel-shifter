module dynamic_priority_encoder (
    input  [7:0] in,
    input  [2:0] priority,       
    output reg [2:0] grant,      
    output reg valid             
);
    integer i;
    reg [7:0] rotated_in;

    always @(*) begin
        // Rotate input according to priority
        rotated_in = {in, in} >> priority; // 16-bit shift
        rotated_in = rotated_in[7:0];

        valid = 0;
        grant = 0;
        for (i = 0; i < 8; i = i + 1) begin
            if (rotated_in[i]) begin
                grant = (i + priority) % 8;
                valid = 1;
               // break;
            end
        end
    end
endmodule
