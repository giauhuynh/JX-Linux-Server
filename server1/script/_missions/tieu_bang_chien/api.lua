Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:api_CheckForbidItem()
	local a = 0
	
	for _i = 1, getn(self.i.Forbid) do
		a = CalcEquiproomItemCount(self.i.Forbid[_i][2][1],self.i.Forbid[_i][2][2],self.i.Forbid[_i][2][3],-1)
		
		if a > 0 then return 1 end
		
		a = CalcItemCount(1,self.i.Forbid[_i][2][1],self.i.Forbid[_i][2][2],self.i.Forbid[_i][2][3],-1)
		
		if a > 0 then return 1 end
	end
	
	return nil
end

function m_TieuBangChien:api_Station(_1)
	local b_N, b_Id = GetTongName()
	
	if _1 and _1 == 1 then
		if SubWorldID2Idx(self.MapId) > 0 then
			local a = SubWorld
			SubWorld = SubWorldID2Idx(self.MapId)
			
			if GetMissionV(self.m.i_State) > 0 then
				SubWorld = a
				return 1
			end
			
			SubWorld = a
		else
			if self.m.StateWithNotMap > 0 then
				return 1
			end
		end
		
		return nil
		
	elseif _1 and _1 == 2 then
		local c = random(1, getn(self.ReviveRegion))
		
		if b_Id > 0 and b_N ~= "" and b_N ~= nil then
			if self.m.StateWithNotMap_Pos.a[b_N] then
				c = self.m.StateWithNotMap_Pos.a[b_N]
			else
				self.m.StateWithNotMap_Pos.c = (self.m.StateWithNotMap_Pos.c + 1)
				self.m.StateWithNotMap_Pos.a[b_N] = self.m.StateWithNotMap_Pos.c
				c = self.m.StateWithNotMap_Pos.c
				
				Msg2Tong(b_Id, GetName().." <color=fire>�� ��ng k� Ti�u Bang Chi�n, bang h�i c�a b�n ���c ch� ��nh ��ng chi�m l�nh khu v�c "..c)
			end
		end
		
		if self.Debug then
			print("m_TieuBangChien:api_Station(".._1..") :: local c: "..c)
		end
		
		Msg2Player("<color=green>Ti�n v�o b�n �� Ti�u Bang Chi�n!")
		
		return NewWorld(self.MapId, self.ReviveRegion[c][1], self.ReviveRegion[c][2])
	end

	if self:api_CheckForbidItem() then
		return Say("Khu v�c n�y l� chi�n s� c�ng b�ng, m�i ��i th� v� ��ng minh ��u kh�ng ���c ph�p mang theo b�t c� v�t ph�m h� tr� n�o, c�c h� xin ki�m tra l�i h�nh trang, n�u c� c�c lo�i b�o ho�n ho�c v�t ph�m b� tr� xin h�y l�y ra!", 0)
	end
	
	if b_Id <= 0 or b_N == "" or b_N == nil then
		return Say("��i hi�p ch�a gia nh�p bang h�i, n�u tham gia b�n �� ��i hi�p ch� c� th� theo d�i ho�t ��ng � ch� �� t�ng y, kh�ng bi�t ��i hi�p c� mu�n ti�n v�o b�n ��?", 2,
			"Cho ta tham gia b�n ��, theo d�i ho�t ��ng/#m_TieuBangChien:api_Station(2)",
			"Th�i, ta b�n l�m!/OnCancel")
	else
		return Say("Khu v�c n�y l� v�ng chi�n s�, r�t c�n nh�ng ��i anh h�ng c�i th� h� tr� ti�u xa, kh�ng bi�t ��i hi�p c� mu�n ti�n v�o b�n ��?", 2, 
			"Ti�n v�o b�n �� Ti�u Bang Chi�n/#m_TieuBangChien:api_Station(2)",
			"Th�i, ta b�n l�m!/OnCancel")
	end
end






























