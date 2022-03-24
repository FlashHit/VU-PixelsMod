class "MMWeapons_mortar"

function MMWeapons_mortar:Write(instance)

-- MORTAR STUFF --

	if (mmResources:IsLoaded('mortarbase')) then
		mmResources:SetLoaded('mortarbase', false)

		local weaponData = SoldierWeaponBlueprint(mmResources:GetInstance('mortarbase'))

		local deployData = ebxEditUtils:GetWritableContainer(weaponData, 'object.CustomWeaponType')
		deployData:MakeWritable()
		deployData.checkClearSky = false
		deployData.deployAreaRadius = 0.22
		deployData.deployAreaGroundRayLength = 3.1
		deployData.deployAreaGroundFlatness = 0.5
		dprint('Changed Mortar Base...')
	end

	if (mmResources:IsLoaded('mortardeployed')) then
		mmResources:SetLoaded('mortardeployed', false)

		local vehicleData = VehicleBlueprint(mmResources:GetInstance('mortardeployed'))

		local entityData = ebxEditUtils:GetWritableContainer(vehicleData, 'object')
		entityData:MakeWritable()
		entityData.allowVehicleOutsideCombatAreas = true
		dprint('Changed Mortar Deployed Entity...')
	end

	if (mmResources:IsLoaded('mortardeployedff1') and mmResources:IsLoaded('mortardeployedff2')) then
		mmResources:SetLoaded('mortardeployedff1', false)
		mmResources:SetLoaded('mortardeployedff2', false)
		
		local fireData1 = FiringFunctionData(mmResources:GetInstance('mortardeployedff1'))
		fireData1:MakeWritable()
		fireData1.ammo.magazineCapacity = 25
		fireData1.shot.spawnDelay = 0
		fireData1.fireLogic.rateOfFire = 900
		fireData1.fireLogic.reloadTime = 2
		
		local fireData2 = FiringFunctionData(mmResources:GetInstance('mortardeployedff2'))
		fireData2:MakeWritable()
		fireData2.ammo.magazineCapacity = 10
		fireData2.shot.spawnDelay = 0
		fireData2.fireLogic.rateOfFire = 900
		fireData2.fireLogic.reloadTime = 2

		dprint('Changed Mortar Deployed Fire Functions...')
	end

	if (mmResources:IsLoaded('mortardeployedrot1') and mmResources:IsLoaded('mortardeployedrot2') and mmResources:IsLoaded('mortardeployedrot3')) then
		mmResources:SetLoaded('mortardeployedrot1', false)
		mmResources:SetLoaded('mortardeployedrot2', false)
		mmResources:SetLoaded('mortardeployedrot3', false)
		
		local rot1Data = ChildRotationBodyData(mmResources:GetInstance('mortardeployedrot1'))
		rot1Data:MakeWritable()
		rot1Data.angularMomentumMultiplier = 750
		rot1Data.angularConstraintMin = -360
		rot1Data.angularConstraintMax = 360
		
		local rot2Data = ChildRotationBodyData(mmResources:GetInstance('mortardeployedrot2'))
		rot2Data:MakeWritable()
		rot2Data.angularMomentumMultiplier = 750
		rot2Data.angularConstraintMin = -5
		rot2Data.angularConstraintMax = 10
		
		local rot3Data = ChildRotationBodyData(mmResources:GetInstance('mortardeployedrot3'))
		rot3Data:MakeWritable()
		rot3Data.angularMomentumMultiplier = -750
		rot3Data.angularConstraintMin = -26
		rot3Data.angularConstraintMax = 60

		dprint('Changed Mortar Deployed Rotation Data...')
	end

	if (mmResources:IsLoaded('mortarexp2')) then
		mmResources:SetLoaded('mortarexp2', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('mortarexp2'))
		expData:MakeWritable()
		expData.blastDamage = 15000
		expData.blastRadius = 8
		expData.blastImpulse = 18000
		expData.shockwaveDamage = 1000
		expData.shockwaveRadius = 10
		expData.shockwaveImpulse = 15000
		expData.shockwaveTime = 0.15
		expData.triggerImpairedHearing = true
		expData.isCausingSuppression = true
		dprint('Changed Mortar Explosion (2)...')
	end

	if (mmResources:IsLoaded('mortarsmk')) then
		mmResources:SetLoaded('mortarsmk', false)

		local bulletData = MissileEntityData(mmResources:GetInstance('mortarsmk'))
		bulletData:MakeWritable()
		bulletData.timeToArm = 0
		bulletData.damage = 420
		bulletData.maxCount = 100
		bulletData.impactImpulse = 40000
		dprint('Changed Mortar Explosion (Smoke)...')
	end 
end

return MMWeapons_mortar()
 