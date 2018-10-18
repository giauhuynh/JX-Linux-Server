Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

function OnNewWorld()
	if GetLastFactionNumber() == -1 or GetCamp() == 0 or GetCurCamp() == 0 then
		if GetName() ~= bilNameOfGameMaster then
			Talk(1, "", "Khu v�c n�y c�c k� nguy hi�m, kh�p n�i ��u l� s�t th�, b�n th�n l� t�n th�, ng��i n�n c� g�n luy�n t�p th�m!")
			local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
			return NewWorld(nSubWorldId, nX/32, nY/32)
		end
	end

	local a = {
		[989] = "Chi�n Long ��ng - S� c�p",
		[990] = "Chi�n Long ��ng - Trung c�p",
		[991] = "Chi�n Long ��ng - Cao c�p",
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
		Msg2Player("�� ��n "..a[a_w])
	end
end

function OnLeaveWorld()
	DisabledUseTownP(0)
	ForbidChangePK(0)
	SetPKFlag(0)
	SetPunish(1)
	SetFightState(0)
end



































