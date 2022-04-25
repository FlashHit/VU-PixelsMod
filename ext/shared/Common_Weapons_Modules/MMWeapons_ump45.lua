class "MMWeapons_ump45"

function MMWeapons_ump45:Write(mmResources)

	if (mmResources:IsLoaded('ump45')) then
		mmResources:SetLoaded('ump45', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('ump45'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed ump45 - Pimped AMMO size...')
	end

end
return MMWeapons_ump45()