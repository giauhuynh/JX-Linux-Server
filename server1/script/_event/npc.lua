Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_event\\init.lua")

function _EVENT:Npc_OnPay(_1, _2, _3, _4, _5)
	if _4 and _4 > 0 and _4 <= 250 then
		if self.p[_1] and self.p[_1][_2] then
			local a = self.p[_1][_2][_3][2]
			local b = (a[4][1] == 1) and "L­îng" or ((a[4][1] == 2) and "Xu" or "Kh«ng x¸c ®Þnh")
			
			if mod(_4, a[3][2]) ~= 0 then
				return Talk(1, "#_EVENT:Npc_OnPay(".._1..", ".._2..", ".._3..")", "Kh«ng thÓ mua lÎ, xin h·y lµm trßn sè l­îng "..a[5][1].." cho "..a[3][2])
			end
			
			if _5 and _5 == 1 then
				if CalcFreeItemCellCount() < 1 then
					return bil.Talk("H·y s¾p xÕp l¹i hµnh trang vµ ph¶i cã Ýt nhÊt 1 « trèng míi cã thÓ mua vËt phÈm nµy!")
				end
				
				local d = ((_4*a[4][2])/a[3][2])
			
				if a[4][1] == 1 then
					if GetCash() < d then
						return bil.Talk("B¹n kh«ng mang theo "..bil.C(1, d.." "..b).." kh«ng thÓ mua vËt phÈm nµy!")
					end
					Pay(d)
				elseif a[4][1] == 2 then
					if CalcEquiproomItemCount(4,417,1,-1) < (d) then
						return bil.Talk("B¹n kh«ng mang theo "..bil.C(1, (d).." "..b).." kh«ng thÓ mua vËt phÈm nµy!")
					end
					ConsumeEquiproomItem((d),4,417,1,-1)
				end
				
				AddStackItem(_4,a[2][1],a[2][2],a[2][3],1,0,0,0)
				
				Msg2Player("Dïng "..bil.C(1, (d).." "..b).." mua "..bil.C(2, a[5][1]).." thµnh c«ng!")
				
				if a[6][1] == 1 then
					local c = openfile(format(self.l, _1, "BuyItem", GetLocalDate("%d_%m_%y")), "a")
						write(c, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tEventID: ".._1.."\tNpcID: ".._2.."\tPaymentID: ".._3.."\t["..a[5][1].."]\t[Dïng "..(d).." "..b.." mua ".._4.." "..a[5][1].."]\tAcc: "..GetAccount().."\tPlayer: "..GetName().."\n")
					closefile(c)
				end
				return
			end
			
			return CreateNewSayEx("<link=image:\\spr\\skill\\christmas\\star1.spr><link><color>Dïng "..bil.C(1, ((_4*a[4][2])/a[3][2]).." "..b).." ®Ó mua "..bil.C(1, _4.." "..a[5][1]).." b¹n cã muèn mua kh«ng?",
				{
					{"X¸c nhËn mua ".._4.." "..a[5][1], self.Npc_OnPay, {self, _1, _2, _3, _4, 1}},
					{"T¹m thêi kh«ng mua", bil.OnCancel},
				})
		end
		return
	end
	
	return bil.iNumber(0, 250, "NhËp sè l­îng mua", {_EVENT.Npc_OnPay, {self, _1, _2, _3}})
end

function _EVENT:Npc_OnJoinItem(_1, _2, _3, _4, _5)
	if not(self.j[_1][_2][_3]) then
		return bil.Talk("Index Join Item isNull!")
	end
	
	if not(_4) or _4 == nil or _4 <= 0 or _4 > 250 then
		return bil.iNumber(0, 250, "NhËp sè l­îng ®æi", {self.Npc_OnJoinItem, {self, _1, _2, _3}})
	end
	
	local a = "<color=yellow>"
	for _i2 = 1, getn(self.j[_1][_2][_3][5]) do
		a = a.."<enter>"..(self.j[_1][_2][_3][5][_i2][4]*_4).." "..self.j[_1][_2][_3][5][_i2][5]
	end
	a = a.."<color>"
	
	if not(_5) or _5 == nil then
		return CreateNewSayEx("<link=image:\\spr\\skill\\christmas\\star1.spr><link><color>B¹n muèn ®æi lÊy "..bil.C(1, _4.." "..self.j[_1][_2][_3][3][4])
			.."<enter>Nguyªn liÖu yªu cÇu: "..a.." <enter>B¹n cã muèn ®æi kh«ng?",
			{
				{"X¸c nhËn ®æi lÊy ".._4.." "..self.j[_1][_2][_3][3][4], self.Npc_OnJoinItem, {self, _1, _2, _3, _4, 1}},
				{"T¹m thêi kh«ng ®æi", bil.OnCancel},
			})
	end
	
	if getn(self.j[_1][_2][_3][5]) <= 0 then
		return bil.Talk("Count item request isNull!")
	end
	
	local b, c = {0, ""}, 0
	
	for _i = 1, getn(self.j[_1][_2][_3][5]) do
		c = CalcEquiproomItemCount(self.j[_1][_2][_3][5][_i][1], self.j[_1][_2][_3][5][_i][2], self.j[_1][_2][_3][5][_i][3], -1)
		
		if c < (self.j[_1][_2][_3][5][_i][4]*_4) then
			b[2] = b[2].."<enter>"..c.."/"..(self.j[_1][_2][_3][5][_i][4]*_4).." :: thiÕu "..((self.j[_1][_2][_3][5][_i][4]*_4) - c).." "..self.j[_1][_2][_3][5][_i][5]
			b[1] = b[1] + 1
		else
			if b[1] <= 0 then
				b[2] = b[2].." "..(self.j[_1][_2][_3][5][_i][4]*_4).."-"..self.j[_1][_2][_3][5][_i][5]
			end
		end
		
		c = 0
	end
	
	if b[1] > 0 then
		return CreateNewSayEx("<link=image:\\spr\\skill\\christmas\\star1.spr><link><color>B¹n muèn ®æi lÊy "..bil.C(1, _4.." "..self.j[_1][_2][_3][3][4])
			.."<enter>B¹n bÞ thiÕu "..b[1].." nguyªn liÖu!<color=orange>"..b[2].."<color><enter>B¹n cã muèn ®æi l¹i?",
			{
				{"§æi l¹i "..self.j[_1][_2][_3][3][4], self.Npc_OnJoinItem, {self, _1, _2, _3}},
				{"T¹m thêi kh«ng ®æi", bil.OnCancel},
			})
	end
	
	for _i3 = 1, getn(self.j[_1][_2][_3][5]) do
		ConsumeEquiproomItem((self.j[_1][_2][_3][5][_i3][4]*_4), self.j[_1][_2][_3][5][_i3][1], self.j[_1][_2][_3][5][_i3][2], self.j[_1][_2][_3][5][_i3][3], -1)
	end
	
	AddStackItem(_4,self.j[_1][_2][_3][3][1],self.j[_1][_2][_3][3][2],self.j[_1][_2][_3][3][3],1,0,0,0)
	
	Msg2Player("§æi "..bil.C(1, _4.." "..self.j[_1][_2][_3][3][4]).." thµnh c«ng!")
	
	if self.j[_1][_2][_3][4][1] == 1 then
		local d = openfile(format(self.l, _1, "JoinItem", GetLocalDate("%d_%m_%y")), "a")
			write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tEventID: ".._1.."\tNpcID: ".._2.."\tJoinItemId: ".._3.."\t["..self.j[_1][_2][_3][3][4].."]\t[§æi ".._4.." "..self.j[_1][_2][_3][3][4].." param: "..b[2].."]\tAcc: "..GetAccount().."\tPlayer: "..GetName().."\n")
		closefile(d)
		return
	end
	
	return
end

function _EVENT:Npc_OnSay_Main(_1, _2, _3)
	local d_1, d_2, d_3, d_c = nil, nil, nil, 0
	
	if not(self.n[_1]) or not(self.n[_1][_2]) then
		if self.g[_1] and self.g[_1]["m_n"] then
			return Say(self.g[_1]["m_n"], 1, "Ho¹t ®éng ®· kÕt thóc!/OnCancel")
		else
			return Talk(1, "", "Ho¹t ®éng ®· kÕt thóc!")
		end
	end
	
	d_1 = self.g[_1]["f"]
	d_2 = self.n[_1][_2][1][3][1][1]
	d_3 = self.n[_1][_2][1][3][1][2]
	
	if not(d_1) or not(d_2) or not(d_3) then d_c = 1 end
	if (type(d_1) ~= "string") or (type(d_2) ~= "string") or (type(d_3) ~= "string") then d_c = 1 end
	if (strlen(d_1) <= 0) or (strlen(d_2) <= 0) or (strlen(d_3) <= 0) then d_c = 1 end
	
	if d_c ~= 0 then
		return Talk(1, "", "Thùc hiÖn yªu cÇu thÊt b¹i, xin thö l¹i hoÆc liªn hÖ bé phËn hç trî!")
	end
	
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\_event\\"..d_1.."\\"..d_2, d_3, _3)
end

function _EVENT:Npc_OnSay(_1, _2, _3, _4)
	local c = {}

	if not(self.n[_1]) or not(self.n[_1][_2]) then
		_3 = 0
	elseif self.n[_1][_2][1][3][2] and self.n[_1][_2][1][3][2] ~= nil then
		tinsert(c, {self.n[_1][_2][1][3][2], self.Npc_OnSay_Main, {self, _1, _2, _3}})
	end
	
	if self.p[_1] and self.p[_1][_2] then
		if _4 and self.p[_1][_2][_4] then
			local a = self.p[_1][_2][_4][2]
			local b = ""
			b = (a[4][1] == 1) and "L­îng" or ((a[4][1] == 2) and "Xu" or "Kh«ng x¸c ®Þnh")
			return Talk(1, "#_EVENT:Npc_OnPay(".._1..", ".._2..", ".._4..")", (a[3][1]*a[4][2]).." "..b.." = "..a[3][2].." "..a[5][1]..", Xin nhËp vµo sè l­îng <color=yellow>"..a[5][1].."<color> muèn mua ")
		end
	
		for _i = 1, getn(self.p[_1][_2]) do
			if self.p[_1][_2][_i] and self:NowDay() >= self.p[_1][_2][_i][2][1][1] and self:NowDay() <= self.p[_1][_2][_i][2][1][2] then
				tinsert(c, {"Ta muèn mua "..self.p[_1][_2][_i][2][5][1], self.Npc_OnSay, {self, _1, _2, _3, _i}})
			end
		end
	end
	
	if self.j[_1] and self.j[_1][_2] then
		for _i2 = 1, getn(self.j[_1][_2]) do
			if self.j[_1][_2][_i2] and self:NowDay() >= self.j[_1][_2][_i2][2][1] and self:NowDay() <= self.j[_1][_2][_i2][2][2] then
				tinsert(c, {"Ta muèn ®æi lÊy "..self.j[_1][_2][_i2][3][4], self.Npc_OnJoinItem, {self, _1, _2, _i2}})
			end
		end
	end
	
	tinsert(c, {"Ta chØ ®Õn xem h«m nay lµ ngµy g×!", OnCancel})
	
	if getn(c) > 2 then
		return CreateNewSayEx("<link=image:\\spr\\skill\\christmas\\star1.spr><link><color>"..self.g[_1]["m_n"], c)
	end
	
	return self:Npc_OnSay_Main(_1, _2, _3)
end

function main()
	local _1 = GetLastDiagNpc()

	local a = GetNpcParam(_1, 1)
	local b = GetNpcParam(_1, 2)
	
	if not(_EVENT.n[a]) or not(_EVENT.n[a][b]) or not(_EVENT.n[a][b][1]) or _EVENT:IsExpired(1, a,b) then
		return Talk(1, "", "Sù kiÖn võa råi ®· kÕt thóc, kh«ng biÕt vÞ huynh ®µi ®Õn ®©y cã viÖc g× kh«ng?")
	end
	
	return _EVENT:Npc_OnSay(a, b, _1)
end

function OnCancel() end






























