-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- weapon config for removal of recoils / spread data on recon class

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('312F85F8-9704-4387-BACA-795AE9C1A8E2') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for M39EBR ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('13E7EBE3-5F4E-4F99-B58E-388C87B1E857') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for M40A5 ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('F0D3C036-5C68-4D4D-84FF-790A9EE79285') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for MK11 ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('790C78DF-7B37-4B69-85C1-C4C932FFE324') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for M98B ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('33917F82-5CCE-4121-9A58-927577D6AB66') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for SKS ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('C5521CEF-6A2B-40E7-BC93-D21E8AFE7DD8') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for SV98 ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('A48DC021-BF29-4848-9A2C-BE818824F8CD') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for SVD ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('5B5B22C8-A9A4-4F1F-871D-5D6ECF438867') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for L96 ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('59685F5E-2C47-46BB-B3C8-C08C7BA95B49') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for QBU88 ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('AC5B02B3-B340-47A9-9537-97686CD5E872') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for HK417 ...") 

    end
   end
 end
end)

-- ################

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('E6CB1ECD-AF77-46CC-849A-EDBB9174FC12') then
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
    if (bEnable_announcement) == (true) then dprint("Recon: Removing recoil for JNG90 ...") 

    end
   end
 end
end)

-- ################

-- 11 weapons
-- M39EBR GunSwayData 312F85F8-9704-4387-BACA-795AE9C1A8E2
-- M40A5  GunSwayData 13E7EBE3-5F4E-4F99-B58E-388C87B1E857
-- MK11   GunSwayData F0D3C036-5C68-4D4D-84FF-790A9EE79285
-- M98B   GunSwayData 790C78DF-7B37-4B69-85C1-C4C932FFE324
-- SKS    GunSwayData 33917F82-5CCE-4121-9A58-927577D6AB66
-- SV98   GunSwayData C5521CEF-6A2B-40E7-BC93-D21E8AFE7DD8
-- SVD    GunSwayData A48DC021-BF29-4848-9A2C-BE818824F8CD
-- L96    GunSwayData 5B5B22C8-A9A4-4F1F-871D-5D6ECF438867
-- QBU88  GunSwayData 59685F5E-2C47-46BB-B3C8-C08C7BA95B49
-- HK417  GunSwayData AC5B02B3-B340-47A9-9537-97686CD5E872
-- JNG90  GunSwayData E6CB1ECD-AF77-46CC-849A-EDBB9174FC12
