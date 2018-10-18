Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:m_OnTimer()
	local a = (GetMissionV(self.m.i_OnTimerTimes) + 1)
	local b = (((self.m.Timer_Interval / 60) / 18) * a)
	
	SetMissionV(self.m.i_OnTimerTimes, (a))
	
	if GetMissionV(self.m.i_PreparingTime) > a then
		return
	end
	
	if GetMissionV(self.m.i_State) <= 1 then
		SetMissionV(self.m.i_State, 2)
		
		return RunMission(self.m.ID)
	end
	
	a = (a - GetMissionV(self.m.i_PreparingTime))
	
	if self.Time.TiepTe and self.Time.TiepTe > 0 and mod(a, self.Time.TiepTe) == 0 then
		m_TieuBangChien:AddTiepTe()
	end
	
	if self.Time.SortRank and self.Time.SortRank > 0 and mod(a, self.Time.SortRank) == 0 then
		m_TieuBangChien:SortRank(a)
	end
	
	if a >= self.m.TimeOpenMission then
		Msg2MSAll(self.m.ID, "<color=0xa9ffe0>ChiÕn dÞch hé tèng tiªu xa lÇn nµy ®· kÕt thóc, ch­ëng qu¶n tiªu ký sÏ kh«ng tiÕp nhËn thªm l­ît ®¨ng ký tiªu míi!")
		CloseMission(self.m.ID)
	end
end

function m_TieuBangChien:SortRank(_TimerLoop)
	local a = 0
	
	if not(self._MEMORY.Player) then a = 1 end
	if not(self._MEMORY.Player.k) then a = 2 end
	if not(self._MEMORY.Player.v) then a = 3 end
	if getn(self._MEMORY.Player.v) <= 0 then a = 4 end
	
	if a ~= 0 then
		if self.Debug then
			print("m_TieuBangChien:SortRank() :: Error code: "..a)
		end
			
		return
	end
	
	local b = self._MEMORY.Player.v
	local c = 0
	
	sort(b, function(a,b) return(a.d > b.d) end)
	
	bil.Msg2AllWorld("<color=0x9BFF9B>TBC <---[ ChÕt nhiÒu nhÊt ]--->")
	for _i = 1, 10 do
		if not(b[_i]) then
			break
		end
	
		self._MEMORY.Rank.d[_i] = b[_i]
		
		if c < 3 then
			c = c + 1
			bil.Msg2AllWorld("<color=0x9BFF9B>".._i.."."..b[_i].n.." - ChÕt "..b[_i].d.." lÇn")
		end
	end
	
	sort(b, function(a,b) return(a.l > b.l) end)
	
	c = 0
	bil.Msg2AllWorld("<color=0xa9ffe0>TBC <---[ TOP Liªn Tr¶m ]--->")
	for _i = 1, 10 do
		if not(b[_i]) then
			break
		end
	
		self._MEMORY.Rank.l[_i] = b[_i]
		
		if c < 3 then
			c = c + 1
			bil.Msg2AllWorld("<color=0xa9ffe0>".._i.."."..b[_i].n.." - Liªn "..b[_i].l.."")
		end
	end
	
	sort(b, function(a,b) return(a.p > b.p) end)
	
	bil.Msg2AllWorld("<color=0x9BFF9B>TBC <---[ TOP S¸t Thñ ]--->")
	for _i = 1, 10 do
		if not(b[_i]) then
			break
		end
	
		self._MEMORY.Rank.p[_i] = b[_i]
		
		bil.Msg2AllWorld("<color=0x9BFF9B>".._i.."."..b[_i].n.." - PK "..b[_i].p.."")
	end
	
	b = nil
	
	self._MEMORY.Rank.s = {sort_Now = date("%d-%m-%y_%H%M%S"), sort_TimerLoop = _TimerLoop}
	
	if self.Debug then
		print("\tm_TieuBangChien:SortRank() :: sort_Now: "..self._MEMORY.Rank.s.sort_Now.." :: sort_TimerLoop: "..self._MEMORY.Rank.s.sort_TimerLoop)
	end
end

function m_TieuBangChien:AddTiepTe()
	local a = GetMissionV(self.m.i_OnTimerNextTiepTe)
	
	if a and a ~= 0 then
		ClearMapNpcWithName(self.MapId, (self.Add.TiepTe[a].n and self.Add.TiepTe[a].n or "Ù"))
	end
	
	a = ((a == 1) and 2 or 1)
	
	SetMissionV(self.m.i_OnTimerNextTiepTe, a)
	
	local b, c, d = getn(self.Add.TiepTe), nil, nil
	
	if self.Debug then
		print("\tm_TieuBangChien:AddTiepTe() :: a = "..a)
	end
	
	if a > b then return end
	
	c = getn(self.Add.TiepTe[a].p)
	
	for _i2 = 1, c do
		if random(1,100) <= 70 then
			d = AddNpcEx(self.Add.TiepTe[a].i, 95, random(0,4), SubWorldID2Idx(self.MapId), (self.Add.TiepTe[a].p[_i2][1] * 32), (self.Add.TiepTe[a].p[_i2][2] * 32), 0, (self.Add.TiepTe[a].n and self.Add.TiepTe[a].n or "Ù"), 0)
		
			if self.Add.TiepTe[a].s then
				SetNpcScript(d, self.Add.TiepTe[a].s)
			end
		end
	end
	
	Msg2MSAll(self.m.ID, bil.C(10, "C¸c ®iÓm "..(self.Add.TiepTe[a].n and self.Add.TiepTe[a].n or "TiÕp tÕ").." ®· xuÊt hiÖn, h·y mau chãng tiÕp søc cho b¶n th©n!"))
end

function OnTimer() return m_TieuBangChien:m_OnTimer() end
























