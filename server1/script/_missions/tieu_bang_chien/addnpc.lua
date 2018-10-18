Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:AddNpc(_1)
	local a_r = (_1 and (getn(_1) > 0 or _1.p)) and _1 or self.Add.Npc
	
	if getn(a_r) > 0 then
		for _i = 1, getn(a_r) do
			self:AddNpc(a_r[_i])
		end
		
		return 
	end
	
	local a = getn(a_r.p)
	local b = nil
	
	if a_r.p and a > 0 then
		for _i2 = 1, a do
			b = AddNpcEx(a_r.i, 95, random(0,4), SubWorldID2Idx(self.MapId), (a_r.p[_i2][1] * 32), (a_r.p[_i2][2] * 32), 0, (a_r.n and a_r.n or "Ù"), 0)
			
			if a_r.p[_i2][3] and a_r.p[_i2][3] > 0 then
				SetNpcParam(b, self.t.NpcPosID, a_r.p[_i2][3])
			end
			
			if a_r.s then
				SetNpcScript(b, a_r.s)
			end
		end
	end
	
	if self.Debug then
		print("\t[_MIS] m_TieuBangChien:AddNpc() :: a_r.n : "..(a_r.n and a_r.n or "Ù").." :: Successful!")
	end
end


































