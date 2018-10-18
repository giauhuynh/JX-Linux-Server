Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\lib\\log.lua")

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function want_playboat()
	OldSubWorld = SubWorld
	OldPlayer = PlayerIndex
	local totalboat = 0
	local freeboat = 0
	local startboat = 0
	local blevel = 0
	if (IsCaptain() ~= 1) then
		Say("Xin lçi! CÇn ph¶i lµ §éi tr­ëng míi cã t­ c¸ch b¸o danh tham gia 'NhiÖm vô Th¸ch thøc thêi gian'",0)
		return
	end
	if (GetTeamSize() < 4) then
		Say("Xin lçi! §éi tham gia 'NhiÖm vô Th¸ch thøc thêi gian' cÇn ph¶i cã Ýt nhÊt <color=red>4<color> ng­êi!",0)
		return
	end
	if(GetLevel() < 50) then
		Say("Xin lçi! §¼ng cÊp d­íi 50 kh«ng thÓ tham gia 'NhiÖm vô Th¸ch thøc thêi gian'.",0);
		return
	end
	if (GetLevel() >= 90) then
		blevel = 1
	end
	
	for i = 1, GetTeamSize() do 
		PlayerIndex = GetTeamMember(i)
		local bmbrlevel = 0
		if(GetLevel() < 50) then
			Say("Xin lçi! §¼ng cÊp d­íi 50 kh«ng thÓ tham gia 'NhiÖm vô Th¸ch thøc thêi gian'.",0);
			Msg2Team("Xin lçi! Trong ®éi b¹n cã thµnh viªn d­íi cÊp 50, kh«ng thÓ tham gia 'NhiÖm vô Th¸ch thøc thêi gian'.");
			return
		end
		if (GetLevel() >= 90) then
			bmbrlevel = 1
		end
		
		if (blevel ~= bmbrlevel) then
			if (blevel == 0) then
				Say(" Xin lçi! Trong ®éi b¹n cã thµnh viªn v­ît <color=red>cÊp 90<color>, xin kiÓm tra l¹i råi b¸o danh!",0)
				Msg2Team("Trong ®éi b¹n cã thµnh viªn trªn cÊp 90, xin h·y kiÓm tra l¹i råi b¸o danh!");
				return
			else
				Say("Xin lçi! Trong ®éi b¹n cã thµnh viªn ch­a ®¹t <color=red>cÊp 90<color>, xin kiÓm tra l¹i råi b¸o danh!",0)
				Msg2Team("Trong ®éi b¹n cã thµnh viªn ch­a ®¹t cÊp 90, xin kiÓm tra l¹i råi b¸o danh!");
				return
			end
		end
	end
	
	PlayerIndex = OldPlayer
	for i = 1, getn(map_map) do 
		sub = SubWorldID2Idx(map_map[i])
		if (sub >= 0) then
			--print("have "..map_map[i])
			totalboat = totalboat + 1
			SubWorld = sub
			local state = GetMissionV(VARV_STATE)
			if (state > 0) then
				startboat = 1
			end
			if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and map_isadvanced[map_map[i]] == blevel) then
				freeboat = freeboat + 1
			end
		end
	end
	--print("total"..totalboat.."free"..freeboat)
	local strlevel ="";
	if (blevel == 0) then
		strlevel = "NhiÖm vô Th¸ch thøc thêi gian S¬ cÊp"
	else
		strlevel = "NhiÖm vô Th¸ch thøc thêi gian cao cÊp"
	end
	
	if (startboat == 1) then
		if (freeboat == 0) then
			Say("Khu vùc "..strlevel.." ®· b¾t ®Çu. Kh«ng cßn chç n÷a….",0)
			return
		else
			Say("Khu vùc "..strlevel.." giai ®o¹n b¸o danh ®ua thuyÒn rång, vÉn cßn <color=red>"..freeboat.."<color> b¶n ®å nhiÖm vô miÔn phÝ, tham gia khiªu chiÕn cÇn ph¶i giao <color=red>1 v¹n<color> ng©n l­îng, ng­¬i muèn tham gia kh«ng?",2, "Ph¶i! Ta muèn dÉn d¾t ®éi cña ta tham gia./dragon_join", "Kh«ng cÇn/onCancel")
			return
		end
	else
		Say("Xin lçi! Khu vùc "..strlevel.." HiÖn t¹i kh«ng cã nhiÖm vô khiªu chiÕn thêi gian ®Ó tham gia. B¸o danh vµo <color=red>®óng mçi tiÕng ®ång hç<color> b¾t ®Çu, lµ " .. TIME_SIGNUP .." phót, xin h·y l­u ý th«ng b¸o cña hÖ thèng.",0)
		return
	end
	
end

function dragon_join()
	local blevel = 0
	local havesword = 0
	local nNowDate = tonumber(GetLocalDate("%y%m%d"));
	if (GetLevel() >= 90) then
		blevel = 1
	end
	if(GetTask(1551) == nNowDate) then
		if (GetTask(1550) <= 0) then
			Say("NhiÕp ThÝ TrÇn: H«m nay nhiÖm vô th¸ch ®Êu ®· lµm hÕt råi, ®îi ngµy mai h·y ®Õn l¹i.",0);
			return
		end
	end
	if (IsCaptain() ~= 1) then
		Say("Xin lçi! CÇn ph¶i lµ §éi tr­ëng míi cã t­ c¸ch b¸o danh tham gia 'NhiÖm vô Th¸ch thøc thêi gian'",0)
		return
	end
	if(GetLevel() < 50) then
		Say("Xin lçi! §¼ng cÊp d­íi 50 kh«ng thÓ tham gia 'NhiÖm vô Th¸ch thøc thêi gian'.",0);
		return
	end
	if (GetTeamSize() < 4) then
		Say("Xin lçi! §éi tham gia 'NhiÖm vô Th¸ch thøc thêi gian' cÇn ph¶i cã Ýt nhÊt <color=red>4<color> ng­êi!",0)
		return
	end
	
	if (GetCash() < 10000) then
		Say("Tham gia nhiÖm vô “Th¸ch thøc thêi gian” cÇn <color=red>1v¹n l­îng<color>. ChuÈn bÞ ®ñ tiÒn råi h·y quay l¹i!", 0)
		return
	end
	
	local OldPlayer = PlayerIndex
	local bil_2 = {}
	for i = 1, GetTeamSize() do 
		PlayerIndex = GetTeamMember(i)
		local bmbrlevel = 0
		local MemberNowDate = tonumber(GetLocalDate("%y%m%d"));
		if(GetTask(1551) == MemberNowDate) then
			if(GetTask(1550) <= 0) then
				Say("NhiÖm vô Th¸ch thøc thêi gian mçi ngµy chØ ®­îc tham gia "..COUNT_LIMIT.." lÇn. Sè lÇn tham gia cña b¹n ®· ®ñ! Ngµy mai trë l¹i nhÐ!",0);
				Msg2Team("NhiÖm vô Th¸ch thøc thêi gian mçi ngµy chØ ®­îc tham gia "..COUNT_LIMIT.." lÇn. Sè lÇn tham gia cña <color=yellow>"..GetName().."<color> ®· ®ñ! Ngµy mai trë l¹i nhÐ!");
				return
			elseif GetTask(1550) > 0 and GetTask(1550) < COUNT_LIMIT then
				if ConsumeItem(3, 0, 6, 1, 400, -1) ~= 1 then
					Msg2Team("Trong ngµy cã thÓ tham gia miÔn phÝ 1 lÇn, ®Ó tham gia lÇn thø <color=green>2 vµ 3<color> yªu cÇu thµnh viªn <color=yellow>"..GetName().."<color> ph¶i mang theo <color=green>S¸t Thñ Gi¶n");
					return Say("Thµnh viªn <color=yellow>"..GetName().."<color> ®· tham gia v­ît ¶i miÔn phÝ 1 lÇn, ®Ó tham gia lÇn thø <color=green>2 vµ 3<color> yªu cÇu thµnh viªn <color=yellow>"..GetName().."<color> ph¶i mang theo <color=green>S¸t Thñ Gi¶n<color> míi cã thÓ tham gia, tæ ®éi vui lßng kiÓm tra l¹i!",0);
				else
					tinsert(bil_2, PlayerIndex)
				end
			end
		end
		if(GetLevel() < 50) then
			Say("Xin lçi! §¼ng cÊp d­íi 50 kh«ng thÓ tham gia 'NhiÖm vô Th¸ch thøc thêi gian'.",0);
			Msg2Team("Xin lçi! Trong ®éi b¹n cã thµnh viªn d­íi cÊp 50, kh«ng thÓ tham gia 'NhiÖm vô Th¸ch thøc thêi gian'.");
			return
		end
		if (GetLevel() >= 90) then
			bmbrlevel = 1
		end
		
		if (blevel ~= bmbrlevel) then
			if (blevel == 0) then
				Say(" Xin lçi! Trong ®éi b¹n cã thµnh viªn v­ît <color=red>cÊp 90<color>, xin kiÓm tra l¹i råi b¸o danh!",0)
				Msg2Team("Trong ®éi b¹n cã thµnh viªn trªn cÊp 90, xin h·y kiÓm tra l¹i råi b¸o danh!");
				return
			else
				Say("Xin lçi! Trong ®éi b¹n cã thµnh viªn ch­a ®¹t <color=red>cÊp 90<color>, xin kiÓm tra l¹i råi b¸o danh!",0)
				Msg2Team("Trong ®éi b¹n cã thµnh viªn ch­a ®¹t cÊp 90, xin kiÓm tra l¹i råi b¸o danh!");
				return
			end
		end
		
		havesword = 0
		if (blevel == 0) then
			for i=20,80,10 do
				if(havesword > 1) then
					break
				else
					havesword = CalcEquiproomItemCount( 6, 1, 400, i ) + havesword
				end
			end	
		else
			havesword = CalcEquiproomItemCount( 6, 1, 400, 90 )
		end
		havesword = 1
		if (havesword < 1 and blevel == 0 and IsCaptain() == 1) then
			Say("NhiÕp ThÝ ThÇn: Xin l­îng thø, tham gia nhiÖm vô khiªu chiÕn thêi gian s¬ cÊp thµnh viªn ®øng ra b¸o danh cÇn ph¶i cã mét S¸t Thñ Gi¶n ngò hµnh bÊt kú cÊp 90 trë xuèng, xin h·y chuÈn bÞ råi h·y ®Õn ®©y gÆp ta",0)
			Msg2Team("Trong tæ ®éi cña ng­¬i ®éi tr­ëng ch­a chuÈn bÞ S¸t Thñ Gi¶n ngò hµnh bÊt kú cÊp 90 trë xuèng , xin  kiÓm tra l¹i råi h·y b¸o danh tham gia !")
			return
		elseif (havesword < 1 and blevel == 1 and IsCaptain() == 1) then
			Say("NhiÕp ThÝ ThÇn: Xin l­îng thø, tham gia nhiÖm vô khiªu chiÕn thêi gian cao cÊp thµnh viªn ®øng ra b¸o danh cÇn ph¶i cã mét S¸t Thñ Gi¶n ngò hµnh bÊt kú cÊp 90 , xin h·y chuÈn bÞ råi h·y ®Õn ®©y gÆp ta",0)
			Msg2Team("Trong tæ ®éi cña ng­¬i ®éi tr­ëng ch­a chuÈn bÞ S¸t Thñ Gi¶n ngò hµnh bÊt kú cÊp 90, xin  kiÓm tra l¹i råi h·y b¸o danh tham gia !")
			return
		end
	end
	
	PlayerIndex = OldPlayer
	
	for bil_1 = 1, getn(bil_2) do
		PlayerIndex = bil_2[bil_1]
		ConsumeEquiproomItem( 1, 6, 1, 400, -1)
	end
	
	PlayerIndex = OldPlayer
	
	OldSubWorld = SubWorld
	
	for i = 1, getn(map_map) do 
		sub = SubWorldID2Idx(map_map[i])
		if (sub >= 0) then
			SubWorld = sub
			local state = GetMissionV(VARV_STATE)
			if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and blevel == map_isadvanced[map_map[i]] ) then
				local tabplayer = {}
				for i = 1, GetTeamSize() do 
					tabplayer[i] = GetTeamMember(i)
					--print("plal"..tabplayer[i])
				end
				PlayerIndex = tabplayer[1]
				w,x,y = GetWorldPos()
				SetMissionV(VARV_SIGNUP_WORLD, w)
				SetMissionV(VARV_SIGNUP_POSX, x)
				SetMissionV(VARV_SIGNUP_POSY, y)
				SetMissionS(VARS_TEAM_NAME,GetName())
				SetMissionS(VARS_TEAMLEADER_FACTION,GetLastFactionNumber())
				SetMissionS(VARS_TEAMLEADER_GENDER,GetSex())
				
				-- DEBUG
				--print(format("%s´Ó(%d,%d,%d)Î»ÖÃ½øÈëÊ±¼äµÄÌôÕ½ÈÎÎñµØÍ¼", GetName(), w, x, y));

				Pay(10000)
				

				for i = 1 , getn(tabplayer) do 
					PlayerIndex = tabplayer[i]
					
					-- µ÷Õû´³¹Ø by wangjingjun 2011.03.01
					-- if (blevel == 0) then
						-- for i=20,80,10 do
							-- if(CalcEquiproomItemCount( 6, 1, 400, i ) > 0) then
								-- ConsumeEquiproomItem( 1, 6, 1, 400, i)
								-- break
							-- end
						-- end
					-- else
						-- ConsumeEquiproomItem( 1, 6, 1, 400, 90)
					-- end
					
					--print("player"..PlayerIndex)

					-- ÔÚÕâÀïÅÐ¶ÏÊÇ·ñÓÐÔ½ÓüÆóÍ¼
					w,x,y = GetWorldPos();
					if w==208 then
					else
						local MemberNowDate = tonumber(GetLocalDate("%y%m%d"));
						if(GetTask(1551) ~= MemberNowDate) then
							SetTask(1550,COUNT_LIMIT);  
							SetTask(1551,MemberNowDate);					
						end
						SetTask(1550,GetTask(1550)-1);
						JoinMission(MISSION_MATCH, 1)
					end
					
					G_ACTIVITY:OnMessage("SignUpChuangguan", tabplayer[i], blevel + 1)
					--Ghi log c¸c tÝnh n¨ng key - Modified By DinhHQ - 20120410
					PlayerFunLib:AddTaskDaily(3079, 1)
					if PlayerFunLib:GetTaskDailyCount(3079) > 1 then
						tbLog:PlayerActionLog("TinhNangKey","BaoDanhVuotAiThuPhi")
					else
						tbLog:PlayerActionLog("TinhNangKey","BaoDanhVuotAiMienPhi")
					end
				end
				
				local ndate = tonumber(GetLocalDate("%H"))
				if ndate <= 22 and ndate >= 10 and blevel == 1 then
					SetMissionV(VARV_BATCH_MODEL,1)
				else
					SetMissionV(VARV_BATCH_MODEL,0)
				end
				
				tbLog:PlayerActionLog("EventChienThang042011","BaoDanhVuotAi")-- ±¨ÃûÈÕÖ¾				
				return
			end
		end
	end
	SubWorld = OldSubWorld
	PlayerIndex = OldPlayer
	local strlevel ="";
	if (blevel == 0) then
		strlevel = "NhiÖm vô Th¸ch thøc thêi gian S¬ cÊp "
	else
		strlevel = " 'NhiÖm vô Th¸ch thøc thêi gian' Cao cÊp "
	end
	Say("Xin lçi! HiÖn t¹i khu vùc <color=red>"..strlevel.." <color>®· kh«ng cßn chç. Xin ®îi vßng sau!",0)
end









