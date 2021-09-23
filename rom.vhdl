library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
port(
	address: in std_logic_vector(7 downto 0);
	dataout: out std_logic_vector(7 downto 0));
end entity ROM;

architecture behavior of ROM is
type ROM_type is array(255 downto 0) of std_logic_vector(7 downto 0);
signal ROM1: ROM_type;
begin
	process(address)
	begin
		dataout <= ROM1(to_integer(unsigned(address)));
	end process;
end behavior;