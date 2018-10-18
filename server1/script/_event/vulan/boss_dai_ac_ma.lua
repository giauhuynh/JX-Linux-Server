IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")

function BossDaiAcMaCallByS3Relay(bilSel)
	local npcindex = AddNpcEx(1790, 80, random(0,4), SubWorldID2Idx(37), 1577*32, 3249*32, 1, "Vu Lan Cung N÷", 1)
	if (npcindex > 0) then
		SetNpcDeathScript(npcindex, "\\script\\_event\\vulan\\boss_dai_ac_ma.lua");
		SetNpcTimer(npcindex, 120*60*18);
		AddGlobalNews("Boss Vu Lan Cung N÷ ®· xuÊt hiÖn t¹i BiÖn Kinh, h¹ gôc ®­îc tÊt c¶ ng­êi ch¬i ®øng xung quanh sÏ nhËn ®­îc l­îng kinh nghiÖm vµ b¸u vËt cùc kú gi¸ trŞ!");
		Msg2SubWorld("<color=orange>Boss Vu Lan Cung N÷ ®· xuÊt hiÖn t¹i BiÖn Kinh täa ®é 197-203, h¹ gôc ®­îc tÊt c¶ ng­êi ch¬i ®øng xung quanh sÏ nhËn ®­îc l­îng kinh nghiÖm vµ b¸u vËt cùc kú gi¸ trŞ!")
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
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 10000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc BOSS vu lan cung n÷"));
	end
	AddGlobalNews("Boss Vu Lan Cung N÷ ®· bŞ tiªu diÖt t¹i BiÖn Kinh, ng­êi ch¬i ®øng xung quanh sÏ nhËn ®­îc 10 triÖu Kinh nghiÖm vµ vËt phÈm gi¸ trŞ!");
	Msg2SubWorld("<color=orange>Boss Vu Lan Cung N÷ ®· bŞ tiªu diÖt t¹i BiÖn Kinh, ng­êi ch¬i ®øng xung quanh sÏ nhËn ®­îc 10 triÖu Kinh nghiÖm vµ vËt phÈm gi¸ trŞ!")
end