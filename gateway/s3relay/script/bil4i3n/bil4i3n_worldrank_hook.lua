
bilRankHook = {
	LGID = 8888,
	TaskLevel = 1,
	TaskRank = 2,
	tbTemp = {},
	tbTempSort = {},
	tbConvertRank = {
		{10489, 10282},
		{10488, 10281},
		{10487, 10279},
		{10486, 10280},
		{10485, 10278},
		{10484, 10277},
		{10483, 10285},
		{10482, 10286},
		{10481, 10284},
		{10480, 10283},
	},
	bil_nAllowConvertRank = 0,
	Write2Logs = 0,
}

function bilRankHook:UpdateData(bilName, bilLevel, bilPercent)
	if bilLevel < 20 then return end
	if FALSE(LG_GetLeagueObj(self.LGID, bilName)) then
		local bil_1 = LG_CreateLeagueObj()
		LG_SetLeagueInfo(bil_1, self.LGID, bilName)
		LG_ApplyAddLeague(bil_1, "", "")
		LG_FreeLeagueObj(bil_1)
	end
	local bilLevelPercent = 0
	if bilPercent == 0 then 
		bilLevelPercent = tonumber(bilLevel.."00")
	elseif bilPercent < 10 then 
		bilLevelPercent = tonumber(bilLevel.."0"..bilPercent)
	elseif bilPercent > 99 then
		bilLevelPercent = tonumber(bilLevel.."99")
	else
		bilLevelPercent = tonumber(bilLevel..bilPercent)
	end
	LG_ApplySetLeagueTask(self.LGID, bilName, self.TaskLevel, bilLevelPercent)
end

function bilRankHook:UpdateRank()
	local bilHandle = LG_GetFirstLeague(self.LGID)
	
	if FALSE(bilHandle) then
		return print("--> bilWorldRank: No Rank bilHandle!")
	end
	
	local bilName, bilLevel, bilRankCount
	local Logs = ((self.Write2Logs == 1) and 1 or nil)
	local Logs_hFile = "script/bil4i3n_logs/WorldRank_"..date("%y_%m_%d").."_"
	local Logs_hFile_RawData = "RawData.log"
	local Logs_hFile_SortData = "SortData.log"
	
	if Logs then
		Logs_hFile_RawData = openfile(Logs_hFile..Logs_hFile_RawData, "a")
	end
	
	while (not FALSE(bilHandle)) do
		if (FALSE(bilHandle)) then
			break
		else
			bilName = LG_GetLeagueInfo(bilHandle)
			bilLevel = LG_GetLeagueTask(self.LGID, bilName, self.TaskLevel)
			tinsert(self.tbTemp, {bilName, bilLevel})
			bilHandle = LG_GetNextLeague(self.LGID, bilHandle)
			
			if Logs then
				write(Logs_hFile_RawData, date("[%d-%m-%y %H:%M:%S]").."\t\tLevel: "..bilLevel.."\t\tName: "..bilName.."\n")
			end
		end
	end
	
	bilRankCount = getn(self.tbTemp)
	
	if Logs then
		closefile(Logs_hFile_RawData)
		
		Logs_hFile_SortData = openfile(Logs_hFile..Logs_hFile_SortData, "a")
		write(Logs_hFile_SortData, "\n\tThe total number of ranking: "..bilRankCount.."\n\tLeagueID: "..self.LGID.."\tTaskLevel: "..self.TaskLevel.."\tTaskRank: "..self.TaskRank.."\n\tConvertRank: "..self.bil_nAllowConvertRank.."\n")
		write(Logs_hFile_SortData, "------------------------------------------------------------------------------------------------------------\n\t\n")
	end
	
	local bilCurValue, bilCurSel = 0, 0
	
	if bilRankCount > 0 then
		self.tbTempSort = self.tbTemp
		
		sort(self.tbTempSort, function (a, b) return(a[2] > b[2]) end)
		
		for i = 1, bilRankCount do
			LG_ApplySetLeagueTask(self.LGID, self.tbTempSort[i][1], self.TaskRank, i)
			
			if Logs then
				write(Logs_hFile_SortData, date("[%d-%m-%y %H:%M:%S]").."\tRank: "..i.."\t\tLevel: "..self.tbTempSort[i][2].."\t\tName: "..self.tbTempSort[i][1].."\n")
			end
		end
		
		if Logs then
			closefile(Logs_hFile_SortData)
		end
		
		local bil_2 = 10
		
		Ladder_ClearLadder(10287)
		
		for iTop = 1, 10 do
			bil_2 = bil_2 - 1
			
			if FALSE(self.tbTempSort[iTop]) or FALSE(self.tbTempSort[iTop][1]) or FALSE(self.tbTempSort[iTop][2]) then
				break
			end
			
			if self.bil_nAllowConvertRank == 1 then
				Ladder_NewLadder(10287, self.tbTempSort[iTop][1], tonumber("1."..bil_2), 1)
			else
				Ladder_NewLadder(10287, self.tbTempSort[iTop][1], tonumber(strsub(tostring(self.tbTempSort[iTop][2]), 1, strlen(tostring(self.tbTempSort[iTop][2])) - 2)), 1)
			end
		end
		
		local bil_3_Name, bil_3_Value
		
		for bil_l_1 = 1, getn(self.tbConvertRank) do
			bil_2 = 10
			Ladder_ClearLadder(self.tbConvertRank[bil_l_1][2])
			
			for bil_l_2 = 1, 10 do
				bil_2 = bil_2 - 1
				bil_3_Name, bil_3_Value = Ladder_GetLadderInfo(self.tbConvertRank[bil_l_1][1], bil_l_2)
				
				if FALSE(bil_3_Name) or FALSE(bil_3_Value) then
					break
				end
				
				if self.bil_nAllowConvertRank == 1 then
					Ladder_NewLadder(self.tbConvertRank[bil_l_1][2], bil_3_Name, tonumber("1."..bil_2), 1)
				else
					Ladder_NewLadder(self.tbConvertRank[bil_l_1][2], bil_3_Name, tonumber(strsub(tostring(bil_3_Value), 1, strlen(tostring(bil_3_Value)) - 2)), 1)
				end
			end
		end
		
		self.tbTemp = {}
		self.tbTempSort = {}
	else
		return print("Rank Count: 0 ---> Return")
	end
	
	local a = " "
	a = a..((Logs) and "with [ Logs ]" or "")
	a = a..((self.bil_nAllowConvertRank == 1) and " and [ Convert Rank ]" or "")
	
	print("                                   bilWorldRank Count: "..bilRankCount..a)
	print(" ========================================================================================")
end

function FALSE(value)
	if (not(value) or value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end
