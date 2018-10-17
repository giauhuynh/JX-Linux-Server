Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
IL("RELAYLADDER")

bilRankHook = {
	LGID = 8888,
	TaskLevel = 1,
	TaskRank = 2,
}

-- function bilRankHook:UpdateData(bilName, bilLevel, bilPercent)
	-- if bilLevel < 20 then return end
	-- if bil.False(LG_GetLeagueObj(self.LGID, bilName)) then
		-- local bil_1 = LG_CreateLeagueObj()
		-- LG_SetLeagueInfo(bil_1, self.LGID, bilName)
		-- LG_ApplyAddLeague(bil_1, "", "")
		-- LG_FreeLeagueObj(bil_1)
	-- end
	-- local bilLevelPercent = 0
	-- if bilPercent == 0 then 
		-- bilLevelPercent = tonumber(bilLevel.."00")
	-- else
		-- bilLevelPercent = tonumber(bilLevel..bilPercent)
	-- end
	-- LG_ApplySetLeagueTask(self.LGID, bilName, self.TaskLevel, bilLevelPercent)
-- end

function bilRankHook:GetRank(bilName)
	local bilRankNum = LG_GetLeagueTask(self.LGID, bilName, self.TaskRank)
	SetEnergy(bilRankNum)
	if(bilRankNum < 256) then
		SetRank(bilRankNum)
	else
		SetRank(0)
	end
end