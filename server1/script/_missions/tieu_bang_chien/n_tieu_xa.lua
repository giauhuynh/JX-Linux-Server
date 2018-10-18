Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:f_GetArrive(nNpcIndex, nX, nY)
	local MAX_DIS = 100
	local nX32, nY32 = GetNpcPos(nNpcIndex)
	
	if self.Debug then
		print("m_TieuBangChien:f_GetArrive :: ( abs(nX - nX32) ) = "..(abs(nX - nX32)).." :: ( abs(nY - nY32) ) = "..(abs(nY - nY32)))
	end

	if abs(nX - nX32) < MAX_DIS and abs(nY - nY32) < MAX_DIS then
		return 1
	end
end

function m_TieuBangChien:n_TieuXa_Complete(nNpcIndex, _TongID, _TongName)
	local c_N, c_Id = _TongName, _TongID

	DelNpc(nNpcIndex)
	
	self._MEMORY.Tong[c_N].nDoing = 0
	self._MEMORY.Tong[c_N].nComplete = self._MEMORY.Tong[c_N].nComplete + 1
	self._MEMORY.Tong[c_N].Receiver.GiveAward = 1
	
	for _k, _v in self._MEMORY.Tong[c_N].aPlayer do
		if (_v ~= nil) and (_v == _k) and (_v ~= self._MEMORY.Tong[c_N].Receiver.Index) then
			CallPlayerFunction(_v, AddOwnExp, self.m.AwardExp_MASS)
			CallPlayerFunction(_v, Msg2Player, "<color=yellow>Ho�n th�nh Ti�u xa nh�n ���c: "..self.m.AwardExp_MASS.." �i�m kinh nghi�m!")
		end
	end
	
	Msg2Tong(c_Id, "Ho�n th�nh ti�u xa, c�c th�nh vi�n bang �� ���c nh�n th��ng. <color=fire>Nh�n v�t: "..self._MEMORY.Tong[c_N].Receiver.Name.." vui l�ng v� g�p NPC Ti�p nh�n ti�u xa �� nh�n l�i ti�n c�c v� �i�m th��ng!")
	return Msg2MSAll(self.m.ID, "<color=orange>Bang h�i: ".._TongName.." �� ho�n th�nh xong Ti�u xa ��t "..self._MEMORY.Tong[c_N].nComplete..", xin ch�c m�ng to�n th� bang h�i!")
end

function m_TieuBangChien:n_TieuXa(nNpcIndex, nTimeOut)
	local a = GetNpcParam(nNpcIndex, self.t.NpcPosID)
	local b = GetNpcParam(nNpcIndex, self.t.TieuXa_Preparing)
	local f = GetNpcParam(nNpcIndex, self.t.TieuXa_TongID)
	local nX32, nY32 = GetNpcPos(nNpcIndex)
	local c, e = nil, nil
	
	b = ((not(b) or b == nil or b <= 0) and 0 or b)
	
	if b < self.Time.TieuXa_Preparing then
		SetNpcParam(nNpcIndex, self.t.TieuXa_Preparing, (b+1))
		
		if b < 1 then
			c = random(1, getn(self.PosTieuXa[a][2]))
			NpcWalk(nNpcIndex, self.PosTieuXa[a][2][c][1]/32, self.PosTieuXa[a][2][c][2]/32)
		end
		
		SetNpcTimer(nNpcIndex, 18)
		
		return NpcChat(nNpcIndex, "<color=yellow>Chu�n b� kh�i h�nh trong <color><color=green>"..(self.Time.TieuXa_Preparing - b).."<color><color=yellow> gi�y n�a!")
	elseif b == self.Time.TieuXa_Preparing then
		NpcChat(nNpcIndex, "�")
		SetNpcParam(nNpcIndex, self.t.TieuXa_Preparing, (b+1))
		SetNpcParam(nNpcIndex, self.t.TieuXa_Arrive, (3))
		
		local nXY_nC = 110
		local nXY_C = {
			[1] = {nXY_nC, -nXY_nC},
			[2] = {nXY_nC, nXY_nC},
			[3] = {-nXY_nC, nXY_nC},
			[4] = {-nXY_nC, -nXY_nC},
		}
		
		e = AddNpcEx(self.Npc.CamCo.m, 1, random(0,4), SubWorldID2Idx(self.MapId), (nX32+nXY_C[a][1]), (nY32+nXY_C[a][2]), 1, "Ti�n Phong Ti�u "..self._MEMORY.Tong_ID[f], 0)
		
		SetNpcParam(e, self.t.NpcPosID, a)
		SetNpcParam(e, self.t.TieuXa_Arrive, 3)
		SetNpcParam(e, self.t.TieuXa_TongID, (f))
		SetNpcAI(e, 0)
		SetNpcCurCamp(e, GetNpcCurCamp(nNpcIndex))
		SetNpcActiveRegion(e, 1)
		NpcWalk(e, self.PosTieuXa[a][3][1]/32, self.PosTieuXa[a][3][2]/32)
		SetNpcScript(e, "\\script\\_missions\\tieu_bang_chien\\n_cam_co.lua")
		SetNpcTimer(e, 18)
	end
	
	local d = GetNpcParam(nNpcIndex, self.t.TieuXa_Arrive)
	
	d = ((d > getn(self.PosTieuXa[a])) and getn(self.PosTieuXa[a]) or d)
	
	if self:f_GetArrive(nNpcIndex, self.PosTieuXa[a][d][1], self.PosTieuXa[a][d][2]) then
		d = (d + 1)
		SetNpcParam(nNpcIndex, self.t.TieuXa_Arrive, (d))
	end
	
	if d > getn(self.PosTieuXa[a]) then
		if GetNpcParam(nNpcIndex, self.t.TieuXa_Complete) ~= 1 then
			SetNpcParam(nNpcIndex, self.t.TieuXa_Complete, 1)
			SetNpcTimer(nNpcIndex, 5 * 18)
		else
			return self:n_TieuXa_Complete(nNpcIndex, self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].nID, self._MEMORY.Tong_ID[f])
		end
	
		return NpcChat(nNpcIndex,"<color=0x00ffff>H�ng �� v� Nha M�n!!!")
	end
	
	self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].Pos_TX = {nX32, nY32}
	NpcWalk(nNpcIndex, self.PosTieuXa[a][d][1]/32, self.PosTieuXa[a][d][2]/32)
	
	SetNpcTimer(nNpcIndex, 3 * 18)
	
	for _k, _v in self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].aPlayer do
		if _v ~= nil and _v == _k then
		
			if self.Debug then
				print("GetTongCamp:: Index = ".._k)
			end
			
			self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].nCamp = (CallPlayerFunction(_v, GetTongCamp) or self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].nCamp)
			SetNpcCurCamp(nNpcIndex, self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].nCamp)
			
			break
		end
	end
	
	if self.Debug then
		print("d: "..d.." :: TieuXa_TongID: "..GetNpcParam(nNpcIndex, self.t.TieuXa_TongID))
	end
end

function OnTimer(nNpcIndex, nTimeOut)
	if m_TieuBangChien.Debug then
		print("OnTimer( "..nNpcIndex..", "..nTimeOut..")")
	end
	
	return m_TieuBangChien:n_TieuXa(nNpcIndex, nTimeOut)
end

function m_TieuBangChien:n_TieuXa_Death(nNpcIndex)
	local a = GetNpcParam(nNpcIndex, self.t.TieuXa_TongID)
	local nX32, nY32, nW = GetNpcPos(nNpcIndex)
	
	local De_Name = self._MEMORY.Tong_ID[a]
	local De_ID = self._MEMORY.Tong[De_Name].nID
	
	local At_Name, At_ID = GetTongName()
	
	DelNpc(nNpcIndex)
	
	Msg2Tong(De_ID, "Ti�u xa c�a b�n bang �� b� <color=yellow>"..GetName().." bang "..At_Name.."<color> c��p tr�n ���ng v�o th�nh!")
	Msg2Tong(At_ID, "<color=green>Th�nh vi�n "..GetName().." �� c��p th�nh c�ng Ti�u xa c�a bang h�i "..De_Name..", xin ch�c m�ng qu� bang!")
	
	self._MEMORY.Tong[De_Name].nDoing = 0
	
	local b = (self.m.AwardExp_MASS / 2)
	local c = (self.Fee.Td_DangKy and self.Fee.Td_DangKy > 0) and floor(self.Fee.Td_DangKy/2) or (-1000)
	
	local d = AddNpcEx(self.Npc.BiCuop_RuongDo.m, 95, random(0,4), nW, (nX32), (nY32), 0, ("Chi�n L�i Ph�m Bang "..At_Name), 0)
	SetNpcParam(d, self.t.TieuXa_TongID, self._MEMORY.Tong[At_Name].nIdCamp)
	SetNpcParam(d, self.t.ChienLoiPham, c)
	SetNpcScript(d, "\\script\\_missions\\tieu_bang_chien\\n_chien_loi_pham.lua")
	
	for _k, _v in self._MEMORY.Tong[At_Name].aPlayer do
		if (_v ~= nil) and (_v == _k) then
			CallPlayerFunction(_v, AddOwnExp, b)
			CallPlayerFunction(_v, Msg2Player, "<color=yellow>Bang h�i c��p ti�u th�nh c�ng, b�n nh�n ���c "..b.." �i�m kinh nghi�m!")
		end
	end
	
	Msg2MSAll(self.m.ID, "<color=orange>Ti�u xa c�a bang h�i "..De_Name.." tr�n ���ng �i v�o th�nh �� b� nh�n v�t v� l�m "..GetName().." c�a bang "..At_Name.." chi�m �o�t!")
end

function main() end
function OnDeath(nNpcIndex) return m_TieuBangChien:n_TieuXa_Death(nNpcIndex) end


































