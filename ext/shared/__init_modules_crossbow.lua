-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- Only ONE can be active !

local bEnable_modules_crossbow = true

            if (bEnable_modules_crossbow) == (true) then print('Crossbow modules config Enabled... ... ...')

 bEnable_crossbow = false
 bEnable_kinky_crossbow = true

	else
	    if (bEnable_modules_crossbow) == (false) then print('Crossbow Modules config Disabled... ... ...')

 bEnable_crossbow = false
 bEnable_kinky_crossbow = false

 end
end


-- ---------------------------------------------------------------------

	    if (bEnable_crossbow) == (true) then print('pimped crossbow Enabled...')
    __init_Crossbow = require('__shared/crossbow_Modules/__init_Crossbow')
	else
	    if (bEnable_crossbow) == (false) then print('pimped crossbow Disabled...')
end
end
--

-- ---------------------------------------------------------------------

	    if (bEnable_kinky_crossbow) == (true) then print('Kinky crossbow Enabled...')
    __init_kinky_Crossbow = require('__shared/crossbow_Modules/__init_kinky_Crossbow')
	else
	    if (bEnable_kinky_crossbow) == (false) then print('Kinky crossbow Disabled...')
end
end
--

