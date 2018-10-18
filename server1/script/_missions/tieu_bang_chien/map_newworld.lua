Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:map_OnLeaveWorld()
	if self.Debug then
		print("m_TieuBangChien:map_OnLeaveWorld() :: "..GetName())
	end

	RestoreOwnFeature()
	RemoveSkillState(733)
	SetChatFlag(0)
	RestoreCamp()
	
	DisabledUseTownP(0)
	ForbidChangePK(0)
	SetPKFlag(0)
	SetPunish(1)
	SetFightState(0)
	
	if self.Debug then
		print(GetPlayerRev())
	end
	
	local b_N, b_Id = GetTongName()
	
	if self._MEMORY.Tong and self._MEMORY.Tong[b_N] then
		if self._MEMORY.Tong[b_N].aPlayer and self._MEMORY.Tong[b_N].aPlayer[PlayerIndex] then
			self._MEMORY.Tong[b_N].aPlayer[PlayerIndex] = nil
		end
		
		self._MEMORY.Tong[b_N].nMemCount = (self._MEMORY.Tong[b_N].nMemCount - 1)
		
		Msg2MSGroup(self.m.ID, "<color=orange>Thµnh viªn "..GetName().." cña bæn bang ®· rêi khái b¶n ®å!", self._MEMORY.Tong[b_N].nIdCamp)
		
		DelMSPlayer(self.m.ID, PlayerIndex, self._MEMORY.Tong[b_N].nIdCamp)
		
		SetDeathScript("")
	end
	
	if self.Debug then
		print("m_TieuBangChien:map_OnLeaveWorld() :: _EndFunc_ :: "..GetName())
	end
end

function m_TieuBangChien:map_OnNewWorld(_1)
	if self.Debug then
		print("m_TieuBangChien:map_OnNewWorld() :: "..GetName().." :: _1: "..(_1 or "nil"))
	end

	if GetMissionV(self.m.i_State) <= 0 then
		-- Talk(1, "", "Cã thÓ ®¹i hiÖp ®· ®Õn muén, ho¹t ®éng Tiªu bang chiÕn ®ît nµy ®· khÐp l¹i, xin h·y ®îi ®Õn ®ît ho¹t ®éng kÕ tiÕp!")
		
		local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
		return NewWorld(nSubWorldId, nX/32, nY/32)
	end

	local d = GetMissionV(self.m.i_NextCamp) or 0
	local e = GetMissionV(self.m.i_TongCountID) or 0
	local f = GetMissionV(self.m.i_NextPlayer) or 0
	
	d = (d >= 4) and 1 or (d + 1)
	e = e + 1
	f = f + 1
	
	local b_N, b_Id = GetTongName()
	
	if _1 then
		if _1 == 1 then
			AddSkillState(733, 20, 1, 60 * 60 * 18, 1)
			SetChatFlag(1)
			SetCurCamp(6)
			
			local c = random(1, getn(self.ReviveRegion))
			
			SetPos(self.ReviveRegion[c][1], self.ReviveRegion[c][2])
			
		elseif _1 == 2 and b_N ~= "" and b_N ~= nil then
			if not(self._MEMORY.Tong[b_N]) then
				self._MEMORY.Tong[b_N] = {}
				
				self._MEMORY.Tong[b_N].nRevive = d
				self._MEMORY.Tong[b_N].nIdCamp = e
				self._MEMORY.Tong[b_N].nID = b_Id
				self._MEMORY.Tong[b_N].nCamp = GetTongCamp()
				self._MEMORY.Tong[b_N].sName = b_N
				self._MEMORY.Tong[b_N].aPlayer = {}
				
				self._MEMORY.Tong_ID[e] = b_N
			
				SetMissionV(self.m.i_NextCamp, d)
				SetMissionV(self.m.i_TongCountID, e)
			end
			
			self._MEMORY.Tong[b_N].nMemCount = (self._MEMORY.Tong[b_N].nMemCount and (self._MEMORY.Tong[b_N].nMemCount + 1) or 1)
			SetPos(self.ReviveRegion[self._MEMORY.Tong[b_N].nRevive][1], self.ReviveRegion[self._MEMORY.Tong[b_N].nRevive][2])
			
			AddMSPlayer(self.m.ID,self._MEMORY.Tong[b_N].nIdCamp)
			SetTempRevPos(self.MapId, (self.ReviveRegion[self._MEMORY.Tong[b_N].nRevive][1]*32), self.ReviveRegion[self._MEMORY.Tong[b_N].nRevive][2]*32)
			SetDeathScript("\\script\\_missions\\tieu_bang_chien\\p_death.lua")
			
			if not(self._MEMORY.Player.k[GetName()]) then
				self._MEMORY.Player.k[GetName()] = f
				SetMissionV(self.m.i_NextPlayer, f)
				self._MEMORY.Player.v[f] = {n = GetName(), t = b_N, p = 0, l = 0, d = 0, l_c = 0, d_t = 0}
			end
				
			self._MEMORY.Tong[b_N].aPlayer[PlayerIndex] = PlayerIndex
			
			if self._MEMORY.Tong[b_N].mMask and self._MEMORY.Tong[b_N].mMask > 0 then
				ChangeOwnFeature( 1, (self.m.TimeOpenMission*60*18), self.Npc.Mask[self._MEMORY.Tong[b_N].mMask][1],  0, 0, 0, 0)
			end
		end
		
		DisabledUseTownP(1)
		ForbidChangePK(1)
		SetPKFlag(1)
		SetPunish(0)
		SetFightState(0)
		SetLogoutRV(1)
		
		if self.Debug then
			print("m_TieuBangChien:map_OnNewWorld() :: _EndFunc_ :: "..GetName().." :: _1: "..(_1 or "nil"))
		end
		
		return
	end
	
	if b_Id <= 0 or b_N == "" or b_N == nil then
		return self:map_OnNewWorld(1)
	else
		return self:map_OnNewWorld(2)
	end
end

function OnLeaveWorld() return m_TieuBangChien:map_OnLeaveWorld() end

function OnNewWorld() return m_TieuBangChien:map_OnNewWorld() end


























