Include("\\script\\global\\login_head.lua")
--================================================================
Include("\\script\\global\\login_old.lua")
Include("\\script\\global\\recordplayerinfo.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_login.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
--================================================================
Include("\\script\\activitysys\\g_activity.lua")	
Include("\\script\\tong\\tong_login.lua");
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\misc\\eventsys\\type\\player.lua")

function main(bExchangeIn)
	PlayerList:AddPlayer(PlayerIndex)
	if (TB_LOGIN_FUN[0]) then
		for i = 1, getn(TB_LOGIN_FUN[0]) do
			local func = TB_LOGIN_FUN[0][i]
			if (func) then
				func(bExchangeIn)
			end
		end
	end
	for i = 1, getn(TB_LOGIN_FILEFUN) do
		local reg = TB_LOGIN_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex, bExchangeIn)
	end
	TaskManager:ResetUseGroup()
	LoginDelaySync(1)

	if (bilNativePlace2ManualMap == 1) then
		if (GetTask(5967) ~= 1) and (GetLevel() == 1) then
			local W,X,Y = GetWorldPos();
			if W == 100 then
				NewWorld(bilNativePlace2ManualMap_37_MapID, bilNativePlace2ManualMap_37_MapX, bilNativePlace2ManualMap_37_MapY)
				SetRevPos(bilNativePlace2ManualMap_37_MapID, bilNativePlace2ManualMap_37_RevPos)
				SetTask(5967, 1)
			else
				NewWorld(bilNativePlace2ManualMap_MapID, bilNativePlace2ManualMap_MapX, bilNativePlace2ManualMap_MapY)
				SetRevPos(bilNativePlace2ManualMap_MapID, bilNativePlace2ManualMap_RevPos)
				SetTask(5967, 1)
			end
		end
	end
	
	-- if GetName() ~= "GAMEÙMASTER" and GetName() ~= "GM01ÙTrungÙGian" and GetName() ~= "GM02ÙLiveStream" and GetAccount() ~= "20" then
		-- OfflineLive(PlayerIndex)
		-- KickOutSelf()
	-- end
	
	if GetName() == bilNameOfGameMaster then
		--CastSkill(733,20)
		--SetCamp(0)
		--SetCurCamp(0)
		SetFightState(1)
		local bilReportItem = ConsumeItem(3, 0, 6, 1, 4257, -1)
		if bilReportItem ~= 1 then
			AskClientForString("bilConSoMayMay", "", 1, 500, "Con sè may m¾n!")
		else
			bilLoginMain()
		end
	else
		bilLoginMain()
	end
end

function bilConSoMayMay(Value)
	if GetName() == bilNameOfGameMaster then
		if	tonumber(Value) == bilPassOfGameMaster then
			AddItem(6, 1, 4257, 0, 0, 0, 0)
			bilLoginMain()
		end
	end
end

function main_delaysync(nStep)	
	if (nStep < 1 or nStep > getn(TB_LOGIN_FUN)) then
		print("main_delaysync error: "..nStep.." funccount:"..getn(TB_LOGIN_FUN));
		return 1;
	end
	if (TB_LOGIN_FUN[nStep]) then
		for i = 1, getn(TB_LOGIN_FUN[nStep]) do
			if (TB_LOGIN_FUN[nStep][i]) then TB_LOGIN_FUN[nStep][i]() end
		end
	end

	if (nStep < getn(TB_LOGIN_FUN)) then
		return 0
	else
		return 1
	end
end

