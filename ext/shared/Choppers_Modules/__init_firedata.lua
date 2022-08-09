   local partition_litlebird = Guid ("5490C4AB-A322-3F65-9680-CF9CD9D32705")
   local instance_litlebird = Guid ("FB438F0C-EB84-A96A-4836-F6C624FE21E0")

   local partition_rocketpods = Guid ("E64E52BD-4E40-4BFE-B6C3-49523084AE94")
   local instance_rocketpods = Guid ("3EE6789F-4113-42BA-B8FE-79DD5EF89FB1")
   local partition_gunnercannon = Guid ("0A232494-FB58-496E-BF30-FD9B39E12008")
   local instance_gunnercannon = Guid ("E06B6CCE-F5A3-40E6-A41F-D442AC4D7434")
   local partition_gunnercannon1 = Guid ("0D61B717-18D3-4295-9070-9AB925B1C784")
   local instance_gunnercannon1 = Guid ("CAB59337-47AF-4742-9CEC-3EEA7EA20E92")

ResourceManager:RegisterInstanceLoadHandler(partition_rocketpods, instance_rocketpods, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 45
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: Atack Choppers - Increased rocketpods ... ... ... ... ... ')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_gunnercannon, instance_gunnercannon, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 90
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: US Atack Chopper - Gunner bullet entity ammo... ... ... ... ... ')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_gunnercannon1, instance_gunnercannon1, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 90
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: RU Atack Chopper - Gunner bullet entity ammo... ... ... ... ... ')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_litlebird, instance_litlebird, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1000
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: US/RU  Light Atack Chopper - Gunner bullet entity ammo... ... ... ... ... ')
	end)

