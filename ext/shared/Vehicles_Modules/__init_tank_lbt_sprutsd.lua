   local partition_sprutsdshell = Guid ("115E78B1-74E7-A5A0-490E-853DC10F3FF5")
   local instance_sprutsdshell = Guid ("5F71446D-A417-AD79-3154-074D00ADCF7B")

ResourceManager:RegisterInstanceLoadHandler(partition_sprutsdshell, instance_sprutsdshell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0.5
    loadedInstance.timeToLive = 4
	print('Changed Sprut-SD Shell Modifier ... ... ...')
	end)