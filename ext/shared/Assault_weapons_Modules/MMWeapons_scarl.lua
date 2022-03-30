class "MMWeapons_scarl"

function MMWeapons_scarl:Write(mmResources)

	if (mmResources:IsLoaded('scarl')) then
		mmResources:SetLoaded('scarl', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('scarl'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed scarl - Pimped AMMO size...')
	end

end
return MMWeapons_scarl()