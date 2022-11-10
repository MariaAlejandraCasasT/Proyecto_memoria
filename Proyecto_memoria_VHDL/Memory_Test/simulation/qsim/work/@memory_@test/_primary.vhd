library verilog;
use verilog.vl_types.all;
entity Memory_Test is
    port(
        clock           : in     vl_logic;
        writen          : in     vl_logic;
        reset           : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0);
        port_in_0       : in     vl_logic_vector(7 downto 0);
        port_in_1       : in     vl_logic_vector(7 downto 0);
        port_in_2       : in     vl_logic_vector(7 downto 0);
        port_in_3       : in     vl_logic_vector(7 downto 0);
        port_in_4       : in     vl_logic_vector(7 downto 0);
        port_in_5       : in     vl_logic_vector(7 downto 0);
        port_in_6       : in     vl_logic_vector(7 downto 0);
        port_in_7       : in     vl_logic_vector(7 downto 0);
        port_in_8       : in     vl_logic_vector(7 downto 0);
        port_in_9       : in     vl_logic_vector(7 downto 0);
        port_in_010     : in     vl_logic_vector(7 downto 0);
        port_in_011     : in     vl_logic_vector(7 downto 0);
        port_in_012     : in     vl_logic_vector(7 downto 0);
        port_in_013     : in     vl_logic_vector(7 downto 0);
        port_in_014     : in     vl_logic_vector(7 downto 0);
        port_in_015     : in     vl_logic_vector(7 downto 0);
        data_in1        : in     vl_logic_vector(7 downto 0);
        Display1        : out    vl_logic_vector(6 downto 0);
        Display2        : out    vl_logic_vector(6 downto 0);
        Display3        : out    vl_logic_vector(6 downto 0);
        Display4        : out    vl_logic_vector(6 downto 0)
    );
end Memory_Test;
