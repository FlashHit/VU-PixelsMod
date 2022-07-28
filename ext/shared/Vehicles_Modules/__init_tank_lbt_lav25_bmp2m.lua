   local partition_lbt_shell1 = Guid ("347C7F28-38E4-4888-8567-AD4FFBD25299")
   local instance_lbt_shell1 = Guid ("F0F54699-EE70-4F17-8416-DF41912E183F")
   local partition_lbt_shell2 = Guid ("35DA1164-EAA9-4622-8D5A-704FF73DD295")
   local instance_lbt_shell2 = Guid ("382C510B-6F52-4FA3-9D4A-C113F05323B8")

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell1, instance_lbt_shell1, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		print('Changed US LAV-25 - RU BMP-2M LBT 1 Shell Modifier ... ... ... ... ... ...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell2, instance_lbt_shell2, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		print('Changed US LAV-25 - RU BMP-2M LBT 2 Shell Modifier ... ... ... ... ... ...')
	end)
