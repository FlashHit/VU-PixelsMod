class "MMRecon_qbu88"

function MMRecon_qbu88:Write(instance)

	if (mmResources:IsLoaded('qbu88')) then
		mmResources:SetLoaded('qbu88', false)
--		local weaponBP = FiringFunctionData(mmResources:GetInstance('Instance'))
--		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('qbu88'))
--		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed qbu88...')
	end

end
return MMRecon_qbu88()
