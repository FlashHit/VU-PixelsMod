   local partition_t90shell = Guid ("E25400E3-4E66-31A4-D991-6E56084F10FF")
   local instance_t90shell = Guid ("36F86B49-A702-ED77-ACEC-015732F289E6")

ResourceManager:RegisterInstanceLoadHandler(partition_t90shell, instance_t90shell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0.5
    loadedInstance.timeToLive = 4
	print('Changed T90A Shell...')
	end)
