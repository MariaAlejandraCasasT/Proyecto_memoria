library verilog;
use verilog.vl_types.all;
entity RAM_P is
    port(
        clock           : in     vl_logic;
        writen          : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end RAM_P;
