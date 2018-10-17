IncludeLib("FILESYS")
Include ("\\script\\class\\ktabfile.lua")
bilNowDay = date("%Y%m%d")..GetLocalDate("%H%M%S")

bilWorldRank = {
	FileTempNew = "bil4i3n_data/bil4i3n_worldrank_temp_new.txt",
	FileTempNewTbFileLoad = "\\bil4i3n_data\\bil4i3n_worldrank_temp_new.txt",
	FileTempNewHeader = "bilNamePlayer\tbilLevelPlayer",
	FileTempOld = "bil4i3n_data/bil4i3n_worldrank_temp_old.txt",
	FileTempOldTbFileLoad = "\\bil4i3n_data\\bil4i3n_worldrank_temp_old.txt",
	FileCompared = "bil4i3n_data/bil4i3n_worldrank_compared.txt",
	FileComparedTbFileLoad = "\\bil4i3n_data\\bil4i3n_worldrank_compared.txt",
	FileRankSorted = "script/global/bil4i3n/bil4i3n_log/bil4i3n_worldrank_sorted.lua",
	FileRankSortedTbFileLoad = "\\script\\global\\bil4i3n\\bil4i3n_log\\bil4i3n_worldrank_sorted.lua",
}
	
function bilWorldRank:UpdateDataPlayer()
	if GetTask(5974) ~= tonumber(bilNowDay) then
		if TabFile_Load(self.FileTempNewTbFileLoad, "bilNamePlayerUpdateData") ~= 1 then
			local bilOpenFileTemp = openfile(self.FileTempNew, "a");
			write(bilOpenFileTemp, self.FileTempNewHeader, "\n")
			closefile(bilOpenFileTemp)
		end
		TabFile_UnLoad("bilNamePlayerUpdateData")
		local bilOpenFileTemp = openfile(self.FileTempNew, "a");
		write(bilOpenFileTemp, GetName().."\t"..GetLevel().."."..GetExpPercent(), "\n")
		closefile(bilOpenFileTemp)
		SetTask(5974, tonumber(bilNowDay))
	end
end
	
function bilWorldRank:UpdateRankData()
	print(" ");
	print( "========================================================================================");
	print(" bilWorldRank -> Update Data -> Start")
	Msg2SubWord("H÷ thËng Æang ti’n hµnh lµm mÌi lπi x’p hπng c∏ nh©n toµn m∏y chÒ!")
	if TabFile_Load(self.FileTempNewTbFileLoad, self.FileTempNewTbFileLoad) ~= 1 then
		print(" Khong tai duoc file FileTempNew! -> return")
		return
	else
		if TabFile_Load(self.FileTempOldTbFileLoad, self.FileTempOldTbFileLoad) == 1 then
			self.CompareFromData()
		end
		TabFile_UnLoad(self.FileTempOldTbFileLoad)
	end
	TabFile_UnLoad(self.FileTempNewTbFileLoad)
	local bilTbTemp = {}
	local bilDataNeedSort
	if TabFile_Load(self.FileComparedTbFileLoad, self.FileComparedTbFileLoad) ~= 1 then
		bilDataNeedSort = new(KTabFile, self.FileTempNewTbFileLoad, format("bilWorldRankSort_Check_%s", bilNowDay))
	else
		bilDataNeedSort = new(KTabFile, self.FileComparedTbFileLoad, format("bilWorldRankSort_Check_%s", bilNowDay))
	end
	for bilLoopDataSort = 1, bilDataNeedSort:getRow() do
		tinsert(bilTbTemp, {bilDataNeedSort:getCell("bilNamePlayer", bilLoopDataSort), bilDataNeedSort:getCell("bilLevelPlayer", bilLoopDataSort)})
	end
	bilDataNeedSort:release()
	sort(bilTbTemp, function (a, b) return(tonumber(a[2]) > tonumber(b[2])) end)
	local bilOpenFileRanking = openfile(self.FileRankSorted, "w")
	write(bilOpenFileRanking, "bil4i3nRankingData = {\n\t["..bilString2Byte("GM01").."] = {bilRankNum = "..bilNowDay..", bilNamePlayer = 'GM01'},", "\n")
	for bilSave2Tb = 1, getn(bilTbTemp) do
		write(bilOpenFileRanking, "\t["..bilString2Byte(bilTbTemp[bilSave2Tb][1]).."] = {bilRankNum = "..bilSave2Tb..", bilNamePlayer = '"..bilTbTemp[bilSave2Tb][1].."', bilLevelPlayer = "..bilTbTemp[bilSave2Tb][2].."},", "\n")
	end
	write(bilOpenFileRanking, "}", "\n")
	closefile(bilOpenFileRanking)
	self.ConvertFile()
	print(" bilWorldRank -> Sorted -> Done")
	dofile(bilWorldRank.FileRankSorted)
	dofile("script/global/bil4i3n/bil4i3n_worldrank.lua")
	print(" bilWorldRank -> dofile RankSorted -> Done")
	Msg2SubWord("Lµm mÌi th¯ hπng giang hÂ cho ng≠Íi ch¨i toµn m∏y chÒ hoµn t t!")
	print( "========================================================================================");
end

function bilWorldRank:CompareFromData()
	print(" bilWorldRank -> CompareFromData Old <> New -> Compared")
	local bilOldData = new(KTabFile, bilWorldRank.FileTempOldTbFileLoad, format("bilWorldRank_OldData_%s", bilNowDay))
	local bilNowData = new(KTabFile, bilWorldRank.FileTempNewTbFileLoad, format("bilWorldRank_New_%s", bilNowDay))
	local bilRowNowData, bilCheckNum, bilWriteData2Compared = bilNowData:getRow(), 0, openfile(bilWorldRank.FileCompared, "w")
	write(bilWriteData2Compared, bilWorldRank.FileTempNewHeader, "\n")
	for bilLoopOldData = 1, bilOldData:getRow() do
		for bilLoopNowData = 1, bilRowNowData do
			if tostring(bilOldData:getCell("bilNamePlayer", bilLoopOldData)) ~= tostring(bilNowData:getCell("bilNamePlayer", bilLoopNowData)) then
				bilCheckNum = bilCheckNum + 1
			else
				write(bilWriteData2Compared, tostring(bilNowData:getCell("bilNamePlayer", bilLoopNowData)).."\t"..tostring(bilNowData:getCell("bilLevelPlayer", bilLoopNowData)), "\n")
				break
			end
		end
		if bilCheckNum == bilRowNowData then
			write(bilWriteData2Compared, tostring(bilOldData:getCell("bilNamePlayer", bilLoopOldData)).."\t"..tostring(bilOldData:getCell("bilLevelPlayer", bilLoopOldData)), "\n")
		end
		bilCheckNum = 0
	end
	for bilCompareDataNewWithOld = 1, bilNowData:getRow() do
		bilCheckNum = 0
		for bilOldDt = 1, bilOldData:getRow() do
			if tostring(bilOldData:getCell("bilNamePlayer", bilOldDt)) ~= tostring(bilNowData:getCell("bilNamePlayer", bilCompareDataNewWithOld)) then
				bilCheckNum = bilCheckNum + 1
			end
		end
		if bilCheckNum == bilOldData:getRow() then
			write(bilWriteData2Compared, tostring(bilNowData:getCell("bilNamePlayer", bilCompareDataNewWithOld)).."\t"..tostring(bilNowData:getCell("bilLevelPlayer", bilCompareDataNewWithOld)), "\n")
		end
	end
	closefile(bilWriteData2Compared)
	bilOldData:release()
	bilNowData:release()
	print(" bilWorldRank -> CompareFromData -> Complete")
end

function bilWorldRank:ConvertFile()
	print(" ConvertFile -> Chuyen file Compared -> TempOld")
	local bilOpenFileCompared
	if TabFile_Load(bilWorldRank.FileComparedTbFileLoad, bilWorldRank.FileComparedTbFileLoad) ~= 1 then
		print(" ConvertFile -> Khong tai duoc file Compared!")
		if TabFile_Load(bilWorldRank.FileTempNewTbFileLoad, bilWorldRank.FileTempNewTbFileLoad) == 1 then
			print(" ConvertFile -> FileTempNew -> Old")
			bilOpenFileCompared = new(KTabFile, bilWorldRank.FileTempNewTbFileLoad, format("bilConvertCompared2Old_%s", bilNowDay))
		else
			print(" ConvertFile -> Khong duoc thuc hien!")
			return
		end
	else
		bilOpenFileCompared = new(KTabFile, bilWorldRank.FileComparedTbFileLoad, format("bilConvertCompared2Old_%s", bilNowDay))
	end
	TabFile_UnLoad(bilWorldRank.FileTempNewTbFileLoad)
	TabFile_UnLoad(bilWorldRank.FileComparedTbFileLoad)
	local bilOpenFileOld = openfile(bilWorldRank.FileTempOld, "w")
	write(bilOpenFileOld, bilWorldRank.FileTempNewHeader, "\n")
	for bilLoopDataConvert = 1, bilOpenFileCompared:getRow() do
		write(bilOpenFileOld, tostring(bilOpenFileCompared:getCell("bilNamePlayer", bilLoopDataConvert)).."\t"..tostring(bilOpenFileCompared:getCell("bilLevelPlayer", bilLoopDataConvert)), "\n")
	end
	bilOpenFileCompared:release()
	closefile(bilOpenFileOld)
	print(" ConvertFile -> Lam moi file Compared")
	local bilOpenFileComparedEmpty = openfile(bilWorldRank.FileCompared, "w");
	closefile(bilOpenFileComparedEmpty)
	print(" ConvertFile -> Lam moi file TempNew")
	local bilOpenFileTemp = openfile(bilWorldRank.FileTempNew, "w");
	write(bilOpenFileTemp, bilWorldRank.FileTempNewHeader, "\n")
	closefile(bilOpenFileTemp)
	print(" ConvertFile -> Done")
end

function bilWorldRank:GetWorldRank()
	if GetTask(5972) ~= tonumber(date("%Y%m%d")) then
		if TabFile_Load(bilWorldRank.FileRankSortedTbFileLoad, bilWorldRank.FileRankSortedTbFileLoad) ~= 1 then
			if GetTask(5973) > 0 then
				return GetTask(5973)
			else
				return "V…n ch≠a x’p hπng"
			end
		else
			TabFile_UnLoad(bilWorldRank.FileRankSortedTbFileLoad)
			-- dofile(bilWorldRank.FileRankSorted)
			Include(bilWorldRank.FileRankSortedTbFileLoad)
		end
		if FALSE(bil4i3nRankingData[tonumber(bilString2Byte(GetName()))]) then
			SetTask(5973, 0)
		else
			SetTask(5973, tonumber(bil4i3nRankingData[tonumber(bilString2Byte(GetName()))].bilRankNum))
		end
		SetTask(5972, tonumber(date("%Y%m%d")))
	end
	if GetTask(5973) <= 0 then
		return "V…n ch≠a x’p hπng"
	else
		return GetTask(5973)
	end
end

function bilString2Byte(string)
	local len, bilByteRet = strlen(string), ""
	for i = 1, len do 
		bilByteRet = bilByteRet..strbyte(string, i)
	end
	return bilByteRet
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end