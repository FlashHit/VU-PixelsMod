   local partition_rpk74m = Guid ("6D35134E-EDA8-11DF-81C7-E27FD45FBB2E")
   local instance_rpk74m = Guid ("B0D9DB9A-46D4-4675-8D89-FB57FE049D96")

ResourceManager:RegisterInstanceLoadHandler(partition_rpk74m, instance_rpk74m, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: rpk74m LMG - Pimped AMMO size...')
	end)
