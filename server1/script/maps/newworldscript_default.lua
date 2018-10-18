-------------------------------------------------------------------------
-- FileName		:	NewWorldScript_H.lua
-- Author		:	LuoBaohang
-- CreateTime	:	2005-09-02
-- Desc			:  	µØÍ¼ÇÐ»»´¥·¢½Å±¾
-------------------------------------------------------------------------
Include("\\script\\lib\\string.lua")
Include("\\script\\maps\\newworldscript_h.lua")
Include("\\script\\item\\tianziyuxi.lua");	-- Ìì×ÓÓñçô

Include("\\script\\misc\\eventsys\\type\\map.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

aryChangeWorldExec = {}
function PraseParam(szParam)
	if (szParam == nil) then
		return nil
	end
	if (aryChangeWorldExec[SubWorld] == nil) then	--»¹Ã»ÓÐº¯ÊýÁ´£¬·ÖÎö²ÎÊý
		aryChangeWorldExec[SubWorld] = {}
		local aryFuns = split(szParam, '|')
		local j=1;
		for i = 1,getn(aryFuns) do
			local ExecFun = aryFuncStore[aryFuns[i]]
			if (ExecFun == nil)then
				print("Error: (Ne v¹n v¹norld:%d) Ch­a ®Þnh nghÜ hµm sè%s", SubWorld, aryFuns[i])
			else
				aryChangeWorldExec[SubWorld][j] =  ExecFun;
				j = j+1;
			end	
		end
	end
	return 1;
end

function OnNewWorldDefault(szParam)
	local a_w, a_x, a_y = GetWorldPos()
	
-------------------------------------------- T©n thñ kh«ng ®­îc phÐp lªn b¶n ®å luyÖn c«ng cao cÊp --------------------------------------------
	if ((bilDenyNewPlayerGotoMap.Deny == 1) and (GetLastFactionNumber() == -1 or GetCamp() == 0 or GetCurCamp() == 0)) then
		if not(bilDenyNewPlayerGotoMap.MapKey) then
			bilDenyNewPlayerGotoMap.MapKey = {}
			
			for _i = bilDenyNewPlayerGotoMap.MapLevelMin, bilDenyNewPlayerGotoMap.MapLevelMax, bilDenyNewPlayerGotoMap.StepLevel do
				bilDenyNewPlayerGotoMap.MapKey["\\settings\\droprate\\npcdroprate".._i..".ini"] = 1
				
				if _i == 90 then
					bilDenyNewPlayerGotoMap.MapKey["\\settings\\droprate\\npcdroprate".._i.."_pld.ini"] = 1
				end
				
				
				print("\t[bilDenyNewPlayerGotoMap.MapKey]: ".._i)
			end
		end
	
		if GetName() ~= bilNameOfGameMaster and bilDenyNewPlayerGotoMap.MapKey[GetMapDropRateFile(SubWorldID2Idx(a_w))] then
			Talk(1, "", "Khu vùc nµy cùc kú nguy hiÓm, kh¾p n¬i ®Òu lµ s¸t thñ, b¶n th©n lµ t©n thñ, ng­¬i nªn cè g¾n luyÖn tËp thªm!")
			local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
			SetFightState(0)
			return NewWorld(nSubWorldId, nX/32, nY/32)
		end
	end
-------------------------------------------- T©n thñ kh«ng ®­îc phÐp lªn b¶n ®å luyÖn c«ng cao cÊp --------------------------------------------

-------------------------------------------- KiÓm tra nh©n vËt ch­a ®ñ cÊp ®é cña b¶n ®å luyÖn c«ng --------------------------------------------
	-- if bilDenyLevelPlayerGotoMap.Deny == 1 then
		-- if not(bilDenyLevelPlayerGotoMap.MapKey) then
			-- bilDenyLevelPlayerGotoMap.MapKey = {}
			
			-- for _i = bilDenyLevelPlayerGotoMap.MapLevelMin, bilDenyLevelPlayerGotoMap.MapLevelMax, bilDenyLevelPlayerGotoMap.StepLevel do
				-- bilDenyLevelPlayerGotoMap.MapKey["\\settings\\droprate\\npcdroprate".._i..".ini"] = _i
				
				-- if _i == 90 then
					-- bilDenyLevelPlayerGotoMap.MapKey["\\settings\\droprate\\npcdroprate".._i.."_pld.ini"] = _i
				-- end
				
				-- print("\t[bilDenyLevelPlayerGotoMap.MapKey]: ".._i)
			-- end
		-- end
		
		-- if GetName() ~= bilNameOfGameMaster and bilDenyLevelPlayerGotoMap.MapKey[GetMapDropRateFile(SubWorldID2Idx(a_w))] and bilDenyLevelPlayerGotoMap.MapKey[GetMapDropRateFile(SubWorldID2Idx(a_w))] > GetLevel() then
			-- Talk(1, "", "B¶n ®å nµy yªu cÇu ®¼ng cÊp tõ "..bilDenyLevelPlayerGotoMap.MapKey[GetMapDropRateFile(SubWorldID2Idx(a_w))].." trë lªn míi cã thÓ tham gia, ng­¬i nªn cè g¾n luyÖn tËp thªm!")
			-- local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
			-- SetFightState(0)
			-- return NewWorld(nSubWorldId, nX/32, nY/32)
		-- end
	-- end
-------------------------------------------- KiÓm tra nh©n vËt ch­a ®ñ cÊp ®é cña b¶n ®å luyÖn c«ng --------------------------------------------

	if (PraseParam(szParam) == 1) then
		for i = 1,getn(aryChangeWorldExec[SubWorld]) do	--Ö´ÐÐº¯ÊýÁ´
			aryChangeWorldExec[SubWorld][i](1)
		end
	end
	
	YuXiChangeMapMsg();
	EventSys:GetType("EnterMap"):OnPlayerEvent(SubWorldIdx2ID(SubWorld), PlayerIndex)
end

function OnLeaveWorldDefault(szParam)
	------------------------------------------------- Fix Phong Ky ------------------------------------------------
	local a_w, a_x, a_y = GetWorldPos()
	if a_w == 387 or a_w == 388 or a_w == 389 then
		local a_t = GetTask(1201)
		if a_t == 10 or a_t == 20 or a_t == 25 then
			SetTask(1212, GetTask(1212) + (GetGameTime() - GetTask(1211)))
			
			DisabledUseTownP(0)
			ForbidChangePK(0)
			SetPKFlag(0)
			SetCreateTeam(1)
			SetPunish(1)
		end
	end
	------------------------------------------------- Fix Phong Ky ------------------------------------------------

	if (PraseParam(szParam) == 1) then
		for i = 1,getn(aryChangeWorldExec[SubWorld]) do	--Ö´ÐÐº¯ÊýÁ´
			aryChangeWorldExec[SubWorld][i](0)
		end
	end
	EventSys:GetType("LeaveMap"):OnPlayerEvent(SubWorldIdx2ID(SubWorld), PlayerIndex)
end