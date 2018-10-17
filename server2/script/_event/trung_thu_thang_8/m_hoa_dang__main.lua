Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_event\\trung_thu_thang_8\\m_hoa_dang__lib.lua")
Include("\\script\\_event\\lib.lua")

function eM_HoaDang:f_OpenMission()
	if self.c.s.state <= 0 then
		local a = (bil.C(11, "Nh©n dÞp tr¨ng trßn, H»ng nga tiªn n÷ muèn giao l­u víi quý nh©n sÜ phµm trÇn qua nh÷ng c©u hái trong hoa ®¨ng, h·y mau ®Õn 8 t©n thñ th«n vµ b¾t lÊy c¬ héi víi v« vµn phÇn th­ëng gi¸ trÞ!"))
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
		bil.Msg2AllWorld(bil.C(10, "§ît lång ®Ìn hoa ®¨ng míi ®· xuÊt hiÖn, h·y mau chãng t×m kiÕm."))
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
	
	return bil.Msg2AllWorld(bil.C(1, "Lång ®Ìn ®ªm Hoa ®¨ng")..bil.C(9, " ®· ®­îc sö dông hÕt, H»ng nga tiªn n÷ sÏ mang hoa ®¨ng ®Õn vµo mét ngµy tr¨ng trßn kh¸c!"))
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
	
	return Say("<color=white>C©u hái dµnh cho c¸c h¹:<color><enter><enter>"..self.qa[b].q, 4, 
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
		b = "§¸p ¸n b¹n chän lµ <color=green>ChÝnh x¸c<color>, Xin chóc mõng!"
		
		SetTask(self.t.l, (GetTask(self.t.l) + 1))
		
		if GetTask(self.t.l) >= self.a.l[1] then
			SetTask(self.t.l, 0)
			AddOwnExp(self.a.l[2])
			
			Msg2Player("<color=yellow>B¹n liªn tiÕp tr¶ lêi ®óng "..self.a.l[1].." c©u hái, b¹n nhËn ®­îc "..self.a.l[2].." ®iÓm kinh nghiÖm!")
			
			_EVENT_LIB:RandomItem(self.c.aw)
		else
			AddOwnExp(self.a.e)
			
			Msg2Player("<color=yellow>Tæng sè c©u tr¶ lêi ®óng liªn tiÕp: "..GetTask(self.t.l).."/"..self.a.l[1])
		end
	else
		b = "§¸p ¸n b¹n chän lµ <color=fire>Kh«ng ®óng<color>, Xin chia buån!"
		SetTask(self.t.l, 0)
	end
	
	Say(b, 0)
	
	return Msg2Player("<color=yellow>Tæng sè hoa ®¨ng ®· tham gia h«m nay: "..GetTask(self.t.c).."/"..self.a.c)
end

function main()
	local d = tonumber(GetLocalDate("%y%m%d"))
	if GetTask(eM_HoaDang.t.d) ~= d then
		SetTask(eM_HoaDang.t.d, d)
		SetTask(eM_HoaDang.t.c, 0)
		SetTask(eM_HoaDang.t.l, 0)
	end

	if GetTask(eM_HoaDang.t.c) >= eM_HoaDang.a.c then
		return Msg2Player("H«m nay b¹n ®· hÕt l­ît tham gia tr¶ lêi c©u hái hoa ®¨ng, xin h·y ®îi ®Õn h«m sau!")
	end
	
	return Say("Tham gia tr¶ lêi c©u hái ®­îc ghi trong hoa ®¨ng, kÓ c¶ ®óng hoÆc sai b¹n vÉn bÞ tÝnh lµ 1 lÇn tham gia. Kh«ng biÕt b¹n cã muèn tham gia hay kh«ng?", 2,
		"Tr¶ lêi c©u hái ®­îc ghi trong hoa ®¨ng./#eM_HoaDang:f_NpcMain()",
		"Th«i, kiÕn thøc ta n«ng c¹n l¾m/OnCancel")
end

function OnCancel() 
	Talk(1, "", "Lång ®Ìn thËt ®Ñp!")
end

































