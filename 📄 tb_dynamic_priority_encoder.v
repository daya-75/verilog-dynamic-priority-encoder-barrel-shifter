module tb_dynamic_priority_encoder;
    reg  [7:0] in;
    reg  [2:0] priority;
    wire [2:0] grant;
    wire valid;
    dynamic_priority_encoder uut (
        .in(in),
        .priority(priority),
        .grant(grant),
        .valid(valid)
    );
    initial begin
        $display("Time | Priority | Input      | Grant | Valid");
        $monitor("%4t |   %d      | %b |   %d   |   %b", 
                 $time, priority, in, grant, valid);
        in = 8'b00000000; priority = 3'd0; #10;
        in = 8'b00100000; priority = 3'd0; #10; 
        in = 8'b00010000; priority = 3'd6; #10; 
        in = 8'b11000000; priority = 3'd7; #10; 
        in = 8'b00000001; priority = 3'd3; #10; 
        $finish;
    end
endmodule
