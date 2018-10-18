Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:p_OnDeath(Launcher)
	local de_Index = PlayerIndex
	if de_Index <= 0 then return end
	local de_Name = CallPlayerFunction(de_Index, GetName)
	local de_tN, de_tID = CallPlayerFunction(de_Index, GetTongName)
	local de_pKey = (self._MEMORY.Player.k[de_Name] or 0)
	
	local at_Index = NpcIdx2PIdx(Launcher)
	if at_Index <= 0 then return end
	local at_Name = CallPlayerFunction(at_Index, GetName)
	local at_tN, at_tID = CallPlayerFunction(at_Index, GetTongName)
	local at_pKey = (self._MEMORY.Player.k[at_Name] or 0)
	
	local a = {"<color=orange>","<color=0xff5040>","<color=fire>","<color=wood>","<color=metal>","<color=water>","<color=earth>",}
	
	if de_pKey > 0 then
		self._MEMORY.Player.v[de_pKey].d = (self._MEMORY.Player.v[de_pKey].d + 1)
		self._MEMORY.Player.v[de_pKey].d_t = GetGameTime()
		
		if self._MEMORY.Player.v[de_pKey].l_c > 0 then
			self._MEMORY.Player.v[de_pKey].l_c = 0
			Msg2Player("<color=violet>B�n b� qu�n ��ch h� g�c, t�ng li�n tr�m tr� v� 0!")
		end
	end
	
	PlayerIndex = at_Index
		if at_pKey > 0 then
			self._MEMORY.Player.v[at_pKey].p = (self._MEMORY.Player.v[at_pKey].p + 1)
			self._MEMORY.Player.v[at_pKey].l_c = (self._MEMORY.Player.v[at_pKey].l_c + 1)
			
			if self._MEMORY.Player.v[at_pKey].l_c > self._MEMORY.Player.v[at_pKey].l then
				self._MEMORY.Player.v[at_pKey].l = self._MEMORY.Player.v[at_pKey].l_c
			end
		end
		
		Msg2MSAll(self.m.ID, a[random(1, 7)]..""..at_Name.." bang "..at_tN.."<pic=123>"..de_Name.." bang "..de_tN..". T�ng PK "..self._MEMORY.Player.v[at_pKey].p..", t�ng LT "..self._MEMORY.Player.v[at_pKey].l_c..".")
		Msg2Player("<color=pink>B�n h� g�c ���c qu�n ��ch, t�ng t�ch l�y PK hi�n t�i l� "..self._MEMORY.Player.v[at_pKey].p..", t�ng li�n tr�m hi�n t�i l� "..self._MEMORY.Player.v[at_pKey].l_c..".")
	PlayerIndex = de_Index
end

function OnDeath(Launcher) return m_TieuBangChien:p_OnDeath(Launcher) end

























