-- weapon config for removal of recoils / spread data on Support class

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('0A9F6EF7-FE2D-46BC-AD75-CF7B67FF40C4') then
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
    dprint("Support: Removing recoil from M27iar ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('08D8BE73-EABA-4E16-A19A-20FE567945F2') then
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
    dprint("Support: Removing recoil from M240B ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('93453CE1-71E1-4E43-86D5-31CC9DB9FE16') then
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
    dprint("Support: Removing recoil from M249 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('03DF3628-8460-4646-A2B4-75252269614C') then
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
    dprint("Support: Removing recoil from M60 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('95D41E17-EF1C-40BE-90B7-F500B37CF926') then
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
    dprint("Support: Removing recoil from PKP ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('409BB5D5-D2B7-45C7-B5F4-4E15F28E9AC3') then
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
    dprint("Support: Removing recoil from RPK ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('31D463AE-2AB3-4A2D-9BE0-6D9EB1B35C96') then
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
    dprint("Support: Removing recoil from Type 88 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('BF62D41F-F01C-44EF-881B-E327EE9AD03F') then
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
    dprint("Support: Removing recoil from QBB95 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('09925CD8-0B36-4AE3-A347-1FFCA11C01C0') then
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
    dprint("Support: Removing recoil from L86 ...") 

    end
   end
 end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('97183A05-F20B-4C9B-A5AE-CF0DD1DDF808') then
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
    dprint("Support: Removing recoil from LSAT ...") 

    end
   end
 end)

-- ################
