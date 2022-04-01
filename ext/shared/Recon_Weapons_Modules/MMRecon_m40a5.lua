class "MMRecon_m40a5"

function MMRecon_m40a5:Write(instance)

	if (mmResources:IsLoaded('m40a5')) then
		mmResources:SetLoaded('m40a5', false)
--		local weaponBP = FiringFunctionData(mmResources:GetInstance('Instance'))
--		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('m40a5'))
--		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed m40a5...')
	end

end
return MMRecon_m40a5()
