	   local partition_svd = Guid ("C1A5290C-ED78-11DF-8D94-C4EBBBD642E1")
	   local instance_svd = Guid ("5C26F504-A95E-4E9B-A1A1-84A0440D329B")

ResourceManager:RegisterInstanceLoadHandler(partition_svd, instance_svd, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: svd...')
	end)
