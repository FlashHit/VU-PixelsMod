   local partition_pp2000 = Guid ("144442BD-173B-11E0-B7E4-E4E608316920")
   local instance_pp2000 = Guid ("F1DBB6DF-FAAC-4B70-A7EA-2D40068C5CCF")

ResourceManager:RegisterInstanceLoadHandler(partition_pp2000, instance_pp2000, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Common weapon: pp2000 - Pimped AMMO size...')
	end)
