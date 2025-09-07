module top_tb();

    timeunit 1ns;
    timeprecision 1ns;

    int clock_half_period_ps;
    initial begin
        $value$plusargs("CLOCK_PERIOD_PS=%d", clock_half_period_ps);
        clock_half_period_ps = clock_half_period_ps/2;
    end

    bit clk;
    always #(clock_half_period_ps) clk = ~clk;

    initial begin
        $fsdbDumpfile("dump.fsdb");
        if($test$plusargs("NO_DUMP_ALL")) begin
            $fsdbDumpvars(0, dut, "+all");
            $fsdbDumpoff();
        end else begin
            $fsdbDumpvars(0, "+all");
        end
    end

    `include "top_tb.svh"


endmodule