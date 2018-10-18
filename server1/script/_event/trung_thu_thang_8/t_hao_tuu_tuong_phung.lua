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
		[520] = "Minh nguyÖt trÊn - Ph­îng t­êng",
		[521] = "Minh nguyÖt trÊn - Thµnh ®«",
		[522] = "Minh nguyÖt trÊn - BiÖn kinh",
		[523] = "Minh nguyÖt trÊn - T­¬ng d­¬ng",
		[524] = "Minh nguyÖt trÊn - D­¬ng ch©u",
		[525] = "Minh nguyÖt trÊn - §¹i lý",
		[526] = "Minh nguyÖt trÊn - L©m an",
	},
	aw = {
		tRandom = 100000,
		EventID = 20000001,
		Item = {
			{v = {4,238,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "Lam Thñy Tinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {4,239,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "Tö Thñy Tinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {4,240,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "Lôc Thñy Tinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {4,353,1,1,0,0,0}, e = 0, b = 0, r = 0.1, n = "Tinh Hång B¶o Th¹ch", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,22,1,0,0,0}, e = 0, b = 0, r = 0.2, n = "TÈy Tñy Kinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,26,1,0,0,0}, e = 0, b = 0, r = 0.2, n = "Vâ L©m MËt TÞch", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			
			{v = {6,1,124,1,0,0,0}, e = 0, b = 0, r = 0.5, n = "Phóc Duyªn Lé (§¹i)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,1427,1,0,0,0}, e = 0, b = 0, r = 0.8, n = "Tö MÉu LÖnh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,23,1,0,0,0}, e = 0, b = 0, r = 1, n = "ThiÕt La H¸n", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,125,1,0,0,0}, e = 0, b = 0, r = 1, n = "QuÕ Hoa Töu", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,12,1,0,0,0}, e = 0, b = 0, r = 1, n = "Bµn Nh­îc T©m Kinh", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,1181,1,0,0,0}, e = 0, b = 0, r = 1, n = "Tiªn Th¶o Lé (®Æc biÖt)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,123,1,0,0,0}, e = 0, b = 0, r = 1, n = "Phóc Duyªn Lé (Trung)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,71,1,0,0,0}, e = 0, b = 0, r = 1.5, n = "Tiªn Th¶o Lé", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,72,1,0,0,0}, e = 0, b = 0, r = 2, n = "Thiªn S¬n B¶o Lé", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {6,1,122,1,0,0,0}, e = 0, b = 0, r = 2, n = "Phóc Duyªn Lé (TiÓu)", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			
			{v = {0,11,559,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,125,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,260,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,263,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,117,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,126,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,555,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,556,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {0,11,558,1,0,0,0}, e = 7, b = 0, r = 2, n = "MÆt N¹", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
		},
	},
	
	Player = {},
}

function t_HaoTuuTuongPhung:MesForMission()
	local a = (bil.C(11, "Ho¹t ®éng H¶o Töu T­¬ng Phïng ®· b¾t ®Çu, h·y ®Õn gÆp H»ng Nga Tiªn N÷, nµng Êy sÏ ®­a quý b»ng h÷u ®Õn Minh nguyÖt trÊn vµ héi tô cïng c¸c vÞ huynh ®Ö!"))
	Msg2SubWorld(a)
	AddLocalCountNews(a, 1)
end

function t_HaoTuuTuongPhung:PreparingCheck()
	local a = GetName()
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) then
		Say("H·y ®Õn gÆp H»ng Nga Tiªn N÷ nhê nµng Êy truyÒn tèng ®Õn Minh NguyÖt TrÊn míi cã thÓ th­ëng thøc ¸nh tr¨ng mét c¸ch trän vÑn!", 0)
		return 1
	end
	
	if self.Player[a] then
		Talk(1, "", "Mçi lÇn chØ cho phÐp më 1 bµn tiÖc duy nhÊt!")
		return 1
	end
	
	return nil
end

function t_HaoTuuTuongPhung:CallTheTable()
	local a = GetName()
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) then
		return Say("H·y ®Õn gÆp H»ng Nga Tiªn N÷ nhê nµng Êy truyÒn tèng ®Õn Minh NguyÖt TrÊn míi cã thÓ th­ëng thøc ¸nh tr¨ng mét c¸ch trän vÑn!", 0)
	end
	
	if self.Player[a] then
		return Talk(1, "", "Mçi lÇn chØ cho phÐp më 1 bµn tiÖc duy nhÊt!")
	else
		self.Player[a] = {
			NpcID = 0,
			State = 0,
			MapW = c_w,
			MapX = c_x,
			MapY = c_y,
		}
	end
	
	local b = AddNpcEx(1658,90,0,SubWorldID2Idx(c_w),c_x*32,c_y*32,0, "H¶o h÷u cña "..a, 0)
	SetNpcScript(b, "\\script\\_event\\trung_thu_thang_8\\t_hao_tuu_tuong_phung.lua")
	
	TM_SetTimer( self.t,self.i,1,0)
	
	self.Player[a].NpcID = b
	self.Player[a].State = 1
	
	local oldPIdx = PlayerIndex
	Msg2Player("<color=yellow>§· triÖu håi bµn tiÖc thµnh c«ng!")
	
	for _i = 1, GetTeamSize() do
		PlayerIndex = GetTeamMember(_i)
		
		if PlayerIndex ~= oldPIdx and not(self.Player[GetName()]) then
			Msg2Player("<color=yellow>§éi tr­ëng ®· triÖu håi bµn tiÖc t¹i "..self.m[c_w]..". Nh÷ng vÞ huynh ®Ö h·y mau chãng tËp trung!")
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
		local e = "<color=0x00ffff>Buæi tiÖc r­îu ®Õn ®©y lµ kÕt thóc, ch©n thµnh c¶m ¬n quý b»ng h÷u nh©n sÜ ®· dµnh chót thêi gian tham gia!"
		
		__a = ((b > 1) and Msg2Team(e) or Msg2Player(e))
		
		return DelNpc(self.Player[a].NpcID)
	end
	
	if (self.Player[a].MapW ~= c_w) or ((self.Player[a].MapX+self.around) < c_x or (self.Player[a].MapX-self.around) > c_x) or ((self.Player[a].MapY+self.around) < c_y or (self.Player[a].MapY-self.around) > c_y) then
	else
		AddOwnExp(((GetSkillState(979) == 1) and (self.e * 2) or self.e))
		local e_ex = self.e
		e_ex = ((GetSkillState(979) == 1) and (e_ex * 2) or e_ex)
		
		Msg2Player("<color=0xa9ffe0>NhËn ®­îc "..(e_ex).." ®iÓm kinh nghiÖm tõ bµn tiÖc!")
		
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
					Msg2Team("Thµnh viªn <color=yellow>"..GetName().."<color> hiÖn kh«ng cã mÆt ë bµn tiÖc nªn kh«ng thÓ nhËn ®iÓm th­ëng!")
				elseif PlayerIndex ~= oldPIdx then
					e_ex = ((GetSkillState(979) == 1) and (e_ex * 2) or e_ex)
					AddOwnExp(e_ex)
					Msg2Player("<color=0xa9ffe0>NhËn ®­îc "..e_ex.." ®iÓm kinh nghiÖm tõ bµn tiÖc!")
					
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
		return Talk(1, "", "H¶o h÷u hiÖn ®ang th­ëng thøc b÷a tiÖc r­îu!")
	end
	
	if self.Player[a].State == 0 then
		self.Player[a].State = 1
		local b = GetTeamSize()
		local oldPIdx = PlayerIndex
		
		Msg2Player("<color=green>§· kÝch ho¹t thµnh c«ng bµn tiÖc, hiÖn t¹i tæ ®é cã thÓ tiÕp tôc nhËn ®iÓm th­ëng!")
		
		if b > 1 then
			for _i = 1, b do
				PlayerIndex = GetTeamMember(_i)
				
				if PlayerIndex ~= oldPIdx and not(self.Player[GetName()]) then
					Msg2Player("<color=green>§· kÝch ho¹t thµnh c«ng bµn tiÖc, hiÖn t¹i tæ ®é cã thÓ tiÕp tôc nhËn ®iÓm th­ëng!")
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



































