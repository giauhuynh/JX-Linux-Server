
bilTbRank = {}

function bilTbRank:UpdateRankAll(bilLevel, bilName, bilCash, bilBoxMoney, bilFaction, bilTongName, bilCamp, bilTask2501, bilTask5987, bilRepute, bilFuYuan, bilTimeOnline, TongKhieuChienLenh, bilExpPercent)
	if bilLevel >= 10 then
		if bilExpPercent == 0 then
			bilExpPercent = "00"
		elseif bilExpPercent < 10 then
			bilExpPercent ="0"..bilExpPercent
		elseif bilExpPercent > 99 then
			bilExpPercent = "99"
		end
		bilTbRank:Top10PhuHo(bilName, bilCash, bilBoxMoney)
		bilTbRank:Top10MonPhai(bilName, bilFaction, bilTongName, bilLevel, bilCamp, bilExpPercent)
		bilTbRank:Top10PhuHoMonPhai(bilName, bilFaction, bilCash, bilBoxMoney)
		bilTbRank:Top10VinhDuTheGioi(bilName, bilTask2501)
		bilTbRank:ThanThuPhiPham_DailyMuster(bilName, bilTask5987)
		bilTbRank:ThanThuPhiPham_Repute(bilName, bilRepute)
		bilTbRank:ThanThuPhiPham_FuYuan(bilName, bilFuYuan)
		bilTbRank:ThanThuPhiPham_OnlineTime(bilName, bilTimeOnline)
		bilTbRank:ThanThuPhiPham_KhieuChienLenh(bilName, TongKhieuChienLenh)
	end
end

function bilTbRank:ThanThuPhiPham_KhieuChienLenh(bilName, TongKhieuChienLenh)
	Ladder_NewLadder(10229, bilName, TongKhieuChienLenh,1);
end

function bilTbRank:ThanThuPhiPham_OnlineTime(bilName, bilTimeOnline)
	Ladder_NewLadder(10228, bilName, floor(bilTimeOnline/60),1);
end

function bilTbRank:ThanThuPhiPham_FuYuan(bilName, bilFuYuan)
	Ladder_NewLadder(10121, bilName, bilFuYuan,1);
end

function bilTbRank:ThanThuPhiPham_DailyMuster(bilName, bilTask5987)
	Ladder_NewLadder(10122, bilName, bilTask5987,1);
end

function bilTbRank:ThanThuPhiPham_Repute(bilName, bilRepute)
	Ladder_NewLadder(10120, bilName, bilRepute,1);
end

function bilTbRank:Top10VinhDuTheGioi(bilName, bilTask2501)
	Ladder_NewLadder(10195, bilName, bilTask2501,1);
end

function bilTbRank:Top10PhuHoMonPhai(bilName, bilFaction, bilCash, bilBoxMoney)
	local player_Faction = bilFaction
	if (player_Faction == 5) then	
		Ladder_NewLadder(10265, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 4) then				
		Ladder_NewLadder(10266, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 2) then
		Ladder_NewLadder(10267, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 3) then
		Ladder_NewLadder(10268, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 1) then
		Ladder_NewLadder(10269, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 0) then
		Ladder_NewLadder(10270, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 8) then
		Ladder_NewLadder(10271, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 9) then
		Ladder_NewLadder(10272, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 7) then
		Ladder_NewLadder(10273, bilName, bilCash + bilBoxMoney,1);
	elseif (player_Faction == 6) then
		Ladder_NewLadder(10274, bilName, bilCash + bilBoxMoney,1);
	end
end

function bilTbRank:Top10MonPhai(bilName, bilFaction, bilTongName, bilLevel, bilCamp, bilExpPercent)
	local player_Faction = bilFaction
	if (player_Faction == 5) then	
		Ladder_NewLadder(10489, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 4) then				
		Ladder_NewLadder(10488, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 2) then
		Ladder_NewLadder(10487, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 3) then
		Ladder_NewLadder(10486, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 1) then
		Ladder_NewLadder(10485, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 0) then
		Ladder_NewLadder(10484, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 8) then
		Ladder_NewLadder(10483, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 9) then
		Ladder_NewLadder(10482, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 7) then
		Ladder_NewLadder(10481, bilName, tonumber(bilLevel..bilExpPercent), 1);
	elseif (player_Faction == 6) then
		Ladder_NewLadder(10480, bilName, tonumber(bilLevel..bilExpPercent), 1);
	end
	
	
	
	-- if (player_Faction == "cuiyan") then	
		-- Ladder_NewLadder(10282, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "emei") then				
		-- Ladder_NewLadder(10281, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "tangmen") then
		-- Ladder_NewLadder(10279, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "wudu") then
		-- Ladder_NewLadder(10280, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "tianwang") then
		-- Ladder_NewLadder(10278, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "shaolin") then
		-- Ladder_NewLadder(10277, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "wudang") then
		-- Ladder_NewLadder(10285, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "kunlun") then
		-- Ladder_NewLadder(10286, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "tianren") then
		-- Ladder_NewLadder(10284, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- elseif (player_Faction == "gaibang") then
		-- Ladder_NewLadder(10283, bilName, tonumber(bilLevel..bilExpPercent), 1);
	-- end
end

function bilTbRank:Top10PhuHo(bilName, bilCash, bilBoxMoney)
	Ladder_NewLadder(10288, bilName, bilCash + bilBoxMoney, 1);
end

