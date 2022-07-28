   local partition_m240 = Guid ("5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED")
   local instance_m240 = Guid ("335B1E8B-8BFF-4A0B-80E7-9F55FB9C25DC")

ResourceManager:RegisterInstanceLoadHandler(partition_m240, instance_m240, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: m240 LMG - Pimped AMMO size...')
	end)
