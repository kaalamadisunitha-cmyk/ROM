module rom (
    input  wire [3:0] address,
    output reg  [7:0] data
);

    reg [7:0] memory [0:15];

    initial begin
        memory[0]  = 8'hA5;
        memory[1]  = 8'h3C;
        memory[2]  = 8'h7F;
        memory[3]  = 8'h12;
        memory[4]  = 8'h89;
        memory[5]  = 8'h56;
        memory[6]  = 8'hD4;
        memory[7]  = 8'h2B;
        memory[8]  = 8'hF0;
        memory[9]  = 8'h1E;
        memory[10] = 8'hB7;
        memory[11] = 8'h63;
        memory[12] = 8'h4D;
        memory[13] = 8'h98;
        memory[14] = 8'h35;
        memory[15] = 8'hCA;
    end

    always @(*) begin
        data = memory[address];
    end

endmodule