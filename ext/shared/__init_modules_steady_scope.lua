-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- Module to turn on and off the Steady scope function (WIP)
-- WARNING THIS WILL INCREASE LOADING TIME ON SERVER AND CLIENT

local bEnable_steady_scope_modules = false -- WIP, does not work.

            if (bEnable_steady_scope_modules) == (true) then print('steady_scope module config Enabled... ... ...')

bEnable_steady_scope = true

	else
	    if (bEnable_steady_scope_modules) == (false) then print('steady scope Module config Disabled... ... ...')

bEnable_steady_scope = false

 end
end

-- ---------------------------------------------------------------------
-- steady scope module --  

            if (bEnable_steady_scope) == (true) then print('Steady scope module Enabled...')
    __init_steady_scope = require('__shared/steady_scope_Modules/__init_steady_scope')
	else
	    if (bEnable_steady_scope) == (false) then print('Steady scope module Disabled...')
end
end
--
-- ---------------------------------------------------------------------
