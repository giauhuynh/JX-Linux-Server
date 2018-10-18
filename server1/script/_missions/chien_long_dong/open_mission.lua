Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_missions\\chien_long_dong\\head.lua")

function m_ChienLongDong:OpenMission(_TimeForPreparing)
	local a = getn(self.maps)
	local b, c = nil, 0

	for _i = 1, a do
		if SubWorldID2Idx(self.maps[_i][1]) ~= -1 then
			ClearMapNpc(self.maps[_i][1])
			ClearMapTrap(self.maps[_i][1])
			
			for _i5 = 1, getn(self.maps[_i][4]) do
				b = AddNpcEx(238, 95, 0, SubWorldID2Idx(self.maps[_i][1]), (self.maps[_i][4][_i5][1] * 32), (self.maps[_i][4][_i5][2] * 32), 0, "Ng­êi TruyÒn Tèng", 0)
				SetNpcScript(b, "\\script\\_missions\\chien_long_dong\\n_leave_map.lua")
			end
			
			c = c + 1
		end
	end
	
	if _TimeForPreparing and _TimeForPreparing > self.timer.totalTimes[1] and (not(self.timer.totalTimes[2]) or self.timer.totalTimes[2] == 0) then
		self.timer.totalTimes[2] = _TimeForPreparing
		self.timer.timer_idx = AddTimer((_TimeForPreparing * 18), "m_ChienLongDong:OnTimerMission", self.timer.timer_idx)
		print("======> [Chien Long Dong] return: Time For Preparing > "..(_TimeForPreparing).." < Sec")
		return
	end
	
	if self.timer.totalTimes[2] and self.timer.totalTimes[2] == self.timer.totalTimes[1] then
		self.timer.totalTimes[2] = 0
		
		if c > 0 then
			bil.Msg2AllWorld(bil.C(9, "B¶o d­îc quý ë ChiÕn Long §éng ®· ®­îc h¸i hÕt!"))
		end
		
		return
	elseif self.timer.totalTimes[2] and self.timer.totalTimes[2] > self.timer.totalTimes[1] then
		self.timer.totalTimes[2] = 0
	end

	self.state.id = (self.state.id == 0) and 1 or (self.state.id + 1)
	
	for _i2 = 1, a do
		if SubWorldID2Idx(self.maps[_i2][1]) ~= -1 and self.fruits[_i2] then
			for _i3 = 1, getn(self.fruits[_i2]) do
				b = AddNpcEx(self.state.name[self.state.id][1], 95, 0, SubWorldID2Idx(self.maps[_i2][1]), (self.fruits[_i2][_i3][1] * 32), (self.fruits[_i2][_i3][2] * 32), 0, self.state.name[self.state.id][2], 0)
				SetNpcParam(b, 1, _i2)
				SetNpcParam(b, 2, tonumber(_i3..(self.timer.totalTimes[2] or 1)))
				SetNpcScript(b, "\\script\\_missions\\chien_long_dong\\n_qua_huy_hoang.lua")
			end
			
			if self.state.id == 1 then
				bil.Msg2AllWorld(bil.C(11, "B¶o d­îc quý Qu¶ Huy Hoµng hÊp thu linh khÝ ®Êt trêi, ®· thøc sinh tr­ëng t¹i ")..bil.C(1, self.maps[_i2][2])..bil.C(11, " täa ®é "..self.maps[_i2][3]))
			end
			
			if self.fruits_gold[_i2] and self.fruits_gold[_i2].isOpen == 1 then
				for _i4 = 1, getn(self.fruits_gold[_i2].p) do
					b = AddNpcEx(self.fruits_gold[_i2].s[self.state.id][1], 95, 0, SubWorldID2Idx(self.maps[_i2][1]), (self.fruits_gold[_i2].p[_i4][1] * 32), (self.fruits_gold[_i2].p[_i4][2] * 32), 0, self.fruits_gold[_i2].s[self.state.id][2], 0)
					SetNpcScript(b, "\\script\\_missions\\chien_long_dong\\n_qua_hoang_kim.lua")
				end
				
				if self.state.id == 1 then
					bil.Msg2AllWorld(bil.C(2, "Qu¶ Hoµng Kim")..bil.C(11, " nghe nãi ®ang sinh tr­ëng t¹i "..self.maps[_i2][2]))
				end
			end

			c = c + 1
		end
	end

	if self.state.id == 2 then
		if c > 0 then
			bil.Msg2AllWorld(bil.C(11, "B¶o d­îc quý Qu¶ Huy Hoµng hÊp thu linh khÝ ®Êt trêi, cuèi cïng ®· ®©m hoa kÕt tr¸i t¹i ChiÕn Long §éng!"))
		end
		
		self.state.id = 0
		self.timer.totalTimes[2] = (self.timer.totalTimes[2] and (self.timer.totalTimes[2] + 1) or 1)
	end
	
	if self.timer.totalTimes[2] and self.timer.totalTimes[2] >= self.timer.totalTimes[1] then
		self.timer.timer_idx = AddTimer((self.timer.reCall * 2), "m_ChienLongDong:OnTimerMission", self.timer.timer_idx)
		return
	end
	
	self.timer.timer_idx = AddTimer(self.timer.reCall, "m_ChienLongDong:OnTimerMission", self.timer.timer_idx)
end

function m_ChienLongDong:OnTimerMission(TimerID)
	self:OpenMission()
	DelTimer(TimerID)
end
































