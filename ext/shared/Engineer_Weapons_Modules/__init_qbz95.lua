-- OK
   local partition_qbz95 = Guid ("1F059380-D6B9-437F-B9D4-BD85038233A9")
   local instance_qbz95 = Guid ("7A40EBD2-B50B-4BD5-9AEC-6C7DB4D457FB")

ResourceManager:RegisterInstanceLoadHandler(partition_qbz95, instance_qbz95, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: qbz95 - Pimped AMMO size...')
	end)
