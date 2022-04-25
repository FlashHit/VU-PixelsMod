class "MMRecon_sks"

function MMRecon_sks:Write(instance)

	if (mmResources:IsLoaded('sks')) then
		mmResources:SetLoaded('sks', false)
--		local weaponBP = FiringFunctionData(mmResources:GetInstance('Instance'))
--		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('sks'))
--		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed sks...')
	end

end
return MMRecon_sks()
