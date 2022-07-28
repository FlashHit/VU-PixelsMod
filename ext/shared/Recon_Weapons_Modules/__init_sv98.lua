	   local partition_sv98 = Guid ("0B551663-E80F-11DF-9138-C690837A65DF")
	   local instance_sv98 = Guid ("3CC3FF85-FB0C-4686-8B55-949FD31A09CE")

ResourceManager:RegisterInstanceLoadHandler(partition_sv98, instance_sv98, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: sv98...')
	end)
