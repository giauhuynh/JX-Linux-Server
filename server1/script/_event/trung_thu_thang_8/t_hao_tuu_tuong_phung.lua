IL("TIMER")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_event\\lib.lua")

t_HaoTuuTuongPhung = {
	i = 118,
	e = 60000,
	t = 30 * 18,
	te = 2101,
	around = 10,
	m = {
		[520] = "Minh nguy�t tr�n - Ph��ng t��ng",
		[521] = "Minh nguy�t tr�n - Th�nh ��",
		[522] = "Minh nguy�t tr�n - Bi�n kinh",
		[523] = "Minh nguy�t tr�n - T��ng d��ng",
		[524] = "Minh nguy�t tr�n - D��ng ch�u",
		[525] = "Minh nguy�t tr�n - ��i l�",
		[526] = "Minh nguy�t tr�n - L�m an",
	},
	aw = {
		tRandom = 100000,
		EventID = 20000001,
		Item = {
			{v = {4,238,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "Lam Th�y Tinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {4,239,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "T� Th�y Tinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {4,240,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "L�c Th�y Tinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {4,353,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "Tinh H�ng B�o Th�ch", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,22,1,0,0,0}, e = 0, b = 0, r = 0.2, n = "T�y T�y Kinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,26,1,0,0,0}, e = 0, b = 0, r = 0.2, n = "V� L�m M�t T�ch", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			
			{v = {6,1,124,1,0,0,0}, e = 0, b = 0, r = 0.5, n = "Ph�c Duy�n L� (��i)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,1427,1,0,0,0}, e = 0, b = 0, r = 0.8, n = "T� M�u L�nh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,23,1,0,0,0}, e = 0, b = 0, r = 1, n = "Thi�t La H�n", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,125,1,0,0,0}, e = 0, b = 0, r = 1, n = "Qu� Hoa T�u", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,12,1,0,0,0}, e = 0, b = 0, r = 1, n = "B�n Nh��c T�m Kinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,1181,1,0,0,0}, e = 0, b = 0, r = 1, n = "Ti�n Th�o L� (��c bi�t)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,123,1,0,0,0}, e = 0, b = 0, r = 1, n = "Ph�c Duy�n L� (Trung)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,71,1,0,0,0}, e = 0, b = 0, r = 1.5, n = "Ti�n Th�o L�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,72,1,0,0,0}, e = 0, b = 0, r = 2, n = "Thi�n S�n B�o L�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,122,1,0,0,0}, e = 0, b = 0, r = 2, n = "Ph�c Duy�n L� (Ti�u)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			
			{v = {0,11,559,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,125,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,260,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,263,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,117,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,126,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,555,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,556,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,558,1,0,0,0}, e = 7, b = 0, r = 2, n = "M�t N�", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
		},
	},
	
	Player = {},
}

function t_HaoTuuTuongPhung:MesForMission()
	local a = (bil.C(11, "Ho�t ��ng H�o T�u T��ng Ph�ng �� b�t ��u, h�y ��n g�p H�ng Nga Ti�n N�, n�ng �y s� ��a qu� b�ng h�u ��n Minh nguy�t tr�n v� h�i t� c�ng c�c v� huynh ��!"))
	Msg2SubWorld(a)
	AddLocalCountNews(a, 1)
end

function t_HaoTuuTuongPhung:PreparingCheck()
	local a = GetName()
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) then
		Say("H�y ��n g�p H�ng Nga Ti�n N� nh� n�ng �y truy�n t�ng ��n Minh Nguy�t Tr�n m�i c� th� th��ng th�c �nh tr�ng m�t c�ch tr�n v�n!", 0)
		return 1
	end
	
	if self.Player[a] then
		Talk(1, "", "M�i l�n ch� cho ph�p m� 1 b�n ti�c duy nh�t!")
		return 1
	end
	
	return nil
end

function t_HaoTuuTuongPhung:CallTheTable()
	local a = GetName()
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) then
		return Say("H�y ��n g�p H�ng Nga Ti�n N� nh� n�ng �y truy�n t�ng ��n Minh Nguy�t Tr�n m�i c� th� th��ng th�c �nh tr�ng m�t c�ch tr�n v�n!", 0)
	end
	
	if self.Player[a] then
		return Talk(1, "", "M�i l�n ch� cho ph�p m� 1 b�n ti�c duy nh�t!")
	else
		self.Player[a] = {
			NpcID = 0,
			State = 0,
			MapW = c_w,
			MapX = c_x,
			MapY = c_y,
		}
	end
	
	local b = AddNpcEx(1658,90,0,SubWorldID2Idx(c_w),c_x*32,c_y*32,0, "H�o h�u c�a "..a, 0)
	SetNpcScript(b, "\\script\\_event\\trung_thu_thang_8\\t_hao_tuu_tuong_phung.lua")
	
	TM_SetTimer( self.t,self.i,1,0)
	
	self.Player[a].NpcID = b
	self.Player[a].State = 1
	
	local oldPIdx = PlayerIndex
	Msg2Player("<color=yellow>�� tri�u h�i b�n ti�c th�nh c�ng!")
	
	for _i = 1, GetTeamSize() do
		PlayerIndex = GetTeamMember(_i)
		
		if PlayerIndex ~= oldPIdx and not(self.Player[GetName()]) then
			Msg2Player("<color=yellow>��i tr��ng �� tri�u h�i b�n ti�c t�i "..self.m[c_w]..". Nh�ng v� huynh �� h�y mau ch�ng t�p trung!")
		end
	end
	
	PlayerIndex = oldPIdx
end

function t_HaoTuuTuongPhung:OnTimer()
	local a = GetName()
	local c_w, c_x, c_y = GetWorldPos()
	local __a
	
	if not(self.m[c_w]) or not(self.Player[a]) or self.Player[a].State == 0 then
		return 
	end
	
	local b = GetTeamSize()
	local oldPIdx = PlayerIndex
	
	if tonumber(GetLocalDate("%H%M")) >= self.te then
		local e = "<color=0x00ffff>Bu�i ti�c r��u ��n ��y l� k�t th�c, ch�n th�nh c�m �n qu� b�ng h�u nh�n s� �� d�nh ch�t th�i gian tham gia!"
		
		__a = ((b > 1) and Msg2Team(e) or Msg2Player(e))
		
		return DelNpc(self.Player[a].NpcID)
	end
	
	if (self.Player[a].MapW ~= c_w) or ((self.Player[a].MapX+self.around) < c_x or (self.Player[a].MapX-self.around) > c_x) or ((self.Player[a].MapY+self.around) < c_y or (self.Player[a].MapY-self.around) > c_y) then
	else
		AddOwnExp(((GetSkillState(979) == 1) and (self.e * 2) or self.e))
		local e_ex = self.e
		e_ex = ((GetSkillState(979) == 1) and (e_ex * 2) or e_ex)
		
		Msg2Player("<color=0xa9ffe0>Nh�n ���c "..(e_ex).." �i�m kinh nghi�m t� b�n ti�c!")
		
		if (GetSkillState(979) == 1) then
			_EVENT_LIB:RandomItem(self.aw)
		end
		
		CastSkill(968, 20)
		CastSkill(971, 20)
	end
	
	if b > 1 then
		local d_w, d_x, d_y
		local check, e_ex
		
		for _i = 1, b do
			PlayerIndex = GetTeamMember(_i)

			if (PlayerIndex == oldPIdx) or (not(self.Player[GetName()])) then
				d_w, d_x, d_y = GetWorldPos()
				check, e_ex = 0, self.e
				if (self.Player[a].MapW ~= d_w) or ((self.Player[a].MapX+self.around) < d_x or (self.Player[a].MapX-self.around) > d_x) or ((self.Player[a].MapY+self.around) < d_y or (self.Player[a].MapY-self.around) > d_y) then
					check = 1
				end
				
				if check ~= 0 then
					Msg2Team("Th�nh vi�n <color=yellow>"..GetName().."<color> hi�n kh�ng c� m�t � b�n ti�c n�n kh�ng th� nh�n �i�m th��ng!")
				elseif PlayerIndex ~= oldPIdx then
					e_ex = ((GetSkillState(979) == 1) and (e_ex * 2) or e_ex)
					AddOwnExp(e_ex)
					Msg2Player("<color=0xa9ffe0>Nh�n ���c "..e_ex.." �i�m kinh nghi�m t� b�n ti�c!")
					
					if (GetSkillState(979) == 1) then
						_EVENT_LIB:RandomItem(self.aw)
					end
				end
			end
		end
		
		PlayerIndex = oldPIdx
	end
	
	TM_SetTimer( self.t,self.i,1,0)
end

function t_HaoTuuTuongPhung:NPC_Main()
	local a = GetName()
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) or not(self.Player[a]) or self.Player[a].State == 1 then
		return Talk(1, "", "H�o h�u hi�n �ang th��ng th�c b�a ti�c r��u!")
	end
	
	if self.Player[a].State == 0 then
		self.Player[a].State = 1
		local b = GetTeamSize()
		local oldPIdx = PlayerIndex
		
		Msg2Player("<color=green>�� k�ch ho�t th�nh c�ng b�n ti�c, hi�n t�i t� �� c� th� ti�p t�c nh�n �i�m th��ng!")
		
		if b > 1 then
			for _i = 1, b do
				PlayerIndex = GetTeamMember(_i)
				
				if PlayerIndex ~= oldPIdx and not(self.Player[GetName()]) then
					Msg2Player("<color=green>�� k�ch ho�t th�nh c�ng b�n ti�c, hi�n t�i t� �� c� th� ti�p t�c nh�n �i�m th��ng!")
				end
			end
			
			PlayerIndex = oldPIdx
		end
		
		TM_SetTimer( self.t,self.i,1,0)
	end
end

function OnTimer()
	return t_HaoTuuTuongPhung:OnTimer()
end

function main()
	return t_HaoTuuTuongPhung:NPC_Main()
end



































