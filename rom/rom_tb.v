`timescale 1ns/1ps

module rom_tb;

    reg  [3:0] address;
    wire [7:0] data;

    integer i;

    rom uut (
        .address(address),
        .data(data)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, rom_tb);

        $display("=================================");
        $display("       16x8 ROM TESTBENCH");
        $display("=================================");
        $display("Time\tAddress\tData");

        for (i = 0; i < 16; i = i + 1) begin
            address = i;
            #10;

            $display("%0t\t%h\t%h", $time, address, data);
        end

        $display("=================================");
        $display("       SIMULATION COMPLETE");
        $display("=================================");

        $finish;
    end

endmodule