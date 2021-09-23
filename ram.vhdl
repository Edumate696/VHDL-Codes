library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
port(address: in std_logic_vector(7 downto 0);
	datain: in std_logic_vector(7 downto 0);
	dataout: out std_logic_vector(7 downto 0);
	WE: in std_logic);
end entity RAM;

architecture behavior of RAM is
type RAM_type is array(255 downto 0) of std_logic_vector(7 downto 0);
signal RAM1: RAM_type;
begin
	process(address, WE)
	begin
		dataout <= (others => 'Z');
			if WE= '0' then --we want to write
				RAM1(to_integer(unsigned(address))) <= datain;
			end if;

			if WE= '1'
				then --we want to read
				dataout <= RAM1(to_integer(unsigned(address)));
			else
				dataout <= (others => 'Z');
			end if;

	end process;
end behavior;