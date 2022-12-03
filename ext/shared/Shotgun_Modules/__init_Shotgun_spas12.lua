-- Shotgun Spas12
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------
              local partition_spas12 = Guid ("37F8F2ED-CAC0-42E8-B77B-2300A99C3B0F")
     local partition_spas12_Instance = Guid ("27C36CA8-C16D-4D2B-B3DC-73E7AF91BE85")
 local partition_spas12_Instance_mag = Guid ("6960AF18-30BA-4D23-9497-F4E022DFF56C")
local partition_spas12_FireFunction1 = Guid ("B8F55C07-0412-4D22-9FAC-5DDA807244FB") -- 12g_buckshot
local partition_spas12_FireFunction2 = Guid ("9DC63986-E3C8-42C1-B431-88148AE1F1FA") -- 12g_flechette
local partition_spas12_FireFunction3 = Guid ("FCC8977C-04BF-4BB8-9F31-DC4EF3D03313") -- 12g_frag
local partition_spas12_FireFunction4 = Guid ("92F0B89D-0B88-456A-B57C-50BD7F36BADA") -- 12g_slug

-- #####################
ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_Instance_mag, function(loadedInstance)

    loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 200
    loadedInstance.numberOfMagazines = 1000

 	if (bEnable_announcement) == (true) then print("Shotgun spas12 Extended magazine ...")
end
end)

-- #####################

ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

 	if (bEnable_announcement) == (true) then print("Shotgun Spas12 12g_Buckshot ... ... ...")
end
end)


ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150
 	if (bEnable_announcement) == (true) then print("Shotgun Spas12 12g_flechette ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150
 	if (bEnable_announcement) == (true) then print("Shotgun Spas12 12g_frag ... ... ...")
end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150
 	if (bEnable_announcement) == (true) then print("Shotgun Spas12 12g_slug ... ... ...")
end
end)
