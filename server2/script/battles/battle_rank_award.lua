IncludeLib("LEAGUE")
IncludeLib("TASKSYS");
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_server_award_activity.lua")
Include("\\script\\_event\\activitys.lua")

-- ª˝∑÷
function battle_rank_sort_Point(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_TOTALPOINT)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_TOTALPOINT)
	return nTotalPointA > nTotalPointB
end

-- PKÕÊº“
function battle_rank_sort_PK(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLPLAYER)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLPLAYER)
	return nTotalPointA > nTotalPointB
end

-- …±NPC ˝
function battle_rank_sort_NPC(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLNPC)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLNPC)
	return nTotalPointA > nTotalPointB
end

-- ¡¨’∂
function battle_rank_sort_SER(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_MAXSERIESKILL)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_MAXSERIESKILL)
	return nTotalPointA > nTotalPointB
end



function battle_rank_activity(nBattleLevel)
	
	local tbCmpFun = 
	{
		battle_rank_sort_Point,
		battle_rank_sort_PK,
		battle_rank_sort_NPC,
		battle_rank_sort_SER
	}
	
	G_ACTIVITY:OnMessage("SongJinRank",nBattleLevel, battle_rank_GetSortPlayer0808, tbCmpFun, {})
end

-- 2011Ω‚∑≈»’ªÓ∂Ø£¨‘˘ÀÕª®ª∑
function battle_GiveHuanHuanByIndex()
	local tbItem = {szName="Vﬂng Hoa Chi’n Thæng",tbProp={6,1,2824,1,0,0},nExpiredTime=20110530}
	tbAwardTemplet:Give(tbItem, 1, {"EventChienThang042011", "zhanshenghuahuan"})
	AddStatData("jiefangri_songjinchanchuzhanshenghuahuan", 1)
end

-- ‘⁄20110421~20110523≤≈ƒ‹ªÒµ√’‚∏ˆΩ±¿¯
function battle_GiveHuahuan(tbPlayerAll)
	local ndate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nStartDate = 201104280000
	local nEndDate = 201105300000
	if ndate < nStartDate or ndate > nEndDate then
		return
	end 
	
	local nCount = 10	-- ª®ª∑µƒ ˝¡ø
	local nNumber = getn(tbPlayerAll)
	local nSplit = 1
	if nNumber > nCount then
		nSplit = (nNumber - mod(nNumber,nCount)) / nCount
	end
	
	for i=1,nNumber,nSplit do
		if nCount == 0 then
			break
		end
		nCount = nCount - 1
		nPlayerIndex = tbPlayerAll[i]
		if nPlayerIndex > 0 then
			CallPlayerFunction(nPlayerIndex, battle_GiveHuanHuanByIndex)
		end
	end
end

function battle_finish_activity(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)

	_EVENT:Activity_TK(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	bilActivity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)

end


function battle_rank_award0808(nBattleLevel)
	local tbPlayer = {}
	battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_Point)
	for i=1, 20 do
		if tbPlayer[i] and tbPlayer[i] > 0 then
			Msg2MSAll(MISSIONID, format("<color=green>Hπng %d<color>: <color=yellow>%s<color>", i, doFunByPlayer(tbPlayer[i],GetName)))
		end
	end
	for i = 1, 20 do
	local szName = doFunByPlayer(tbPlayer[i],GetName)
		if szName ~= nil and szName ~= "" then
		local nTopPlayerIdx = SearchPlayer(szName);
			if (nTopPlayerIdx > 0) then
				doFunByPlayer(nTopPlayerIdx, AddAward,i)
			end
		end
	end;		
end

Include("\\script\\lib\\objbuffer_head.lua")
_Message =  function (nItemIndex, strBoxName)
	local handle = OB_Create()
	local msg = format("<color=green>ChÛc mıng <color=yellow>%s<color=green> Æ∑ nhÀn Æ≠Óc <color=yellow><%s><color=green> tı <color=yellow><%s><color>" ,GetName(),GetItemName(nItemIndex),strBoxName)
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
function AddAward(nRank)
	if not nRank then
	return
	end
	local tbThuongTop = 
	{
		[1]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=3,},

		},
		[2]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=2,},
		      
		},
		[3]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
		[4]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
		[5]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
		[6]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
		[7]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
		[8]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
		[9]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
		[10]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		},
	}
	local tbThuongTop21 = 
	{
		[1]={
		                   {szName="VLMT", tbProp={6,1,888,1,0,0,0},nCount=1},

		},
		[2]={
		                   {szName="VLMT", tbProp={6,1,888,1,0,0,0},nCount=1},

		},
		[3]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=2,},
		                   {szName="ThÒy Tinh", tbProp={4,238,1,0,0,0},nCount=1,},
		                   {szName="ThÒy Tinh", tbProp={4,239,1,0,0,0},nCount=1,},
		                   {szName="ThÒy Tinh", tbProp={4,240,1,0,0,0},nCount=1,},
		                   {szName="VLMT", tbProp={6,1,888,1,0,0,0},nCount=1},

		},
		[4]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		                   {szName="ThÒy Tinh", tbProp={4,238,1,0,0,0},nCount=1,},
		                   {szName="ThÒy Tinh", tbProp={4,239,1,0,0,0},nCount=1,},
		                   {szName="ThÒy Tinh", tbProp={4,240,1,0,0,0},nCount=1,},
		                   {szName="VLMT", tbProp={6,1,888,1,0,0,0},nCount=1},

		},
		[5]={
		                   {szName="ThÒy Tinh", tbProp={4,353,1,0,0,0},nCount=1,},
		                   {szName="ThÒy Tinh", tbProp={4,238,1,0,0,0},nCount=1,},
		                   {szName="ThÒy Tinh", tbProp={4,239,1,0,0,0},nCount=1,},
		                   {szName="VLMT", tbProp={6,1,888,1,0,0,0},nCount=1},



		},
	}
	local tbThuongTopT7 = 
	{
		[1]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=2},
		},
		[2]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[3]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[4]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[5]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},

		},


	}
	local slog = format("ThuongTop%dTongKim", nRank)
	local tbAward1 = tbThuongTop21[nRank]
	--local tbAward2 = tbThuongTop[nRank]
	local tbAward3 = tbThuongTopT7[nRank]
	local nWeekDay = tonumber(GetLocalDate("%w"));
	local nHour = tonumber(GetLocalDate("%H%M"))
                                                                             if nRank == 1 and ( nHour >= 2100 and nHour < 2300) then
                                                                             vongsangtop1()
                                                                             end
                                                                             if nRank == 2 and ( nHour >= 2100 and nHour < 2300) then
                                                                             vongsangtop2()
                                                                             end
                                                                             if nRank == 3 and ( nHour >= 2100 and nHour < 2300) then
                                                                             vongsangtop3()
                                                                             end
		if( nHour >= 2100 and nHour < 2300) and nWeekDay == 6 then
		tbAwardTemplet:Give(tbAward3, 1, {slog,slog})
                                                                                                                                                         end
		if( nHour >= 2100 and nHour < 2300)then
		tbAwardTemplet:Give(tbAward1, 1, {slog,slog})	
end
end


 
function battle_rank_GetSortPlayer0808(tbPlayer, nCamp, pCompare)
	tbPlayer= tbPlayer or {}
	local idx = 0;
	
	for i = 1 , GetMSPlayerCount(MISSIONID, nCamp) do
		idx, pidx = GetNextPlayer(MISSIONID, idx, nCamp)
		if (pidx and  pidx > 0) then
			tinsert(tbPlayer, pidx)
		end
		if (idx <= 0) then 
			break
		end;
	end
	
	sort(tbPlayer, pCompare)
	return tbPlayer
end

function battle_rank_doFun0808(nRank, nSortType, pfun, ...)
	
	local szName,nTotalPoint = BT_GetTopTenInfo(nRank, nSortType);
	
	if szName ~= nil and szName ~= "" then
			local nTopPlayerIdx = SearchPlayer(szName);
			
			if (nTopPlayerIdx > 0) then
				doFunByPlayer(nTopPlayerIdx, pfun,unpack(arg))
			end
		end
end


function vongsangtop1()
n_title = 359 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>Bπn nhÀn Æ≠Óc vﬂng s∏ng danh hi÷u ß÷ Nh t TËng Kim (M∏u 500 - KTC 5 - Chπy 10) + K¸ n®ng  2 c p 20h xin h∑y tho∏t game Æ” hi÷n vﬂng")
	PlayerFunLib:AddSkillState(966,1,3,1296000,1)
	PlayerFunLib:AddSkillState(979,2,3,1296000,1)
end

function vongsangtop2()
n_title = 360 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>Bπn nhÀn Æ≠Óc vﬂng s∏ng danh hi÷u ß÷ Nh t TËng Kim (M∏u 300 - KTC 3 - Chπy 10) + K¸ n®ng  1 c p 20h xin h∑y tho∏t game Æ” hi÷n vﬂng")
	PlayerFunLib:AddSkillState(966,1,3,1296000,1)
	PlayerFunLib:AddSkillState(979,1,3,1296000,1)
end

function vongsangtop3()
n_title = 361 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>Bπn nhÀn Æ≠Óc vﬂng s∏ng danh hi÷u ß÷ Nh t TËng Kim (M∏u 200 - KTC 2 - Chπy 10) +  xin h∑y tho∏t game Æ” hi÷n vﬂng")
end