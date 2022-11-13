-- weapon config for removal of recoils / spread data
-- jackhammer

Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('68959BC8-30F8-4D21-B051-6C1E25E32943') then
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
    dprint("Shotgun Removing recoil from Jackhammer (MK31a1) ...") 

    end
	end
end)

-- usas-12
Events:Subscribe('Partition:Loaded', function(partition)
	local instances = partition.instances

	for _, instance in pairs(instances) do
		-- Check if the instance is of the type we are looking for.
		if instance.instanceGuid == Guid('419BD9D6-B5C5-4806-9E19-D4F3B72520C1') then
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
    dprint("Shotgun Removing recoil from Usas12 ...") 

		end
	end
end)