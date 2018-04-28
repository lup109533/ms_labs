package utils is

function log2(i : natural)
	return integer;

end utils;

package body utils is

function log2(i : natural)
	return integer is
	variable temp    : integer := i;
	variable check   : real    := real(i);
	variable ret_val : integer := 0; 
begin					
	while temp > 1 loop
		ret_val := ret_val + 1;
		temp    := temp / 2;
		check   := check / real(2);  
	end loop;

	if (check > real(temp)) then
		ret_val := ret_val + 1;
	end if;

	return ret_val;
end function;

end utils;
