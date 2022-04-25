class "MMRecon_jng90"

function MMRecon_jng90:Write(instance)

	if (mmResources:IsLoaded('jng90')) then
		mmResources:SetLoaded('jng90', false)
		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jng90'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 250
		fireData.shot.projectileData:MakeWritable()
		fireData.ammo.magazineCapacity = 40

		dprint('Changed JNG-90...')
	end

end
return MMRecon_jng90()
