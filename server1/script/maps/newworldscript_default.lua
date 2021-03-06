-------------------------------------------------------------------------
-- FileName		:	NewWorldScript_H.lua
-- Author		:	LuoBaohang
-- CreateTime	:	2005-09-02
-- Desc			:  	地图切换触发脚本
-------------------------------------------------------------------------
Include("\\script\\lib\\string.lua")
Include("\\script\\maps\\newworldscript_h.lua")
Include("\\script\\item\\tianziyuxi.lua");	-- 天子玉玺

Include("\\script\\misc\\eventsys\\type\\map.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

aryChangeWorldExec = {}
function PraseParam(szParam)
	if (szParam == nil) then
		return nil
	end
	if (aryChangeWorldExec[SubWorld] == nil) then	--还没有函数链，分析参数
		aryChangeWorldExec[SubWorld] = {}
		local aryFuns = split(szParam, '|')
		local j=1;
		for i = 1,getn(aryFuns) do
			local ExecFun = aryFuncStore[aryFuns[i]]
			if (ExecFun == nil)then
				print("Error: (Ne v筺 v筺orld:%d) Ch璦 nh ngh� h祄 s�%s", SubWorld, aryFuns[i])
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
	
-------------------------------------------- T﹏ th� kh玭g 頲 ph衟 l猲 b秐  luy謓 c玭g cao c蕄 --------------------------------------------
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
			Talk(1, "", "Khu v鵦 n祔 c鵦 k� nguy hi觤, kh緋 n琲 u l� s竧 th�, b秐 th﹏ l� t﹏ th�, ngi n猲 c� g緉 luy謓 t藀 th猰!")
			local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
			SetFightState(0)
			return NewWorld(nSubWorldId, nX/32, nY/32)
		end
	end
-------------------------------------------- T﹏ th� kh玭g 頲 ph衟 l猲 b秐  luy謓 c玭g cao c蕄 --------------------------------------------

-------------------------------------------- Ki觤 tra nh﹏ v藅 ch璦  c蕄  c馻 b秐  luy謓 c玭g --------------------------------------------
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
			-- Talk(1, "", "B秐  n祔 y猽 c莡 ng c蕄 t� "..bilDenyLevelPlayerGotoMap.MapKey[GetMapDropRateFile(SubWorldID2Idx(a_w))].." tr� l猲 m韎 c� th� tham gia, ngi n猲 c� g緉 luy謓 t藀 th猰!")
			-- local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
			-- SetFightState(0)
			-- return NewWorld(nSubWorldId, nX/32, nY/32)
		-- end
	-- end
-------------------------------------------- Ki觤 tra nh﹏ v藅 ch璦  c蕄  c馻 b秐  luy謓 c玭g --------------------------------------------

	if (PraseParam(szParam) == 1) then
		for i = 1,getn(aryChangeWorldExec[SubWorld]) do	--执行函数链
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
		for i = 1,getn(aryChangeWorldExec[SubWorld]) do	--执行函数链
			aryChangeWorldExec[SubWorld][i](0)
		end
	end
	EventSys:GetType("LeaveMap"):OnPlayerEvent(SubWorldIdx2ID(SubWorld), PlayerIndex)
end