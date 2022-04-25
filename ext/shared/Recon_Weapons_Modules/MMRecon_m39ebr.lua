class "MMRecon_m39ebr"

function MMRecon_m39ebr:Write(instance)

	if (mmResources:IsLoaded('m39ebr')) then
		mmResources:SetLoaded('m39ebr', false)
--		local weaponBP = FiringFunctionData(mmResources:GetInstance('Instance'))
--		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('m39ebr'))
--		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed m39ebr...')
	end

end
return MMRecon_m39ebr()
