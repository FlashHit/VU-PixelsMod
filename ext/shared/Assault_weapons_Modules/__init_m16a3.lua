   local partition_m16a3 = Guid ("EA96401D-F166-11DF-A2F6-9139D3229269")
   local instance_m16a3 = Guid ("1CAE0E91-1EC1-48B9-8FFE-90EDA105FFB4")

ResourceManager:RegisterInstanceLoadHandler(partition_m16a3, instance_m16a3, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: M16A3 - Super charched AMMO...')
	end)
