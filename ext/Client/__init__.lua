NetEvents:Subscribe("UpdatedOptions", function(p_UpdatedOptions)
	for l_OptionName, l_Enable in pairs(p_UpdatedOptions) do
		Config.ByName[l_OptionName] = l_Enable
	end
end)

NetEvents:Subscribe("LiveOptionEnable", function(p_Option)
	Config.ByName[p_Option] = true
	LiveUpdate(p_Option)
end)

NetEvents:Subscribe("ModEnabled", function(p_Enabled, p_Force)
	Config.Enabled = p_Enabled

	if p_Force then
		LiveUpdateAll()
	end
end)
