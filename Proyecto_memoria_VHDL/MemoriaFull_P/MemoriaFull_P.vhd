library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoriaFull_P is 
	port (address1, port_in_00, port_in_01, port_in_02, port_in_03,
		port_in_04, port_in_05, port_in_06, port_in_07,
		port_in_08, port_in_09, port_in_10, port_in_11,
		port_in_12, port_in_13, port_in_14, port_in_15, data_in : in std_logic_vector (7 downto 0);
		writen, clock, reset: in std_logic;
		data_out, port_out_0, port_out_1, port_out_2, port_out_3, port_out_4, port_out_5, port_out_6, port_out_7 : out std_logic_vector (7 downto 0));
	end entity;
	
	
architecture MemoriaFull_P_arch of MemoriaFull_P is

component PuertosOut_P is
       port(clock, writen, reset: in std_logic;
		      address : in std_logic_vector(7 downto 0);
				data_in : in std_logic_vector(7 downto 0);
				port_out_00, port_out_01, port_out_02, port_out_03, port_out_04, port_out_05, port_out_06, port_out_07  : out std_logic_vector(7 downto 0));
 end component;
 
 
 component ROM_P is 
      port(clock : in std_logic;
		     address: in std_logic_vector(7 downto 0);
			  data_out: out std_logic_vector(7 downto 0));
end component;

component RAM_P is
      port (clock, writen: in std_logic;
		      address : in std_logic_vector(7 downto 0);
				data_in : in std_logic_vector(7 downto 0);
				data_out : out std_logic_vector(7 downto 0));
end component;

signal z1,z2,z3: std_logic_vector(7 downto 0);

 begin

 ROM: ROM_P port map(clock, address1, z1);
 RAM: RAM_P port map(clock, writen, address1, data_in, z2);
 PUER: PuertosOut_P port map(clock, writen, reset, address1, data_in, port_out_1, port_out_2, port_out_3, port_out_4, port_out_5, port_out_6, port_out_7);

		MUX1 : process (address1,z1,z2,
		port_in_00, port_in_01, port_in_02, port_in_03,
		port_in_04, port_in_05, port_in_06, port_in_07,
		port_in_08, port_in_09, port_in_10, port_in_11,
		port_in_12, port_in_13, port_in_14, port_in_15)

		begin
		if ( (to_integer(unsigned(address1)) >= 0) and
		(to_integer(unsigned(address1)) <= 127)) then
		data_out <= z1;
		elsif ( (to_integer(unsigned(address1)) >= 128) and
		(to_integer(unsigned(address1)) <= 223)) then
		data_out <= z2;
		elsif (address1 = x"F0") then data_out <= port_in_00;
		elsif (address1 = x"F1") then data_out <= port_in_01;
		elsif (address1 = x"F2") then data_out <= port_in_02;
		elsif (address1 = x"F3") then data_out <= port_in_03;
		elsif (address1 = x"F4") then data_out <= port_in_04;
		elsif (address1 = x"F5") then data_out <= port_in_05;
		elsif (address1 = x"F6") then data_out <= port_in_06;
		elsif (address1 = x"F7") then data_out <= port_in_07;
		elsif (address1 = x"F8") then data_out <= port_in_08;
		elsif (address1 = x"F9") then data_out <= port_in_09;
		elsif (address1 = x"FA") then data_out <= port_in_10;
		elsif (address1 = x"FB") then data_out <= port_in_11;
		elsif (address1 = x"FC") then data_out <= port_in_12;
		elsif (address1 = x"FD") then data_out <= port_in_13;
		elsif (address1 = x"FE") then data_out <= port_in_14;
		elsif (address1 = x"FF") then data_out <= port_in_15;
		else data_out <= x"00";
		end if;
		end process;
end architecture;		