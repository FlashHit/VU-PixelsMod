--Events:Subscribe('Level:Destroy', function()
--local s_OldMemory = math.floor(collectgarbage("count")/1024)
--	collectgarbage('collect')
--	print("*Collecting Garbage on Level Destroy: " .. math.floor(collectgarbage("count")/1024) .. " MB | Old Memory: " .. s_OldMemory .. " MB")
--end)


Events:Subscribe('Level:Destroy', function()
    s_EndOfRound = true
	local localPlayer = PlayerManager:GetLocalPlayer()
	if localPlayer ~= nil then
		if player.name == localPlayer.name then
			local oldMemory = collectgarbage("count")
			collectgarbage('collect')
			print("*Collecting Garbage on Level Destroy: " .. collectgarbage("count") .. " KB | Old Memory: " .. oldMemory .. " KB")
		end
	end
end)