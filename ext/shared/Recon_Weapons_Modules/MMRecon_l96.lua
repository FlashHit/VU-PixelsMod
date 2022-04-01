class "MMRecon_l96"

function MMRecon_l96:Write(instance)

	if (mmResources:IsLoaded('l96')) then
		mmResources:SetLoaded('l96', false)
--		local weaponBP = FiringFunctionData(mmResources:GetInstance('Instance'))
--		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('l96'))
--		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed l96...')
	end

end
return MMRecon_l96()
