   local partition_rpk74m = Guid ("6D35134E-EDA8-11DF-81C7-E27FD45FBB2E")
    local instance_rpk74m = Guid ("B0D9DB9A-46D4-4675-8D89-FB57FE049D96")

ResourceManager:RegisterInstanceLoadHandler(partition_rpk74m, instance_rpk74m, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	print('Changed Support weapon: rpk74m LMG - Pimped AMMO size...')
	end)

 -- #############

   local partition_rpk74m_mag = Guid ("6D35134E-EDA8-11DF-81C7-E27FD45FBB2E")
    local instance_rpk74m_mag = Guid ("0E584BD2-C097-40F5-A663-0091CA1CD617")

ResourceManager:RegisterInstanceLoadHandler(partition_rpk74m_mag, instance_rpk74m_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	print('Changed Support weapon: RPK74M LMG - Ext magazine Pimped AMMO size...')
	end)
