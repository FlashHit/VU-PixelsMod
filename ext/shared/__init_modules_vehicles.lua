-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Vehicles funcs and utils
require('__shared/MMUtils')

local bEnable_modules_vehicles = true

            if (bEnable_modules_vehicles) == (true) then dprint('Vehicles modules config Enabled... ... ...')


 bEnable_Mobile_AA = true
 bEnable_tank = true
 bEnable_sprut = hidden -- WORK IN PROGRESS DO NOT ENABLE

	else
	    if (bEnable_modules_vehicles) == (false) then dprint('Vehicles Modules config Disabled... ... ...')

 bEnable_Mobile_AA = false
 bEnable_tank = false
 bEnable_sprut = hidden

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Vehicles modules --  

            if (bEnable_tank) == (true) then dprint('tank Enabled...')
MMVehicles_tank = require('__shared/Vehicles_Modules/MMVehicles_tank')
 mmResources:AddLoadHandler(MMVehicles_tank, MMVehicles_tank.Write)
	else
	    if (bEnable_tank) == (false) then dprint('tank Disabled...')
end
end
--

              if (bEnable_Mobile_AA) == (true) then dprint('Mobile_AA Enabled...')
MMVehicles_Mobile_AA = require('__shared/Vehicles_Modules/MMVehicles_Mobile_AA')
 mmResources:AddLoadHandler(MMVehicles_Mobile_AA, MMVehicles_Mobile_AA.Write)
	else
	    if (bEnable_Mobile_AA) == (false) then dprint('Mobile_AA Disabled...')
end
end
--

            if (bEnable_sprut) == (true) then dprint('sprut Enabled...')
  MMVehicles_sprut = require('__shared/Vehicles_Modules/MMVehicles_sprut')
 mmResources:AddLoadHandler(MMVehicles_sprut, MMVehicles_sprut.Write)
	else
	    if (bEnable_sprut) == (false) then dprint('sprut Disabled...')
end
end
--


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

