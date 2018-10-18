-- Create & Modified by bil4i3n
-- B¸n ngùa D­¬ng Ch©u - 205 198
	
-- Nguyªn vËt liÖu dïng ®Ó n©ng cÊp chiÕn m·
	-- Cá t­¬i - 6,1,4272 :  mua ë Bµ chñ tiÖm vËt nu«i D­¬ng Ch©u 224,193
			-- xÕp chång, gi¸ mçi c¸i lµ 5 v¹n
	-- D©y thõng 6,1,4273 : mua ë Bµ chñ tiÖm vËt nu«i D­¬ng Ch©u 224,193
			-- xÕp chång, gi¸ mçi c¸i lµ 5 v¹n
	-- B¾c ®Èu thuÇn m· thuËt - 6,1,1987 : mua ë kú tr©n c¸c gi¸ 50xu
			-- KH¤NG xÕp chång, gi¸ 100 tiÒn ®ång
	-- VËt phÈm chøa ®iÓm tİch lòy n©ng cÊp chiÕn m·
		-- B¾c ®Èu thÇn m· ®¬n 6,1,4274 : mua ë kú tr©n c¸c
		
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function bilHorseUpgradeMain()
	local bil_1 = {}
	tinsert(bil_1, "Xin gióp t¹i h¹ n©ng cÊp chiÕn m·/bilHorseUpgradeMain_1")
	tinsert(bil_1, "Ta muèn rót ®iÓm tİch lòy n©ng cÊp chiÕn m·/bilHorseUpgradeMain_GetPoint")
	tinsert(bil_1, "T×m hiÓu nguyªn liÖu cÇn thiÕt ®Ó n©ng cÊp chiÕn m·/#bilHorseUpgradeMainInfoUpgrade()")
	tinsert(bil_1, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
	return Say("Ngùa "..bil.C(1, "Xİch Thè").." cña Quan V©n Tr­êng cã mµu ®á næi bËt, "..bil.C(1,"¤ V©n §¹p TuyÕt").." cña Tr­¬ng Phi l¹i cã mµu ®en nh­ cñachñ nh©n... lµ ®Æc ®iÓm næi tiÕng cña nh÷ng con ngùa quı thêi cæ ®¹i!", getn(bil_1), bil_1)
end

function bilHorseUpgradeMainInfoUpgrade(bil_1)
	if bil_1 then
		if bil_1 == 1 then
			local _bilTbHORSE = { -- Ngùa cÇn n©ng cÊp
				-- bil_1_1: ngùa - bil_1_2: Name - bil_1_3: b¾c ®Èu thuÇn m· thuËt - bil_1_4: cá t­¬i - bil_1_5: d©y thõng - bil_1_6: tû lÖ thµnh c«ng - bil_1_7: tİch lòy cÇn thiÕt - bil_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
				{bil_1_1 = {0,10,5,6}, bil_1_2 = "¤ V©n §¹p TuyÕt", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
				{bil_1_1 = {0,10,5,7}, bil_1_2 = "Xİch Thè", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
				{bil_1_1 = {0,10,5,8}, bil_1_2 = "TuyÖt ¶nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
				{bil_1_1 = {0,10,5,9}, bil_1_2 = "§İch L«", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
				{bil_1_1 = {0,10,5,10}, bil_1_2 = "ChiÕu D¹ Ngäc S­ Tö", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
				{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V©n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
				{bil_1_1 = {0,10,6,10}, bil_1_2 = "B«n Tiªu", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
				{bil_1_1 = {0,10,34,10}, bil_1_2 = "Xİch Long C©u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
				{bil_1_1 = {0,10,35,10}, bil_1_2 = "Siªu Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
			}
			local bil_2 = 0
			local bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S
			for bil_Loop_1 = 1, getn(_bilTbHORSE) do
				bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S = GetItemProp(GetGiveItemUnit(1))
				if bil_3_G == 0 and bil_3_D == 10 and bil_3_P == 2 and bil_3_L >= 9 then
					bil_2 = -1
				elseif _bilTbHORSE[bil_Loop_1].bil_1_1[1] == bil_3_G and _bilTbHORSE[bil_Loop_1].bil_1_1[2] == bil_3_D and _bilTbHORSE[bil_Loop_1].bil_1_1[3] == bil_3_P and _bilTbHORSE[bil_Loop_1].bil_1_1[4] == bil_3_L then
					bil_2 = bil_Loop_1
				end
			end
			if bil_2 == 0 then
				return Talk(1,"","C¸i nµy kh«ng ph¶i chiÕn m· hoÆc kh«ng thÓ tiÕn hµnh n©ng cÊp, xin c¸c h¹ kiÓm tra l¹i!")
			elseif bil_2 == getn(_bilTbHORSE) then
				return Talk(1,"","L·o phu kh«ng thÓ n©ng cÊp ThÇn m· nµy v× ®· ®¹t ®Õn c¶nh giíi, xin h·y ®i t×m vŞ cao nh©n kh¸c!")
			end
			local bil_3
			if bil_2 == -1 then
				bil_2 = 0
				bil_3 = "Tóc S­¬ng"
			else
				bil_3 = _bilTbHORSE[bil_2].bil_1_2
			end
			return Say("ChiÕn m·: "..bil.C(1, bil_3)
				.."<enter>N©ng lªn thÇn m·: "..bil.C(4, _bilTbHORSE[bil_2+1].bil_1_2)
				.." Yªu cÇu:"
				.."<enter>"..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_3.." B¾c ®Èu thuÉn m· thuËt")
				.."<enter>"..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_4.." Cá t­¬i")
				.."<enter>"..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_5.." D©y thõng")
				.."<enter>Tû lÖ thµnh c«ng: "..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_6).."%"
				.."<enter>HoÆc tİch lòy: "..bil.C(2, GetTask(5953).."/".._bilTbHORSE[bil_2+1].bil_1_7).." ®iÓm"
				.."<enter>Sè lÇn thÊt b¹i: "..bil.C(2, GetTask(_bilTbHORSE[bil_2+1].bil_1_8)).." lÇn", 1,
				"Ta biÕt råi!/bil.OnCancel")
		else
			return Talk(1,"","Mçi lÇn chØ cã thÓ t×m hiÓu vÒ 1 lo¹i chiÕn m·, c¸c h¹ vui lßng kiÓm tra l¹i!")
		end
	end
	return GiveItemUI("N©ng CÊp ChiÕn M·", "§Æt lo¹i chiÕn m· mµ c¸c h¹ muèn n©ng cÊp vµo ®©y!", "bilHorseUpgradeMainInfoUpgrade", "bil.OnCancel", 1);
end

function bilHorseUpgradeMain_GetPoint()
	Say("HiÖn t¹i c¸c h¹ ®ang cã "..bil.C(1, GetTask(5953)).." ®iÓm tİch lòy<enter>Mçi lÇn rót ra sÏ bŞ mÊt "..bil.C(2,"12 ®iÓm").." ®æi lÊy vËt phÈm <enter>chøa 10 ®iÓm l­u tr÷<enter>c¸c h¹ muèn thùc hiÖn thao t¸c nµy kh«ng!", 2, "X¸c nhËn lÊy ra vËt phÈm l­u tr÷ ®iÓm/bilHorseUpgradeMain_GetPoint_Ok", "§îi ta suy nghÜ l¹i!/bil.OnCancel")
end

function bilHorseUpgradeMain_GetPoint_Ok()
	if GetTask(5953) >= 12 then
		SetTask(5953, GetTask(5953) - 12)
		AddItem(6,1,4274,1,0,0)
		Msg2Player(bil.C(1, "NhËn ®­îc 1 "..bil.C(1,"B¾c ®Çu thÇn m· ®¬n").."!"))
	else
		return Talk(1,"","H×nh nh­ ®iÓm tİch lòy cña c¸c h¹ kh«ng ®ñ ®Ó thùc <enter>hiÖn thao t¸c!")
	end
end

function bilHorseUpgradeMain_1()
	return Talk(1, "bilHorseUpgradeMain_2", "§iÓm tİch lòy n©ng cÊp chiÕn m· hiÖn t¹i cña c¸c h¹  lµ : <color=yellow>"..GetTask(5953).."<color><enter>Khi ®ñ ®iÓm tİch lòy sÏ cã tû lÖ thµnh c«ng 100% n©ngcÊp thµnh c«ng chiÕn m·!")
end

function bilHorseUpgradeMain_2()
	GiveItemUI("N©ng CÊp ChiÕn M·", "VËt phÈm cÇn thiÕt<enter><color=blue>ChiÕn m· cÇn n©ng cÊp<enter>B¾c ®Èu thuÇn m· thuËt<enter>Cá t­¬i<enter>  mua ë D­¬ng Ch©u (224,193)<enter>D©y thõng<enter>  mua ë D­¬ng Ch©u (224,193)<enter>Vµ c¸c nguyªn liÖu t¨ng may m¾n nh­: Phóc Duyªn, Thñy Tinh", "bilHorseUpgradeMain_3", "bil.OnCancel", 1);
end

function bilHorseUpgradeMain_3(bilCount)
	local _bilTbHORSE = { -- Ngùa cÇn n©ng cÊp
		-- bil_1_1: ngùa - bil_1_2: Name - bil_1_3: b¾c ®Èu thuÇn m· thuËt - bil_1_4: cá t­¬i - bil_1_5: d©y thõng - bil_1_6: tû lÖ thµnh c«ng - bil_1_7: tİch lòy cÇn thiÕt - bil_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
		{bil_1_1 = {0,10,5,6}, bil_1_2 = "¤ V©n §¹p TuyÕt", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
		{bil_1_1 = {0,10,5,7}, bil_1_2 = "Xİch Thè", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
		{bil_1_1 = {0,10,5,8}, bil_1_2 = "TuyÖt ¶nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
		{bil_1_1 = {0,10,5,9}, bil_1_2 = "§İch L«", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
		{bil_1_1 = {0,10,5,10}, bil_1_2 = "ChiÕu D¹ Ngäc S­ Tö", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
		{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V©n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
		{bil_1_1 = {0,10,6,10}, bil_1_2 = "B«n Tiªu", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
		{bil_1_1 = {0,10,34,10}, bil_1_2 = "Xİch Long C©u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
		{bil_1_1 = {0,10,35,10}, bil_1_2 = "Siªu Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
	}
	local _bilTbNguyenLieu = { -- Nguyªn liÖu
		{{6,1,1987}, "B¾c ®Èu thuÇn m· thuËt"},
		{{6,1,4272}, "Cá t­¬i"},
		{{6,1,4273}, "D©y thõng"},
	}
	local _bilLuck = { -- Nguyªn liÖu t¨ng may m¾n
		{{4,238,1}, "Lam thñy tinh"},
		{{4,239,1}, "Tö thñy tinh"},
		{{4,240,1}, "Lôc thñy tinh"},
		{{6,1,122}, "Phóc duyªn tiÓu"},
		{{6,1,123}, "Phóc duyªn trung"},
		{{6,1,124}, "Phóc duyªn ®¹i"},
	}
	-- bil_2: Th«ng sè ngùa - bil_3: B¾c ®Çu thuÇn m· thuËt - bil_4: Cá t­¬i - bil_5: D©y thõng 
	-- bil_6: Lam thñy tinh - bil_7: Tö thñy tinh - bil_8: Lôc thñy tinh - bil_9: Phóc duyªn tiÓu - bil_10: Phóc duyªn trung - bil_11: Phóc duyªn ®¹i - bil_14: Danh s¸ch ItemIdx - bil_20: L­u th«g sè Item
	local bil_2, bil_3, bil_4, bil_5, bil_6, bil_7, bil_8, bil_9, bil_10, bil_11, bil_14, bil_20 = {}, 0, 0, 0, 0, 0, 0, 0, 0, 0, {}, {}
	if bilCount < 4 then
		return Talk(1,"","VËt phÈm cÇn thiÕt ®Ó n©ng cÊp chiÕn m· gåm: <color=yellow>ChiÕn m·, B¾c ®Èu thuÇn m· thuËt, Cá t­¬i, D©y thõng<color>, c¸c nguyªn liÖu t¨ng ®é may m¾n: <color=blue>Phóc duyªn, Thñy tinh<color>. Xem ra c¸c h¹ vÉn ch­a chuÈn bŞ kü!")
	end
	local bil_13
	local bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS
	for bil_12 = 1, bilCount do
		bil_13 = GetGiveItemUnit(bil_12)
		tinsert(bil_14, bil_13)
		bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS = GetItemProp(bil_13);
		tinsert(bil_20, {bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS, 0, GetItemStackCount(bil_13)})
		if bil_1_nG == 0 and bil_1_nD == 10 then
			if GetItemBindState(bil_13) < 0 then
				return Talk(1,"","ChiÕn m· cña c¸c h¹ ®· bŞ phong táa tiÒm n¨ng vµ phÈmchÊt, kh«ng thÓ tiÕn hµnh thuÇn hãa, c¸c h¹ vui lßng t×m 1 chiÕn m· kh«ng bŞ khãa míi cã thÕ tiÕn hµnh <enter>n©ng cÊp!")
			end
			tinsert(bil_2, {{bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL}, GetItemName(bil_13)})
		elseif bil_1_nG == 6 and bil_1_nP == _bilTbNguyenLieu[1][1][3] then
			bil_3 = bil_3 + 1
		elseif bil_1_nG == 6 and bil_1_nP == _bilTbNguyenLieu[2][1][3] then 
			bil_4 = bil_4 + GetItemStackCount(bil_13)
		elseif bil_1_nG == 6 and bil_1_nP == _bilTbNguyenLieu[3][1][3] then 
			bil_5 = bil_5 + GetItemStackCount(bil_13)
		elseif bil_1_nG == 4 and bil_1_nD == 238 then 
			bil_6 = bil_6 + 1
		elseif bil_1_nG == 4 and bil_1_nD == 239 then 
			bil_7 = bil_7 + 1
		elseif bil_1_nG == 4 and bil_1_nD == 240 then 
			bil_8 = bil_8 + 1
		elseif bil_1_nG == 6 and bil_1_nP == 122 then 
			bil_9 = bil_9 + 1
		elseif bil_1_nG == 6 and bil_1_nP == 123 then 
			bil_10 = bil_10 + 1
		elseif bil_1_nG == 6 and bil_1_nP == 124 then 
			bil_11 = bil_11 + 1
		else
			return Talk(1,"","§Ó n©ng cÊp t¹i h¹ chØ cÇn: <color=yellow>ChiÕn m·, B¾c ®Çu thuÇn m· thuËt, Cá t­¬i, D©y thõng<color>, vµ c¸c vËt phÈm t¨ng may m¾n nh­: <color=blue>Thñy tinh, Phóc duyªn<color>, c¸c h¹ vui lßng kiÓm tra l¹i nguyªn liÖu!")
		end
	end
	if not(bil_2[1]) then
		return Talk(1,"","T¹i h¹ kh«ng t×m thÊy lo¹i chiÕn m· mµ c¸c h¹ cÇn n©ng cÊp, vui lßng kiÓm tra l¹i!")
	else
		if bil.False(bil_2[1][2]) then
			return Talk(1,"","T¹i h¹ ch­a mét lÇn nh×n thÊy lo¹i chiÕn m· nµy, c¸c h¹ cã ch¾c nã lµ chiÕn m· chø!")
		end
	end
	if getn(bil_2) > 1 then 
		return Talk(1,"","T¹i h¹ chØ cã n¨ng lùc n©ng cÊp mçi lÇn 1 chiÕn m·, c¸c h¹ vui lßng chän 1 chiÕn m· mµ m×nh cÇn n©ng cÊp!")
	end
	local bil_15 = 0
	for bil_16 = 1, getn(_bilTbHORSE) do
		if _bilTbHORSE[bil_16].bil_1_1[1] == bil_2[1][1][1] then
			if _bilTbHORSE[bil_16].bil_1_1[2] == bil_2[1][1][2] then
				if _bilTbHORSE[bil_16].bil_1_1[3] == bil_2[1][1][3] then
					if _bilTbHORSE[bil_16].bil_1_1[4] == bil_2[1][1][4] then
						bil_15 = bil_16 + 1
					end
				end
			end
		end
	end
	if bil_15 == 0 then
		if bil_2[1][1][3] ~= 2 or bil_2[1][1][4] < 9 then
			return Talk(1,"","Lo¹i chiÕn m· cÊp thÊp nhÊt vµ ®ñ t­ chÊt ®Ó ®¶ th«ng vµ thuÇn hãa chØ cã thÓ lµ "..bil.C(1, "Tóc S­¬ng thÇn m· cÊp 9 trë lªn").." cßn c¸c lo¹i ngùa kh¸c kh«ng ®ñ t­ chÊt ®Ó tiÕn hµnh thuÇn hãa, c¸c h¹ h·y ®i t×m cho m×nh 1 Tóc S­¬ng thÇn m· tr­íc!")
		else
			bil_15 = 1
		end
	end
	if bil_15 > getn(_bilTbHORSE) then
		return Talk(1, "","HiÖn t¹i trong quyÓn "..bil.C(1, "B¾c ®Èu thuÇn m· thuËt").." ch­a cã ghi chĞp nµo vÒ t­ chÊt vµ tiÒm n¨ng cña thÇn m· "..bil.C(4, _bilTbHORSE[getn(_bilTbHORSE)].bil_1_2).." c¶, ta e lµ kh«ng gióp ®­îc g× cho c¸c h¹ råi!")
	end
	local bil_17 = bil_2[1][2]
	local bil_18 = _bilTbHORSE[bil_15].bil_1_2
	if bil_3 < _bilTbHORSE[bil_15].bil_1_3 then
		return Say("ChiÕn m·: "..bil.C(1, bil_17).."<enter>Lªn ThÇn m·: "..bil.C(4, bil_18).."<enter>Yªu cÇu:<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_3.." B¾c ®Èu thuÇn m· thuËt").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_4.." Cá t­¬i").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_5.." D©y thõng").."<enter>H×nh nh­ c¸c h¹ ch­a chuÈn bŞ kü!", 1,"Ta biÕt råi, ®îi ta thu thËp nguyªn liÖu!/bil.OnCancel")
	end
	if bil_4 < _bilTbHORSE[bil_15].bil_1_4 then
		return Say("ChiÕn m·: "..bil.C(1, bil_17).."<enter>Lªn ThÇn m·: "..bil.C(4, bil_18).."<enter>Yªu cÇu:<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_3.." B¾c ®Èu thuÇn m· thuËt").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_4.." Cá t­¬i").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_5.." D©y thõng").."<enter>H×nh nh­ c¸c h¹ ch­a chuÈn bŞ kü!", 1,"Ta biÕt råi, ®îi ta thu thËp nguyªn liÖu!/bil.OnCancel")
	end
	if bil_5 < _bilTbHORSE[bil_15].bil_1_5 then
		return Say("ChiÕn m·: "..bil.C(1, bil_17).."<enter>Lªn ThÇn m·: "..bil.C(4, bil_18).."<enter>Yªu cÇu:<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_3.." B¾c ®Èu thuÇn m· thuËt").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_4.." Cá t­¬i").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_5.." D©y thõng").."<enter>H×nh nh­ c¸c h¹ ch­a chuÈn bŞ kü!", 1,"Ta biÕt råi, ®îi ta thu thËp nguyªn liÖu!/bil.OnCancel")
	end
	local bil_19 = ""
	if bil_6 > 0 or bil_7 > 0 or bil_8 > 0 then
		bil_19 = bil_19.." + <color=wood>T.Tinh<color>"
	end
	if bil_9 > 0 or bil_10 > 0 or bil_11 > 0 then
		bil_19 = bil_19.." + <color=wood>P.Duyªn<color>"
	end
	return CreateNewSayEx("<link=image:\\spr\\Ui3\\ÖıÔì×°±¸\\ºÏ³ÉÌØĞ§2.spr><link><color>ChiÕn m·: "..bil.C(1, bil_17).."<enter>N©ng cÊp lªn thÇn m·: "..bil.C(4, bil_18).."<enter>N©ng cÊp "..bil_18.." thÊt b¹i "..GetTask(_bilTbHORSE[bil_15].bil_1_8).." lÇn. <enter>Tû lÖ thµnh c«ng: "..bil.C(2, _bilTbHORSE[bil_15].bil_1_6).."% + "..bil.C(2, GetTask(_bilTbHORSE[bil_15].bil_1_8) * 2).."% = "..(bil.C(2, _bilTbHORSE[bil_15].bil_1_6 + (GetTask(_bilTbHORSE[bil_15].bil_1_8) * 2))).."%"..bil_19.."<enter>HoÆc Tİch lòy hiÖn t¹i: "..bil.C(2, GetTask(5953).."/".._bilTbHORSE[bil_15].bil_1_7).."<enter>C¸c h¹ muèn tiÕn hµnh n©ng cÊp chø?",
		{
			{"X¸c nhËn n©ng cÊp chiÕn m·", bilHorseUpgradeMain_4, {bil_20, bil_15, (bil_6 + bil_7 + bil_8), {bil_9, bil_10, bil_11}, bil_17, bil_14}},
			{"§îi ta suy nghÜ l¹i", bil.OnCancel},
		})
end

local bilHorseUpgradeMain_UPGRADE = function(bil_8, bil_11, bil_12, bil_2, bil_9, bil_14)
	-- bil_8: Tû lÖ thµnh c«ng lÇn n©ng cÊp cè ®Şnh - bil_11: Tû lÖ thµnh c«ng hÖ thèng - bil_12: Tb th«ng sè Item - bil_2: Row_bilTbHORSE - bil_9: tªn ngùa cÇn n©g cÊp
	local _bilTbHORSE = { -- Ngùa cÇn n©ng cÊp
		-- bil_1_1: ngùa - bil_1_2: Name - bil_1_3: b¾c ®Èu thuÇn m· thuËt - bil_1_4: cá t­¬i - bil_1_5: d©y thõng - bil_1_6: tû lÖ thµnh c«ng - bil_1_7: tİch lòy cÇn thiÕt - bil_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
		{bil_1_1 = {0,10,5,6}, bil_1_2 = "¤ V©n §¹p TuyÕt", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
		{bil_1_1 = {0,10,5,7}, bil_1_2 = "Xİch Thè", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
		{bil_1_1 = {0,10,5,8}, bil_1_2 = "TuyÖt ¶nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
		{bil_1_1 = {0,10,5,9}, bil_1_2 = "§İch L«", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
		{bil_1_1 = {0,10,5,10}, bil_1_2 = "ChiÕu D¹ Ngäc S­ Tö", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
		{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V©n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
		{bil_1_1 = {0,10,6,10}, bil_1_2 = "B«n Tiªu", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
		{bil_1_1 = {0,10,34,10}, bil_1_2 = "Xİch Long C©u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
		{bil_1_1 = {0,10,35,10}, bil_1_2 = "Siªu Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
	}
	local bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS
	for bil_15 = 1, getn(bil_14) do
		if IsMyItem(bil_14[bil_15]) ~= 1 then
			return Talk(1, "", "Nguyªn vËt liÖu kh«ng cßn trong ng­êi cña ®¹i hiÖp kh«ng thÓ n©ng cÊp, xin kiÓm tra l¹i hµnh trang!")
		end
		bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS = GetItemProp(bil_14[bil_15])
		if bil_1_nG ~= bil_12[bil_15][1] or bil_1_nP ~= bil_12[bil_15][3] then
			return Talk(1, "", "Nguyªn vËt liÖu kh«ng cßn trong ng­êi cña ®¹i hiÖp kh«ng thÓ n©ng cÊp, xin kiÓm tra l¹i hµnh trang!")
		end
	end
	for bil_21 = 1, getn(bil_14) do
		RemoveItemByIndex(bil_14[bil_21])
	end
	if bil_8 >= bil_11 then
		SetTask(_bilTbHORSE[bil_2].bil_1_8, 0)
		SetTask(5953, 0)
		AddItem(_bilTbHORSE[bil_2].bil_1_1[1], _bilTbHORSE[bil_2].bil_1_1[2], _bilTbHORSE[bil_2].bil_1_1[3], _bilTbHORSE[bil_2].bil_1_1[4], random(0,4), 0)
		Msg2Player(bil.C(2, "N©ng cÊp thµnh c«ng chiÕn m· <color=white>"..bil_9.."<color> lªn thÇn m· <color=orange>".._bilTbHORSE[bil_2].bil_1_2.."<color>, Xin chóc mõng!"))
		Talk(1, "", bil.C(2, "N©ng cÊp thµnh c«ng chiÕn m· <color=white>"..bil_9.."<color> lªn thÇn m· <color=orange>".._bilTbHORSE[bil_2].bil_1_2.."<color>, Xin chóc mõng!"))
		AddLocalNews("§¹i hiÖp "..bil.C(1, GetName()).." t¹i B¸n ngùa D­¬ng Ch©u ®· n©ng cÊp thµnh c«ng chiÕn m· "..bil.C(4, bil_9).." lªn ThÇn m· "..bil.C(2, _bilTbHORSE[bil_2].bil_1_2)..", Xin chóc mõng!")
		return Msg2SubWorld("§¹i hiÖp "..bil.C(1, GetName()).." t¹i B¸n ngùa D­¬ng Ch©u ®· n©ng cÊp thµnh c«ng chiÕn m· "..bil.C(4, bil_9).." lªn ThÇn m· "..bil.C(2, _bilTbHORSE[bil_2].bil_1_2)..", Xin chóc mõng!")
	else
		SetTask(_bilTbHORSE[bil_2].bil_1_8, GetTask(_bilTbHORSE[bil_2].bil_1_8) + 1)
		SetTask(5953, GetTask(5953) + 5)
		bilHorseUpgradeMain_OnCancle(bil_12, 2)
		Msg2Player("LÇn n©ng cÊp <color=white>"..bil_9.."<color> lªn thÇn m· "..bil.C(1, _bilTbHORSE[bil_2].bil_1_2).." nµy ®· thÊt b¹i, toµn bé sè nguyªn liÖu sÏ bŞ mÊt, xin c¸c h¹ ®õng n¶n chİ!")
		return Talk(1,"","LÇn n©ng cÊp <color=white>"..bil_9.."<color> lªn thÇn m· "..bil.C(1, _bilTbHORSE[bil_2].bil_1_2).." nµy ®· thÊt b¹i, toµn bé sè nguyªn liÖu sÏ bŞ mÊt, xin c¸c h¹ ®õng n¶n chİ!")
	end
end

local bilHorseUpgradeMain_ONBREAK = function(bil_1)
	-- bilHorseUpgradeMain_OnCancle(bil_1, 1)
	Msg2Player("N©ng cÊp ngùa bŞ gi¸n ®o¹n, xin thö l¹i!")
	return Talk(1,"","N©ng cÊp ngùa bŞ gi¸n ®o¹n, xin thö l¹i!")
end

function bilHorseUpgradeMain_4(bil_1, bil_2, bil_3, bil_4, bil_9, bil_14)
	-- bil_1{}: Tb th«ng sè Item - bil_2: Row_bilTbHORSE - bil_3: Tæng thñy tinh - bil_4{Phóc duyªn tiÓu, trung, ®¹i} - bil_5: Sè lÇn thÊt b¹i - bil_6: Tİch lòy b¶n th©n - bil_7: Tİch lòy cÇn thiÕt - bil_9: Tªn ngùa cÇn n©g cÊp
	-- bil_8: Tæng tû lÖ thµnh c«ng
	local _bilTbHORSE = { -- Ngùa cÇn n©ng cÊp
		-- bil_1_1: ngùa - bil_1_2: Name - bil_1_3: b¾c ®Èu thuÇn m· thuËt - bil_1_4: cá t­¬i - bil_1_5: d©y thõng - bil_1_6: tû lÖ thµnh c«ng - bil_1_7: tİch lòy cÇn thiÕt - bil_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
		{bil_1_1 = {0,10,5,6}, bil_1_2 = "¤ V©n §¹p TuyÕt", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
		{bil_1_1 = {0,10,5,7}, bil_1_2 = "Xİch Thè", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
		{bil_1_1 = {0,10,5,8}, bil_1_2 = "TuyÖt ¶nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
		{bil_1_1 = {0,10,5,9}, bil_1_2 = "§İch L«", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
		{bil_1_1 = {0,10,5,10}, bil_1_2 = "ChiÕu D¹ Ngäc S­ Tö", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
		{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V©n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
		{bil_1_1 = {0,10,6,10}, bil_1_2 = "B«n Tiªu", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
		{bil_1_1 = {0,10,34,10}, bil_1_2 = "Xİch Long C©u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
		{bil_1_1 = {0,10,35,10}, bil_1_2 = "Siªu Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
	}
	local bil_5, bil_6, bil_7, bil_8 = GetTask(_bilTbHORSE[bil_2].bil_1_8), GetTask(5953), _bilTbHORSE[bil_2].bil_1_7, (_bilTbHORSE[bil_2].bil_1_6 + (GetTask(_bilTbHORSE[bil_2].bil_1_8) * 2))
	local bil_11 = floor((random(0,100) + random(0,100)) / 2)
	if bil_6 >= bil_7 then
		bil_8 = 100
	else
		bil_8 = bil_8 + floor(bil_3/3) + floor((bil_4[1] + bil_4[2] + bil_4[3])/5)
	end
	tbProgressBar:OpenByConfig(10, %bilHorseUpgradeMain_UPGRADE, {bil_8, bil_11, bil_1, bil_2, bil_9, bil_14}, %bilHorseUpgradeMain_ONBREAK, {bil_1})
end

function bilHorseUpgradeMain_OnCancle(bil_1, bil_2)
	if bil_2 == 1 then
		for bil_3 = 1, getn(bil_1) do
			for bil_5 = 1, bil_1[bil_3][7] do
				AddItem(unpack(bil_1[bil_3]))
			end
		end
		return
	elseif bil_2 == 2 then
		for bil_4 = 1, getn(bil_1) do
			if bil_1[bil_4][1] == 0 and bil_1[bil_4][2] == 10 then
				return AddItem(unpack(bil_1[bil_4]))
			end
		end
	end
end

























