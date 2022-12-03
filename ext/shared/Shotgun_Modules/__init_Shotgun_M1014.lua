-- Shotgun M1014
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------
              local partition_M1014 = Guid ("460F1126-2578-11E0-96DC-FF63A5537869")
     local partition_M1014_Instance = Guid ("707C6815-CFD6-FBE0-A5DE-915AFDA6350A")
 local partition_M1014_Instance_mag = Guid ("0B1AA063-19D9-4745-B1F2-08C6286F640E")
local partition_M1014_FireFunction1 = Guid ("28FF9461-5D36-4A7D-B187-CE7A538E66CA") -- 12g_buckshot
local partition_M1014_FireFunction2 = Guid ("1D08ACCF-C1CA-4CF4-B550-18390BEF07ED") -- 12g_flechette
local partition_M1014_FireFunction3 = Guid ("0DBAD71F-95F4-47D4-93C1-C1A37E1BD9B2") -- 12g_frag
local partition_M1014_FireFunction4 = Guid ("8F3DAC3A-72B1-48D2-8CBF-8CAD8DECC4B1") -- 12g_slug

-- #####################
ResourceManager:RegisterInstanceLoadHandler(partition_M1014, partition_M1014_Instance_mag, function(loadedInstance)

    loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 200
    loadedInstance.numberOfMagazines = 1000

 	if (bEnable_announcement) == (true) then print("Shotgun M1014 Extended magazine ...")
end
end)

-- #####################

ResourceManager:RegisterInstanceLoadHandler(partition_M1014, partition_M1014_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun M1014 12g_Buckshot ... ... ...")
end
end)


ResourceManager:RegisterInstanceLoadHandler(partition_M1014, partition_M1014_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun M1014 12g_flechette ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_M1014, partition_M1014_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun M1014 12g_frag ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_M1014, partition_M1014_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun M1014 12g_slug ... ... ...")
end
end)
