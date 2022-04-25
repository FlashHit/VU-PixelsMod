class "MMWeapons_pp19"

function MMWeapons_pp19:Write(mmResources)

	if (mmResources:IsLoaded('pp19')) then
		mmResources:SetLoaded('pp19', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pp19'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed pp19 - Pimped AMMO size...')
	end

end
return MMWeapons_pp19()