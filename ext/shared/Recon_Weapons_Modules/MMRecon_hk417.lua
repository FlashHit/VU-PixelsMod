class "MMRecon_hk417"

function MMRecon_hk417:Write(instance)

	if (mmResources:IsLoaded('hk417')) then
		mmResources:SetLoaded('hk417', false)
--		local weaponBP = FiringFunctionData(mmResources:GetInstance('Instance'))
--		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('hk417'))
--		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed hk417...')
	end

end
return MMRecon_hk417()
