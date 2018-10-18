Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_missions\\cau_ca\\head.lua")

function m_CauCa:OpenMission(_TimeForPreparing)
	if SubWorldID2Idx(self.Pos.Map[1]) <= -1 then
		return
	end

	local a = nil
	
	if _TimeForPreparing and _TimeForPreparing > 0 then
		self.Timer.Idx = AddTimer((_TimeForPreparing * 18), "m_CauCa:OnTimerMission", self.Timer.Idx)
		self.Timer.CallNpc1 = 1
		self.State.ID = 1
	else
		self.State.ID = self.State.ID + 1
	end
	
	self.Timer.CallNpc1 = ((getn(self.State.Mes) == self.State.ID) and 0 or 1)
	
	if self.State.ID == 2 then
		a = AddNpcEx(181, 95, 0, SubWorldID2Idx(self.Pos.Map[1]), (self.Pos.NPC.Pos[1][1] * 32), (self.Pos.NPC.Pos[1][2] * 32), 0, self.Pos.NPC.Name, 0)
		SetNpcScript(a, "\\script\\_missions\\cau_ca\\can_thu_lao_nhan.lua")
	end
	
	local b = getn(self.Pos.GiunDat.Pos)
	
	if self.Timer.CallNpc1 == 1 then
		ClearMapNpcWithName(self.Pos.Map[1], self.Pos.GiunDat.Name)
		for _i = 1, b do
			a = AddNpcEx(1353, 95, 0, SubWorldID2Idx(self.Pos.GiunDat.Pos[_i][1]), (self.Pos.GiunDat.Pos[_i][2] * 32), (self.Pos.GiunDat.Pos[_i][3] * 32), 0, self.Pos.GiunDat.Name, 0)
			SetNpcScript(a, "\\script\\_missions\\cau_ca\\giun_dat.lua")
		end
	end
	
	if self.State.Mes[self.State.ID] then
		bil.Msg2AllWorld(bil.C(11, self.State.Mes[self.State.ID]))
	elseif self.Timer.CallNpc1 == 1 then
		bil.Msg2AllWorld(bil.C(11, self.State.Mes[self.Timer.CallNpc1]))
	end
	
	if getn(self.State.Mes) <= self.State.ID then
		self.State.ID = 0
		ClearMapNpcWithName(self.Pos.Map[1], self.Pos.GiunDat.Name)
		ClearMapNpcWithName(self.Pos.Map[1], self.Pos.NPC.Name)
		return print("======> [Cau Ca]: End Mission!!! ")
	elseif _TimeForPreparing and _TimeForPreparing > 0 then
		return print("======> [Cau Ca]: Time For Preparing > "..(_TimeForPreparing).." < Sec")
	end
	
	self.Timer.Idx = AddTimer((self.Timer.reCall * 18), "m_CauCa:OnTimerMission", self.Timer.Idx)
end

function m_CauCa:OnTimerMission(_TimerIndex)
	DelTimer(_TimerIndex)
	self:OpenMission()
end




































