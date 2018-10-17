Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")
Include("\\script\\_missions\\tieu_bang_chien\\n_tieu_xa.lua")

function m_TieuBangChien:n_CamCo(nNpcIndex, nTimeOut)
	local a = GetNpcParam(nNpcIndex, self.t.NpcPosID)
	local d = GetNpcParam(nNpcIndex, self.t.TieuXa_Arrive)
	local f = GetNpcParam(nNpcIndex, self.t.TieuXa_TongID)
	
	if self:f_GetArrive(nNpcIndex, self.PosTieuXa[a][d][1], self.PosTieuXa[a][d][2]) then
		d = (d + 1)
		SetNpcParam(nNpcIndex, self.t.TieuXa_Arrive, (d))
	end
	
	if d > getn(self.PosTieuXa[a]) then
		return NpcChat(nNpcIndex,"<color=0x00ffff>Hµng ®· vÒ Nha M«n!!!")
	elseif d <= 3 then
		NpcChat(nNpcIndex,"<color=0x00ffff>XuÊt ph¸t!!!")
	end
	
	NpcWalk(nNpcIndex, self.PosTieuXa[a][d][1]/32, self.PosTieuXa[a][d][2]/32)
	
	SetNpcTimer(nNpcIndex, 3 * 18)
	
	if self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].nCamp then
		SetNpcCurCamp(nNpcIndex, self._MEMORY.Tong[self._MEMORY.Tong_ID[f]].nCamp)
	end
	
	if self.Debug then
		print("d: "..d.."")
	end
end

function m_TieuBangChien:n_CamCo_Death(nNpcIndex)
	local a = GetNpcParam(nNpcIndex, self.t.TieuXa_TongID)
	local nX32, nY32, nW = GetNpcPos(nNpcIndex)
	
	local De_Name = self._MEMORY.Tong_ID[a]
	local De_ID = self._MEMORY.Tong[De_Name].nID
	
	local At_Name, At_ID = GetTongName()
	
	DelNpc(nNpcIndex)
	
	Msg2MSAll(self.m.ID, "<color=orange>Tiªn phong tiªu cña bang héi "..De_Name.." ®· bÞ "..GetName().." bang "..At_Name.." kÕt liÔu!")
	
	return
end

function OnTimer(nNpcIndex, nTimeOut)
	if m_TieuBangChien.Debug then
		print("OnTimer( "..nNpcIndex..", "..nTimeOut..")")
	end
	
	return m_TieuBangChien:n_CamCo(nNpcIndex, nTimeOut)
end

function OnDeath(nNpcIndex) return m_TieuBangChien:n_CamCo_Death(nNpcIndex) end


































