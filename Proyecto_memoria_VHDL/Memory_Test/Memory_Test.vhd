library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memory_Test is 
	port(clock, writen, reset : in std_logic;
		  Address: in std_logic_vector(7 downto 0);
		  port_in_0, port_in_1, port_in_2, port_in_3, port_in_4, port_in_5, 
		  port_in_6, port_in_7, port_in_8, port_in_9, port_in_010, port_in_011,
		  port_in_012, port_in_013, port_in_014, port_in_015, data_in1: in std_logic_vector (7 downto 0);
		  Display1, Display2, Display3, Display4: out std_logic_vector(6 downto 0));
end Memory_Test;

architecture Memory_Test_arch of Memory_Test is

	component MemoriaFull_P 
		port (address1, port_in_00, port_in_01, port_in_02, port_in_03,
		port_in_04, port_in_05, port_in_06, port_in_07,
		port_in_08, port_in_09, port_in_10, port_in_11,
		port_in_12, port_in_13, port_in_14, port_in_15, data_in : in std_logic_vector (7 downto 0);
		writen, clock, reset: in std_logic;
		data_out, port_out_0, port_out_1, port_out_2, port_out_3, port_out_4, port_out_5, port_out_6, port_out_7 : out std_logic_vector (7 downto 0));
		
	end component;
		
	component BCD
		port (A, B, C, D: in std_logic;
				F : out std_logic_vector(6 downto 0));
	end component;
	
	signal data_out1: std_logic_vector(7 downto 0);
	
	begin
		X0 : MemoriaFull_P port map (Address, port_in_0, port_in_1, port_in_2, port_in_3,
	        port_in_4, port_in_5, port_in_6, port_in_7, port_in_8, port_in_9, port_in_010, port_in_011,
		     port_in_012, port_in_013, port_in_014, port_in_015, data_in1, writen, clock, reset, data_out1);
		Y0 : BCD port map (data_out1(7),data_out1(6),data_out1(5),data_out1(4), Display1);   
		Z0 : BCD port map (data_out1(3),data_out1(2),data_out1(1),data_out1(0), Display2);   
		Y1 : BCD port map (Address(7),Address(6),Address(5),Address(4), Display3);   
		Z1 : BCD port map (Address(3),Address(2),Address(1),Address(0), Display4); 
	end architecture;