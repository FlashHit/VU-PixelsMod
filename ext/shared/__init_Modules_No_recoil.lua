-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- Module to turn on and off the no recoil function
-- WARNING THIS WILL INCREASE LOADING TIME ON SERVER AND CLIENT

local bEnable_recoil_modules = false

            if (bEnable_recoil_modules) == (true) then print('No Recoil module config Enabled... ... ...')

bEnable_norecoil_handguns = true
bEnable_norecoil_common = true
bEnable_norecoil_assault = true
bEnable_norecoil_engineer = true
bEnable_norecoil_support = true
bEnable_norecoil_recon = true

	else
	    if (bEnable_recoil_modules) == (false) then print('No Recoil Module config Disabled... ... ...')

bEnable_norecoil_handguns = false
bEnable_norecoil_common = false
bEnable_norecoil_assault = false
bEnable_norecoil_engineer = false
bEnable_norecoil_support = false
bEnable_norecoil_recon = false

 end
end


-- ---------------------------------------------------------------------
-- Common weapons no-recoil module --  

            if (bEnable_norecoil_common) == (true) then print('Common weapon recoil module Enabled...')
    __init_common_no_recoil = require('__shared/No_recoil_Modules/__init_common_no_recoil')
	else
	    if (bEnable_norecoil_common) == (false) then print('Common weapon recoil module Disabled...')
end
end
--
-- ---------------------------------------------------------------------
-- Handguns no-recoil module --  

            if (bEnable_norecoil_handguns) == (true) then print('Handguns recoil module Enabled...')
    __init_handguns_no_recoil = require('__shared/No_recoil_Modules/__init_handguns_no_recoil')
	else
	    if (bEnable_norecoil_handguns) == (false) then print('Handguns recoil module Disabled...')
end
end
--
-- ---------------------------------------------------------------------
-- Assault recoil module --  

            if (bEnable_norecoil_assault) == (true) then print('Assault recoil module Enabled...')
    __init_assault_no_recoil = require('__shared/No_recoil_Modules/__init_assault_no_recoil')
	else
	    if (bEnable_norecoil_assault) == (false) then print('Assault recoil module Disabled...')
end
end
--
-- ---------------------------------------------------------------------
-- Engineer recoil module --  

            if (bEnable_norecoil_engineer) == (true) then print('Engineer recoil module Enabled...')
    __init_engineer_no_recoil = require('__shared/No_recoil_Modules/__init_engineer_no_recoil')
	else
	    if (bEnable_norecoil_engineer) == (false) then print('Engineer recoil module Disabled...')
end
end
--
-- ---------------------------------------------------------------------
-- Support recoil module --

	    if (bEnable_norecoil_support) == (true) then print('Support recoil module Enabled...')
        __init_support_no_recoil = require('__shared/No_recoil_Modules/__init_support_no_recoil')
	else
	    if (bEnable_norecoil_support) == (false) then print('Support recoil module Disabled...')
end
end
--
-- ---------------------------------------------------------------------
-- Recon recoil module --

	    if (bEnable_norecoil_recon) == (true) then print('Recon recoil module Enabled...')
        __init_recon_no_recoil = require('__shared/No_recoil_Modules/__init_recon_no_recoil')
	else
	    if (bEnable_norecoil_recon) == (false) then print('Recon recoil module Disabled...')
end
end
--
-- ---------------------------------------------------------------------
