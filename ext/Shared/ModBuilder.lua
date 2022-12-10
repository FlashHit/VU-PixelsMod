local function _RecursiveResolveRequiring(p_Table, p_Path)
	for l_Name, l_Enabled in pairs(p_Table) do
		if type(l_Enabled) == "table" then
			_RecursiveResolveRequiring(l_Enabled, string.format("%s/%s", p_Path, l_Name))
		elseif l_Enabled then
			require(string.format("%s/%s", p_Path, l_Name))
		end
	end
end

_RecursiveResolveRequiring(Config.ByFileName, "__shared/MOD")
