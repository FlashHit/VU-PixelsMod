   local partition_ump45 = Guid ("13D445F7-EBE3-11DF-91EC-895E59A6915B")
   local instance_ump45 = Guid ("4506ABFE-4F34-48BE-A724-C97DA9BA46B4")

ResourceManager:RegisterInstanceLoadHandler(partition_ump45, instance_ump45, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Common weapon: ump45 - Pimped AMMO size...')
	end)
