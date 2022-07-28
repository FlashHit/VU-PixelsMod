-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Choppers funcs and utils

local bEnable_modules_choppers = true

            if (bEnable_modules_choppers) == (true) then print('Choppers modules config Enabled... ... ...')

bEnable_AH6_Light_Atack_US = true
bEnable_Venom_Recon_US = true
bEnable_Z11W_Light_Atack_RU = true
bEnable_KA60_Kasatka_Recon_RU = true
bEnable_Mi28_Atack_RU = true
bEnable_AH1Z_Atack_US = true
bEnable_Choppers_firedata = true


	else
	    if (bEnable_modules_choppers) == (false) then print('Choppers Modules config Disabled... ... ...')

bEnable_AH6_Light_Atack_US = false
bEnable_Venom_Recon_US = false
bEnable_Z11W_Light_Atack_RU = false
bEnable_KA60_Kasatka_Recon_RU = false
bEnable_Mi28_Atack_RU = false
bEnable_AH1Z_Atack_US = false
bEnable_Choppers_firedata = false

 end
end

-- ---------------------------------------------------------------------
-- Choppers modules --  

            if (bEnable_Choppers_firedata) == (true) then print('Pimped Atack chopper firedata Enabled...')
  __init_firedata = require('__shared/Choppers_Modules/__init_firedata')
	else
	    if (bEnable_Choppers_firedata) == (false) then print('Pimped Atack chopper firedata Disabled...')
end
end
--

            if (bEnable_Venom_Recon_US) == (true) then print('Venom_Recon_US chopper Enabled...')
  __init_Venom_Recon_US = require('__shared/Choppers_Modules/__init_Venom_Recon_US')
	else
	    if (bEnable_Venom_Recon_US) == (false) then print('Venom_Recon_US chopper Disabled...')
end
end
--

            if (bEnable_AH6_Light_Atack_US) == (true) then print('AH6_Light_Atack_US chopper Enabled...')
  __init_AH6_Light_Atack_US = require('__shared/Choppers_Modules/__init_AH6_Light_Atack_US')
	else
	    if (bEnable_AH6_Light_Atack_US) == (false) then print('AH6_Light_Atack_US chopper Disabled...')
end
end
--

            if (bEnable_KA60_Kasatka_Recon_RU) == (true) then print('KA-60_Kasatka_Recon_RU chopper Enabled...')
  __init_KA60_Kasatka_Recon_RU = require('__shared/Choppers_Modules/__init_KA60_Kasatka_Recon_RU')
	else
	    if (bEnable_KA60_Kasatka_Recon_RU) == (false) then print('KA-60_Kasatka_Recon_RU chopper Disabled...')
end
end
--

	    if (bEnable_Z11W_Light_Atack_RU) == (true) then print('Z11W_Light_Atack_RU chopper Enabled...')
  __init_Z11W_Light_Atack_RU = require('__shared/Choppers_Modules/__init_Z11W_Light_Atack_RU')
	else
	    if (bEnable_Z11W_Light_Atack_RU) == (false) then print('Z11W_Light_Atack_RU chopper Disabled...')
end
end
--

	    if (bEnable_Mi28_Atack_RU) == (true) then print('Mi28_Atack_RU chopper Enabled...')
  __init_Mi28_Atack_RU = require('__shared/Choppers_Modules/__init_Mi28_Atack_RU')
	else
	    if (bEnable_Mi28_Atack_RU) == (false) then print('Mi28_Atack_RU chopper Disabled...')
end
end
--

	    if (bEnable_AH1Z_Atack_US) == (true) then print('AH1Z_Atack_US chopper Enabled...')
  __init_AH1Z_Atack_US = require('__shared/Choppers_Modules/__init_AH1Z_Atack_US')
	else
	    if (AH1Z_Atack_US) == (false) then print('AH1Z_Atack_US chopper Disabled...')
end
end
--
-- ---------------------------------------------------------------------

