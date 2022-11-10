library verilog;
use verilog.vl_types.all;
entity ROM_P_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(3 downto 0);
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ROM_P_vlg_sample_tst;
