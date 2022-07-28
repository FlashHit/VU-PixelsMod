-- Shotgun DAO12
              local partition_DAO12 = Guid ("CE832020-046A-11E0-A970-FF10D557871E")
     local partition_DAO12_Instance = Guid ("CA0D0869-3535-27A3-AF84-5E992D3C24A9")
local partition_DAO12_FireFunction1 = Guid ("0A70FC78-2199-462F-92B8-209D2F9211E1") -- 12g_buckshot
local partition_DAO12_FireFunction2 = Guid ("C601149B-890A-453E-8C9D-AE9C8B4216F4") -- 12g_flechette
local partition_DAO12_FireFunction3 = Guid ("4F027BBA-5AE6-4DE1-B900-4461FC479015") -- 12g_frag
local partition_DAO12_FireFunction4 = Guid ("38C05E70-31E9-4A41-A3CA-4FD74B079CF9") -- 12g_slug


ResourceManager:RegisterInstanceLoadHandler(partition_DAO12, partition_DAO12_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun DAO12 12g_Buckshot ... ... ...")
end)


ResourceManager:RegisterInstanceLoadHandler(partition_DAO12, partition_DAO12_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun DAO12 12g_flechette ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_DAO12, partition_DAO12_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun DAO12 12g_frag ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_DAO12, partition_DAO12_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun DAO12 12g_slug ... ... ...")
end)
