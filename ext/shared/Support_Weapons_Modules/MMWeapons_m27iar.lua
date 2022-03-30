class "MMWeapons_m27iar"

function MMWeapons_m27iar:Write(mmResources)

	if (mmResources:IsLoaded('m27iar')) then
		mmResources:SetLoaded('m27iar', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('m27iar'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed m27iar - Pimped AMMO size...')
	end

end
return MMWeapons_m27iar()