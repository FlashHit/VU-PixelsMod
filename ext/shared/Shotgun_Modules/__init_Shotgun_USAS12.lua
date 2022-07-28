-- Shotgun USAS12
              local partition_USAS12 = Guid ("F4F57492-38F5-11E0-845E-D6BEC180D605")
     local partition_USAS12_Instance = Guid ("BE7FC137-648E-67C2-22F7-2594900FFFCA")
local partition_USAS12_FireFunction1 = Guid ("682FE06E-ECD8-4F30-9A6C-600F279D2FC2") -- 12g_buckshot
local partition_USAS12_FireFunction2 = Guid ("0088688B-9DD2-4100-9F02-C5A227184F9C") -- 12g_flechette
local partition_USAS12_FireFunction3 = Guid ("134AF0FC-0D7A-4BCE-83A5-259E39F69F63") -- 12g_frag
local partition_USAS12_FireFunction4 = Guid ("36DE8274-A60D-4361-AA10-2040D0C0E23A") -- 12g_slug

ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, partition_USAS12_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun USAS12 12g_Buckshot ... ... ...")
end)


ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, partition_USAS12_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun USAS12 12g_flechette ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, partition_USAS12_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun USAS12 12g_frag ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, partition_USAS12_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun USAS12 12g_slug ... ... ...")
end)
