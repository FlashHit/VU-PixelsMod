class "MMHandgun_magnum44"

function MMHandgun_magnum44:Write(mmResources)

	if (mmResources:IsLoaded('magnum44')) then
		mmResources:SetLoaded('magnum44', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('magnum44'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed magnum44 - Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('gm_magnum44')) then
		mmResources:SetLoaded('gm_magnum44', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('gm_magnum44'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed magnum44 - (GM) Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('magnum44scope')) then
		mmResources:SetLoaded('magnum44scope', false)

		local zoomData = WeaponZoomModifier(mmResources:GetInstance('magnum44scope'))
		zoomData:MakeWritable()
		zoomData.zoomRenderFov = 3.5
		dprint('Changed Magnum Scope Zoom...')
	end

	if (mmResources:IsLoaded('magnum44aim') and mmResources:IsLoaded('zoom20x')) then
		mmResources:SetLoaded('magnum44aim', false)
		mmResources:SetLoaded('zoom20x', false)

		local aimData = SoldierAimingSimulationData(mmResources:GetInstance('magnum44aim'))
		aimData:MakeWritable()
		aimData.zoomLevels[2] = ZoomLevelData(mmResources:GetInstance('zoom20x'))
		dprint('Changed Magnum Zoom Level...')
	end 


end
return MMHandgun_magnum44()