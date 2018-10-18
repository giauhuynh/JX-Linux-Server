Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

function OnNewWorld()
	if GetLastFactionNumber() == -1 or GetCamp() == 0 or GetCurCamp() == 0 then
		if GetName() ~= bilNameOfGameMaster then
			Talk(1, "", "Khu vùc nµy cùc kú nguy hiÓm, kh¾p n¬i ®Òu lµ s¸t thñ, b¶n th©n lµ t©n thñ, ng­¬i nªn cè g¾n luyÖn tËp thªm!")
			local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
			return NewWorld(nSubWorldId, nX/32, nY/32)
		end
	end

	local a = {
		[989] = "ChiÕn Long §éng - S¬ cÊp",
		[990] = "ChiÕn Long §éng - Trung cÊp",
		[991] = "ChiÕn Long §éng - Cao cÊp",
	}
	
	if GetTask(2312) ~= tonumber(GetLocalDate("%m%d")) then
		SetTask(2669, 0)
		SetTask(2670, 0)
		SetTask(2671, 0)
	end
	
	local nProtectTime = 4*18
	SetProtectTime(nProtectTime)
	AddSkillState(963, 1, 0, nProtectTime)
	
	DisabledUseTownP(1)
	ForbidChangePK(1)
	SetPKFlag(1)
	SetPunish(0)
	SetFightState(1)
	SetLogoutRV(1)
	
	local a_w, a_x, a_y = GetWorldPos()
	
	if a[a_w] then
		Msg2Player("§· ®Õn "..a[a_w])
	end
end

function OnLeaveWorld()
	DisabledUseTownP(0)
	ForbidChangePK(0)
	SetPKFlag(0)
	SetPunish(1)
	SetFightState(0)
end



































