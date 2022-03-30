class "MMWeapons_AS_val"

function MMWeapons_AS_val:Write(mmResources)

	if (mmResources:IsLoaded('asval')) then
		mmResources:SetLoaded('asval', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('asval'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed AS-Val - Pimped AMMO size...')
	end

end
return MMWeapons_AS_val()