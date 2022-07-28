	   local partition_jng90 = Guid ("8C663DDE-525E-4A4D-8D88-7CA1970E59D7")
	   local instance_jng90 = Guid ("A81D728D-9CAD-4277-88EE-01F96D515889")

ResourceManager:RegisterInstanceLoadHandler(partition_jng90, instance_jng90, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: JNG-90...')
	end)
