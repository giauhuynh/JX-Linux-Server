Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_event\\trung_thu_thang_8\\m_hoa_dang__lib.lua")
Include("\\script\\_event\\lib.lua")

function eM_HoaDang:f_OpenMission()
	if self.c.s.state <= 0 then
		local a = (bil.C(11, "Nh�n d�p tr�ng tr�n, H�ng nga ti�n n� mu�n giao l�u v�i qu� nh�n s� ph�m tr�n qua nh�ng c�u h�i trong hoa ��ng, h�y mau ��n 8 t�n th� th�n v� b�t l�y c� h�i v�i v� v�n ph�n th��ng gi� tr�!"))
		Msg2SubWorld(a)
		AddLocalCountNews(a, 1)
	elseif self.c.s.state >= self.c.s.totalRepetition then
		return self:f_CloseMission()
	end
	
	self.c.s.state = (self.c.s.state + 1)
	
	self:f_CallNPC()
	
	self.c.s.tidx = AddTimer(self.c.r, "eM_HoaDang:f_OpenMission", self.c.s.tidx)
end

function eM_HoaDang:f_CallNPC()
	local a = getn(self.m)
	local b, c = nil, nil
	
	if self.c.s.state > 1 then
		bil.Msg2AllWorld(bil.C(10, "��t l�ng ��n hoa ��ng m�i �� xu�t hi�n, h�y mau ch�ng t�m ki�m."))
	end
	
	for _i = 1, a do
		ClearMapNpcWithName(self.m[_i].i, self.n.n)
		b = getn(self.m[_i].p)
		
		for _i2 = 1, b do
			c = AddNpcEx(self.n.i,90,0,SubWorldID2Idx(self.m[_i].i),self.m[_i].p[_i2][1]*32,self.m[_i].p[_i2][2]*32,0, self.n.n, 0)
			SetNpcScript(c, "\\script\\_event\\trung_thu_thang_8\\m_hoa_dang__main.lua")
		end
	end
end

function eM_HoaDang:f_CloseMission()
	local a = getn(self.m)
	
	for _i = 1, a do
		ClearMapNpcWithName(self.m[_i].i, self.n.n)
	end
	
	self.c.s.state = 0
	
	return bil.Msg2AllWorld(bil.C(1, "L�ng ��n ��m Hoa ��ng")..bil.C(9, " �� ���c s� d�ng h�t, H�ng nga ti�n n� s� mang hoa ��ng ��n v�o m�t ng�y tr�ng tr�n kh�c!"))
end

function eM_HoaDang:f_NpcMain()
	local a = getn(self.qa)
	local b = random(1, a)
	local c = GetLastDiagNpc()
	local d = tonumber(GetLocalDate("%y%m%d"))
	
	DelNpc(c)
	
	if GetTask(self.t.d) ~= d then
		SetTask(self.t.d, d)
		SetTask(self.t.c, 0)
		SetTask(self.t.l, 0)
	end
	
	SetTask(self.t.c, (GetTask(self.t.c) + 1))
	
	return Say("<color=white>C�u h�i d�nh cho c�c h�:<color><enter><enter>"..self.qa[b].q, 4, 
		"A: "..self.qa[b].a[1].."/#eM_HoaDang:f_ChoiseAnswer("..b..", 1)",
		"B: "..self.qa[b].a[2].."/#eM_HoaDang:f_ChoiseAnswer("..b..", 2)",
		"C: "..self.qa[b].a[3].."/#eM_HoaDang:f_ChoiseAnswer("..b..", 3)",
		"D: "..self.qa[b].a[4].."/#eM_HoaDang:f_ChoiseAnswer("..b..", 4)"
		)
end

function eM_HoaDang:f_ChoiseAnswer(_1, _2a)
	local a = self.qa[_1]
	local b = ""
	
	if a.ac == _2a then
		b = "��p �n b�n ch�n l� <color=green>Ch�nh x�c<color>, Xin ch�c m�ng!"
		
		SetTask(self.t.l, (GetTask(self.t.l) + 1))
		
		if GetTask(self.t.l) >= self.a.l[1] then
			SetTask(self.t.l, 0)
			AddOwnExp(self.a.l[2])
			
			Msg2Player("<color=yellow>B�n li�n ti�p tr� l�i ��ng "..self.a.l[1].." c�u h�i, b�n nh�n ���c "..self.a.l[2].." �i�m kinh nghi�m!")
			
			_EVENT_LIB:RandomItem(self.c.aw)
		else
			AddOwnExp(self.a.e)
			
			Msg2Player("<color=yellow>T�ng s� c�u tr� l�i ��ng li�n ti�p: "..GetTask(self.t.l).."/"..self.a.l[1])
		end
	else
		b = "��p �n b�n ch�n l� <color=fire>Kh�ng ��ng<color>, Xin chia bu�n!"
		SetTask(self.t.l, 0)
	end
	
	Say(b, 0)
	
	return Msg2Player("<color=yellow>T�ng s� hoa ��ng �� tham gia h�m nay: "..GetTask(self.t.c).."/"..self.a.c)
end

function main()
	local d = tonumber(GetLocalDate("%y%m%d"))
	if GetTask(eM_HoaDang.t.d) ~= d then
		SetTask(eM_HoaDang.t.d, d)
		SetTask(eM_HoaDang.t.c, 0)
		SetTask(eM_HoaDang.t.l, 0)
	end

	if GetTask(eM_HoaDang.t.c) >= eM_HoaDang.a.c then
		return Msg2Player("H�m nay b�n �� h�t l��t tham gia tr� l�i c�u h�i hoa ��ng, xin h�y ��i ��n h�m sau!")
	end
	
	return Say("Tham gia tr� l�i c�u h�i ���c ghi trong hoa ��ng, k� c� ��ng ho�c sai b�n v�n b� t�nh l� 1 l�n tham gia. Kh�ng bi�t b�n c� mu�n tham gia hay kh�ng?", 2,
		"Tr� l�i c�u h�i ���c ghi trong hoa ��ng./#eM_HoaDang:f_NpcMain()",
		"Th�i, ki�n th�c ta n�ng c�n l�m/OnCancel")
end

function OnCancel() 
	Talk(1, "", "L�ng ��n th�t ��p!")
end

































