IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Boss Ho�ng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

--���������� ����
--honour
DROPRATE_BOSS_HONOURRATE = {
		["V��ng T� "] = {350, 136},--739
		["Huy�n Gi�c ��i S� "] = {350, 134},--740
		["���ng B�t Nhi�m"] = {350, 149},--741
		["B�ch Doanh Doanh"] = {350, 138},--742
		["Thanh Tuy�t S� Th�i"] = {350, 137},--743
		["Y�n Hi�u Tr�i"] = {350, 168},--744
		["H� Nh�n Ng� "] = {350, 171},--
		["��n T� Nam"] = {350, 171},--746745
		["Tuy�n C� T� "] = {350, 144},--747
		--["����"] = {},--748
		["%����%"] = {350, 250},--1193
		["����Ӣ���"] = {350, 250},--1194
		["׷����ʿ"] = {350, 250},--1195
		["����Ҳ�������"] = {350, 250},--1196
		["��սѪ"] = {350, 250},--1197
		["��������"] = {350, 250},--1198
		["��¥��������"] = {350, 250},--1199
		["�����㡩�����̡�"] = {350, 250},--1200
		["�ŵ���"] = {350, 250},--1201
		["�ǻ��Ů��"] = {350, 250},--1202
		["��i M� H� "] = {0, 250},
		["Gia Lu�t T� Ly"] = {350, 130},--563
		["Ho�n Nhan Tuy�t Y"] = {400, 130},--564
		["�oan M�c Du� "] = {400, 127},--565
		["C� B�ch"] = {350, 141},--566
		["��o Thanh Ch�n Nh�n"] = {300, 130},--562
		["Chung Linh T� "] = {400, 130},--567
		["H� Linh Phi�u"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["M�nh Th��ng L��ng"] = {300, 180},--583
		--[] = {},
}
HONOURID = {1257, 1294}
SIGNET_DROPCOUNT = 10
TSK_PLAYER_BOSSKILLED = 2598 -- ��һ�ɱBOSS����ͳ��
--DC kinh nghi�m boss HK - Modified By DinhHQ - 20111007
--KILLBOSSEXPAWARD = 20000000	-- ��ɱboss����
--KILLBOSSNEAREXPAWARD = 12000000	-- ��ɱboss��������
KILLBOSSEXPAWARD = 10000000
KILLBOSSNEAREXPAWARD = 8000000
--Renew boss award - Modified by DinhHQ - 20120319

local tbVnNewItemDropAward = {
	{{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nCount=5,nRate=11, CallBack= _Message},},
	{{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nCount=4,nRate=12, CallBack= _Message},},
	{{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nCount=3,nRate=13, CallBack= _Message},},
	{{szName="Ph�c duy�n Ti�u",tbProp={6,1,122,1,0,0},nCount=2,nRate=31},},
	{{szName="Ph�c duy�n Trung",tbProp={6,1,123,1,0,0},nCount=2,nRate=32},},
	{{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
	{{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
                      {{szName="Manh Ao Nhu Tinh So 1",tbProp={4,777},nCount=1,nRate=2, CallBack= _Message},},
                    {{szName="Manh Ao Nhu Tinh So 2",tbProp={4,778},nCount=1,nRate=2, CallBack= _Message},},
                      {{szName="Manh Ao Nhu Tinh So 3",tbProp={4,779},nCount=1,nRate=5, CallBack= _Message},},
                     {{szName="Manh Ao Nhu Tinh So 4",tbProp={4,780},nCount=1,nRate=2, CallBack= _Message},},
                      {{szName="Manh Ao Nhu Tinh So 5",tbProp={4,781},nCount=1,nRate=5, CallBack= _Message},},
                      {{szName="Manh Ao Nhu Tinh So 6",tbProp={4,782},nCount=1,nRate=4, CallBack= _Message},},
	{{szName="Nhu T�nh",tbProp={0,193},nCount=1,nRate=5,nQuality = 1, CallBack= _Message},},
	{{szName="��nh Qu�c",tbProp={0,403},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},
	{{szName="��nh Qu�c",tbProp={0,404},nCount=1,nRate=3,nQuality = 1, CallBack= _Message},},
	{{szName="��nh Qu�c",tbProp={0,405},nCount=1,nRate=5,nQuality = 1, CallBack= _Message},},
	{{szName="��nh Qu�c",tbProp={0,406},nCount=1,nRate=5,nQuality = 1, CallBack= _Message},},
	{{szName="��nh Qu�c",tbProp={0,407},nCount=1,nRate=5,nQuality = 1, CallBack= _Message},},
	{{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nCount=3,nRate=1, CallBack= _Message},},
	{{szName="H�n Nguy�n",tbProp={6,1,2312,1,0,0},nCount=4,nRate=10, CallBack= _Message},},
	{{szName="TBKT",tbProp={6,1,398,1,0,0},nCount=1,nRate=2, CallBack= _Message},},
	{{szName="TTL",tbProp={6,1,1181,1,0,0},nCount=1,nRate=9, CallBack= _Message},},
	{{szName="Thi�n Ho�ng",tbProp={0,random(168,176)},nCount=1,nRate=30,nQuality = 1, CallBack= _Message},},

}

function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	--B� ph�n th��ng v�t ph�m khi ti�u di�t boss - Modified by DinhHQ - 20111012
--	for i = 1, maxcount do
--		local nItemIdx = DropItem(world, x, y, PlayerIndex, 6, 1, 1094, 1, 0, 0, 0, 0, 0, 0, 0, 0);
--		SetSpecItemParam(nItemIdx, 1, nCurtime);
--		SetSpecItemParam(nItemIdx, 2, nYear)
--		SetSpecItemParam(nItemIdx, 3, nMonth)
--		SetSpecItemParam(nItemIdx, 4, nDay)
--		SyncItem(nItemIdx);
--	end;
	--Renew boss award - Modified by DinhHQ - 20120319
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
	-- �����������Ƶ���
	if (GetProductRegion() == "cn" or GetProductRegion() == "cn_ib") then
		local szNpcName = GetNpcName(nNpcIndex);
		if (DROPRATE_BOSS_HONOURRATE[szNpcName]) then
			for i = 1, getn(DROPRATE_BOSS_HONOURRATE[szNpcName]) do
				local nrate = random(1, 10000);
				if (nrate < DROPRATE_BOSS_HONOURRATE[szNpcName][i]) then
				DropItem(world, x, y, PlayerIndex, 6, 1, HONOURID[i], 1, 0, 0, 0, 0, 0, 0, 0, 0);
				end;
			end;
		end;
	end;
	
	-- ��ɱ��BOSS���˻���齱��
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i BOSS ho�ng kim"));
		end
	else -- һ����
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i BOSS ho�ng kim"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c BOSS ho�ng kim b� ti�u di�t"));
	end
	
	local szNews = format("<pic=77> <color=cyan>%s<color> t�i <color=yellow>%s<color> �� ti�u di�t th�nh c�ng <color=green>%s <pic=48><pic=108>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	
	-- BOSS��ɱͳ��
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30�Ļƽ�BOSS
		-- �ƽ�BOSS����
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end
end;

