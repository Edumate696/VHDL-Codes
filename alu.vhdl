library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU3BIT is
	port (
		inp_a : in signed(7 downto 0);
		inp_b : in signed(7 downto 0);
		sel : in STD_LOGIC_VECTOR(2 downto 0);
		out_alu : out signed(7 downto 0));
end ALU3BIT;

architecture BEHAVIORAL of ALU3BIT is
begin
	process(inp_a, inp_b, sel)
	begin
		case sel is
			when "000" =>
				out_alu <= inp_a + inp_b; --addition
			when "001" =>
				out_alu <= inp_a - inp_b; --substraction
			when "010" =>
				out_alu <= inp_a - 1; --decrement
			when "011" =>
				out_alu <= inp_a + 1; --increment
			when "100" =>
				out_alu <= inp_a and inp_b; --AND Gate
			when "101" =>
				out_alu <= inp_a or inp_b; --OR Gate
			when "110" =>
				out_alu <= not inp_a; --NOT Gate
			when "111" =>
				out_alu <= inp_a xor inp_b; --XOR Gate
			when others =>
				out_alu <= inp_a; --Simply forward 1st Input
		end case;
	end process;
end BEHAVIORAL;
