   local partition_magnum44 = Guid ("21E91507-2AF6-11E0-9848-9E9BC51DCED8")
    local instance_magnum44 = Guid ("B6CD5488-67E6-4063-8594-A09DAA2640F3")

ResourceManager:RegisterInstanceLoadHandler(partition_magnum44, instance_magnum44, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: magnum44 - Pimped AMMO size...')
	end)
