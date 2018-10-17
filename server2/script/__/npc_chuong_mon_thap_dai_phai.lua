-- Include("\\script\\__\\npc_chuong_mon_thap_dai_phai.lua")

local bilFunc_ChuongMonThapDaiPhai_nNum = {
	[01] = {n = "ThiÕu L©m", s120 = {i = 709, n = "§¹i Thõa Nh­ Lai Chó"}},
	[02] = {n = "Thiªn V­¬ng", s120 = {i = 708, n = "§¶o H­ Thiªn"}},
	[03] = {n = "§­êng M«n", s120 = {i = 710, n = "Mª ¶nh Tung"}},
	[04] = {n = "Ngò §éc", s120 = {i = 711, n = "HÊp Tinh YÓm"}},
	[05] = {n = "Ngay Mi", s120 = {i = 712, n = "BÕ NghuyÖt PhÊt TrÇn"}},
	[06] = {n = "Thóy Yªn", s120 = {i = 713, n = "Ngù TuyÕt Èn"}},
	[07] = {n = "C¸i Bang", s120 = {i = 714, n = "Hçn Nhiªn KhÝ C«ng"}},
	[08] = {n = "Thiªn NhÉn", s120 = {i = 715, n = "Ma ¢m PhÖ Ph¸ch"}},
	[09] = {n = "Vâ §ang", s120 = {i = 716, n = "XuÊt ø BÊt NhiÔm"}},
	[10] = {n = "C«n L«n", s120 = {i = 717, n = "L­ìng Nghi Ch©n KhÝ"}},
}

function bilFunc_ChuongMonThapDaiPhai_CallFunc(_1, _fNum, _Accepted)
	if _fNum and _fNum == 1 then
	
		local FACTION_BOOK = {
			[0] = {{6, 1, 56, "ThiÕu L©m QuyÒn Ph¸p. QuyÓn 1"}, {6, 1, 57, "ThiÕu L©m C«n ph¸p. QuyÓn 2"}, {6, 1, 58, "ThiÕu L©m §ao ph¸p. QuyÓn 3"}},
			[1] = {{6, 1, 37, "Thiªn V­¬ng Chïy Ph¸p. QuyÓn 1"}, {6, 1, 38, "Thiªn V­¬ng Th­¬ng ph¸p. QuyÓn 2"}, {6, 1, 39, "Thiªn V­¬ng §ao ph¸p.QuyÓn 3"}},
			[2] = {{6, 1, 27, "Tô TiÔn thuËt. B¹o Vò Lª Hoa"}, {6, 1, 28, "H·m TÜnh thuËt.Lo¹n Hoµn KÝch"}, {6, 1, 45, "Phi §ao thuËt. NhiÕp Hån NguyÖt ¶nh"}, {6, 1, 46 , "Phi Tiªu thuËt. Cöu Cung Phi Tinh"}},
			[3] = {{6, 1, 47, "Ngò §éc Ch­ëng Ph¸p. QuyÓn 1"}, {6, 1, 48, "Ngò §éc §ao ph¸p. QuyÓn 2"}, {6, 1, 49, "Ngò §éc NhiÕp T©m thuËt. QuyÓn 3"}},
			[4] = {{6, 1, 42, "DiÖt KiÕm MËt TÞch"}, {6, 1, 43 ,"Nga Mi  PhËt Quang Ch­ëng MËt TÞch"}, {6, 1, 59, "Phæ §é MËt TÞch"}},
			[5] = {{6, 1, 40, "Thóy Yªn §ao ph¸p"}, {6, 1, 41 ,"Thóy Yªn Song ®ao"}},
			[6] = {{6, 1, 54, "C¸i Bang Ch­ëng Ph¸p"}, {6, 1, 55 ,"C¸i Bang C«n ph¸p"}},
			[7] = {{6, 1, 35, "V©n Long KÝch. M©u ph¸p"}, {6, 1, 36 ,"L­u Tinh. §ao ph¸p"}, {6, 1, 53, "NhiÕp Hån. Chó thuËt"}},
			[8] = {{6, 1, 33, "Th¸i Cùc QuyÒn Phæ. QuyÓn 3"}, {6, 1, 34 ,"Th¸i Cùc KiÕm Phæ. QuyÓn 2"}},
			[9] = {{6, 1, 50, "Ngù Phong thuËt"}, {6, 1, 51 ,"Ngù L«i thuËt"}, {6, 1, 52, "Ngù T©m thuËt"}},
		}
		
		local b = getn(FACTION_BOOK[_1[3]])
		
		if _Accepted and _Accepted == 1 then
			ConsumeEquiproomItem(1, 6, 1, 12, -1)
			ConsumeEquiproomItem(1, 4, 353, 1, -1)
			
			for _i = 238, 240 do
				if CalcEquiproomItemCount(4, _i, 1, -1) > 0 then
					ConsumeEquiproomItem(1, 4, _i, 1, -1)
					break
				end
			end
			
			for _i = 1, b do
				ConsumeEquiproomItem(1, FACTION_BOOK[_1[3]][_i][1], FACTION_BOOK[_1[3]][_i][2], FACTION_BOOK[_1[3]][_i][3], -1)
			end
			
			AddItem(6, 1, 1125, 1, 0,0,0)
			
			Msg2Player("<color=green>§æi ®­îc 1 cuèn kü n¨ng tuyÖt häc cÊp 120 cña m«n ph¸i, xin chóc mõng!")
			
			return
		end
		
		if CalcEquiproomItemCount(6, 1, 12, -1) < 1 then
			Msg2Player("Yªu cÇu: 1 Bµn nh­îc t©m kinh, 1 Tinh hång b¶o th¹ch, 1 Thñy tinh bÊt kú, 1 bé s¸ch kü n¨ng ®Çy ®ñ cña m«n ph¸i m×nh!")
			return Talk(1, "", "Ng­¬i kh«ng mang theo cuèn Bµn nh­îc t©m kinh bªn ng­êi!")
		end
		
		if CalcEquiproomItemCount(4, 353, 1, -1) < 1 then
			Msg2Player("Yªu cÇu: 1 Bµn nh­îc t©m kinh, 1 Tinh hång b¶o th¹ch, 1 Thñy tinh bÊt kú, 1 bé s¸ch kü n¨ng ®Çy ®ñ cña m«n ph¸i m×nh!")
			return Talk(1, "", "Ng­¬i kh«ng mang theo 1 viªn Tinh hång b¶o th¹ch trªn ng­êi!")
		end
		
		local a = 0
		for _i = 238, 240 do
			a = (CalcEquiproomItemCount(4, _i, 1, -1) + a)
		end
		
		if a < 1 then
			Msg2Player("Yªu cÇu: 1 Bµn nh­îc t©m kinh, 1 Tinh hång b¶o th¹ch, 1 Thñy tinh bÊt kú, 1 bé s¸ch kü n¨ng ®Çy ®ñ cña m«n ph¸i m×nh!")
			return Talk(1, "", "Ng­¬i kh«ng mang theo 1 viªn Thñy tinh bÊt kú nµo trªn ng­êi!")
		end
		
		if not(FACTION_BOOK[_1[3]]) then
			return Msg2Player("Lçi, kh«ng x¸c ®Þnh ®­îc m«n ph¸i, xin thö l¹i hoÆc liªn hÖ víi bé phËn hç trî ®Ó ®­îc trî gióp!")
		end
		
		for _i = 1, b do
			if CalcEquiproomItemCount(FACTION_BOOK[_1[3]][_i][1], FACTION_BOOK[_1[3]][_i][2], FACTION_BOOK[_1[3]][_i][3], -1) < 1 then
				Msg2Player("Yªu cÇu: 1 Bµn nh­îc t©m kinh, 1 Tinh hång b¶o th¹ch, 1 Thñy tinh bÊt kú, 1 bé s¸ch kü n¨ng ®Çy ®ñ cña m«n ph¸i m×nh!")
				return Talk(1, "", "Ng­¬i kh«ng mang theo cuèn kü n¨ng m«n ph¸i: "..FACTION_BOOK[_1[3]][_i][4])
			end
		end
		
		return Say("B¶n th©n ng­¬i ®· héi tô ®ñ c¸c yÕu tè ®Ó lÜnh ngé cuèn bÝ kÝp "..(%bilFunc_ChuongMonThapDaiPhai_nNum[_1[1]].s120.n)..", ng­¬i cã muèn ®æi kh«ng!", 2, 
			"§Ö tö xin ®æi lÊy cuèn bÝ kÝp nµy/#bilFunc_ChuongMonThapDaiPhai_CallFunc({".._1[1]..", ".._1[2]..", ".._1[3].."}, ".._fNum..", 1)",
			"§Ö tö ch­a muèn/OnCancel")
	end
end

function bilFunc_ChuongMonThapDaiPhai(_nNum, _pLevel, _pLastFn, _pFName, _pName, CallFunctionNum)
	if _pLastFn ~= (_nNum - 1) then
		return nil
	end

	local a = {}
	
	if ((_pLevel >= 120) and (HaveMagic(%bilFunc_ChuongMonThapDaiPhai_nNum[_nNum].s120.i) == -1)) then
		tinsert(a, "§Ö tö muèn l·nh ngé bé t©m ph¸p cÊp 120/#bilFunc_ChuongMonThapDaiPhai_CallFunc({".._nNum..", ".._pLevel..", ".._pLastFn..", ".._pFName..", ".._pName.."}, 1)")
	end
	
	if getn(a) > 0 then
		return 1, a
	end
	
	return nil
end














