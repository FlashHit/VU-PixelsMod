class "MMWeapons_MP5K"

function MMWeapons_MP5K:Write(mmResources)

	if (mmResources:IsLoaded('mp5k')) then
		mmResources:SetLoaded('mp5k', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mp5k'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed MP5K - Pimped AMMO size...')
	end

end
return MMWeapons_MP5K()