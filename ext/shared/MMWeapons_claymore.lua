class "MMWeapons_claymore"

function MMWeapons_claymore:Write(instance)

	if (mmResources:IsLoaded('claymore_havok')) then
		mmResources:SetLoaded('claymore_havok', false)

		local expData = HavokAsset(mmResources:GetInstance('claymore_havok'))
		expData:MakeWritable()
		expData.scale = 2.0
		dprint('Changed Claymore HavokAsset...')
	end

	if (mmResources:IsLoaded('claymoreexp')) then
		mmResources:SetLoaded('claymoreexp', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('claymoreexp'))
		expData:MakeWritable()
		expData.blastDamage = 150
		expData.blastRadius = 15
		expData.blastImpulse = 2000
		expData.shockwaveDamage = 200
		expData.shockwaveRadius = 17
		expData.shockwaveImpulse = 2000
		expData.shockwaveTime = 0.15
		expData.triggerImpairedHearing = true
		expData.isCausingSuppression = true
		dprint('Changed Claymore Explosion...')
	end

	if (mmResources:IsLoaded('claymore')) then
		mmResources:SetLoaded('claymore', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('claymore'))
		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 8
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1

		fireData.fireLogic.rateOfFire = 250.0
		dprint('Changed Claymore magazine...')
	end 
	if (mmResources:IsLoaded('claymore_expentity')) then
		mmResources:SetLoaded('claymore_expentity', false)

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('claymore_expentity'))
		expEntityData:MakeWritable()
		expEntityData.health = 5
		expEntityData.maxCount = 8
		dprint('Changed Claymore Placed Entity...')
	end 

end
return MMWeapons_claymore()
