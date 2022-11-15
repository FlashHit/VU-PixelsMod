   local partition_mg36 = Guid ("9AE12268-346F-4249-8E22-B5DB851332F2")
    local instance_mg36 = Guid ("E59A3BD1-90DB-4EDC-9C7F-8582CB71AFA1")

ResourceManager:RegisterInstanceLoadHandler(partition_mg36, instance_mg36, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	print('Changed Support weapon: mg36 LMG - Pimped AMMO size...')
	end)

 -- #############

   local partition_mg36_mag = Guid ("9AE12268-346F-4249-8E22-B5DB851332F2")
    local instance_mg36_mag = Guid ("1DCFC06F-C7E6-414A-939C-4DD8B87DC10D")

ResourceManager:RegisterInstanceLoadHandler(partition_mg36_mag, instance_mg36_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	print('Changed Support weapon: MG36 LMG - Ext magazine Pimped AMMO size...')
	end)
