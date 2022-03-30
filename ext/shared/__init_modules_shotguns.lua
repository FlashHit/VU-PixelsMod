-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global shotgun funcs and utils
require('__shared/MMUtils')

local bEnable_modules_shotguns = true
            if (bEnable_modules_shotguns) == (true) then dprint('Shotgun modules config Enabled... ... ...')


-- Shotgun stuff combined --
 bEnable_spas12 = true
 bEnable_MK3A1 = true
 bEnable_Remington870MCS = true
 bEnable_Saiga20K = true
 bEnable_USAS12 = true
 bEnable_DAO12 = true
 bEnable_M1014 = true

	else
	    if (bEnable_modules_shotguns) == (false) then dprint('Shotgun Modules config Disabled... ... ...')

-- Shotgun stuff combined --
 bEnable_spas12 = false
 bEnable_MK3A1 = false
 bEnable_Remington870MCS = false
 bEnable_Saiga20K = false
 bEnable_USAS12 = false
 bEnable_DAO12 = false
 bEnable_M1014 = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Weapons Shotguns combined modules --
            if (bEnable_DAO12) == (true) then dprint('DAO12 Enabled...')
        MMShotgun_DAO12 = require('__shared/Shotgun_Modules/MMShotgun_DAO12')
mmResources:AddLoadHandler(MMShotgun_DAO12, MMShotgun_DAO12.Write)
	else
	    if (bEnable_DAO12) == (false) then dprint('DAO12 Disabled...')
end
end
--

            if (bEnable_M1014) == (true) then dprint('M1014 Enabled...')
        MMShotgun_M1014 = require('__shared/Shotgun_Modules/MMShotgun_M1014')
mmResources:AddLoadHandler(MMShotgun_M1014, MMShotgun_M1014.Write)
	else
	    if (bEnable_M1014) == (false) then dprint('M1014 Disabled...')
end
end
--

            if (bEnable_USAS12) == (true) then dprint('USAS12 Enabled...')
        MMShotgun_USAS12 = require('__shared/Shotgun_Modules/MMShotgun_USAS12')
mmResources:AddLoadHandler(MMShotgun_USAS12, MMShotgun_USAS12.Write)
	else
	    if (bEnable_USAS12) == (false) then dprint('USAS12 Disabled...')
end
end
--

            if (bEnable_Saiga20K) == (true) then dprint('Saiga20K Enabled...')
        MMShotgun_Saiga20K = require('__shared/Shotgun_Modules/MMShotgun_Saiga20K')
mmResources:AddLoadHandler(MMShotgun_Saiga20K, MMShotgun_Saiga20K.Write)
	else
	    if (bEnable_Saiga20K) == (false) then dprint('Saiga20K Disabled...')
end
end
--

            if (bEnable_Remington870MCS) == (true) then dprint('Remington 870MCS Enabled...')
        MMShotgun_Remington870MCS = require('__shared/Shotgun_Modules/MMShotgun_Remington870MCS')
mmResources:AddLoadHandler(MMShotgun_Remington870MCS, MMShotgun_Remington870MCS.Write)
	else
	    if (bEnable_Remington870MCS) == (false) then dprint('Remington 870MCS Disabled...')
end
end
--

	    if (bEnable_spas12) == (true) then dprint('spas12 Enabled...')
        MMShotgun_spas12 = require('__shared/Shotgun_Modules/MMShotgun_spas12')
mmResources:AddLoadHandler(MMShotgun_spas12, MMShotgun_spas12.Write)
	else
	    if (bEnable_spas12) == (false) then dprint('spas12 Disabled...')
end
end
--

	    if (bEnable_MK3A1) == (true) then dprint('MK3A1 Jackhammer Enabled...')
        MMShotgun_MK3A1 = require('__shared/Shotgun_Modules/MMShotgun_MK3A1')
mmResources:AddLoadHandler(MMShotgun_MK3A1, MMShotgun_MK3A1.Write)
	else
	    if (bEnable_MK3A1) == (false) then dprint('MK3A1 Jackhammer Disabled...')
end
end
mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)


--
-- ---------------------------------------------------------------------

