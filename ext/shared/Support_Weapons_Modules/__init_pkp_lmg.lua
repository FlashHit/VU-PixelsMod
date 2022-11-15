   local partition_pkp = Guid ("D1DC5650-EBFE-11DF-8ACD-A1D8961E5550")
    local instance_pkp = Guid ("9893EBD7-95B1-43E7-8405-86803312D998")

ResourceManager:RegisterInstanceLoadHandler(partition_pkp, instance_pkp, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	print('Changed Support weapon: pkp LMG - Pimped AMMO size...')
	end)

 -- #############

   local partition_pkp_mag = Guid ("D1DC5650-EBFE-11DF-8ACD-A1D8961E5550")
    local instance_pkp_mag = Guid ("D0669C99-ADB1-45C7-9FD8-2FC5AFFC663A")

ResourceManager:RegisterInstanceLoadHandler(partition_pkp_mag, instance_pkp_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	print('Changed Support weapon: PKP LMG - Ext magazine Pimped AMMO size...')
	end)
