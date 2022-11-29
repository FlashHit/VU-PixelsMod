-- weapon config for removal of scope shaking

   local partition_10_0xZoom = Guid ("F412EBAD-2551-4832-93A0-B9E1A412FB5D")
    local instance_10_0xZoom = Guid ("E068484D-EE7F-4199-992A-59772D8B7D4B")

ResourceManager:RegisterInstanceLoadHandler(partition_10_0xZoom, instance_10_0xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 10_0xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_10xENVG = Guid ("D8CE5A90-5A74-4726-9D3C-B879996246E1")
    local instance_10xENVG = Guid ("E754B4D6-BAD4-4FEE-9E00-8F9C4904975E")

ResourceManager:RegisterInstanceLoadHandler(partition_10xENVG, instance_10xENVG, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 10xENVG - No scope shaking ...')
	end)
 -- ############# 

   local partition_12_0xZoom = Guid ("72AFA964-EFE0-4203-83E2-88052DD7ECBA")
    local instance_12_0xZoom = Guid ("B6B46C0F-92B8-4F9F-9429-595261801A14")

ResourceManager:RegisterInstanceLoadHandler(partition_12_0xZoom, instance_12_0xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 12_0xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_1xENVG = Guid ("C28310FD-2731-44A3-9B56-A048B3227EA6")
    local instance_1xENVG = Guid ("242DAE61-CC3D-428A-8AC5-324FA95EBE7B")

ResourceManager:RegisterInstanceLoadHandler(partition_1xENVG, instance_1xENVG, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 1xENVG - No scope shaking ...')
	end)
 -- ############# 

   local partition_2_0xZoom = Guid ("3D6A5B06-8046-47E8-8EE6-348E878E5DF5")
    local instance_2_0xZoom = Guid ("B06E9839-DA28-42E6-86C4-42D1F8E3AADB")

ResourceManager:RegisterInstanceLoadHandler(partition_2_0xZoom, instance_2_0xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 2_0xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_20xENVG_COOP = Guid ("401211FA-7E01-4019-BA4A-247406AD4776")
    local instance_20xENVG_COOP = Guid ("9C462DC8-87D6-41B0-A4EF-9111E8D960B0")

ResourceManager:RegisterInstanceLoadHandler(partition_20xENVG_COOP, instance_20xENVG_COOP, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 20xENVG_COOP - No scope shaking ...')
	end)
 -- ############# 

   local partition_20xZoom = Guid ("609CC1AC-4B36-4197-B1C1-2357E57CEBAF")
    local instance_20xZoom = Guid ("34C9BF53-1E0C-42D3-9EC1-696421E8A420")

ResourceManager:RegisterInstanceLoadHandler(partition_20xZoom, instance_20xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 20xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_3_4xZoom = Guid ("6E7D36F2-7BAC-4E20-A8D7-8ABF9F7FC6D2")
    local instance_3_4xZoom = Guid ("E7AA2666-EE70-4B9F-A918-7686E7932DAF")

ResourceManager:RegisterInstanceLoadHandler(partition_3_4xZoom, instance_3_4xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 3_4xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_4_0xZoom = Guid ("7F25A028-ED1A-4B4E-A291-8A8E8B3A9159")
    local instance_4_0xZoom = Guid ("BF74D9F8-E11C-4075-BDDB-AAC3F27C608D")

ResourceManager:RegisterInstanceLoadHandler(partition_4_0xZoom, instance_4_0xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 4_0xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_6_0xZoom = Guid ("1EDCC582-8B61-44DC-876C-C2DBB03FF74B")
    local instance_6_0xZoom = Guid ("531FFD11-A7A9-4175-9049-7ADA2333931D")

ResourceManager:RegisterInstanceLoadHandler(partition_6_0xZoom, instance_6_0xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 6_0xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_6xENVG = Guid ("8815B047-AEB1-4BCB-9A25-0128D948B3EE")
    local instance_6xENVG = Guid ("6A83DD0E-1CA3-47DF-A829-F0EFEFF228F1")

ResourceManager:RegisterInstanceLoadHandler(partition_6xENVG, instance_6xENVG, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 6xENVG - No scope shaking ...')
	end)
 -- ############# 

   local partition_7_0xZoom = Guid ("D6C590F7-9AFE-4B45-BA23-5D187678C42C")
    local instance_7_0xZoom = Guid ("BC4F88FE-DC56-4EDB-B2C6-9ABAFD993A88")

ResourceManager:RegisterInstanceLoadHandler(partition_7_0xZoom, instance_7_0xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: 7_0xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_DefaultATSights = Guid ("A211D3C5-2DA2-4A60-8A49-5F4D90D32CCB")
    local instance_DefaultATSights = Guid ("A83312DC-829D-4B36-9A9B-F0140876E14A")

ResourceManager:RegisterInstanceLoadHandler(partition_DefaultATSights, instance_DefaultATSights, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: DefaultATSights - No scope shaking ...')
	end)
 -- ############# 

   local partition_DefaultBase = Guid ("FDAAAC18-0AC9-4E17-A723-4EC293FB0813")
    local instance_DefaultBase = Guid ("B2D0DC9F-B2A0-4B50-8BA5-A56B7AF1E44B")

ResourceManager:RegisterInstanceLoadHandler(partition_DefaultBase, instance_DefaultBase, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: DefaultBase - No scope shaking ...')
	end)
 -- ############# 

   local partition_DefaultIronSights = Guid ("895050F3-B0D1-4F83-A57B-CCFA3EB0B31D")
    local instance_DefaultIronSights = Guid ("5C006FDF-FA1D-4E29-8E21-2ECAB83AC01C")

ResourceManager:RegisterInstanceLoadHandler(partition_DefaultIronSights, instance_DefaultIronSights, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: DefaultIronSights - No scope shaking ...')
	end)
 -- ############# 

   local partition_Fast_2_0xZoom = Guid ("DF98AF9C-A315-4B68-BD63-31DFAA5FABCF")
    local instance_Fast_2_0xZoom = Guid ("83D88E7E-D266-430A-8664-CA15AFFA0D66")

ResourceManager:RegisterInstanceLoadHandler(partition_Fast_2_0xZoom, instance_Fast_2_0xZoom, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: Fast_2_0xZoom - No scope shaking ...')
	end)
 -- ############# 

   local partition_FastIronSights = Guid ("FFEAFC24-9812-44BF-AD98-EBC06193739C")
    local instance_FastIronSights = Guid ("50887762-21DF-42F5-9740-ECDBCEECC3B4")

ResourceManager:RegisterInstanceLoadHandler(partition_FastIronSights, instance_FastIronSights, function(loadedInstance)
     loadedInstance = ZoomLevelData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.recoilMultiplier = 0
    loadedInstance.recoilFovMultiplier = 0

	print('Changed Scope: FastIronSights - No scope shaking ...')
	end)
 -- ############# 


