Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\activitysys\\config\\32\\talkdailytask.lua")

function OnTimer()
	t = GetMissionV(MS_TIMEACC_20SEC) + 1
	SetMissionV(MS_TIMEACC_20SEC, t)
	local npcindex
	if (t == ENDSIGN_TIME) then		--±¨ÃûÊ±¼ä½áÊø£¬¿ª´¬
		RunMission(MISSIONID)
		Msg2MSAll(MISSIONID, "<color=cyan>ThuyÒn ®· rêi bÕn, sau <color=yellow>30 phót<color> sÏ tíi bê b¾c phong l¨ng ®é.")
		
		-- ÈÕ³£ÈÎÎñË¢ÐÂ¶Ô»°NPC
		%tbTalkDailyTask:AddTalkNpc(SubWorldIdx2ID(SubWorld), SubWorldIdx2ID(SubWorld));
	end
	
	if (mod(t, 3) == 0) then				--Ã¿·ÖÖÓ¼ÆÊý
		SetMissionV(MS_TIMEACC_1MIN, GetMissionV(MS_TIMEACC_1MIN) + 1)
	end
	
	if (t < ENDSIGN_TIME and mod(t, 9) == 0) then
		local bf_mint = 10 - GetMissionV(MS_TIMEACC_1MIN)
		Msg2MSAll(MISSIONID, "Cßn l¹i "..bf_mint.." phóc sÏ rêi bÕn")
	end
	
	if (t >= ENDSIGN_TIME and mod(t, 15) == 0) then
		local mint = 39 - GetMissionV(MS_TIMEACC_1MIN)
		Msg2MSAll(MISSIONID, "<color=cyan>Cßn l¹i <color=yellow>"..mint.."<color> phót tíi bê b¾c phong l¨ng ®é")
	end
	
	if (t == REPORT_TIME) then
		local mint = 39 - GetMissionV(MS_TIMEACC_1MIN)
		Msg2MSAll(MISSIONID, "<color=cyan>Cßn l¹i <color=yellow>"..mint.."<color> phót tíi bê b¾c phong l¨ng ®é")
	end
	
	if (t == UPBOSS_TIME) then		-- 15·ÖÖÓ
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Thñy tÆc ®Çu lÜnh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		Msg2MSAll(MISSIONID, "Thñy tÆc ®Çu lÜnh ®· xuÊt hiÖn.")
	end
	
	if (t == UPBOSS_TIME2) then		-- 20·ÖÖÓ
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Thñy tÆc ®Çu lÜnh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		Msg2MSAll(MISSIONID, "Thñy tÆc ®Çu lÜnh ®· xuÊt hiÖn.")
		
		if (check_new_shuizeitask() == 1) then
			for i = 1, 2 do
				posx, posy = fld_getadata(npcthiefpos)
				AddNpc(1692, 85, SubWorld, posx, posy, 1, "Thñy tÆc ®¹i ®Çu lÜnh.", 1)
				Msg2MSAll(MISSIONID, "Thñy tÆc ®¹i ®Çu lÜnh ®· xuÊt hiÖn")
			end
		end
	end
	
	if (t == UPBOSS_TIME3) then
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Thñy tÆc ®Çu lÜnh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		Msg2MSAll(MISSIONID, "Thñy tÆc ®Çu lÜnh ®· xuÊt hiÖn.")
	end		
	
	-- »îÔ¾¶È
	fld_addhuoyuedu(t)
end


function fld_addhuoyuedu(nPassedTime)
	local nMapId = SubWorldIdx2ID(SubWorld)
	if nMapId == boatMAPS[3] or nPassedTime ~= (ENDSIGN_TIME + HUOYUEDU_TIME) then
		return
	end
	
	local nIndex = 0
	local nPlayerIndex = 0
	local nCount = GetMSPlayerCount(MISSIONID, 0);
	for i=1, nCount do 
		nIndex, nPlayerIndex = GetNextPlayer(MISSIONID, nIndex, 0)
		if (nPlayerIndex > 0) then
			DynamicExecuteByPlayer(nPlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "fenglingdu")
 		end
		if (nIndex == 0) then
	 		break
	 	end
	end
end