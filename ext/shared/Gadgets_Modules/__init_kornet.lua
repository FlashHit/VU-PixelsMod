  -- Pimped Kornet / Tow
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible

-- -------------------------------------

    local partition_tow_ammo = Guid ("7A2B3D4D-BBA0-427F-9F68-3A221BDCD128")
   local instance_tow_ammo = Guid ("66B7391F-0965-48D7-8783-0D6817C2A522")

ResourceManager:RegisterInstanceLoadHandler(partition_tow_ammo, instance_tow_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 12
    loadedInstance.ammo.numberOfMagazines = -1
    loadedInstance.fireLogic.reloadTime = 4.0
 	if (bEnable_announcement) == (true) then print('Changed TOW Ammo size ...')
end
	end)

--

	local partition_kornet_exp = Guid ("EE3F34C9-7624-11E0-B5FB-8FD0F7AE8C7B")
         local Instance_kornet_exp = Guid ("32896AAC-7EC0-4342-BE9D-C1A7C3C6269F")

 ResourceManager:RegisterInstanceLoadHandler(partition_kornet_exp, Instance_kornet_exp, function(loadedInstance)

    loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

     loadedInstance.blastDamage = 1200 -- Normal = 100
     loadedInstance.blastRadius = 15 -- Normal = 1.2
     loadedInstance.blastImpulse = 1000 -- Normal = 100
     loadedInstance.shockwaveDamage = 25 -- Normal = 3
     loadedInstance.shockwaveRadius = 15 -- Normal = 6
     loadedInstance.shockwaveImpulse = 400 -- Normal = 150
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true 

 	if (bEnable_announcement) == (true) then print('Changed Gadgets: kornet launcher (explosion power) ...')
end
 end)

