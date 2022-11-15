-- ############

   local partition_m27iar = Guid ("FB9A13FB-5D10-48C7-8BD4-A97B712E2C20")
   local instance_m27iar = Guid ("BD7C5DDA-DC29-493B-B6FF-9299A3163261")

ResourceManager:RegisterInstanceLoadHandler(partition_m27iar, instance_m27iar, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 400
    loadedInstance.ammo.numberOfMagazines = 3

		print('Changed Support weapon: m27iar - Pimped AMMO size...')
	end)

-- ############

   local partition_m27iar_mag = Guid ("FB9A13FB-5D10-48C7-8BD4-A97B712E2C20")
   local instance_m27iar_mag = Guid ("26A87430-3AAA-4D8A-A83C-CF0709C15BAB")

ResourceManager:RegisterInstanceLoadHandler(partition_m27iar_mag, instance_m27iar_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 800
    loadedInstance.numberOfMagazines = 3

		print('Changed Support weapon: m27iar - Ext magazine Pimped AMMO size...')
	end)

