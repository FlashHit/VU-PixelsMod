-- Shotgun Spas12
              local partition_spas12 = Guid ("37F8F2ED-CAC0-42E8-B77B-2300A99C3B0F")
     local partition_spas12_Instance = Guid ("27C36CA8-C16D-4D2B-B3DC-73E7AF91BE85")
local partition_spas12_FireFunction1 = Guid ("B8F55C07-0412-4D22-9FAC-5DDA807244FB") -- 12g_buckshot
local partition_spas12_FireFunction2 = Guid ("9DC63986-E3C8-42C1-B431-88148AE1F1FA") -- 12g_flechette
local partition_spas12_FireFunction3 = Guid ("FCC8977C-04BF-4BB8-9F31-DC4EF3D03313") -- 12g_frag
local partition_spas12_FireFunction4 = Guid ("92F0B89D-0B88-456A-B57C-50BD7F36BADA") -- 12g_slug

ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150
    print("Shotgun Spas12 12g_Buckshot ... ... ...")
end)


ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150
    print("Shotgun Spas12 12g_flechette ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150
    print("Shotgun Spas12 12g_frag ... ... ...")
end)

ResourceManager:RegisterInstanceLoadHandler(partition_spas12, partition_spas12_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 500
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 1000
    loadedInstance.shot.numberOfBulletsPerShell = 150
    print("Shotgun Spas12 12g_slug ... ... ...")
end)
