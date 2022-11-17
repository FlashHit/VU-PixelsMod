-- weapon config for removal of recoils / spread data on common class

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('86AF549E-3DFE-4727-B5B7-EAF4DF881080') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for ASval ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('20CE5A73-34EB-43F7-A4BC-B7C2BFA5D098') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for MagpulPDR ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('36D81BED-95DE-4E4B-B6E4-8E93EB65A72D') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for MP7 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('1CDD50C3-0E59-449E-9351-8185C2492FCD') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for P90 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('5BAE4A3B-63B0-426C-A9A5-5ED8307C95CB') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for PP2000 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('3B4FB57D-C28E-4214-B785-C6DC43633045') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for UMP45 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('7DAF381A-5C1B-41F9-81F7-0751EF16D3E3') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for PP19 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('783F15C0-947F-4EDA-90CD-C8E1AE674D63') then
			-- Cast it so we can access its fields.
			local gunSwayData = GunSwayData(instance)
			-- Make it writable so we can modify its fields.
			gunSwayData:MakeWritable()

			gunSwayData.deviationScaleFactorZoom = 0
			gunSwayData.gameplayDeviationScaleFactorZoom = 0
			gunSwayData.deviationScaleFactorNoZoom = 0
			gunSwayData.gameplayDeviationScaleFactorNoZoom = 0
			gunSwayData.shootingRecoilDecreaseScale = 0
			gunSwayData.firstShotRecoilMultiplier = 0
    dprint("Common: Removing recoil for MP5K ...") 

    end
   end
 end)

-- ################


-- 8 weapons
-- ASval     GunSwayData 86AF549E-3DFE-4727-B5B7-EAF4DF881080
-- MagpulPDR GunSwayData 20CE5A73-34EB-43F7-A4BC-B7C2BFA5D098
-- MP7       GunSwayData 36D81BED-95DE-4E4B-B6E4-8E93EB65A72D
-- P90       GunSwayData 1CDD50C3-0E59-449E-9351-8185C2492FCD
-- PP2000    GunSwayData 5BAE4A3B-63B0-426C-A9A5-5ED8307C95CB
-- UMP45     GunSwayData 3B4FB57D-C28E-4214-B785-C6DC43633045
-- PP19      GunSwayData 7DAF381A-5C1B-41F9-81F7-0751EF16D3E3
-- MP5k      GunSwayData 783F15C0-947F-4EDA-90CD-C8E1AE674D63
