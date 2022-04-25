class "MMRecon_sv98"

function MMRecon_sv98:Write(instance)

	if (mmResources:IsLoaded('sv98')) then
		mmResources:SetLoaded('sv98', false)
--		local weaponBP = FiringFunctionData(mmResources:GetInstance('Instance'))
--		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('sv98'))
--		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed sv98...')
	end

end
return MMRecon_sv98()
