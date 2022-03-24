class "MMWeapons_combobags"

function MMWeapons_combobags:Write(instance)

	if (mmResources:IsLoaded('ammobag')) then
		mmResources:SetLoaded('ammobag', false)

		local supplySphereData = SupplySphereEntityData(mmResources:GetInstance('ammobag'))
		supplySphereData:MakeWritable()
		supplySphereData.receivesExplosionDamage = false
		supplySphereData.supplyData.ammo.infiniteCapacity = true
		supplySphereData.supplyData.teamSpecific = true

		supplySphereData.supplyData.ammo.radius = 10
		supplySphereData.supplyData.ammo.supplyIncSpeed = 1.5
		supplySphereData.supplyData.ammo.supplyPointsRefillSpeed = 1 -- This a multiplier !
		supplySphereData.supplyData.ammo.supplyPointsCapacity = 1 -- This a multiplier !

		supplySphereData.supplyData.healing.radius = 10
		supplySphereData.supplyData.healing.supplyIncSpeed = 3 -- it is still a ammo bag
		supplySphereData.supplyData.healing.supplyPointsRefillSpeed = 1 -- This a multiplier !
		supplySphereData.supplyData.healing.supplyPointsCapacity = 1 -- This a multiplier !

		dprint('Changed Ammobag...')
	end

--function MMWeapons_medicbag:Write(instance)

	if (mmResources:IsLoaded('medicbag')) then
		mmResources:SetLoaded('medicbag', false)

		local supplySphereData = SupplySphereEntityData(mmResources:GetInstance('medicbag'))
		supplySphereData:MakeWritable()
		supplySphereData.receivesExplosionDamage = false
		supplySphereData.supplyData.healing.infiniteCapacity = true
		supplySphereData.supplyData.teamSpecific = true

		supplySphereData.supplyData.healing.radius = 10
		supplySphereData.supplyData.healing.supplyIncSpeed = 7.5
		supplySphereData.supplyData.healing.supplyPointsRefillSpeed = 1 -- This a multiplier !
		supplySphereData.supplyData.healing.supplyPointsCapacity = 1 -- This a multiplier !

		supplySphereData.supplyData.ammo.radius = 10
		supplySphereData.supplyData.ammo.supplyIncSpeed = 0.5 -- it is still a medic bag
		supplySphereData.supplyData.ammo.supplyPointsRefillSpeed = 1 -- This a multiplier !
		supplySphereData.supplyData.ammo.supplyPointsCapacity = 1 -- This a multiplier !

		dprint('Changed Medicbag...')
	end


end

return MMWeapons_combobags()