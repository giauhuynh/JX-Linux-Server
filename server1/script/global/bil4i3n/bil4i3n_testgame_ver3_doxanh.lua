IncludeLib("ITEM")
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")
--Include("\\script\\global\\quanlygame\\trangbi.lua")


function bilMain_TestGame_v3()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {}
	if GetLevel() < 200 then
		tinsert(bil_1, "NhËn cÊp ®é 200 vµ tÊt c¶ c¸c ®iÓm kh¸c/#bilMain_TestGame_v3_C(1)")
	end

	tinsert(bil_1, "Hñy Trang BÞ Khãa/Bil_DelItem")
	tinsert(bil_1, "NhËn bé trang bÞ HKMP Full  /hkMP_full")
	tinsert(bil_1, "NhËn ®¸ Ðp ®å tÝm Full/ShopKT")
	tinsert(bil_1, "Trang bÞ tÝm c¸c lo¹i/dotim")
	tinsert(bil_1, "NhËn bé trang bÞ An Bang/#bilMain_TestGame_v3_TrangBiG(1)")
	tinsert(bil_1, "NhËn bé trang bÞ §Þnh Quèc/#bilMain_TestGame_v3_TrangBiG(2)")
	tinsert(bil_1, "NhËn Vò khÝ xanh/#bilMain_TestGame_v3_TrangBi(1)")
	tinsert(bil_1, "NhËn Trang bÞ xanh/#bilMain_TestGame_v3_TrangBi(2)")
	tinsert(bil_1, "NhËn 500 TiÒn ®ång/#bilMain_TestGame_v3_C(2)")
	tinsert(bil_1, "NhËn ngùa B«n tiªu/#bilMain_TestGame_v3_C(3)")
	tinsert(bil_1, "NhËn Kü n¨ng m«n ph¸i/#bilMain_TestGame_v3SkillFac(0)")
	tinsert(bil_1, "Thay ®æi phe ph¸i/#bilMain_TestGame_v3_C(4)")
	tinsert(bil_1, "NhËn vßng s¸ng vµ danh hiÖu/#bilVongSangDH(0)")
	if GetTong() == "" then
		tinsert(bil_1, "Thµnh lËp Bang héi/#bilMain_TestGame_v3_C(5)")
	end
	tinsert(bil_1, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
--tinsert(bil_1, "111ÙÙÙÙÙÙ/bikeptes")
	return Say("M¸y chñ thö nghiÖm cã nhiÒu tÝnh n¨ng hay vµ hÊp dÉn, ®¹i hiÖp h·y tõ tõ mµ kh¸m ph¸!", getn(bil_1), bil_1)
end



function bikeptes()
AddItem(6,1,2426, 1, 0, 0, 0)

end

function Bil_DelItem()
	return Say("B¹n cã ch¾c muèn <color=red>hñy vËt phÈm<color> chø, h·y suy nghÜ kü!<enter><color=0xffff5f>TÊt c¶ c¸c vËt phÈm ®­îc yªu cÇu hñy sÏ bÞ hñy bá <enter>hoµn toµn bëi hÖ thèng, bÊt kÓ lµ vËt phÈm nµo!", 2, "Ta nghÜ kü råi!/Bil_DelItem_Sure", "Th«i, ta nhÇm!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong   viÖc hñy vËt phÈm!", "bilDisposeConfirm", "OnCancel", 1);
end


function bilDisposeConfirm(nCount)
	local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/del_item_"..date("%d_%m_%Y")..".log", "a");
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Msg2Player("§· hñy vËt phÈm [<color=green>"..strItem.."<color>]")
		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!<enter>§· hñy<color=yellow> "..nCount.."<color> vËt phÈm!");	
end





function bilVongSangDH(bilSel, bilTileID)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 or GetFaction() == "Míi nhËp giang hå " then 
		return Say("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ sö dông tÝnh n¨ng nµy!", 0)
	end
	if bilTileID then
		Title_AddTitle(bilTileID, 2, 10000000)
		Title_ActiveTitle(bilTileID)
		return Msg2Player(bil.C(10,"C¸c h¹ ®· nhËn ®­îc danh hiÖu, xin chóc mõng!"))
	end
	local bilTbVSvaDH = {}
	if bilSel == 1 then 
		for i = 1, getn(_bilTitleTopLvl) do
			tinsert(bilTbVSvaDH, "Danh hiÖu ".._bilTitleTopLvl[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopLvl[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
	elseif bilSel == 2 then 
		for i = 1, getn(_bilTitleTopMoney) do
			tinsert(bilTbVSvaDH, "Danh hiÖu ".._bilTitleTopMoney[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopMoney[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
	elseif bilSel == 4 then 
		tinsert(bilTbVSvaDH, "Danh hiÖu V« song m·nh t­íng §¹i t­íng/#bilVongSangDH(0, 324)")
		tinsert(bilTbVSvaDH, "Danh hiÖu V« song m·nh t­íng Phã t­íng/#bilVongSangDH(0, 325)")
		tinsert(bilTbVSvaDH, "Danh hiÖu V« song m·nh t­íng Thèng lÜnh/#bilVongSangDH(0, 326)")
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
	elseif bilSel == 5 then 
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu Qu¸n qu©n/#bilVongSangDH(0, 204)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu ¸ qu©n/#bilVongSangDH(0, 205)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu h¹ng 3/#bilVongSangDH(0, 206)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu h¹ng t­/#bilVongSangDH(0, 207)")
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
	elseif bilSel == 6 then 
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó Ph­îng T­êng/#bilVongSangDH(0, 153)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó Thµnh §«/#bilVongSangDH(0, 154)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó §¹i Lý/#bilVongSangDH(0, 155)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó BiÖn Kinh/#bilVongSangDH(0, 156)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó T­¬ng D­¬ng/#bilVongSangDH(0, 157)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó D­¬ng Ch©u/#bilVongSangDH(0, 158)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó L©m An/#bilVongSangDH(0, 159)")
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
	else
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Cao thñ/#bilVongSangDH(1)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Phó hé/#bilVongSangDH(2)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP M«n ph¸i/#bilVongSangDH(0,".._bilTitleFaction[GetFaction()][GetSex()].bilTitleID..")")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Tèng Kim/#bilVongSangDH(4)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Liªn ®Êu/#bilVongSangDH(5)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng Bang Chñ chiÕm thµnh/#bilVongSangDH(6)")
		tinsert(bilTbVSvaDH, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
	end
	Say("Chän vßng s¸ng vµ danh hiÖu mµ b¹n muèn!", getn(bilTbVSvaDH), bilTbVSvaDH)
end

function bilMain_TestGame_v3SkillFac(bilSel, bilIDF, bilF, Sel4Set)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local _bil_a = {
		[0] = {{"ThiÕu L©m Ph¸i", 0, "shaolin", 1},{"Thiªn V­¬ng Bang", 1, "tianwang", 3}},
		[1] = {{"§­êng M«n Ph¸i", 2, "tangmen", 3},{"Ngò §éc Gi¸o", 3, "wudu", 2}},
		[2] = {{"Nga My Ph¸i", 4, "emei", 1},{"Thóy Yªn Ph¸i", 5, "cuiyan", 3}},
		[3] = {{"C¸i Bang", 6, "gaibang", 1},{"Thiªn NhÉn Gi¸o", 7, "tianren", 2}},
		[4] = {{"Vâ §ang Ph¸i", 8, "wudang", 1},{"C«n L«n Ph¸i", 9, "kunlun", 3}},
	}
	if bilSel == 2 then
		SetFaction(_bil_a[bilIDF][bilF][3])
		SetCamp(_bil_a[bilIDF][bilF][4])
		SetCurCamp(_bil_a[bilIDF][bilF][4])
		SetLastFactionNumber(_bil_a[bilIDF][bilF][2])
		return bilMain_TestGame_v3SkillFac(((Sel4Set ~= 0) and Sel4Set or 0), GetLastFactionNumber())
	end
	if bilIDF then
		local bil_TranPhai = {273, 36, 48, 75, 252, 114, 130, 150, 166, 275}
		for i = 1, 7 do
			for j = 1, getn(tbAllSkill[GetFaction()][i]) do
				AddMagic(tbAllSkill[GetFaction()][i][j],20)
			end
		end
		for ij = 1, getn(tbAllSkill[GetFaction()][9]) do
			if bilSel == 1 then
				AddMagic(tbAllSkill[GetFaction()][9][ij],1)
			else
				AddMagic(tbAllSkill[GetFaction()][9][ij],20)
			end
		end
		AddMagic(_bilSkill120IDtable[GetLastFactionNumber()][1],20)
		AddMagic(bil_TranPhai[GetLastFactionNumber()+1], 30)
		return Msg2Player(bil.C(10, "NhËn ®­îc bé kü n¨ng m«n ph¸i!"))
	end
	if GetLastFactionNumber() == -1 then
		local bil_1 = {}
		tinsert(bil_1, _bil_a[GetSeries()][1][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 1, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, _bil_a[GetSeries()][2][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 2, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
		return Say("VÞ thiÕu hiÖp vui lßng chän m«n ph¸i muèn gia nhËp!", getn(bil_1), bil_1)
	else
		return bilMain_TestGame_v3SkillFac(((bilSel ~= 0) and bilSel or 0), GetLastFactionNumber())
	end
end

function bilMain_TestGame_v3_TrangBiG(bil_In_1)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {
		{bil_1 = "§Þnh Quèc thanh xa tr­êng sam", bil_2 = {159}, bil_3 = 4},
		{bil_1 = "§Þnh Quèc « xa ph¸t qu¸n", bil_2 = {160}, bil_3 = 6},
		{bil_1 = "§Þnh Quèc xÝch quyªn nhuyÔn ngoa", bil_2 = {161}, bil_3 = 4},
		{bil_1 = "§Þnh Quèc tö ®»ng hé uyÓn", bil_2 = {162}, bil_3 = 4},
		{bil_1 = "§Þnh Quèc ng©n tµm yªu ®¸i", bil_2 = {163}, bil_3 = 4},
		{bil_1 = "An Bang b¨ng tinh th¹ch h¹ng liªn", bil_2 = {164}, bil_3 = 6},
		{bil_1 = "An Bang cóc hoa th¹ch chØ hoµn", bil_2 = {165}, bil_3 = 6},
		{bil_1 = "An Bang ®iÒn hoµng th¹ch ngäc béi", bil_2 = {166}, bil_3 = 6},
		{bil_1 = "An Bang kª huyÕt th¹ch giíi chØ", bil_2 = {167}, bil_3 = 6},
	}
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 6, 9 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "NhËn ®­îc bé trang bÞ An Bang!"))
		elseif bil_In_1 == 2 then
			for bil_l_1 = 1, 5 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "NhËn ®­îc bé trang bÞ §Þnh Quèc!"))
		end
	end
end

function bilMain_TestGame_v3_TrangBi(bil_In_1, bil_nDetailType, bil_nParticularType, bil_W, bil_H, bilSeri)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = 
	{
		{bilName = "KiÕm", bilItem = {0, 0, 1, 3}},{bilName = "§ao", bilItem = {0, 1, 1, 4}},
		{bilName = "Bæng", bilItem = {0, 2, 1, 4}},{bilName = "Th­¬ng", bilItem = {0, 3, 1, 4}},
		{bilName = "Chïy", bilItem = {0, 4, 2, 2}},{bilName = "Song §ao", bilItem = {0, 5, 2, 3}},
		{bilName = "Phi Tiªu", bilItem = {1, 0, 1, 1}},{bilName = "Phi §ao", bilItem = {1, 1, 1, 1}},
		{bilName = "Tô TiÔn", bilItem = {1, 2, 2, 2}},{bilName = "¸o - Nam", bilItem = {2, random(0, 6), 2, 3}},
		{bilName = "¸o - N÷", bilItem = {2, random(7, 13), 2, 3}},{bilName = "NhÉn", bilItem = {3,0, 1, 1}},
		{bilName = "D©y chuyÒn - Nam", bilItem = {4, 1, 2, 1}},{bilName = "D©y chuyÒn - N÷", bilItem = {4, 0, 2, 1}},
		{bilName = "Giµy - Nam", bilItem = {5, random(0, 1), 2, 2}},{bilName = "Giµy - N÷", bilItem = {5, random(2, 3), 2, 2}},
		{bilName = "Th¾t l­ng - Nam", bilItem = {6, 1, 2, 1}},{bilName = "Th¾t l­ng - N÷", bilItem = {6, 0, 2, 1}},
		{bilName = "Mò - Nam", bilItem = {7, random(0, 6), 2, 2}},{bilName = "Mò - N÷", bilItem = {7, random(7, 13), 2, 2}},
		{bilName = "Bao tay - Nam", bilItem = {8, 1, 1, 2}},{bilName = "Bao tay - N÷", bilItem = {8, 0, 1, 2}},
		{bilName = "Ngäc béi - Nam", bilItem = {9, 1, 1, 2}},{bilName = "Ngäc béi - N÷", bilItem = {9, 0, 1, 2}},
	}
	local bil_2, bil_3 = {}, 0
	if bil_nDetailType then
		if bilSeri then
			if CountFreeRoomByWH(bil_W, bil_H) > 0 then
				for i = 1, CountFreeRoomByWH(bil_W, bil_H) do
					-- AddItem(0, bil_nDetailType, bil_nParticularType, 10, bilSeri, 250, 10)
					AddItemEx(0,random(),0,0,bil_nDetailType,bil_nParticularType,10,bilSeri,255,10,10,10,10,10,10,0)
					bil_3 = bil_3 + 1
				end
				return Msg2Player(bil.C(10,"§· nhËn ®­îc "..bil_3.." mãn trang bÞ!"))
			else
				return Talk(1, "", "Hµnh trang cña c¸c h¹ cã vÎ bõa bén qu¸, h·y s¾p xÕp l¹i vµ ®Ó trèng hµnh trang "..bil.C(1,bil_W.."x"..bil_H).."!")
			end
		else
			return Say("Chän hÖ cña mãn trang bÞ!", 6,
				"Trang bÞ hÖ Kim/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 0)",
				"Trang bÞ hÖ Méc/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 1)",
				"Trang bÞ hÖ Thñy/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 2)",
				"Trang bÞ hÖ Háa/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 3)",
				"Trang bÞ hÖ Thæ/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 4)",
				"KÕt thóc ®èi tho¹i!/bil.OnCancel")
		end
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 1, 9 do
				tinsert(bil_2, "Ta muèn lÊy "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
		elseif bil_In_1 == 2 then
			for bil_l_1 = 10, 20 do
				tinsert(bil_2, "Ta muèn lÊy "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang kÕ./#bilMain_TestGame_v3_TrangBi(3)")
		elseif bil_In_1 == 3 then
			for bil_l_1 = 21, getn(bil_1) do
				tinsert(bil_2, "Ta muèn lÊy "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang tr­íc./#bilMain_TestGame_v3_TrangBi(2)")
		end
		tinsert(bil_2, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
		return Say("Chän mãn trang bÞ muèn lÊy!", getn(bil_2), bil_2)
	end
end

function bilMain_TestGame_v3_C(bil_In_1, bil_In_2)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if bil_In_2 then
		SetCamp(bil_In_2)
		SetCurCamp(bil_In_2)
		-- if bil_In_2 == 4 then
			-- SetFaction("")
		-- end
		return Msg2Player(bil.C(10, "Thay ®æi phe ph¸i thµnh c«ng!"))
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			while GetLevel() < 200 do
				AddOwnExp(999999999)
			end
			SetTask(2501, 50000000)
			Msg2Player(bil.C(10, "5 triÖu ®iÓm liªn ®Êu!"))
			AddRepute(99999)
			Msg2Player(bil.C(10, "danh väng lªn 99999 ®iÓm!"))
			SetTask(151, 99999)
			Msg2Player(bil.C(10, "phóc duyªn lªn 99999 ®iÓm!"))
			SetTask(747, 1000000)
			Msg2Player(bil.C(10, "tèng kim lªn 1 triÖu ®iÓm!"))
			AddLeadExp(10000000)
			Msg2Player(bil.C(10, "10 triÖu ®iÓm tµi l·nh ®¹o!"))
			Earn(999999999)
			return Msg2Player(bil.C(10, "tiÒn v¹n lªn 99 ngh×n v¹n l­îng!"))
		elseif bil_In_1 == 2 then
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			return Msg2Player(bil.C(10, " NhËn ®­îc 500 tiÒn ®ång!"))
		elseif bil_In_1 == 3 then
			AddItem(0,10,6,10,1,0,0)
			return Msg2Player(bil.C(10, " NhËn ®­îc B«n tiªu!"))
		elseif bil_In_1 == 4 then
			return Say("Xin chän phe ph¸i muèn chuyÓn ®æi!",6, "T©n Thñ./#bilMain_TestGame_v3_C(0, 0)", "ChÝnh Ph¸i./#bilMain_TestGame_v3_C(0, 1)", "Trung LËp./#bilMain_TestGame_v3_C(0, 3)", "Tµ Ph¸i./#bilMain_TestGame_v3_C(0, 2)", "S¸t Thñ./#bilMain_TestGame_v3_C(0, 4)", "KÕt thóc ®èi tho¹i!/bil.OnCancel")
		elseif bil_In_1 == 5 then
			SetCamp(4); SetCurCamp(4); AddRepute(1000); AddLeadExp(10000000); while(GetLevel() < 100) do AddOwnExp(99999999) end
			SetTask(99,1);
			CreateTong(1)
		end
	end
end
 
function main()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	bilMain_TestGame_v3()
end	









function ShopKT()
	tbOpt =
	{
		"<dec><npc>VÞ kh¸ch quan muèn mua kho¸ng th¹ch lo¹i nµo?",
		"§¸ \"Kho¸ng th¹ch\" hiÖn/StoneShow",
		"§¸ \"Kho¸ng th¹ch\" Èn/StoneHide",
		"KÕt thóc ®èi tho¹i./no"
	}
	CreateTaskSay(tbOpt)
end

function StoneHide()
	tbOpt =
	{
		"<dec><npc>Ta ®· cã s¼n 3 lo¹i ®¸ ë bªn d­íi. Mêi vÞ kh¸ch quan chän lo¹i ®¸ Èn!",
		"Khæng T­íc Nguyªn Th¹ch/#StoneHideLevel1(1)",
		"Phï Dung Nguyªn Th¹ch/#StoneHideLevel2(2)",
		"Chung Nhò Nguyªn Th¹ch/#StoneHideLevel3(3)",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneShow()
	tbOpt =
	{
		"<dec><npc>Ta ®· thu thËp ®­îc 3 lo¹i ®¸ bªn d­íi. Mêi vÞ kh¸ch quan chän lo¹i ®¸ hiÖn!\n<color=red>(§¸ kho¸ng th¹ch ®ång gi¸ 5 xu)<color>",
		"HuyÒn ThiÕt Nguyªn Kho¸ng/#StoneShowNumber(1)",
		"MËt Ng©n Nguyªn Kho¸ng/#StoneShowNumber(2)",
		"Chu Sa Nguyªn Kho¸ng/#StoneShowNumber(3)",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneShowNumber(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 149, _, _,_, "HuyÒn ThiÕt Nguyªn Kho¸ng")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 151, _, _,_, "MËt Ng©n Nguyªn Kho¸ng")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 153, _, _,_, "Chu Sa Nguyªn Kho¸ng")
	end
end

function StoneHideLevel1()
	tbOpt =
	{
		"<dec><npc>Mêi vÞ kh¸ch quang lùa chän thuéc tÝnh cña lo¹i ®¸ Èn nµy!\n<color=red>(§¸ kho¸ng th¹ch ®ång gi¸ 5 xu)<color>",
		"§¸ thuéc tÝnh Èn hÖ \"Kim\"/#StoneHideSeries1(1)",
		"§¸ thuéc tÝnh Èn hÖ \"Méc\"/#StoneHideSeries1(2)",
		"§¸ thuéc tÝnh Èn hÖ \"Thñy\"/#StoneHideSeries1(3)",
		"§¸ thuéc tÝnh Èn hÖ \"Háa\"/#StoneHideSeries1(4)",
		"§¸ thuéc tÝnh Èn hÖ \"Thæ\"/#StoneHideSeries1(5)",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneHideLevel2()
	tbOpt =
	{
		"<dec><npc>Mêi vÞ kh¸ch quang lùa chän thuéc tÝnh cña lo¹i ®¸ Èn nµy!\n<color=red>(§¸ kho¸ng th¹ch ®ång gi¸ 5 xu)<color>",
		"§¸ thuéc tÝnh Èn hÖ \"Kim\"/#StoneHideSeries2(1)",
		"§¸ thuéc tÝnh Èn hÖ \"Méc\"/#StoneHideSeries2(2)",
		"§¸ thuéc tÝnh Èn hÖ \"Thñy\"/#StoneHideSeries2(3)",
		"§¸ thuéc tÝnh Èn hÖ \"Háa\"/#StoneHideSeries2(4)",
		"§¸ thuéc tÝnh Èn hÖ \"Thæ\"/#StoneHideSeries2(5)",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneHideLevel3()
	tbOpt =
	{
		"<dec><npc>Mêi vÞ kh¸ch quang lùa chän thuéc tÝnh cña lo¹i ®¸ Èn nµy!\n<color=red>(§¸ kho¸ng th¹ch ®ång gi¸ 5 xu)<color>",
		"§¸ thuéc tÝnh Èn hÖ \"Kim\"/#StoneHideSeries3(1)",
		"§¸ thuéc tÝnh Èn hÖ \"Méc\"/#StoneHideSeries3(2)",
		"§¸ thuéc tÝnh Èn hÖ \"Thñy\"/#StoneHideSeries3(3)",
		"§¸ thuéc tÝnh Èn hÖ \"Háa\"/#StoneHideSeries3(4)",
		"§¸ thuéc tÝnh Èn hÖ \"Thæ\"/#StoneHideSeries3(5)",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneHideSeries1(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 150, _, 0,_, "Khæng T­íc Nguyªn Th¹ch")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 150, _, 1,_, "Khæng T­íc Nguyªn Th¹ch")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 150, _, 2,_, "Khæng T­íc Nguyªn Th¹ch")
	elseif nSel == 4 then
		BuyItemByXu(5, 6, 1, 150, _, 3,_, "Khæng T­íc Nguyªn Th¹ch")
	elseif nSel == 5 then
		BuyItemByXu(5, 6, 1, 150, _, 4,_, "Khæng T­íc Nguyªn Th¹ch")
	end
end

function StoneHideSeries2(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 152, _, 0,_, "Phï Dung Nguyªn Th¹ch")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 152, _, 1,_, "Phï Dung Nguyªn Th¹ch")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 152, _, 2,_, "Phï Dung Nguyªn Th¹ch")
	elseif nSel == 4 then
		BuyItemByXu(5, 6, 1, 152, _, 3,_, "Phï Dung Nguyªn Th¹ch")
	elseif nSel == 5 then
		BuyItemByXu(5, 6, 1, 152, _, 4,_, "Phï Dung Nguyªn Th¹ch")
	end
end

function StoneHideSeries3(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 154, _, 0,_, "Chung Nhò Nguyªn Th¹ch")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 154, _, 1,_, "Chung Nhò Nguyªn Th¹ch")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 154, _, 2,_, "Chung Nhò Nguyªn Th¹ch")
	elseif nSel == 4 then
		BuyItemByXu(5, 6, 1, 154, _, 3,_, "Chung Nhò Nguyªn Th¹ch")
	elseif nSel == 5 then
		BuyItemByXu(5, 6, 1, 154, _, 4,_, "Chung Nhò Nguyªn Th¹ch")
	end
end

function BuyItemByXu(nCount, nG, nD, nP, nL, nS, nLk, szMsg)
	local nCheck = CalcEquiproomItemCount(4,417,1,-1)
	if nCheck < nCount then
		Talk(1, "no", format("VÞ kh¸ch quan kh«ng mang ®ñ <color=red>%d tiÒn ®ång<color> ®Ó mua vËt phÈm nµy!", nCount))
		return
	end
	
	if not nL then
		nL = -1;
	elseif not nS then
		nS = -1;
	elseif not nLk then
		nLk = -1
	end

	AddItem(nG,nD,nP,nL,nS,nLk)
	ConsumeEquiproomItem(nCount, 4,417,1,-1)
	Msg2Player("B¹n nhËn ®­îc 1 "..szMsg)
end




function dotim()	local tab_Content = {
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"VËt phÈm hæ trî/khoangth",
		"MÆt n¹/manat",
		"Trang bÞ b¹ch kim/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"KiÕm/kiem",
		"§ao/dao",
		"Bæng/bong",
		"Th­¬ng/kick",
		"Chïy/chuy",
		"Song §ao/songdao",
		"Phi Tiªu/phitieu",
		"Phi §ao/phidao",
		"Tô TiÔn/tutien",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"ThÊt B¶o Cµ Sa/aothieulam",
		"Ch©n Vò Th¸nh Y/aovodang",
		"Thiªn NhÉn MËt Trang/aothiennhan",
		"Gi¸ng Sa Bµo/sabao",
		"§­êng Nghª Gi¸p/dng",
		"V¹n L­u Quy T«ng Y/aocaibang",
		"TuyÒn Long Bµo/longbao",
		"Long Tiªu §¹o Y/daoy",
		"Cöu VÜ B¹ch Hå Trang/hotrang",
		"TrÇm H­¬ng Sam/huongsam",
		"TÝch LÞch Kim Phông Gi¸p/kimphung",
		"V¹n Chóng TÒ T©m Y/tamy",
		"L­u Tiªn QuÇn/tienquan",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"Tú L« M·o/lomao",
		"Ngò L·o Qu¸n/laoquan",
		"Tu La Ph¸t KÕt/phatket",
		"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
		"YÓm NhËt Kh«i/nhatkhoi",
		"TrÝch Tinh Hoµn/tinhhoan",
		"¤ Tµm M·o/tammao",
		"Quan ¢m Ph¸t Qu¸n/quanam",
		"¢m D­¬ng V« Cùc Qu¸n/amduong",
		"HuyÒn Tª DiÖn Tr¸o/dientrao",
		"Long HuyÕt §Çu Hoµn/longhuyet",
		"Long L©n Kh«i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Phông TriÓn SÝ/triensi",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
		"Thiªn Tµm Hé UyÓn/houyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thiªn Tµm Yªu §¸i/thientamyeu",
		"B¹ch Kim Yªu §¸i/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
		"Thiªn Tµm Ngoa/thientam",
		"Kim Lò Hµi/kimlu",
		"Phi Phông Ngoa/phiphung",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
function khoangth()
local tab_Content = {
		"HuyÒn tinh/huytin",
		"kho¸ng th¹ch/kdb",
		"S¸t thñ gi¶n/stg",
		"Thñy tinh/thuyti",
		"Phóc duyªn/phucd",
		"KÕt thóc."
	}
	Say(" Muèn lÊy g× th× click ! ", getn(tab_Content), tab_Content);
end;

function huytin()
AddItem(6,1,147,1,0,0,0) 
AddItem(6,1,147,2,0,0,0) 
AddItem(6,1,147,3,0,0,0) 
AddItem(6,1,147,4,0,0,0) 
AddItem(6,1,147,5,0,0,0) 
AddItem(6,1,147,6,0,0,0) 
AddItem(6,1,147,7,0,0,0) 
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,9,0,0,0) 
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end


function stg()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 		
end

function thuyti()
AddEventItem(239) 
AddEventItem(240) 
AddEventItem(241) 		
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end


















function hkMP_full()
 local tab_Content = {
  "Rêi khái/no",
  "ThiÕu L©m quyÒn/sethkmp_tlq",
  "ThiÕu L©m c«n/sethkmp_tlb",
  "ThiÕu L©m ®ao/sethkmp_tld",
  "Thiªn V­¬ng chïy/#sethkmp1(4)",
  "Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
  "Thiªn V­¬ng ®ao/sethkmp_tvd",
  "Nga My kiÕm/sethkmp_nmk",
  "Nga My ch­ëng/sethkmp_nmc",
  "Nga My buff/#sethkmp1(9)",
  "Thóy Yªn ®ao/sethkmp_ty1",
  "Thóy Yªn song ®ao/sethkmp_ty2",
  "Ngñ §éc ch­ëng/#sethkmp1(12)",
  "Ngñ §éc ®ao/sethkmp_ndd",
  "Ngñ §éc bïa/sethkmp_ndb",
  "Trang sau/sethkmp2",
  
 }
 Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
 local tab_Content = {
  "Rêi khái/no",
  "§­êng M«n phi ®ao/#sethkmp1(15)",
  "§­êng M«n tô tiÔn/sethkmp_dmno",
  "§­êng M«n phi tiªu/#sethkmp1(17)",
  "§­êng M«n bÉy/sethkmp_dmb",
  "C¸i Bang rång/sethkmp_cbr",
  "C¸i Bang bæng/#sethkmp1(20)",
  "Thiªn NhÉn kÝch/sethkmp_tnk",
  "Thiªn NhÉn ®ao/sethkmp_tnd",
  "Thiªn NhÉn bïa/sethkmp_tnb",
  "Vâ §ang khÝ /sethkmp_vdkhi",
  "Vâ §ang kiÕm/sethkmp_vdk",
  "C«n L«n ®ao/sethkmp_cld",
  "C«n L«n kiÕm/sethkmp_clc",
  "C«n L«n bïa/#sethkmp1(28)",
 }
 Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end


function sethkmp1(nId)
 for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end
---thieu lam
function sethkmp_tlq()
--AddGoldItem(0,0)--monglong
AddGoldItem(0,1)--monglong
AddGoldItem(0,2)--monglong
AddGoldItem(0,3)--monglong
AddGoldItem(0,4)--monglong
AddGoldItem(0,5)--monglong
AddGoldItem(0,769)--monglong
end

function sethkmp_tlb()
AddGoldItem(0,6)--phuc ma
AddGoldItem(0,7)--phuc ma
AddGoldItem(0,8)--phuc ma
AddGoldItem(0,9)--phuc ma
AddGoldItem(0,10)--phuc ma
AddGoldItem(0,771)--phuc ma
end
function sethkmp_tld()
AddGoldItem(0,11)--tu khong
AddGoldItem(0,12)--tu khong
AddGoldItem(0,13)--tu khong
AddGoldItem(0,14)--tu khong
AddGoldItem(0,15)--tu khong
AddGoldItem(0,776)--tu khong
end
-----------------
---Thien vuong
---------------------
function sethkmp_tvd()
AddGoldItem(0,26)--
AddGoldItem(0,27)--
AddGoldItem(0,28)--
AddGoldItem(0,29)--
AddGoldItem(0,30)--
AddGoldItem(0,793)--
end
---------------------------
--ngamy
function sethkmp_nmk()
AddGoldItem(0,31)--tu khong
AddGoldItem(0,32)--tu khong
AddGoldItem(0,33)--tu khong
AddGoldItem(0,34)--tu khong
AddGoldItem(0,35)--tu khong
AddGoldItem(0,796)--tu khong
end

function sethkmp_nmc()
AddGoldItem(0,36)--
AddGoldItem(0,37)--
AddGoldItem(0,38)--
AddGoldItem(0,39)--
AddGoldItem(0,40)--
AddGoldItem(0,801)--
end
--------------------------
------thuy yen don dao
------------------------
function sethkmp_ty1()
AddGoldItem(0,46)--tu khong
AddGoldItem(0,47)--tu khong
AddGoldItem(0,48)--tu khong
AddGoldItem(0,49)--tu khong
AddGoldItem(0,50)--tu khong
AddGoldItem(0,811)--tu khong
end

function sethkmp_ty2()
AddGoldItem(0,51)--tu khong
AddGoldItem(0,52)--tu khong
AddGoldItem(0,53)--tu khong
AddGoldItem(0,54)--tu khong
AddGoldItem(0,55)--tu khong
AddGoldItem(0,816)--tu khong
end
-----------------------
------------ngu doc dao--------
function sethkmp_ndd()
AddGoldItem(0,61)--tu khong
AddGoldItem(0,62)--tu khong
AddGoldItem(0,63)--tu khong
AddGoldItem(0,64)--tu khong
AddGoldItem(0,65)--tu khong
AddGoldItem(0,829)--tu khong
end

function sethkmp_ndb()
AddGoldItem(0,66)--tu khong
AddGoldItem(0,67)--tu khong
AddGoldItem(0,68)--tu khong
AddGoldItem(0,69)--tu khong
AddGoldItem(0,70)--tu khong
AddGoldItem(0,834)--tu khong
end

--------------
----------Duong mon no


function sethkmp_dmno()
AddGoldItem(0,76)--tu khong
AddGoldItem(0,77)--tu khong
AddGoldItem(0,78)--tu khong
AddGoldItem(0,79)--tu khong
AddGoldItem(0,80)--tu khong
AddGoldItem(0,843)--tu khong
end

function sethkmp_dmb()
AddGoldItem(0,86)--tu khong
AddGoldItem(0,87)--tu khong
AddGoldItem(0,88)--tu khong
AddGoldItem(0,89)--tu khong
AddGoldItem(0,90)--tu khong
AddGoldItem(0,854)--tu khong
end

-----------------------
-------------cai bang rong--------------
function sethkmp_cbr()
AddGoldItem(0,91)--tu khong
AddGoldItem(0,92)--tu khong
AddGoldItem(0,93)--tu khong
AddGoldItem(0,94)--tu khong
AddGoldItem(0,95)--tu khong
AddGoldItem(0,855)--tu khong
end

-----------------------
-----------thien nhan thuong
function sethkmp_tnk()
AddGoldItem(0,101)--tu khong
AddGoldItem(0,102)--tu khong
AddGoldItem(0,103)--tu khong
AddGoldItem(0,104)--tu khong
AddGoldItem(0,105)--tu khong
AddGoldItem(0,868)--tu khong
end

function sethkmp_tnd()
AddGoldItem(0,106)--tu khong
AddGoldItem(0,107)--tu khong
AddGoldItem(0,108)--tu khong
AddGoldItem(0,109)--tu khong
AddGoldItem(0,110)--tu khong
AddGoldItem(0,874)--tu khong
end
function sethkmp_tnb()
AddGoldItem(0,111)--tu khong
AddGoldItem(0,112)--tu khong
AddGoldItem(0,113)--tu khong
AddGoldItem(0,114)--tu khong
AddGoldItem(0,115)--tu khong
AddGoldItem(0,876)--tu khong
end
--------------
----------vo dang nc-----------
function sethkmp_vdkhi()
AddGoldItem(0,116)--tu khong
AddGoldItem(0,117)--tu khong
AddGoldItem(0,118)--tu khong
AddGoldItem(0,119)--tu khong
AddGoldItem(0,120)--tu khong
AddGoldItem(0,881)--tu khong
end

function sethkmp_vdk()
AddGoldItem(0,121)--tu khong
AddGoldItem(0,122)--tu khong
AddGoldItem(0,123)--tu khong
AddGoldItem(0,124)--tu khong
AddGoldItem(0,125)--tu khong
AddGoldItem(0,888)--tu khong
end
---------------------

-----------con lon---
function sethkmp_cld()
AddGoldItem(0,126)--tu khong
AddGoldItem(0,127)--tu khong
AddGoldItem(0,128)--tu khong
AddGoldItem(0,129)--tu khong
AddGoldItem(0,130)--tu khong
AddGoldItem(0,891)--tu khong
end
function sethkmp_clc()
AddGoldItem(0,131)--tu khong
AddGoldItem(0,132)--tu khong
AddGoldItem(0,133)--tu khong
AddGoldItem(0,134)--tu khong
AddGoldItem(0,135)--tu khong
AddGoldItem(0,898)--tu khong
end