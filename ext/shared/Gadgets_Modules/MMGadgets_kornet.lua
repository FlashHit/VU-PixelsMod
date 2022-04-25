class "MMGadgets_kornet"

function MMGadgets_kornet:Write(mmResources)

-- US and RU Kornet --
	if (mmResources:IsLoaded('kornet_projectile')) then
		dprint('Loading kornet_projectile data ... ... ... ... ... ')
		mmResources:SetLoaded('kornet_projectile', false)

		local fireData = MissileEntityData(mmResources:GetInstance('kornet_projectile'))
		fireData:MakeWritable()
		fireData.maxSpeed = 75
		fireData.maxTurnAngle = 90
		fireData.maxAttachableInclination = 90
--		fireData.member(1).maxRotation = 40.0
--		fireData.member(1).minRotation = -5.0
--		fireData.gravity = 0
		dprint('Changed kornet_projectile - Super charched Rocketpods ammo... ... ... ... ... ')
	end


	if (mmResources:IsLoaded('kornet_launcher')) then
		dprint('Loading kornet_launcher data ... ... ... ... ... ')
		mmResources:SetLoaded('kornet_launcher', false)

		local fireData = AnimationTurretRotationComponentData(mmResources:GetInstance('kornet_launcher'))
		fireData:MakeWritable()
--		fireData.maxTurnAngle = 90
--		fireData.maxAttachableInclination = 90
		member = rotations.member(1)
		fireData.member.maxRotation = 40.0
		fireData.member.minRotation = -5.0
--		fireData.gravity = 0
		dprint('Changed kornet_projectile - Super charched Rocketpods ammo... ... ... ... ... ')
	end



end
return MMGadgets_kornet()
