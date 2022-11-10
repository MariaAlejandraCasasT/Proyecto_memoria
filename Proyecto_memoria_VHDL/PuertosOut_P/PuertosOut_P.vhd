library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 entity PuertosOut_P is
       port(clock, writen, reset: in std_logic;
		      address : in std_logic_vector(7 downto 0);
				data_in : in std_logic_vector(7 downto 0);
				port_out_00, port_out_01, port_out_02, port_out_03, port_out_04, port_out_05, port_out_06, port_out_07  : out std_logic_vector(7 downto 0));
 end entity;




architecture PuertosOut_P_arch of PuertosOut_P is

      begin
			
			U3 : process (clock, reset)
				begin
				
				if (reset = '0') then
				   port_out_00 <= x"00";
				elsif (clock' event and clock = '1') then
				   if (address = x"E0" and writen = '1') then
				       port_out_00 <= data_in;
				   end if;
			   end if;
			end process;

			
			U4 : process (clock, reset)
				begin
				if (reset = '0') then
				port_out_01 <= x"00";
				elsif (clock' event and clock = '1') then
				if (address = x"E1" and writen = '1') then
				port_out_01 <= data_in;
				end if;
				end if;
			end process;

			
			U5 : process (clock, reset)
				begin
				if (reset = '0') then
				port_out_02 <= x"00";
				elsif (clock' event and clock = '1') then
				if (address = x"E2" and writen = '1') then
				port_out_02 <= data_in;
				end if;
				end if;
			end process;

			
			U6 : process (clock, reset)
				begin
				if (reset = '0') then
				port_out_03 <= x"00";
				elsif (clock'event and clock = '1') then
				if (address = x"E3" and writen = '1') then
				port_out_03 <= data_in;
				end if;
				end if;
			end process;
		
			U7 : process (clock, reset)
				begin
				if (reset = '0') then
				port_out_04 <= x"00";
				elsif (clock'event and clock = '1') then
				if (address = x"E4" and writen = '1') then
				port_out_04 <= data_in;
				end if;
				end if;
			end process;
			
			U8 : process (clock, reset)
				begin
				if (reset = '0') then
				port_out_05 <= x"00";
				elsif (clock' event and clock = '1') then
				if (address = x"E5" and writen = '1') then
				port_out_05 <= data_in;
				end if;
				end if;
			end process;			
			
			U9 : process (clock, reset)
				begin
				if (reset = '0') then
				port_out_06 <= x"00";
				elsif (clock' event and clock = '1') then
				if (address = x"E6" and writen = '1') then
				port_out_06 <= data_in;
				end if;
				end if;
			end process;	
			
			U10 : process (clock, reset)
				begin
				if (reset = '0') then
				port_out_07 <= x"00";
				elsif (clock' event and clock = '1') then
				if (address = x"E7" and writen = '1') then
				port_out_07 <= data_in;
				end if;
				end if;
			end process;	
			
	end architecture;
	