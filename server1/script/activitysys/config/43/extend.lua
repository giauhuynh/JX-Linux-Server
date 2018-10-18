Include("\\script\\activitysys\\config\\43\\config.lua")
Include("\\script\\activitysys\\config\\43\\head.lua")
Include("\\script\\missions\\basemission\\lib.lua")

tbPoolCount = {
	[100] = {nCount = 0, szName = "诛仙镇", nTotal = 0, },
	[153] = {nCount = 0, szName = "石鼓镇", nTotal = 0, },
	[174] = {nCount = 0, szName = "龙泉村", nTotal = 0, },
}
tbBossPos =
{
	[100] = {{1758,3011}, {1675,3053}},
	[153] = {{1723,2993}, {1722,3303}},
	[174] = {{1788,3039}, {1698,3192}},
}

--添加活动NPC
function pActivity:AddInitNpc()
	local tbFarmerPos = {
		{100,1643,3145,},
		{153,1639,3187,},
		{174,1622,3202,},
	}
	local tbFarmer = {
		szName = "H籲g Nga", 
		szTitle = "<npc>春天到了，我想在村外再种些鲜花",
		nLevel = 95,
		nNpcId = 1594,
		nIsboss = 0,
		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}
	for _, tbTmpPos in tbFarmerPos do
		local nMapId, nPosX, nPosY = unpack(tbTmpPos)
		%basemission_CallNpc(tbFarmer, nMapId, nPosX*32, nPosY*32)	
	end
end
function pActivity:OnGetMuTong()
	PlayerFunLib:GetItem({tbProp={6,1,2736,1,0,0},nBindState = -2,nExpiredTime=20110405,},1,"2011植ｗ节，得到木桶")
	WriteLog(format("%s\tAccount:%s[Name:%s]得到1个水桶.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName())
			);
end

--上交催Ⅲ水的木桶
function pActivity:OnGiveMuTong()
	
	local nCount = 1 
	if not nCount or 0==nCount then
		print("拿的水桶｝量不钉")
		return
	end
	--print("OnGiveMuTong")
	--print(nCount)
	
	if not PlayerFunLib:CheckItemInBag({tbProp={6,1,2737,1,0,0},},1,"赶孔给我催水去") then
		return
	end
	
	PlayerFunLib:ConsumeEquiproomItem({tbProp={6, 1, 2737, 1, 0, 0},},1)
	self:AddTaskDaily(%nTskIdx_DaylyGiveWater,nCount)
	self:GiveAward("mutong", nCount, "交装Ⅲ水的桶磷取奖品")
	
	local nTsk = self:GetTask(%nTskIdx_DaylyGiveWater)
	local nDaylyCount = nTsk - floor(nTsk/256) * 256
	WriteLog(format("%s\tAccount:%s[Name:%s] 交[%d] 个装Ⅲ水的桶，今套还要加[%d] 个.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName(),
				nCount,
				nDaylyCount)
			);
	
	--｝据统计
	--if self:CheckTaskDaily(%nTskIdx_DaylyGiveWater,1,"","==") == 1 then
		--AddStatData("zhishujie_canyurenshu")
	--end
	--AddStatData("zhishujie_dashuicishu")
	
	--print(self:GetTask(%nTskIdx_DaylyGiveWater))
end

--上交馏饮％水
function pActivity:OnGiveLongYinShengShui(nCount)
	
	if not nCount or 0==nCount then
		print("带的馏饮％水｝量不钉")
		return
	end

	--print("OnGiveLongYinShengShui")
	--print(nCount)
	
	self:GiveAward("longyinshengshui", nCount, "交馏饮％水得到奖品")

	if self:CheckTask(%nTskIdx_GiveLongYinShengShuiExp,%nMaxExpFromLongYinShengShui,"","<") then	
		local nAddExpBaseCount = %nPerExpFromLongYinShengShui * nCount
		local nExpCur = self:GetTask(%nTskIdx_GiveLongYinShengShuiExp)
		local nMaxExpAdd = %nMaxExpFromLongYinShengShui - nExpCur
		--如果加的经研超过限制，截断处垒
		if nAddExpBaseCount > nMaxExpAdd then
			nAddExpBaseCount = nMaxExpAdd
		end
		
		local nExp = nAddExpBaseCount * %nExpBaseFromLongYinShengShui
		self:AddTask(%nTskIdx_GiveLongYinShengShuiExp, nAddExpBaseCount)
		PlayerFunLib:AddExp(nExp, 1, "交馏饮％水得到奖品")
	end
	if self:CheckTask(%nTskIdx_GiveLongYinShengShuiExp,%nMaxExpFromLongYinShengShui,"",">=") then
		local szMsg = format("姆交馏饮％水得到的经研已达上限")
		Msg2Player(szMsg)
	end
	
	--｝据统计
	--AddStatData("zhishujie_longyinshengshuicishu")
	
	self:AddTask(%nTskIdx_LastRecordDay, nCount)
	local nTotalCount = self:GetTask(%nTskIdx_LastRecordDay)
	WriteLog(format("%s\tAccount:%s[Name:%s] 交[%d]馏饮％水，今套一共加了[%d]个.",
			GetLocalDate("%Y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			nCount,
			nTotalCount)
		);
	
	--print(self:GetTask(%nTskIdx_LastRecordDay))
	--print(self:GetTask(%nTskIdx_GiveLongYinShengShuiExp))
	
	--统计各地图馏饮％水｝量，判断Ｇ否刑要刷boss
	self:_AddLongYinShengShuiStat(nCount)
end


--判断木桶的状态
function pActivity:CheckMuTong()
	local nCount1 = CalcItemCount(-1, 6, 1, 2736, -1)
	if nCount1 >= 1 then
		Msg2Player("姆已经有木桶了，不能べ磷取了")
		return 
	end
	local nCount2 = CalcItemCount(-1, 6, 1, 2737, -1)
	if nCount2 >= 1 then
		Msg2Player("姆已经有装Ⅲ水的桶了，酮成任务恒べ来磷奖吧")
		return 
	end
	return 1
end

--判断活动１间
function pActivity:CheckActivityTime()
	local nDate = tonumber(GetLocalDate("%Y%m%d"))
	if nDate < self.nStartDate/10000 then
		Msg2Player("植ｗ节活动还没有开＜")
		return
	elseif nDate >= self.nEndDate/10000 then
		Msg2Player("植ｗ节活动已经礁ｘ了")
		return
	end
	return 1
end


function pActivity:_AddLongYinShengShuiStat(nCount)
	local nMapId, nX, nY = GetWorldPos()
	if nCount ~= nil then
		%tbPoolCount[nMapId].nCount = %tbPoolCount[nMapId].nCount + nCount
		%tbPoolCount[nMapId].nTotal = %tbPoolCount[nMapId].nTotal + nCount
	end
	
	--local szMsg = format("%s\t 统计馏饮％水:map%d(%s)=%d"
	--	,GetLocalDate("%Y-%m-%d %H:%M:%S")
	--	,nMapId,%tbPoolCount[nMapId].szName, %tbPoolCount[nMapId].nTotal)
	--print(szMsg)
	
	if %tbPoolCount[nMapId].nCount >= %nCall_MuKe_LongYinShengShui_Count then
		self:_CallMuKeBoss(nMapId)
		%tbPoolCount[nMapId].nCount = %tbPoolCount[nMapId].nCount - %nCall_MuKe_LongYinShengShui_Count
	end
end

function pActivity:_CallMuKeBoss(nMapId)
	local szInfo = format("木客出现ぺ %s 村庄, 孔去催败他", %tbPoolCount[nMapId].szName)
	local nPosId = random(1,2)
	local tbNpc = {
		szName = "木客", 
		nLevel = 95,
		nMapId = nMapId,
		nPosX = %tbBossPos[nMapId][nPosId][1]*32,
		nPosY = %tbBossPos[nMapId][nPosId][2]*32,
		nNpcId = 1670,
		nIsboss = 1,
		szDeathScript = "\\script\\activitysys\\config\\28\\boss_muke_death.lua",
		pCallBack = %AddOnTime,
	}
	%basemission_CallNpc(tbNpc)
	AddGlobalNews(szInfo)
	AddGlobalNews(szInfo)
	
	local szMsg = format("%s\tmap%d(%s)桐面(%d,%d) 出现boss [木客], 此区舆已经交了[%d]馏饮％水"
		, GetLocalDate("%Y-%m-%d %H:%M:%S")
		, nMapId, %tbPoolCount[nMapId].szName, tbNpc.nPosX, tbNpc.nPosY
		, %tbPoolCount[nMapId].nTotal)
	WriteLog(szMsg)
end

