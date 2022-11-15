   local partition_m60 = Guid ("99BD41C7-EDB0-11DF-A0C6-D95650B9E286")
    local instance_m60 = Guid ("1D44B441-7F16-46F3-9EFF-D0647D554EFE")

ResourceManager:RegisterInstanceLoadHandler(partition_m60, instance_m60, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	print('Changed Support weapon: M60E04 LMG - Pimped AMMO size...')
	end)

 -- #############

   local partition_m60_mag = Guid ("99BD41C7-EDB0-11DF-A0C6-D95650B9E286")
    local instance_m60_mag = Guid ("66E15D23-F0FA-430C-ADF8-2DCA0B242EF6")

ResourceManager:RegisterInstanceLoadHandler(partition_m60_mag, instance_m60_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	print('Changed Support weapon: M60E04 LMG - Ext magazine Pimped AMMO size...')
	end)
