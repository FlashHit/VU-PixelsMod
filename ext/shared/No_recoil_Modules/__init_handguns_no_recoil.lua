-- weapon config for removal of recoils / spread data on handguns

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('BE55899F-F911-4A27-BD8D-54BA30AE82B0') then
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
    dprint("No Recoil Handguns: Removing recoil from G17 / G18 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('00E46D05-AD47-4B99-98B6-203862956B2D') then
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
    dprint("No Recoil Handguns: Removing recoil from G18 Silenced ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('F5AD75CA-6B6E-4468-A009-00C14DBDBB2F') then
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
    dprint("No Recoil Handguns: Removing recoil from G17 Silenced ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('C3918BF9-73FA-4B81-A6AD-1AC233ECF9A3') then
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
    dprint("No Recoil Handguns: Removing recoil from M1911 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('480A45C3-78BC-485F-AA99-C1E703032C8E') then
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
    dprint("No Recoil Handguns: Removing recoil from M9 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('4BAE4B65-0529-474E-9904-57904D4175B7') then
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
    dprint("No Recoil Handguns: Removing recoil from M93R ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('E9CB90B5-DD5F-4E71-9B6B-0E58022AEAA9') then
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
    dprint("No Recoil Handguns: Removing recoil from MP412REX ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('7F0B3C6F-ED81-4DCE-A0C7-0F0947D738C8') then
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
    dprint("No Recoil Handguns: Removing recoil from MP443 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('775D66C8-9009-42B4-ABDB-EBAB1CAD0981') then
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
    dprint("No Recoil Handguns: Removing recoil from TAURUS44 ...") 

    end
   end
 end)

-- ################



-- M1911   GunSwayData C3918BF9-73FA-4B81-A6AD-1AC233ECF9A3
-- M9      GunSwayData 480A45C3-78BC-485F-AA99-C1E703032C8E
-- M93R    GunSwayData 4BAE4B65-0529-474E-9904-57904D4175B7
-- MP412REX GunSwayData E9CB90B5-DD5F-4E71-9B6B-0E58022AEAA9
-- MP443   GunSwayData 7F0B3C6F-ED81-4DCE-A0C7-0F0947D738C8
-- Taurus44 GunSwayData 775D66C8-9009-42B4-ABDB-EBAB1CAD0981

-- G18 S   GunSwayData 00E46D05-AD47-4B99-98B6-203862956B2D
-- G17 S   GunSwayData F5AD75CA-6B6E-4468-A009-00C14DBDBB2F
-- G17 G18 GunSwayData BE55899F-F911-4A27-BD8D-54BA30AE82B0
-- 
