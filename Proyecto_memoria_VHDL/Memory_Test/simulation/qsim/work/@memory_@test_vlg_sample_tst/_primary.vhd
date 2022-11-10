library verilog;
use verilog.vl_types.all;
entity Memory_Test_vlg_sample_tst is
    port(
        Address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        data_in1        : in     vl_logic_vector(7 downto 0);
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
        reset           : in     vl_logic;
        writen          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Memory_Test_vlg_sample_tst;
