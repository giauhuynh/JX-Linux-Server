Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:n_TiepNhanTieuXa(_1, _2)
	local a = GetLastDiagNpc()
	local b = GetNpcParam(a, self.t.NpcPosID)
	local c_N, c_Id = GetTongName()
	
	if c_N == nil or c_N == "" or c_Id <= 0 or not(self._MEMORY.Tong[c_N]) then
		return Talk(1, "", "Xin ch�o ng��i �i ���ng!")
	end
	
	if self.Debug then
		Msg2Player("Npc Param "..self.t.NpcPosID..": "..b)
	end

	if _1 and _1 == 1 then
		if not(self.PosTieuXa[b]) and self.Debug then
			return Msg2Player("not( self.PosTieuXa[b] )")
		end
		
		if self._MEMORY.Tong[c_N].nDoing and self._MEMORY.Tong[c_N].nDoing > 0 then
			return Talk(1, "", "Bang h�i c�a ��i hi�p �ang h� t�ng Ti�u xa, sao ng�i c�n � ��y?")
		elseif not(self._MEMORY.Tong[c_N].nDoing) then
			self._MEMORY.Tong[c_N].nDoing = 0
		end
		
		if self._MEMORY.Tong[c_N].nComplete and self._MEMORY.Tong[c_N].nComplete >= self.m.CountComplete then
			return Talk(1, "", "Bang h�i c�a ��i hi�p ��t n�y �� h� t�ng th�nh c�ng "..self.m.CountComplete.." Ti�u xa r�i, xin h�y ��i ��t ho�t ��ng k� ti�p!")
		elseif not(self._MEMORY.Tong[c_N].nComplete) then
			self._MEMORY.Tong[c_N].nComplete = 0
		end
		
		if not(self._MEMORY.Tong[c_N].Pos_TX) then
			self._MEMORY.Tong[c_N].Pos_TX = {0,0}
		end
		
		if not(self._MEMORY.Tong[c_N].Receiver) then
			self._MEMORY.Tong[c_N].Receiver = {Index = 0, Name = "", GiveAward = 0}
		elseif self._MEMORY.Tong[c_N].Receiver.GiveAward > 0 then
			return Say("Nh�n v�t: "..self._MEMORY.Tong[c_N].Receiver.Name.." c�a qu� bang hi�n t�i ch�a nh�n l�i ph� b�o hi�m ti�u xa n�n kh�ng th� ti�p nh�n ti�u xa m�i!", 0)
		end
		
		if GetTongFigure() > 1 then
			return Talk(1, "", "�� ti�p nh�n ti�u xa y�u c�u ph�i l� Bang ch� ho�c Tr��ng l�o m�i ���c ph�p!")
		end
		
		if self.Fee.Td_DangKy and self.Fee.Td_DangKy > 0 then
			if CalcEquiproomItemCount(4,417,1,-1) < self.Fee.Td_DangKy then
				return Talk(1, "", "Ph� b�o hi�m ti�u xa l� "..self.Fee.Td_DangKy.." Ti�n ��ng, <color=green>sau khi �p ti�u th�nh c�ng, "..self.Fee.Td_DangKy.." Ti�n ��ng s� ���c tr� l�i cho ng��i ��ng k� ti�u xa<color>. B�n kh�ng c� �� "..self.Fee.Td_DangKy.." ti�n ��ng trong ng��i!")
			end
			
			ConsumeEquiproomItem(self.Fee.Td_DangKy,4,417,1,-1)
		end
		
		self._MEMORY.Tong[c_N].Receiver = {Index = PlayerIndex, Name = GetName(), GiveAward = 0}
		
		local c = AddNpcEx(self.Npc.TieuXa.m, 1, random(0,4), SubWorldID2Idx(self.MapId), self.PosTieuXa[b][1][1], self.PosTieuXa[b][1][2], 1, "Ti�u Xa Bang "..c_N, 0)
		
		SetNpcParam(c, self.t.NpcPosID, b)
		SetNpcParam(c, self.t.TieuXa_TongID, self._MEMORY.Tong[c_N].nIdCamp)
		SetNpcAI(c, 0)
		SetNpcCurCamp(c, GetTongCamp())
		SetNpcActiveRegion(c, 1)
		SetNpcScript(c, "\\script\\_missions\\tieu_bang_chien\\n_tieu_xa.lua")
		SetNpcTimer(c, 18)
		
		self._MEMORY.Tong[c_N].nDoing = 1
		
		Msg2MSAll(self.m.ID, "<color=0x00FFFF>Ti�u xa khu v�c "..b.." �ang ti�n v�o b�n ��, to�n th� huynh �� h�y ra s�c b�o ti�u!")
		Msg2Tong(c_Id, GetName().." <color=fire>�� ti�p nh�n ti�u xa, th�i gian kh�i h�nh trong "..self.Time.TieuXa_Preparing.." gi�y n�a, to�n th� c�c huynh �� chu�n b� h� t�ng Ti�u xa!")
		
		return
	
	elseif _1 and _1 == 2 then
		if GetTongFigure() > 1 then
			return Talk(1, "", "Ch� c� Bang ch� ho�c Tr��ng l�o c�a bang h�i m�i c� th� s� d�ng ch�c n�ng n�y!")
		end
		
		if self._MEMORY.Tong[c_N].mMask and self._MEMORY.Tong[c_N].mMask > 0 then
			return Talk(1, "", "Qu� bang �� ��ng k� ngo�i h�nh bang h�i r�i, n�u mu�n ��ng k� m�i, qu� bang ph�i h�y ngo�i h�nh c� �i!")
		end
	
		if _2 and _2 > 0 then
			if self._MEMORY.Mask[_2] or self._MEMORY.Mask[_2] ~= nil then
				return Talk(1, "", "Ti�c qu�, qu� bang �� ch�m ch�n, ngo�i h�nh n�y v�a m�i ���c bang kh�c ��ng k� xong!")
			end
			
			self._MEMORY.Tong[c_N].mMask = _2
			self._MEMORY.Mask[_2] = self._MEMORY.Tong[c_N].nIdCamp
			
			local d_Old = PlayerIndex
			local d_W, d_X, d_Y = nil, nil, nil
			
			for _k, _v in self._MEMORY.Tong[c_N].aPlayer do
				PlayerIndex = _v
				d_W, d_X, d_Y = GetWorldPos()
				
				if d_W == self.MapId then
					ChangeOwnFeature( 1, ((GetMissionV(self.m.i_PreparingTime) + self.m.TimeOpenMission)*60*18), self.Npc.Mask[_2][1],  0, 0, 0, 0)
				end
			end
			
			PlayerIndex = d_Old
			return Msg2Tong(c_Id, GetName().." <color=fire>�� ��ng k� th�nh c�ng ngo�i h�nh bang h�i: "..self.Npc.Mask[_2][2])
		end
	
		local d = {}
		
		for _i = 1, getn(self.Npc.Mask) do
			if not(self._MEMORY.Mask[_i]) or self._MEMORY.Mask[_i] == nil then
				tinsert(d, "��ng k� "..self.Npc.Mask[_i][2].."/#m_TieuBangChien:n_TiepNhanTieuXa(2, ".._i..")")
			end
		end
		
		tinsert(d, "Hi�n t�i ch�a mu�n ��ng k�/OnCancel")
		
		if getn(d) > 0 then
			return Say("Khi ��ng k� ngo�i h�nh qu�n ��i th� t�t c� c�c th�nh vi�n c�a bang h�i khi tham gia b�n �� ��u s� ���c h�a trang th�nh ngo�i h�nh bang ch� �� ch�n, kh�ng bi�t ��i hi�p mu�n ch�n ngo�i h�nh n�o?", getn(d), d)
		else
			return Talk(1,"", "Ti�c qu�, hi�n t�i t�t c� c�c ngo�i h�nh qu�n ��i �� ���c ��ng k� h�t!")
		end
		
		return
		
	elseif _1 and _1 == 3 then
		if not(self._MEMORY.Tong[c_N].mMask) or self._MEMORY.Tong[c_N].mMask <= 0 then
			return Talk(1, "", "Qu� bang ch�a ��ng k� ngo�i h�nh cho qu�n ��i bang, kh�ng th� th�c hi�n thao t�c n�y!")
		end
		
		if GetTongFigure() > 1 then
			return Talk(1, "", "Ch� c� Bang ch� ho�c Tr��ng l�o c�a bang h�i m�i c� th� s� d�ng ch�c n�ng n�y!")
		end
		
		if _2 and _2 > 0 then
			self._MEMORY.Mask[self._MEMORY.Tong[c_N].mMask] = nil
			self._MEMORY.Tong[c_N].mMask = nil
			
			local d_Old = PlayerIndex
			
			for _k, _v in self._MEMORY.Tong[c_N].aPlayer do
				PlayerIndex = _v
				RestoreOwnFeature()
			end
			
			PlayerIndex = d_Old
			return Msg2Tong(c_Id, GetName().." <color=fire>�� h�y ��ng k� ngo�i h�nh qu�n ��i cho b�n bang, c�c th�nh vi�n trong b�n �� s� tr� v� h�nh d�ng ban ��u!")
		end
		
		return Say("Khi ti�n h�nh h�y ngo�i h�nh, t�t c� c�c th�nh vi�n hi�n c� m�t trong b�n �� ho�t ��ng s� ���c kh�i ph�c ngo�i h�nh ban ��u, kh�ng bi�t qu� bang c� mu�n th�c hi�n thao t�c n�y?", 2, "Ti�n h�nh ph�c h�i ngo�i h�nh ban ��u/#m_TieuBangChien:n_TiepNhanTieuXa(3, 1)", "Th�i kh�ng c�n!/OnCancel")
	
	elseif _1 and _1 == 4 then
		if _2 and _2 > 0 then
			local e = 0
			
			for _i = 1, _2 do
				if CountFreeRoomByWH(1,1) > 0 and GetCash() > 200 then
					Pay(200)
					AddItem(1, 2, 0, 5, 0, 0, 0)
					
					e = e + 1
				else
					break
				end
			end
			
			return Msg2Player("<color=orange>Mua ���c "..e.." b�nh Ng� hoa ng�c l� ho�n!")
		end
		
		return AskClientForNumber("m_TieuBangChien_iClientDuocPham",0,60,"1 Ng� hoa = 200 l��ng")
		
	elseif _1 and _1 == 5 then
		local g = ((self._MEMORY.Player.v[self._MEMORY.Player.k[GetName()]].d_t + 10) - GetGameTime())
		
		if self.Debug then
			print("m_TieuBangChien:n_TiepNhanTieuXa(5) :: d_t: "..self._MEMORY.Player.v[self._MEMORY.Player.k[GetName()]].d_t.." :: GetGameTime(): "..GetGameTime().." :: g: "..g)
		end
	
		if g > 0 then
			return Talk(1, "", "C�n "..g.." gi�y n�a m�i c� th� s� d�ng c�ng n�ng n�y!")
		end
	
		if self._MEMORY.Tong[c_N].nDoing and self._MEMORY.Tong[c_N].nDoing > 0 and self._MEMORY.Tong[c_N].Pos_TX then
			SetFightState(1)
			return SetPos((self._MEMORY.Tong[c_N].Pos_TX[1]/32), (self._MEMORY.Tong[c_N].Pos_TX[2]/32))
		else
			return Talk(1, "", "Ti�u xa c�a qu� bang kh�ng th� truy�n t�ng, c� l� ti�u xa �� x�y ra b�t tr�c!")
		end
		
		return
		
	elseif _1 and _1 == 6 then
		self._MEMORY.Tong[c_N].Receiver.GiveAward = 0
		self._MEMORY.Tong[c_N].Receiver.Name = ""
		self._MEMORY.Tong[c_N].Receiver.Index = 0
		
		AddStackItem(self.Fee.Td_DangKy,4,417,1,1,0,0,0)
		
		AddOwnExp(self.m.AwardExp_RECEIVER)
		
		return Msg2Tong(c_Id, GetName().." <color=fire>�� nh�n l�i ph� b�o hi�m Ti�u xa v� "..self.m.AwardExp_RECEIVER.." �i�m kinh nghi�m!")
		
	elseif _1 and _1 == 7 then
		local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
		return NewWorld(nSubWorldId, nX/32, nY/32)
	end
	
	local f = {}
	
	tinsert(f, "Mua d��c ph�m/#m_TieuBangChien:n_TiepNhanTieuXa(4)")
	
	if self._MEMORY.Tong[c_N].nDoing and self._MEMORY.Tong[c_N].nDoing > 0 and self._MEMORY.Tong[c_N].Pos_TX then
		tinsert(f, "Di chuy�n ��n v� tr� c�a ti�u xa bang h�i/#m_TieuBangChien:n_TiepNhanTieuXa(5)")
	end
	
	if self._MEMORY.Tong[c_N].Receiver and self._MEMORY.Tong[c_N].Receiver.GiveAward > 0 and GetName() == self._MEMORY.Tong[c_N].Receiver.Name then
		tinsert(f, "Ta ��n nh�n l�i ph� b�o hi�m ti�u xa v� ph�n th��ng!/#m_TieuBangChien:n_TiepNhanTieuXa(6)")
	end
	
	if GetMissionV(self.m.i_State) > 0 then
		tinsert(f, "��ng k� h� t�ng Ti�u Xa"..((self.Fee.Td_DangKy and self.Fee.Td_DangKy <= 0) and " (Mi�n ph�)" or "").."/#m_TieuBangChien:n_TiepNhanTieuXa(1)")
	else
		tinsert(f, "R�i kh�i b�n ��!/#m_TieuBangChien:n_TiepNhanTieuXa(7)")
	end
	
	tinsert(f, "��ng k� ngo�i h�nh qu�n ��i b�n bang (Mi�n ph�)/#m_TieuBangChien:n_TiepNhanTieuXa(2)")
	tinsert(f, "H�y ��ng k� ngo�i h�nh qu�n ��i/#m_TieuBangChien:n_TiepNhanTieuXa(3)")
	tinsert(f, "K�t th�c ��i tho�i/OnCancel")

	Say("Ti�p nh�n ti�u xa NPC", getn(f), f)
end

function m_TieuBangChien_iClientDuocPham(_BuyCount)
	return m_TieuBangChien:n_TiepNhanTieuXa(4, _BuyCount)
end

function main()
	return m_TieuBangChien:n_TiepNhanTieuXa()
end




























