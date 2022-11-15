   local partition_m249 = Guid ("F37DBC84-F61B-11DF-829C-95F94E7154E3")
    local instance_m249 = Guid ("7FCFC3D7-49C2-477E-8952-664FDA86B41E")

ResourceManager:RegisterInstanceLoadHandler(partition_m249, instance_m249, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	print('Changed Support weapon: m249 LMG - Pimped AMMO size...')
	end)

 -- #############

   local partition_m249_mag = Guid ("F37DBC84-F61B-11DF-829C-95F94E7154E3")
    local instance_m249_mag = Guid ("1B58004C-7338-4B4A-960A-CB5ADE6AB4A3")

ResourceManager:RegisterInstanceLoadHandler(partition_m249_mag, instance_m249_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	print('Changed Support weapon: M249 LMG - Ext magazine Pimped AMMO size...')
	end)
