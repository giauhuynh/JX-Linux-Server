Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\event\\birthday_jieri\\200905\\class.lua")
function OnNewWorld(szParam)
	OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
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

	OnLeaveWorldDefault(szParam)
	SetDeathScript("");
	SetPunish(1)
	SetCreateTeam(1);
	SetPKFlag(0)
	ForbidChangePK(0);
	DisabledUseTownP(0)
	SetFightState(0)
end
