-- Shotgun USAS12 tweaks
-- ###### AMMO TWEAK
              local partition_USAS12 = Guid ("F4F57492-38F5-11E0-845E-D6BEC180D605")
local instance_USAS12_FireFunction1 = Guid ("682FE06E-ECD8-4F30-9A6C-600F279D2FC2") -- 12g_buckshot

ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, instance_USAS12_FireFunction1, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 200 -- default = 275
    loadedInstance.ammo.magazineCapacity = 100 -- default = 7
    loadedInstance.ammo.numberOfMagazines = 500 -- default = 4 
    loadedInstance.shot.numberOfBulletsPerShell = 150 -- default = 7

    print("Shotgun USAS12 12g_Buckshot ... ... ...")
end)

-- ######

	      local partition_USAS12 = Guid ("F4F57492-38F5-11E0-845E-D6BEC180D605")
local instance_USAS12_FireFunction2 = Guid ("0088688B-9DD2-4100-9F02-C5A227184F9C") -- 12g_flechette

ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, instance_USAS12_FireFunction2, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 200 -- default = 275
    loadedInstance.ammo.magazineCapacity = 100 -- default = 7
    loadedInstance.ammo.numberOfMagazines = 1000 -- default = 4
    loadedInstance.shot.numberOfBulletsPerShell = 150 -- default = 7

    print("Shotgun USAS12 12g_flechette ... ... ...")
end)

-- ######

	      local partition_USAS12 = Guid ("F4F57492-38F5-11E0-845E-D6BEC180D605")
local instance_USAS12_FireFunction3 = Guid ("134AF0FC-0D7A-4BCE-83A5-259E39F69F63") -- 12g_frag

ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, instance_USAS12_FireFunction3, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 200 -- default = 200
    loadedInstance.ammo.magazineCapacity = 100 -- default = 7
    loadedInstance.ammo.numberOfMagazines = 1000 -- default = 4
    loadedInstance.shot.numberOfBulletsPerShell = 15 -- default = 1

    print("Shotgun USAS12 12g_frag ... ... ...")
end)

-- ######

              local partition_USAS12 = Guid ("F4F57492-38F5-11E0-845E-D6BEC180D605")
local instance_USAS12_FireFunction4 = Guid ("36DE8274-A60D-4361-AA10-2040D0C0E23A") -- 12g_slug

ResourceManager:RegisterInstanceLoadHandler(partition_USAS12, instance_USAS12_FireFunction4, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.fireLogic.rateOfFire = 200 -- default = 275
    loadedInstance.ammo.magazineCapacity = 100 -- default = 7
    loadedInstance.ammo.numberOfMagazines = 1000 -- default = 4
    loadedInstance.shot.numberOfBulletsPerShell = 150 -- default = 1

    print("Shotgun USAS12 12g_slug ... ... ...")
end)
