class "MMWeapons_tugs_sweep"
function MMWeapons_tugs_sweep:Write(instance)

	if (mmResources:IsLoaded('tugs_vehicle')) then
		mmResources:SetLoaded('tugs_vehicle', false)

		local radarSweep = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('tugs_vehicle'))

		radarSweep.controllableSweepRadius = 60
		radarSweep.controllableSweepInterval = 1.5
		radarSweep.sweepForMines = true
		radarSweep.mineSweepRadius = 60
		radarSweep.mineSweepInterval = 1.5
		dprint('Changed T-UGS Sweep Range...')
	end

	if (mmResources:IsLoaded('tugs')) then
		mmResources:SetLoaded('tugs', false)

		local entity = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('tugs'))

		entity.maxCount = 2
		dprint('Changed T-UGS coolness...')
	end

end
return MMWeapons_tugs_sweep()
