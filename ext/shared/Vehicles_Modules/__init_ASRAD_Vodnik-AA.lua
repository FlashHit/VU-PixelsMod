-- Generic pimped ammo data
-- Shared data: (US)ASRAD - (RU)Vodnik-AA 
   local partition_asrad_aa = Guid ("00001130-B1AD-4D5D-8D86-07D87AFE5F9B")
   local instance_asrad_aa = Guid ("D7B1F6F8-9564-4B5C-A59A-E84984C5E041")

ResourceManager:RegisterInstanceLoadHandler(partition_asrad_aa, instance_asrad_aa, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		print('Changed ASRAD / Vodnik Shell Modifier ... ... ... ... ... ...')
	end)

