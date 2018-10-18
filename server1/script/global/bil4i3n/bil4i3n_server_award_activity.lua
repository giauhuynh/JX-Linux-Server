IncludeLib("BATTLE")
-- Include("\\script\\global\\bil4i3n\\bil4i3n_server_award_activity.lua")
/*[[ File l­u tr÷ hµm nhËn phÇn th­ëng khi tham gia c¸c ho¹t ®éng trong game ]]*/

Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate_item_magic.lua")
Include("\\script\\lib\\awardtemplet.lua")


--===============================================================================================-
	/*[[   Tèng Kim   ]]*/
	
-- KÕt thóc tèng kim
function bilActivity_EnBattle()

	if GetTask(5905) == 67 then
		bilNvTanThu:NextTask()
	end
	
end

function bilActivity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	local a = PlayerIndex
	local b, c, d, e = 0, tonumber(GetLocalDate("%H")), 0, 1773
	local Tdate = floor(FormatTime2Number(GetCurServerTime()+24*60*60)/10000)
	
	for _i = 1, getn(tbPlayerWin) do
		PlayerIndex = tbPlayerWin[_i]
		b = BT_GetData(1)
		
		if c >= 21 and c < 23 and nBattleLevel >= 2 then
			e = 4318
			
			if b >= 5000 and nBattleLevel >= 2 then
				AddItem(6,1,4315,1,0,0,0)
				Msg2Player(bil.C(10, "B¹n thÓ hiÖn b¶n lÜnh qu¸ næi bËt trong trËn th¾ng nµy, b¹n nhËn ®­îc 1 lÔ bao BÝ kÝp!"))
			end
		end
		
		if b >= 1000 then
			d = AddItem(6,1,e,1,0,0)
			SetSpecItemParam(d, 1,floor(Tdate/10000)+2000);
			SetSpecItemParam(d, 2,floor(mod(Tdate,10000)));
			SyncItem(d)
			SetItemBindState(d, -2);
			Msg2Player("B¹n nhËn ®­îc 1 Hu©n c«ng bµi Tèng Kim")
		end
	end
	
	if c >= 21 and c < 23 and nBattleLevel >= 2 then
		for _i = 1, getn(tbPlayerLos) do
			PlayerIndex = tbPlayerLos[_i]
			b = BT_GetData(1)
			
			if b >= 3000 then
				d = AddItem(6,1,e,1,0,0)
				SetSpecItemParam(d, 1,floor(Tdate/10000)+2000);
				SetSpecItemParam(d, 2,floor(mod(Tdate,10000)));
				SyncItem(d)
				SetItemBindState(d, -2);
				Msg2Player("B¹n nhËn ®­îc 1 Hu©n c«ng bµi Tèng Kim")
			end
		end
	end
	
	PlayerIndex = a

end

--===============================================================================================-
	/*[[   Viªm ®Õ b¶o tµng   ]]*/

-- KÕt thóc Viªm ®Õ b¶o tµng
function bilActivity_EnYandiBaozang()
	-- local nexp = 5000000
	local nexp = 1500000
	AddOwnExp(nexp)
	Msg2Player(format("<color=yellow>Chóc mõng hoµn thµnh v­ît ¶i viªm ®Õ, thu ®­îc <color>%s kinh nghiÖm<color=yellow>.<color>",nexp))
	AddItem(6,1,2805,1,0,0)
	-- AddItem(6,1,4300,1,0,0)
	-- Msg2Player(bil.C(8, "NhËn ®­îc 1 ")..bil.C(1, "Viªm §Õ BÝ B¶o, N¨ng §éng LÔ Bao"))
	Msg2Player(bil.C(8, "NhËn ®­îc 1 ")..bil.C(1, "Viªm §Õ BÝ B¶o"))
	-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	if GetTask(5905) == 63 then
		bilNvTanThu:NextTask()
	end
end

-- Qu¸i cuèi cïng cña ¶i chÕt, chuyÓn tiÕp ¶i tiÕp theo
function bilActivity_DeathLastNpcAiYandiBaozang(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: World - bil_2: X - bil_3: Y - bil_4: PlayerIndex
	-- bilDropAtlasCompound(bil_1, bil_2, bil_3, -1, 79, 79)
	-- bilDropABDQ(bil_1, bil_2, bil_3, -1, 79, 79)
	-- bilDropKhThach(bil_1, bil_2, bil_3, -1, 1, 79, 82)
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 1, 79, 80)
end

--===============================================================================================-
	/*[[   V­ît ¶i (NhÝp ThÝ TrÇn)   ]]*/

-- Hoµn thµnh v­ît ¶i 
function bilActivity_EnChallengeOfTime()
	AddOwnExp(1000000)
	-- AddItem(6,1,4300,1,0,0)
	AddItem(6,1,1392,1,0,0)
tbAwardTemplet:GiveAwardByList({{szName="V¶i",tbProp={6,1,4354,1,0},nCount=50,},}, "test", 1);
	-- Msg2Player(bil.C(8, "Hoµn thµnh v­ît ¶i, nhËn ®­îc 5 triÖu ®iÓm kinh nghiÖm ")..bil.C(1, "1 LÔ vËt V­ît ¶i  vµ 1 N¨ng ®éng lÔ bao!"))
	Msg2Player(bil.C(8, "Hoµn thµnh v­ît ¶i, nhËn ®­îc 1 triÖu ®iÓm kinh nghiÖm ")..bil.C(1, "1 LÔ vËt V­ît ¶i!"))
	-- bilAddRandom_PhucLoiDon_ManhHoangKim()
Msg2SubWorld("<pic=7> CËp nhËt <color=green>"..GetName().."<color=yellow> ®· hoµn thµnh v­ît ¶i nhËn ®­îc thªm 50 tÊm v¶i ®á")
	if GetTask(5905) == 62 then
		bilNvTanThu:NextTask()
	end
end

-- Qu¸i cuèi cïng cña ¶i chÕt, chuyÓn tiÕp ¶i tiÕp theo
function bilActivity_DeathLastNpcChallengeOfTime(bil_1, bil_2, bil_3)
	-- bil_1: World - bil_2: X - bil_3: Y
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 1, 79, 80)
	-- bilDropABDQ(bil_1, bil_2, bil_3, -1, 79, 79)
	for i = 1, 10 do
		DropItem(bil_1, bil_2, bil_3, -1, 1, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0);
	end
end

--===============================================================================================-
	/*[[   Phong l¨ng ®é   ]]*/
	
-- KÕt thóc Phong L¨ng §é (®i ®Õn bê b¾c thµnh c«ng)
function bilActivity_EnFengLingFerry()
	AddOwnExp(1000000)
tbAwardTemplet:GiveAwardByList({{szName="Sao",tbProp={6,1,4355,1,0},nCount=100,},}, "test", 1);
Msg2SubWorld("<pic=7> CËp nhËt <color=green>"..GetName().."<color=yellow> ®· hoµn thµnh thuyÒn phong l¨ng ®é nhËn 100 Sao Vµng")

	-- AddItem(6,1,4300,1,0,0)
	-- Msg2Player("<color=yellow>Hoµn thµnh Phong L¨ng §é, nhËn thªm 2 triÖu ®iÓm Kinh nghiÖm vµ 1 N¨ng ®éng lÔ bao!")
	Msg2Player("<color=yellow>Hoµn thµnh Phong L¨ng §é, nhËn thªm 1 triÖu ®iÓm Kinh nghiÖm!")
	-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	if GetTask(5905) == 64 then
		bilNvTanThu:NextTask()
	end
end

-- H¹ gôc ®­îc Boss
function bilActivity_DeathBossFengLingFerry(bil_1, bil_2, bil_3)
	-- bil_1: World - bil_2: X - bil_3: Y
	AddOwnExp(2000000)
	bilDropNormalItem({bil_1, bil_2, bil_3}, -1, 10, {20, 100}, {7, 10, 5})
	-- bilDropABDQ(bil_1, bil_2, bil_3, -1, 79, 79)
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 1, 79, 85)
	
	local a = {
		{{6, 1, 71, 1, 0,0,0}, "Tiªn th¶o lé"},
		{{6, 1, 12, 1, 0,0,0}, "Bµn Nh­îc T©m Kinh"},
		{{4, 238, 1, 1, 0,0,0}, "Lam thñy tinh"},
		{{4, 239, 1, 1, 0,0,0}, "Tö thñy tinh"},
		{{4, 240, 1, 1, 0,0,0}, "Lôc thñy tinh"},
		{{4, 353, 1, 1, 0,0,0}, "Tinh hång b¶o th¹ch"},
		{{6, 1, 122, 1, 0,0,0}, "Phóc duyªn tiÓu"},
		{{6, 1, 123, 1, 0,0,0}, "Phóc duyªn trung"},
	}
	
	for _i = 1, getn(a) do
		if random(1, 100) <= 4 then
			DropItem(bil_1, bil_2, bil_3, (PlayerIndex or -1), a[_i][1][1], a[_i][1][2], a[_i][1][3], 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
		end
	end
end

-- Qu¸i th­êng chÕt
function bilActivity_DeathNpcNormalFengLingFerry(bil_1, bil_2, bil_3)
	-- bil_1: World - bil_2: X - bil_3: Y
end

--===============================================================================================-
	/*[[   Hoa S¬n §¹i ChiÕn   ]]*/
	
-- Ng­êi chiÕn th¾ng trong Hoa S¬n §¹i ChiÕn
function bilActivity_EnHuaShanqunzhan()
	if CalcFreeItemCellCount() < 20 then
		Say("Tói hµnh trang ®· ®Çy, h·y dän dÑp hµnh trang ®Ó b¶o ®¶m an toµn cho vËt phÈm.",0)
		return nil
	else
		AddOwnExp(100000000)
		--Earn(500000)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		
		AddItem(6,1,22,1,0,0)
		AddItem(4,238,1,1,0,0)
		AddItem(4,239,1,1,0,0)
		AddItem(4,353,1,1,0,0)
		--AddItem(4,240,1,1,0,0)
		
		-- AddItem(6,1,4308,1,0,0)
		-- AddItem(6,1,4308,1,0,0)
		-- AddItem(6,1,4308,1,0,0)
		
		Msg2Player(bil.C(10, "NhËn ®­îc 100 triÖu ®iÓm Kinh nghiÖm"))
		--Msg2Player(bil.C(10, "NhËn ®­îc 50 v¹n l­îng"))
		-- Msg2Player(bil.C(10, "NhËn ®­îc 5 N¨ng ®éng lÔ bao"))
		Msg2Player(bil.C(10, "NhËn ®­îc 1 Lam thñy tinh"))
		Msg2Player(bil.C(10, "NhËn ®­îc 1 Tö thñy tinh"))
		Msg2Player(bil.C(10, "NhËn ®­îc 1 Tinh Hång"))
		Msg2Player(bil.C(10, "NhËn ®­îc 1 TÈy tñy kinh"))
		-- Msg2Player(bil.C(10, "NhËn ®­îc 3 M¶nh §å Phæ [Hoµng Kim]"))
		Msg2Player(bil.C(8, "§· nhËn ®­îc phÇn th­ëng cùc kú gi¸ trÞ cho ng­êi chiÕn th¾ng trong ")..bil.C(1, "Hoa s¬n ®¹i chiÕn"))
		return 1
	end
end

--===============================================================================================-
	/*[[   S¨n NhÝm bÐo ph×   ]]*/

-- S¨n ®­îc NhÝm bÐo ph×
function bilActivity_DeathNhimBeoPhi()
	local tbAwardItem = {
		{szName="Tiªn Th¶o Lé ", nRate=5, tbProp={6, 1, 71, 1, 0, 0}},
		{szName="B¸ch Qu¶ Lé ", nRate=10, tbProp={6, 1, 73, 1, 0, 0}},
		-- {szName="QuÕ Hoa Töu", nRate=15, tbProp={6, 1, 125, 1, 0, 0}},
	};
	local bilRandom = random(1, 100)
	for i = 1, getn(tbAwardItem) do
		if bilRandom <= tbAwardItem[i].nRate and bilRandom > tbAwardItem[i].nRate - 5 then
			AddItem(unpack(tbAwardItem[i].tbProp))
			Msg2Player("B¹n nhËn ®­îc: "..tbAwardItem[i].szName)
		end
	end
	-- AddOwnExp(2000000)
	AddOwnExp(500000)
	-- Earn(20000)
	-- Msg2Player(bil.C(10, "NhËn ®­îc 500.000 Kinh nghiÖm vµ 2 v¹n l­îng!"))
	Msg2Player(bil.C(10, "NhËn ®­îc 500.000 Kinh nghiÖm!"))
	Msg2Player(bil.C(9, "H«m nay ®¹i hiÖp ®· s¨n ®­îc <color=yellow>"..(GetTask(5979)+1).."<color> NhÝm bÐo ph×!"))
	Msg2Player(bil.C(10, "Tæng sè NhÝm bÐo ph× ®¹i hiÖp ®· s¨n ®­îc: "..(GetTask(5977)+1)))
end

--===============================================================================================-
	/*[[   Bosss Hoµng Kim   ]]*/
	
-- H¹ gôc ®­îc Boss
function bilActivity_DeathBossHK(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: World - bil_2: X - bil_3: Y - bil_4: PlayerIndex
	bilDropNormalItem({bil_1, bil_2, bil_3}, PlayerIndex, 40, {50, 100}, {8, 10, 5})
	-- bilDropAtlasCompound(bil_1, bil_2, bil_3, PlayerIndex, 79, 80)
	-- bilDropABDQ(bil_1, bil_2, bil_3, bil_4, 79, 80)
	-- bilDropKhThach(bil_1, bil_2, bil_3, -1, 2, 79, 197)
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 3, 79, 152)
	
	if random(1,5) == 1 then
		DropItem(bil_1, bil_2, bil_3, bil_4, 6, 1, 4315, 1, 0, 0, 0, 0, 0, 0, 0, 0) -- BÝ kÝp lÔ bao cÊp 90
	end
	
	if random(1,5) == 1 then
		DropItem(bil_1, bil_2, bil_3, bil_4, 6, 1, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0) -- Bµn nh­îc t©m kinh
	end
	
	-- bilDropRandom_PhucLoiDon_ManhHoangKim(bil_1, bil_2, bil_3, -1, 3)
	
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	
	
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	if bilAllowDropMagicItemManual and bilAllowDropMagicItemManual.isOpen == 1 then
		local im_G, im_D, im_MagicLevel, im_Index = 0, nil, 0, nil
		
		for _i2 = 1, 20 do
			im_D = random(0, 9)
			
			im_D = ((im_D == 0 or im_D == 1) and ((random(100) <= 10) and im_D or random(5,9)) or ((im_D == 3 or im_D == 4 or im_D == 9) and ((random(100) <= 20) and im_D or random(5,8)) or im_D))
			im_MagicLevel = ((im_D == 0 or im_D == 1 or im_D == 3 or im_D == 4 or im_D == 9) and 7 or 10)
			
			if random(100) <= 30 then
				im_Index = DropItemEx(
					bil_1, bil_2, bil_3, 
					(PlayerIndex or -1), 
					bilAllowDropMagicItemManual.version, 
					random(), 
					0, 
					im_G, im_D, random(_bilTbDropNormalItem[(im_D + 1)][1][1], _bilTbDropNormalItem[(im_D + 1)][1][2]), 
					random(8,10), random(0,4), 
					((im_D == 0 or im_D == 1) and random(150) or ((im_D == 3 or im_D == 4 or im_D == 9) and random(200) or random(250))), 
					random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel)
				)
				
				item_DropMagic:WriteLogs({im_Mis = "Boss_Tieu_Hoang_Kim", im_Index = im_Index, im_D = im_D})
			end
		end
	end
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
end

-- Lùa chän 20 ng­êi ngÉu nhiªn ®øng xung quanh khi Boss chÕt
function bilActivity_DeathBossPlayerRandom(bil_1, bil_2)
	-- bil_1: Table PlayerIndex - bil_2: Count Player
	local OldPlidx = PlayerIndex
	-- for bil_L_1 = 1, bil_2 do
		-- PlayerIndex = bil_1[bil_L_1]
		-- AddItem(6,1,4300,1,0,0)
		-- Msg2Player(bil.C(8, "Tham gia ®¸nh Boss Hoµng Kim ngÉu nhiªn nhËn ®­îc 1 ")..bil.C(1, "N¨ng §éng LÔ Bao"))
		-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	-- end
	PlayerIndex = OldPlidx
end

--===============================================================================================-
	/*[[   Boss Tinh Anh   ]]*/

-- H¹ gôc ®­îc Boss Tinh Anh
function bilActivity_DeathBossTHK(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: World - bil_2: X - bil_3: Y - bil_4: All PlayerIndex Team
	-- bilDropNormalItem({bil_1, bil_2, bil_3}, PlayerIndex, 80, {70, 100}, {9, 10, 250})
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	-- bilDropRandom_PhucLoiDon_ManhHoangKim(bil_1, bil_2, bil_3, bil_4[1], 1)
	
	local bil_PlayerIndexOld = PlayerIndex
	for bil_l_1 = 1, getn(bil_4) do
		PlayerIndex = bil_4[bil_l_1]
		AddOwnExp(3000000)
		Msg2Player(bil.C(10, "NhËn ®­îc 3 tr Exp tõ Boss Tinh Anh"))
		-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	end
	PlayerIndex = bil_PlayerIndexOld
	
	local bilNIt, bilRd = 0, 0
	for i = 1, 60 do
		bilRd, bilNIt = random(0, 100), random(0, 9)
		if bilRd >= 70 and bilRd <= 100 then
			DropItem(
				bil_1, bil_2, bil_3, (PlayerIndex or -1), 
				0, bilNIt, random(_bilTbDropNormalItem[bilNIt + 1][1][1], _bilTbDropNormalItem[bilNIt + 1][1][2]), random(9, 10), random(0,4), 
				255, 
				10,10, 10, 10, 10, 10, 10
			)
		end
	end
	
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	if bilAllowDropMagicItemManual and bilAllowDropMagicItemManual.isOpen == 1 then
		local im_G, im_D, im_MagicLevel, im_Index = 0, nil, 0, nil
		
		for _i2 = 1, 20 do
			im_D = random(0, 9)
			
			im_D = ((im_D == 0 or im_D == 1) and ((random(100) <= 10) and im_D or random(5,9)) or ((im_D == 3 or im_D == 4 or im_D == 9) and ((random(100) <= 20) and im_D or random(5,8)) or im_D))
			im_MagicLevel = ((im_D == 0 or im_D == 1 or im_D == 3 or im_D == 4 or im_D == 9) and 4 or 8)
			
			if random(100) <= 30 then
				im_Index = DropItemEx(
					bil_1, bil_2, bil_3, 
					(PlayerIndex or -1), 
					bilAllowDropMagicItemManual.version, 
					random(), 
					0, 
					im_G, im_D, random(_bilTbDropNormalItem[(im_D + 1)][1][1], _bilTbDropNormalItem[(im_D + 1)][1][2]), 
					random(8,10), random(0,4), 
					((im_D == 0 or im_D == 1) and random(50) or ((im_D == 3 or im_D == 4 or im_D == 9) and random(100) or random(150))), 
					random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel)
				)
				
				item_DropMagic:WriteLogs({im_Mis = "Boss_Tieu_Hoang_Kim", im_Index = im_Index, im_D = im_D})
			end
		end
	end
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	
	for _i = 1, 5 do
		if random(1, 100) <= 10 then
			DropItem(bil_1, bil_2, bil_3, (PlayerIndex or -1), 6, 1, random(4342, 4347), 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
		end
	end
end

-- Ng­êi ch¬i ®øng xung quanh khi boss Tinh Anh chÕt
function bilActivity_DeathBossTHKPlayerRandom(bil_1)
	-- bil_1: All PlayerIndex
	local bil_PlayerIndexOld = PlayerIndex
	for bil_l_1 = 1, getn(bil_1) do
		PlayerIndex = bil_1[bil_l_1]
		AddOwnExp(1500000)
		Msg2Player(bil.C(10, "NgÉu nhiªn nhËn ®­îc 1.5 tr Exp tõ Boss Tinh Anh"))
		-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	end
	PlayerIndex = bil_PlayerIndexOld
end

--===============================================================================================-
	/*[[   C«ng thµnh chiÕn   ]]*/

-- KÕt thóc C«ng thµnh chiÕn
function bilActivity_EnCityWar(bil_1)
	-- bil_1: ®iÓm kinh nghiÖm
	AddOwnExp(bil_1)
	-- AddItem(6,1,4300,1,0,0)
	-- AddItem(6,1,4300,1,0,0)
	-- Msg2Player("<color=yellow>H¹ gôc ®­îc "..(bil_1/500000).." ®Þch qu©n<enter>B¹n nhËn ®­îc "..bil_1.." ®iÓm kinh nghiÖm vµ "..bil.C(1, "2 N¨ng ®éng lÔ bao"))
	Msg2Player("<color=yellow>H¹ gôc ®­îc "..(bil_1/100000).." ®Þch qu©n<enter>B¹n nhËn ®­îc "..bil_1.." ®iÓm kinh nghiÖm")
	AddSkillState(451, 1, 1, 10*60*18, 1)
	-- bilAddRandom_PhucLoiDon_ManhHoangKim()
end

--===============================================================================================-
	/*[[   Phong háa liªn thµnh   ]]*/
	
-- H¹ gôc ®­îc t­íng lÜnh bªn c«ng, tÝnh theo cÊp ®é
function bilActivity_EnNewCityDefence(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: H¹ng cña NPC bªn c«ng bÞ h¹ gôc - bil_2: World - bil_3: X - bil_4: Y
	if bil_1 >= 4 then
		-- bilDropAtlasCompound(bil_2, bil_3, bil_4, -1, 79, 79)
		-- bilDropABDQ(bil_2, bil_3, bil_4, -1, 79, 79)
		-- bilDropKhThach(bil_2, bil_3, bil_4, -1, 1, 79, 82)
		bilDropKyTranDiBao(bil_2, bil_3, bil_4, -1, 1, 79, 80)
	end
end























