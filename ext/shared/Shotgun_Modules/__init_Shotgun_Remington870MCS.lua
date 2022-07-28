-- Shotgun 870MCS
              local partition_870MCS = Guid ("50F905EA-E32B-11DF-931B-DC6D3E613E0F")
     local partition_870MCS_Instance = Guid ("B76D7661-C812-64C2-322C-A269E40A1CD7")
local partition_870MCS_FireFunction1 = Guid ("23EA5A02-84C7-4163-9210-B26E6CB37DC4") -- 12g_buckshot
local partition_870MCS_FireFunction2 = Guid ("62ED76A6-D4B3-46D6-887C-F720E2FA3147") -- 12g_flechette
local partition_870MCS_FireFunction3 = Guid ("DC77650A-A5AF-48E4-B2EF-BCE2FB8BD54A") -- 12g_frag
local partition_870MCS_FireFunction4 = Guid ("71E1E801-312C-43E7-886D-30AB75ACC629") -- 12g_slug

ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun 870MCS 12g_Buckshot ... ... ...")
end)


ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun 870MCS 12g_flechette ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun 870MCS 12g_frag ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_870MCS, partition_870MCS_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150

    print("Shotgun 870MCS 12g_slug ... ... ...")
end)
