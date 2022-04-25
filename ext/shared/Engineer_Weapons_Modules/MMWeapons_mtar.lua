class "MMWeapons_mtar"

function MMWeapons_mtar:Write(mmResources)

	if (mmResources:IsLoaded('mtar')) then
		mmResources:SetLoaded('mtar', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mtar'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed mtar - Pimped AMMO size...')
	end

end
return MMWeapons_mtar()