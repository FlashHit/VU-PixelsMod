   local partition_m16a4 = Guid ("EA96401D-F166-11DF-A2F6-9139D3229269")
   local instance_m16a4 = Guid ("B8195790-AB8E-43ED-961A-9CFCE09378A9")

ResourceManager:RegisterInstanceLoadHandler(partition_m16a4, instance_m16a4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: M16A4 - Super charched AMMO...')
	end)
