IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")

function BossDaiAcMaCallByS3Relay(bilSel)
	local npcindex = AddNpcEx(1790, 80, random(0,4), SubWorldID2Idx(37), 1577*32, 3249*32, 1, "Vu Lan Cung N�", 1)
	if (npcindex > 0) then
		SetNpcDeathScript(npcindex, "\\script\\_event\\vulan\\boss_dai_ac_ma.lua");
		SetNpcTimer(npcindex, 120*60*18);
		AddGlobalNews("Boss Vu Lan Cung N� �� xu�t hi�n t�i Bi�n Kinh, h� g�c ���c t�t c� ng��i ch�i ��ng xung quanh s� nh�n ���c l��ng kinh nghi�m v� b�u v�t c�c k� gi� tr�!");
		Msg2SubWorld("<color=orange>Boss Vu Lan Cung N� �� xu�t hi�n t�i Bi�n Kinh t�a �� 197-203, h� g�c ���c t�t c� ng��i ch�i ��ng xung quanh s� nh�n ���c l��ng kinh nghi�m v� b�u v�t c�c k� gi� tr�!")
	end
end

function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 500);
	for bil_2 = 1, 10 do
		DropItem(world, x, y, -1, 6, 1, 4267, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
		DropItem(world, x, y, -1, 6, 1, 4261, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	end
	for bil_1 = 1, 300 do
		DropItem(world, x, y, -1, 6, 1, 4265, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	end
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 10000000, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c BOSS vu lan cung n�"));
	end
	AddGlobalNews("Boss Vu Lan Cung N� �� b� ti�u di�t t�i Bi�n Kinh, ng��i ch�i ��ng xung quanh s� nh�n ���c 10 tri�u Kinh nghi�m v� v�t ph�m gi� tr�!");
	Msg2SubWorld("<color=orange>Boss Vu Lan Cung N� �� b� ti�u di�t t�i Bi�n Kinh, ng��i ch�i ��ng xung quanh s� nh�n ���c 10 tri�u Kinh nghi�m v� v�t ph�m gi� tr�!")
end