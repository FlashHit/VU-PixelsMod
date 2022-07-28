-- Shotgun MK3A1
              local partition_MK3A1 = Guid ("014C428F-9A3C-4EA0-9F0C-873058E72438")
     local partition_MK3A1_Instance = Guid ("C57F6902-E9BE-44B8-BCFA-9FFEB3A9A93C")
local partition_MK3A1_FireFunction1 = Guid ("3D4D9FCA-FD1A-4F7D-B278-C4676ACD15DF") -- 12g_buckshot
local partition_MK3A1_FireFunction2 = Guid ("607CF93E-0510-460C-917B-C056A8CADBBC") -- 12g_flechette
local partition_MK3A1_FireFunction3 = Guid ("20B53027-2589-465A-A1DF-DA737A940DAE") -- 12g_frag
local partition_MK3A1_FireFunction4 = Guid ("91D7B0A3-AB80-4B91-96AC-94014C925478") -- 12g_slug

ResourceManager:RegisterInstanceLoadHandler(partition_MK3A1, partition_MK3A1_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun MK3A1 12g_Buckshot ... ... ...")
end)


ResourceManager:RegisterInstanceLoadHandler(partition_MK3A1, partition_MK3A1_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun MK3A1 12g_flechette ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_MK3A1, partition_MK3A1_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun MK3A1 12g_frag ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_MK3A1, partition_MK3A1_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun MK3A1 12g_slug ... ... ...")
end)
