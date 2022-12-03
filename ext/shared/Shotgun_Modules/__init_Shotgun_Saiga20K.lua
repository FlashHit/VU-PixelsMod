-- Shotgun Saiga20K
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------
              local partition_Saiga20K = Guid ("A119D627-257B-11E0-96DC-FF63A5537869")
     local partition_Saiga20K_Instance = Guid ("9CBF227A-BCD6-B540-622B-B70BBC85331F")
 local partition_Saiga20K_Instance_mag = Guid ("CEF32F54-CF6A-48F6-8602-E259A2D145A6")
local partition_Saiga20K_FireFunction1 = Guid ("C84F534F-5075-4EC1-8CAD-60D09F61A8A9") -- 12g_buckshot
local partition_Saiga20K_FireFunction2 = Guid ("D360086F-0720-4BFA-B690-665FF90B942D") -- 12g_flechette
local partition_Saiga20K_FireFunction3 = Guid ("CF1D6D6E-242A-4A2F-B163-166F9701543E") -- 12g_frag
local partition_Saiga20K_FireFunction4 = Guid ("E050498A-FD20-40DC-85A2-BCEB0C79ECAB") -- 12g_slug

-- #####################
ResourceManager:RegisterInstanceLoadHandler(partition_Saiga20K, partition_Saiga20K_Instance_mag, function(loadedInstance)

    loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 200
    loadedInstance.numberOfMagazines = 1000

 	if (bEnable_announcement) == (true) then print("Shotgun Saiga20K Extended magazine ...")
end
end)

-- #####################

ResourceManager:RegisterInstanceLoadHandler(partition_Saiga20K, partition_Saiga20K_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun Saiga20K 12g_Buckshot ... ... ...")
end
end)


ResourceManager:RegisterInstanceLoadHandler(partition_Saiga20K, partition_Saiga20K_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun Saiga20K 12g_flechette ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_Saiga20K, partition_Saiga20K_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun Saiga20K 12g_frag ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_Saiga20K, partition_Saiga20K_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun Saiga20K 12g_slug ... ... ...")
end
end)
