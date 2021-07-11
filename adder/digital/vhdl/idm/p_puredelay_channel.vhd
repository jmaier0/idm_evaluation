-------------------------------------------------------------------------------
--
--	Involution Tool
--	File: p_pure_delay_channel.vhd
--	
--  Copyright (C) 2018-2019  Daniel OEHLINGER <d.oehlinger@outlook.com>
--
--  This source file may be used and distributed without restriction provided
--  that this copyright statement is not removed from the file and that any
--  derivative work contains the original copyright notice and the associated
--  disclaimer.
--
--  This source file is free software: you can redistribute it and/or modify it
--  under the terms of the GNU Lesser General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or (at your
--  option) any later version.
--
--  This source file is distributed in the hope that it will be useful, but
--  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
--  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
--  for more details.
--
--  You should have received a copy of the GNU Lesser General Public License
--  along with the noasic library.  If not, see http://www.gnu.org/licenses
--
-------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-----------------------------------------------------------------

PACKAGE puredelay_channel_pkg IS
	COMPONENT puredelay_channel IS

		GENERIC (
			D_UP : time;	
			D_DO : time;	
			-- The following generics are not used by this channel, but since these generics are the required by standard involution channels, we need to add them here
			T_P  : time;			
			V_DD : real := 1.0;
			V_TH : real := 0.5
		);
		PORT (
			input : IN std_logic;
			output : OUT std_logic
		);

	END COMPONENT puredelay_channel;
END PACKAGE puredelay_channel_pkg;

-----------------------------------------------------------------