class "MMRecon_mk11"

function MMRecon_mk11:Write(instance)

	if (mmResources:IsLoaded('mk11')) then
		mmResources:SetLoaded('mk11', false)
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mk11'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed MK11...')
	end

end
return MMRecon_mk11()
