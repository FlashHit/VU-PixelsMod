   local partition_defibs = Guid ("1B81A779-135F-11E0-B4A8-98C3FD926350")
   local instance_defibs = Guid ("ECFCD019-F32C-4CBD-94CC-A69B3DF99AB2")

   local partition_defib_projectile = Guid ("1B81A779-135F-11E0-B4A8-98C3FD926350")
   local instance_defib_projectile = Guid ("1861554A-8C81-4944-96D1-7347494F7688")

--   local partition_40mm_smokeburst_effect = Guid ("A3E3C07B-2E9C-42D2-B540-7E70594293EC")
--   local instance_40mm_smokeburst_effect = Guid ("48BBE181-231E-4E7F-A959-10ECA1BCAF57")


ResourceManager:RegisterInstanceLoadHandler(partition_defibs, instance_defibs, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.fireLogic.rateOfFire = 250
--  	print('Changed Defibs - Go trololol with the defib ...') 
end)
	
ResourceManager:RegisterInstanceLoadHandler(partition_defib_projectile, instance_defib_projectile, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.timeToLive = 25 -- This is the ZAP range !
  	print('Changed Defibs - Go trololol with the defib range ...') 
end)

