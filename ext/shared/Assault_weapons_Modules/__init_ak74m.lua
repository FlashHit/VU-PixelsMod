   local partition_ak74m = Guid ("A7C73A1A-ECD7-11DF-9B09-83A1F299B70D")
   local instance_ak74m = Guid ("E2EBB09B-C23C-4718-B506-089D336948D3")

ResourceManager:RegisterInstanceLoadHandler(partition_ak74m, instance_ak74m, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: ak74m - Super charched AMMO...')
	end)
