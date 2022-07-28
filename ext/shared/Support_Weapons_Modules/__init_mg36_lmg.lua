   local partition_mg36 = Guid ("9AE12268-346F-4249-8E22-B5DB851332F2")
   local instance_mg36 = Guid ("E59A3BD1-90DB-4EDC-9C7F-8582CB71AFA1")

ResourceManager:RegisterInstanceLoadHandler(partition_mg36, instance_mg36, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: mg36 LMG - Pimped AMMO size...')
	end)
