   local partition_m27iar = Guid ("FB9A13FB-5D10-48C7-8BD4-A97B712E2C20")
   local instance_m27iar = Guid ("BD7C5DDA-DC29-493B-B6FF-9299A3163261")

ResourceManager:RegisterInstanceLoadHandler(partition_m27iar, instance_m27iar, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: m27iar - Pimped AMMO size...')
	end)
