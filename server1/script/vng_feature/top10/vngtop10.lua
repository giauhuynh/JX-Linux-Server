--HÖ thèng tiÕp nhËn ®¨ng ký vµ xÕp h¹ng 10 ng­êi level cao nhÊt server - Created by DinhHQ - 20110614

Include("\\script\\vng_feature\\top10\\vngglobalvar.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\task\\metempsychosis\\task_func.lua")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function tbTop10:Init()
	self.tbSubcribers = {}
	self.nRegisterCount = 0
end
--=======================PhÇn ®¨ng ký vµ cËp nhËt===========================
function tbTop10:LuuDSNhanVat()
	if GetLevel()>=10 or ST_GetTransLifeCount()>0 then

	if not self.tbSubcribers then
		self:Init()
	end
	local strName = GetName()
	if CheckTop10(strName) == 1 then
		return
	end
	if (not self.tbSubcribers[strName]) then
		self.tbSubcribers[strName] = {}
		local tbSubcriber = self.tbSubcribers[strName]
		tinsert(tbSubcriber, ST_GetTransLifeCount())			--level hiÖn t¹i
		tinsert(tbSubcriber, GetLevel())			--level hiÖn t¹i
		tinsert(tbSubcriber, GetExp()/1e9)		--kinh nghiÖm hiÖn t¹i
		tinsert(tbSubcriber, GetExpPercent())		--% hiÖn t¹i
	end
	if self.tbSubcribers[strName] then
		local tbSubcriber = self.tbSubcribers[strName]
		tbSubcriber[self.nST1_LVL] =  ST_GetTransLifeCount()
		tbSubcriber[self.nCUR_LVL] = GetLevel()			--level hiÖn t¹i
		tbSubcriber[self.nCUR_EXP] = GetExp()/1e9		--kinh nghiÖm hiÖn t¹i
		tbSubcriber[self.nCUR_EXP_PERCENT] = GetExpPercent()	--% hiÖn t¹i	
	end
	self:Subcribers2File()
	end
end
function tbTop10:Subcribers2File()
	local tbTemp = {}
	tinsert(tbTemp, self.tbFileHeader)
	for key, val in self.tbSubcribers do
		tinsert(tbTemp, {key, val[self.nST1_LVL], val[self.nCUR_LVL], val[self.nCUR_EXP], val[self.nCUR_EXP_PERCENT]})
	end
	tbVngLib_File:Table2File(self.strFilePath, self.strFileName, "w", tbTemp)	
	return 1
end

--=======================Top list===========================
Trungsinh={
	[0]={0},
	[1]={200},
	[2]={400},
	[3]={600},
	[4]={800},
	[5]={1000},
	[6]={1200},
}
function CheckTop10(zName)
	for i = 1, 10 do
		local nten, ncap,nphai = Ladder_GetLadderInfo(10270, i)
		if (nten == zName) then
			return 1
		end
	end
	return 0
end
function tbTop10:TinhLucXH(zName)
	if CheckTop10(zName) == 1 then
		return
	end
	if not self.tbTopList then
		return
	end
	local nCount = getn(self.tbTopList)

	if nCount > 200 then
		nCount=200
	end
	for i = 1, nCount do
		if self.tbTopList[i][1] == zName then
			SetEnergy(self.tbTopList[i][6])
			return
		end
	end
end
function tbTop10:SapXepDSXepHang()
	self.tbTopList = {}
	local tbTemp = {}
	local strTime = GetLocalDate("%Y-%m-%d_%H:%M:%S")
	--t¹o table l­u t¹m d÷ liÖu cho viÖc s¾p xÕp

	if not self.tbSubcribers then
		return
	end

	for key, val in self.tbSubcribers do
		if CheckTop10(key) == 0 then
			nExp=((Trungsinh[val[self.nST1_LVL]][1]+val[self.nCUR_LVL])*2)+(val[self.nCUR_EXP_PERCENT]/100);
			--nExp = ((val[self.nST1_LVL] - 160) * 2 + 18.5667721) + ((val[self.nST2_LVL] - 170) * 4 + 72.3667721) + ((val[self.nST3_LVL] - 180) * 8 + 221.9667721) + (self.tbCurLvl_Exp[val[self.nCUR_LVL]]) + val[self.nCUR_EXP]
			tinsert(tbTemp, {key,val[self.nST1_LVL],val[self.nCUR_LVL], val[self.nCUR_EXP_PERCENT],nExp,0, strTime})
		end
	end

	if not tbTemp then
		return
	end

	--s¾p xÕp table t¹m theo thø tù gi¶m dÇn dùa vµo sè exp tæng
	sort(tbTemp, function (a, b) return(a[5] > b[5]) end)

	local nCount = getn(tbTemp)
	local dem = 11
	for i = 1, nCount do
		self.tbTopList[i] = tbTemp[i]
		self.tbTopList[i][6] = dem
		dem = dem + 1
	end
	--save top list vµo file
	self:TopList2File()
end

function tbTop10:TopList2File()
	local tbTemp = {}
	--insert header file
	tinsert(tbTemp, self.tbTopListFileHeader)
	for key, val in self.tbTopList do
		tinsert(tbTemp, val)
	end
	tbVngLib_File:Table2File(self.strFilePath, self.strTopListFileName, "w", tbTemp)	
	return 1
end

function tbTop10:TopListFromFile()
	if not self.tbTopList then
		self.tbTopList = {}
	end
	local tb = tbVngLib_File:TableFromFile(tbTop10.strFilePath, tbTop10.strTopListFileName, {"*w", "*n", "*n", "*n","*n", "*n", "*w"})
	if not tb then
		tbTop10.tbTopList = nil
		return
	end
	for i = 1, getn(tb) do
		self.tbTopList[i] = tb[i]
	end
end

--=======================Top list===========================
--Load danh s¸ch ®¨ng ký vµ top 10 vµo table
function LoadFromFile()
	--load danh s¸ch ®¨ng ký
	if not tbTop10.tbSubcribers then
		tbTop10.tbSubcribers = {}
	end
	local tb = tbVngLib_File:TableFromFile(tbTop10.strFilePath, tbTop10.strFileName, {"*w", "*n", "*n", "*n", "*n"})
	if not tb then
		tbTop10.tbSubcribers = nil
		return
	end
	local nLength = 0
	for i = 1, getn(tb) do		
		if tb[i][1] then
			nLength = nLength + 1
			tbTop10.tbSubcribers[tb[i][1]] = {tb[i][2], tb[i][3], tb[i][4], tb[i][5]}			
		end
	end
	
	tbTop10.nRegisterCount = nLength
	--load top list
	tbTop10:TopListFromFile()
end
local a = AutoFunctions:Add(LoadFromFile)