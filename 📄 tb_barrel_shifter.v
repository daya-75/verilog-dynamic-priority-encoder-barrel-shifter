module tb_barrel_shifter;
    reg  [7:0] data_in;
    reg  [2:0] shift;
    reg        dir;
    wire [7:0] data_out;
    barrel_shifter uut (
        .data_in(data_in),
        .shift(shift),
        .dir(dir),
        .data_out(data_out)
    );
    initial begin
        $display("Time | Dir | Shift | Data In  | Data Out");
        $monitor("%4t |  %b  |   %d   | %b | %b",
                  $time, dir, shift, data_in, data_out);
        //Test logical left shifts
        data_in = 8'b00011001; dir = 0; shift = 3'd0; #10;
        data_in = 8'b00011001; dir = 0; shift = 3'd1; #10;
        data_in = 8'b00011001; dir = 0; shift = 3'd3; #10;
        data_in = 8'b00011001; dir = 0; shift = 3'd7; #10;
        //Test logical right shifts
        data_in = 8'b10011000; dir = 1; shift = 3'd0; #10;
        data_in = 8'b10011000; dir = 1; shift = 3'd1; #10;
        data_in = 8'b10011000; dir = 1; shift = 3'd4; #10;
        data_in = 8'b10011000; dir = 1; shift = 3'd7; #10;

        $finish;
    end
endmodule
