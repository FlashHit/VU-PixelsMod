-- Shotgun 870MCS
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------
              local partition_870MCS = Guid ("50F905EA-E32B-11DF-931B-DC6D3E613E0F")
     local partition_870MCS_Instance = Guid ("B76D7661-C812-64C2-322C-A269E40A1CD7")
 local partition_870MCS_Instance_mag = Guid ("DE774BEF-AEA7-4A5D-8046-5ED66391F828")
local partition_870MCS_FireFunction1 = Guid ("23EA5A02-84C7-4163-9210-B26E6CB37DC4") -- 12g_buckshot
local partition_870MCS_FireFunction2 = Guid ("62ED76A6-D4B3-46D6-887C-F720E2FA3147") -- 12g_flechette
local partition_870MCS_FireFunction3 = Guid ("DC77650A-A5AF-48E4-B2EF-BCE2FB8BD54A") -- 12g_frag
local partition_870MCS_FireFunction4 = Guid ("71E1E801-312C-43E7-886D-30AB75ACC629") -- 12g_slug

-- #####################
ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_Instance_mag, function(loadedInstance)

    loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 200
    loadedInstance.numberOfMagazines = 1000

 	if (bEnable_announcement) == (true) then print("Shotgun 870MCS Extended magazine ...")
end
end)

-- #####################

ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun 870MCS 12g_Buckshot ... ... ...")
end
end)


ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun 870MCS 12g_flechette ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun 870MCS 12g_frag ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun 870MCS 12g_slug ... ... ...")
end
end)
