-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_rpg7gravity = Guid ("6C857FD9-6FB3-11DE-B35E-864CF572E1C4")
   local instance_rpg7gravity = Guid ("CDD3A384-8243-A258-E23D-239CC0D52698")

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7gravity, instance_rpg7gravity, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500.0
    loadedInstance.timeToLive = 8
    loadedInstance.gravity = 0
	if (bEnable_announcement) == (true) then print('Changed RPG-7 - Gravity ...')
	end
end)

-- -----------------------------------

   local partition_smawgravity = Guid ("168F529B-17F6-11E0-8CD8-85483A75A7C5")
   local instance_smawgravity = Guid ("168F529C-17F6-11E0-8CD8-85483A75A7C5")

ResourceManager:RegisterInstanceLoadHandler(partition_smawgravity, instance_smawgravity, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500.0
    loadedInstance.timeToLive = 8
    loadedInstance.gravity = 0
	if (bEnable_announcement) == (true) then print('Changed SMAW - Gravity ...')
	end
end)

-- -----------------------------------

   local partition_rpg7 = Guid ("E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E")
   local instance_rpg7 = Guid ("7584D16E-6B77-4A7B-BEEE-15DA5EF98E2E")

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7, instance_rpg7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	if (bEnable_announcement) == (true) then print('Changed RPG-7 - Ammo size increased 40x ...')
	end
end)

-- --------

   local partition_smaw = Guid ("BCE98CA0-17EC-11E0-8CD8-85483A75A7C5")
   local instance_smaw = Guid ("AB8577C5-D5F9-4A17-BEB2-2E153E171630")

ResourceManager:RegisterInstanceLoadHandler(partition_smaw, instance_smaw, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	if (bEnable_announcement) == (true) then print('Changed SMAW - Ammo size increased 40x ...')
	end
end)

