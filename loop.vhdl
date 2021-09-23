entity T08_IfTb is
end entity;
architecture sim of T08_IfTb is
begin
    a1:process is
	begin
	variable x: integer :=0; 
	outerloop: loop
		x := x+1;
		exit loop outerloop when x>10;
	end loop outerloop;
	wait;
    end process;
end architecture;