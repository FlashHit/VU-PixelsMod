class "MMWeapons_PDW_R"

function MMWeapons_PDW_R:Write(mmResources)

	if (mmResources:IsLoaded('pdwr')) then
		mmResources:SetLoaded('pdwr', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pdwr'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed PDW-R - Pimped AMMO size...')
	end

end
return MMWeapons_PDW_R()