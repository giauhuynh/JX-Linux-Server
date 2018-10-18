Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
-- /script/½­ÄÏÇø/ÁÙ°²/ÁÙ°²/npc/Ö°ÄÜ_ÉñÃØÌú½³.lua main

Join2ThienHoang = {}
Join2ThienHoang.f = {
	[1] = 4342,
	[2] = 4343,
	[3] = 4344,
	[4] = 4345,
	[5] = 4346,
	[6] = 4347,
}
Join2ThienHoang.n = 9
Join2ThienHoang.p = {
	{id = 168, ne = "Thiªn Hoµng Long Long §µi", fragment = 4},
	{id = 169, ne = "Thiªn Hoµng Long B¹ch Long Tøc", fragment = 6},
	{id = 170, ne = "Thiªn Hoµng Long TrÊn Minh Liªn", fragment = 6},
	{id = 171, ne = "Thiªn Hoµng Long Cöu HiÖn chØ", fragment = 4},
	{id = 172, ne = "Thiªn Hoµng Long Ngäc Tiªu Diªu", fragment = 4},
	{id = 173, ne = "Thiªn Hoµng Long Hoµng Kim L©n", fragment = 4},
	{id = 174, ne = "Thiªn Hoµng Long Bµn Long c«i", fragment = 4},
	{id = 175, ne = "Thiªn Hoµng Long Long Khèc Thiªn Lý", fragment = 6},
	{id = 176, ne = "Thiªn Hoµng Long Né Long §ång", fragment = 6},
}

function Join2ThienHoang:Main(_1, _2)
	local a = {}
	
	if _1 then
		if _2 and _2 > 0 then
			if _2 ~= self.p[_1].fragment then
				return bil.Talk(self.p[_1].ne.." Yªu cÇu ®óng "..self.p[_1].fragment.." m¶nh, tõ 1 ®Õn "..self.p[_1].fragment.." h·y thu thËp ®ñ sau ®ã míi ®Õn t×m l·o phu!")
			end
			
			local b_G, b_D, b_P, b_L, b_S, b, b_c
			
			for _i2 = 1, _2 do
				b_c = 0
				b = GetGiveItemUnit(_i2)
				b_G, b_D, b_P, b_L, b_S = GetItemProp(b)
				
				if b_G ~= 6 or b_D ~= 1 then
					return bil.Talk("C¸c h¹ ®Æt nguyªn liÖu kh«ng phï hîp, xin kiÓm tra l¹i!")
				end
				
				if GetItemStackCount(b) ~= 1 then
					return bil.Talk("C¸c h¹ xin kiÓm tra l¹i, cã vËt phÈm xÕp chång víi sè l­îng lín h¬n 2!")
				end
				
				for _i3 = 1, self.p[_1].fragment do
					if b_c ~= 1 and self.f[_i3] == b_P then
						b_c = 1
						break
					end
				end
				
				if b_c ~= 1 then
					return bil.Talk("Nguyªn liÖu c¸c h¹ ®Æt vµo bÞ thiÕu, xin kiÓm tra l¹i!")
				end
			end
			
			for _i4 = 1, self.p[_1].fragment do
				ConsumeEquiproomItem(1,6,1,self.f[_i4],-1)
			end
			
			AddGoldItem(0, self.p[_1].id)
			Msg2Player("GhÐp thµnh c«ng trang bÞ "..self.p[_1].ne)
			
			return
		end
	
		if _1 > 0 and _1 < (self.n + 1) then
			return bil.iItem("M¶nh Thiªn Hoµng", self.p[_1].ne.."<enter>Yªu cÇu: <enter>"..self.p[_1].fragment.." M¶nh trang bÞ Thiªn Hoµng!", {self.Main, {self, _1}})
		end
		return
	end
	
	for _i = 1, self.n do 
		tinsert(a, {"GhÐp "..self.p[_i].ne, self.Main, {self, _i}})
	end
	
	tinsert(a, {"KÕt thóc ®èi tho¹i", self.NoThing, {self}})
	
	return CreateNewSayEx("<npc>'Thiªn Hoµng' nghe tªn th«i còng ®· ®ñ ®Ó khiÕp sî!", a)
end

function Join2ThienHoang:NoThing()
	return
end

























