Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

Join2KimPhong = {}
Join2KimPhong.f = {
	[1] = 4325,
	[2] = 4326,
	[3] = 4327,
	[4] = 4328,
	[5] = 4329,
	[6] = 4330,
}
Join2KimPhong.n = 9
Join2KimPhong.p = {
	{id = 177, ne = "Kim Phong Thanh D­¬ng Kh«i", fragment = 4},
	{id = 178, ne = "Kim Phong Kú L©n HuyÕt", fragment = 6},
	{id = 179, ne = "Kim Phong Tr¹c Liªn Quang", fragment = 6},
	{id = 180, ne = "Kim Phong C«ng CÈn Tam Th¸n", fragment = 4},
	{id = 181, ne = "Kim Phong §o¹t Hån Ngäc ®¸i", fragment = 4},
	{id = 182, ne = "Kim Phong HËu NghÖ dÉn cung", fragment = 4},
	{id = 183, ne = "Kim Phong Lan §×nh Ngäc", fragment = 4},
	{id = 184, ne = "Kim Phong Thiªn Lı Th¶o Th­îng Phi", fragment = 6},
	{id = 185, ne = "Kim Phong §ång T­íc Xu©n Th©m", fragment = 6},
}

function Join2KimPhong:Main(_1, _2)
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
					return bil.Talk("Nguyªn liÖu c¸c h¹ ®Æt vµo bŞ thiÕu, xin kiÓm tra l¹i!")
				end
			end
			
			for _i4 = 1, self.p[_1].fragment do
				ConsumeEquiproomItem(1,6,1,self.f[_i4],-1)
			end
			
			AddGoldItem(0, self.p[_1].id)
			Msg2Player("GhĞp thµnh c«ng trang bŞ "..self.p[_1].ne)
			
			return
		end
	
		if _1 > 0 and _1 < (self.n + 1) then
			return bil.iItem("M¶nh Kim Phong", self.p[_1].ne.."<enter>Yªu cÇu: <enter>"..self.p[_1].fragment.." M¶nh trang bŞ Kim Phong!", {self.Main, {self, _1}})
		end
		return
	end
	
	for _i = 1, self.n do 
		tinsert(a, {"GhĞp "..self.p[_i].ne, self.Main, {self, _i}})
	end
	
	tinsert(a, {"KÕt thóc ®èi tho¹i", self.NoThing, {self}})
	
	return CreateNewSayEx("<npc>Nghe nãi ng­êi nµo mang ®ñ 9 mãn Kim Phong, toµn th©n sÏ ph¸t ra ¸nh hµo quang mµu vµng, ®iÒu nµy l·o phu còng ®· tõng chøng kiÕn!", a)
end

function Join2KimPhong:NoThing()
	return
end

























