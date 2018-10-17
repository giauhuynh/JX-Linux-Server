Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")

_bilTestGameContent =
{
	"<color=Orange>LÔ Quan: <color>",
	"Ta biÕt råi!/OnCancel",
	"Th«i kh«ng cÇn, sau nµy ch¾c ch¾n sÏ ®Õn th¨m ngµi!/OnCancel",
}

function bilTestGameMain()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	-- if GetTask(5999) == 0 then 
		-- return Say(_bilTestGameContent[1].."§Ó nhËn c¸c phÇn th­ëng hç trî yªu cÇu ®¹i  hiÖp ph¶i ®Õn gÆp "..bC("ora", "T©n Thñ Quan").." ®Ó nhËn gãi "..bC("gre","Hç trî t©nthñ").." tr­íc, l·o Êy cã tr¸ch nhiÖm hç trî c¸c hËu bèi  trªn hµnh tr×nh b«n tÈu giang hå, sau ®ã h·y ®Õn ®©y gÆp ta!", 1, _bilTestGameContent[2])
	-- end
	local bilTbDialog = {}
	tinsert(bilTbDialog, "Ta muèn nhËn trang bÞ Hoµng Kim/#bilTrangBiHoangKim(0)")
	tinsert(bilTbDialog, "Ta muèn nhËn trang bÞ Xanh/#bilTrangBiXanh(0)")
	tinsert(bilTbDialog, "Ta muèn nhËn §iÓm vµ kinh nghiÖm/#bilPointAndExp(0)")
	tinsert(bilTbDialog, "Ta muèn nhËn Kü n¨ng M«n Ph¸i/#bilSkillFac(0)")
	tinsert(bilTbDialog, "Ta muèn nhËn VËt phÈm/#bilVatPham(0)")
	tinsert(bilTbDialog, "Ta muèn nhËn c¸c thÇn M·/#bilThanMa(0)")
	tinsert(bilTbDialog, "Ta muèn thµnh lËp Bang héi/#bilBangHoi(0)")
	tinsert(bilTbDialog, "Ta muèn nhËn vßng s¸ng vµ danh hiÖu/#bilVongSangDH(0)")
	tinsert(bilTbDialog, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."M¸y chñ ®ang trong qu¸ tr×nh Open Test, Ta  lµ ng­êi phô tr¸ch ph©n ph¸t toµn bé c¸c phÇn th­ëng,c¸c vËt phÈm theo yªu cÇu cña c¸c nh©n sÜ giang hå,  vÞ ®¹i hiÖp nµy cã ph¶i v× viÖc nµy mµ ®Õn ®©y kh«ng?", getn(bilTbDialog), bilTbDialog)
end

function bilSkillFac(bilSel, bilIDF, bilF)
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
		return bilSkillFac(1, GetLastFactionNumber())
	end
	if bilIDF then
		for i = 1, 7 do
			for j = 1, getn(tbAllSkill[GetFaction()][i]) do
				AddMagic(tbAllSkill[GetFaction()][i][j],20)
			end
		end
		for ij = 1, getn(tbAllSkill[GetFaction()][9]) do
			AddMagic(tbAllSkill[GetFaction()][9][ij],20)
		end
		AddMagic(_bilSkill120IDtable[GetLastFactionNumber()][1],20)
		return Msg2Player(bC(1, "NhËn ®­îc bé kü n¨ng m«n ph¸i!"))
	end
	if GetLastFactionNumber() == -1 then
		local bil_1 = {}
		tinsert(bil_1, _bil_a[GetSeries()][1][1].."/#bilSkillFac(2, "..GetSeries()..", 1)")
		tinsert(bil_1, _bil_a[GetSeries()][2][1].."/#bilSkillFac(2, "..GetSeries()..", 2)")
		tinsert(bil_1, "Quay l¹i/bilTestGameMain")
		tinsert(bil_1, _bilTestGameContent[3])
		return Say(_bilTestGameContent[1].."VÞ thiÕu hiÖp vui lßng chän m«n ph¸i muèn gia nhËp!", getn(bil_1), bil_1)
	else
		return bilSkillFac(1, GetLastFactionNumber())
	end
end

function bilVongSangDH(bilSel, bilTileID)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 then return bilNeedJoinFac() end
	if bilTileID then
		Title_AddTitle(bilTileID, 2, 10000000)
		Title_ActiveTitle(bilTileID)
		return Msg2Player(bC(1,"C¸c h¹ ®· nhËn ®­îc danh hiÖu, xin chóc mõng!"))
	end
	local bilTbVSvaDH = {}
	if bilSel == 1 then 
		for i = 1, getn(_bilTitleTopLvl) do
			tinsert(bilTbVSvaDH, "Danh hiÖu ".._bilTitleTopLvl[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopLvl[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 2 then 
		for i = 1, getn(_bilTitleTopMoney) do
			tinsert(bilTbVSvaDH, "Danh hiÖu ".._bilTitleTopMoney[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopMoney[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 4 then 
		tinsert(bilTbVSvaDH, "Danh hiÖu V« song m·nh t­íng §¹i t­íng/#bilVongSangDH(0, 324)")
		tinsert(bilTbVSvaDH, "Danh hiÖu V« song m·nh t­íng Phã t­íng/#bilVongSangDH(0, 325)")
		tinsert(bilTbVSvaDH, "Danh hiÖu V« song m·nh t­íng Thèng lÜnh/#bilVongSangDH(0, 326)")
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 5 then 
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu Qu¸n qu©n/#bilVongSangDH(0, 204)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu ¸ qu©n/#bilVongSangDH(0, 205)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu h¹ng 3/#bilVongSangDH(0, 206)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Vâ l©m liªn ®Êu h¹ng t­/#bilVongSangDH(0, 207)")
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 6 then 
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó Ph­îng T­êng/#bilVongSangDH(0, 153)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó Thµnh §«/#bilVongSangDH(0, 154)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó §¹i Lý/#bilVongSangDH(0, 155)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó BiÖn Kinh/#bilVongSangDH(0, 156)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó T­¬ng D­¬ng/#bilVongSangDH(0, 157)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó D­¬ng Ch©u/#bilVongSangDH(0, 158)")
		tinsert(bilTbVSvaDH, "Danh hiÖu Th¸i thó L©m An/#bilVongSangDH(0, 159)")
		tinsert(bilTbVSvaDH, "Quay l¹i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	else
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Cao thñ/#bilVongSangDH(1)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Phó hé/#bilVongSangDH(2)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP M«n ph¸i/#bilVongSangDH(0,".._bilTitleFaction[GetFaction()][GetSex()].bilTitleID..")")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Tèng Kim/#bilVongSangDH(4)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng TOP Liªn ®Êu/#bilVongSangDH(5)")
		tinsert(bilTbVSvaDH, "Ta thö vßng s¸ng Bang Chñ chiÕm thµnh/#bilVongSangDH(6)")
		tinsert(bilTbVSvaDH, "Quay l¹i/bilTestGameMain")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	end
	Say(_bilTestGameContent[1].."§­îc sù ñy nhiÖm cña §éc C« KiÕm, ta sÏ ph©nph¸t cho c¸c h¹ bÊt cø lo¹i danh hiÖu nµo theo yªu   cÇu, nh­ng nã kh«ng ®­îc l­u khi c¸c h¹ rêi m¹ng Vßngs¸ng vµ Danh hiÖu sÏ mÊt c¸c h¹ cã thÓ nhËn l¹i, c¸c hiÖp kh¸ch ®­îc Vinh danh thËt sù míi cã thÓ gi÷ nã  trong kho¶n thêi gian dµi, vËy c¸c h¹ cÇn L·o gióp <enter>cho Danh hiÖu g× nµo?", getn(bilTbVSvaDH), bilTbVSvaDH)
end

function bilThanMa(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if bilSel == 1 then AddItem(0,10,5,6,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"¤ V©n §¹p TuyÕt"))
	elseif bilSel == 2 then AddItem(0,10,5,7,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"XÝch Thè"))
	elseif bilSel == 3 then AddItem(0,10,5,8,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"TuyÖt ¶nh"))
	elseif bilSel == 4 then AddItem(0,10,5,9,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"§Ých L«"))
	elseif bilSel == 5 then AddItem(0,10,5,10,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"ChiÕu D¹ Ngäc S­ Tö"))
	elseif bilSel == 6 then AddItem(0,10,6,10,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"B«n Tiªu"))
	elseif bilSel == 7 then AddItem(0,10,33,10,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"[Liªn §Êu] B«n Tiªu"))
	elseif bilSel == 8 then AddItem(0,10,8,10,0,0) return Msg2Player(bC(1,"§· nhËn ®­îc thÇn m· ")..bC(2,"Phi V©n"))
	end
	bilTbThanMa = {}
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· [Liªn §Êu] B«n Tiªu/#bilThanMa(7)")
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· B«n Tiªu/#bilThanMa(6)")
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· Phi V©n/#bilThanMa(8)")
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· ChiÕu D¹ Ngäc S­ Tö/#bilThanMa(5)")
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· §Ých L«/#bilThanMa(4)")
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· TuyÖt ¶nh/#bilThanMa(3)")
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· XÝch Thè/#bilThanMa(2)")
	tinsert(bilTbThanMa, "Ta muèn thö thÇn m· ¤ V©n §¹p TuyÕt/#bilThanMa(1)")
	tinsert(bilTbThanMa, "Quay l¹i/bilTestGameMain")
	tinsert(bilTbThanMa, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."Chç cña L·o cã 1 sè chiÕn m· mµ thiªn h¹ <enter>h»ng mong ­íc trong tay cña §éc c« kiÕm chñ, ch¼ng <enter>hay c¸c h¹ cÇn lo¹i thÇn m· nµo?", getn(bilTbThanMa), bilTbThanMa)
end

function bilTrangBiXanh(bilSel, nDetailType, nParticularType, W, H, bilSeri)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bilTbTrangBiXanh, bilNumLoop = {}, 0
	if nDetailType then
		if bilSeri then
			if CountFreeRoomByWH(W, H) > 0 then
				for i = 1, CountFreeRoomByWH(W, H) do
					-- AddItem(0, nDetailType, nParticularType, 10, bilSeri, 139, 10)
					AddItem(0, nDetailType, nParticularType, 10, bilSeri, 250, 10)
					bilNumLoop = bilNumLoop + 1
				end
				return Msg2Player(bC(1,"§· nhËn ®­îc "..bC(2,bilNumLoop).." mãn trang bÞ xanh, c¸c h¹ cã yªu cÇu g× thªm kh«ng!"))
			else
				return Talk(1, "", _bilTestGameContent[1].."Hµnh trang cña c¸c h¹ cã vÎ bõa bén qu¸, h·y s¾p xÕp l¹i vµ ®Ó trèng hµnh trang "..bC(1,W.."x"..H).."!")
			end
		else
			return Say(_bilTestGameContent[1].."C¸c h¹ cã thÓ chän ngò hµnh mµ m×nh cÇn!", 7, 
				"Trang bÞ HÖ Kim/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 0)",
				"Trang bÞ HÖ Méc/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 1)",
				"Trang bÞ HÖ Thñy/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 2)",
				"Trang bÞ HÖ Háa/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 3)",
				"Trang bÞ HÖ Thæ/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 4)",
				"Quay l¹i!/bilTestGameMain",
				_bilTestGameContent[3]
				)
		end
	end
	local bilTbItemXanh = 
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
	if bilSel <= 0 or bilSel == nil then
		tinsert(bilTbTrangBiXanh, "Ta muèn lÊy Vò KhÝ/#bilTrangBiXanh(1)")
		for j = 10, 20 do
			tinsert(bilTbTrangBiXanh, "Ta muèn lÊy "..bilTbItemXanh[j].bilName.."/#bilTrangBiXanh(0,"..bilTbItemXanh[j].bilItem[1]..", "..bilTbItemXanh[j].bilItem[2]..","..bilTbItemXanh[j].bilItem[3]..","..bilTbItemXanh[j].bilItem[4]..")")
		end
		tinsert(bilTbTrangBiXanh, "Trang KÕ/#bilTrangBiXanh(2)")
		tinsert(bilTbTrangBiXanh, "Quay l¹i/bilTestGameMain")
		tinsert(bilTbTrangBiXanh, _bilTestGameContent[3])
	elseif bilSel == 1 then
		for i = 1, 9 do
			tinsert(bilTbTrangBiXanh, "Ta muèn lÊy "..bilTbItemXanh[i].bilName.."/#bilTrangBiXanh(0,"..bilTbItemXanh[i].bilItem[1]..", "..bilTbItemXanh[i].bilItem[2]..","..bilTbItemXanh[i].bilItem[3]..","..bilTbItemXanh[i].bilItem[4]..")")
		end
		tinsert(bilTbTrangBiXanh, "Quay l¹i/#bilTrangBiXanh(0)")
		tinsert(bilTbTrangBiXanh, _bilTestGameContent[3])
	elseif bilSel == 2 then
		for l = 21, getn(bilTbItemXanh) do
			tinsert(bilTbTrangBiXanh, "Ta muèn lÊy "..bilTbItemXanh[l].bilName.."/#bilTrangBiXanh(0,"..bilTbItemXanh[l].bilItem[1]..", "..bilTbItemXanh[l].bilItem[2]..","..bilTbItemXanh[l].bilItem[3]..","..bilTbItemXanh[l].bilItem[4]..")")
		end
		tinsert(bilTbTrangBiXanh, "Trang Tr­íc/#bilTrangBiXanh(0)")
		tinsert(bilTbTrangBiXanh, _bilTestGameContent[3])
	end
	Say(_bilTestGameContent[1].."Haha, ë chç cña L·o cã rÊt nhiÒu c¸c trang  bÞ tõ t©n thñ cho ®Õn cao thñ, v« vµng c¸c thuéc tÝnh©m d­¬ng ngò hµnh cña trêi ®Êt, ch¼ng hay vÞ ®¹i hiÖp®©y cÇn tíi thÇn binh nµo?", getn(bilTbTrangBiXanh), bilTbTrangBiXanh)
end

function bilBangHoi(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 then return bilNeedJoinFac() end
	local bilTbBangHoi = {}
	if bilSel == 1 then SetCamp(4); SetCurCamp(4); AddRepute(100000); AddLeadExp(10000000); AddEventItem(195); Earn(1000000); while(GetLevel() < 100) do AddOwnExp(99999999) end return Msg2Player(bC(1, "C¸c h¹ ®· héi tô ®ñ c¸c tiªu chuÈncña mét bang chñ, h·y tiÕn hµnh thµnh lËp bang héi vµ dÉn d¾t c¸c anh em cña m×nh ®i nµo!")) end
	if bilSel == 2 then local tongname = GetTong(); if tongname ~= "" or tongname == nil then return Msg2Player(bC(2, "Ch¼ng ph¶i c¸c h¹ ®· cã bang héi  råi sao!")) end if (GetCash() >= 1000000) then Pay(1000000); DelItem(195); SetTask(99,1); CreateTong(1); else return Msg2Player("C¸c h¹ vÉn ch­a ®ñ ®iÒu kiÖn ®Ó t¹o bang héi, h·y nhËn lÊy ®iÒu kiÖn ë lùa chän phÝa trªn!") end return Msg2Player(bC(1, "C¸c h¹ ®· tiÕn hµnh t¹o lËp bang  héi cho riªng m×nh, b©y giê h·y b¾t tay vµ x©y dùng bang vµ dÉn d¾t c¸c anh em cña m×nh ®i ®o¹t thµnh c­íp boss, x©y dùng thµnh tr× nµo!")) end
	tinsert(bilTbBangHoi, "Ta muèn nhËn ®iÒu kiÖn ®Ó t¹o Bang Héi/#bilBangHoi(1)")
	tinsert(bilTbBangHoi, "Ta muèn T¹o lËp Bang Héi/#bilBangHoi(2)")
	tinsert(bilTbBangHoi, "Quay l¹i/bilTestGameMain")
	tinsert(bilTbBangHoi, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."L·o sÏ hç trî cho c¸c h¹ trong viÖc t¹o lËp bang, ch¼ng hay c¸c h¹ ®· s½n sµng ch­a?", getn(bilTbBangHoi), bilTbBangHoi)
end

function bilVatPham(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bilVatPhamC = {}
	if bilSel > 0 then if CalcFreeItemCellCount() < 3 then return Talk(1, "", _bilTestGameContent[1].."§¹i hiÖp h·y s¾p xÕp l¹i hµnh trang cña m×nh ®i ®·, nh×n bõa bén qu¸!") end end
	if bilSel == 1 then Earn(100000000); return Msg2Player(bC("yel", "§· nhËn ®­îc 10.000 V¹n l­îng"))
	elseif bilSel == 2 then AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); return Msg2Player(bC("yel", "§· nhËn ®­îc 1000 TiÒn ®ång"))
	elseif bilSel == 3 then AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); return Msg2Player(bC("yel", "§· nhËn ®­îc 1 Kim nguyªn b¶o"))
	elseif bilSel == 4 then AddItem(4,238,0,0,0,0,0);AddItem(4,239,0,0,0,0,0);AddItem(4,240,0,0,0,0,0); return Msg2Player(bC("yel", "§· nhËn ®­îc 1 bé Thñy tinh"))
	-- elseif bilSel == 5 then AddStackItem(50,6,1,147,10,0,0,0,0); return Msg2Player(bC("yel", "§· nhËn ®­îc 50 viªn HuyÒn tinh cÊp 10"))
	-- elseif bilSel == 6 then AddStackItem(50,6,1,149,10,0,0,0,0);AddStackItem(50,6,1,151,10,0,0,0,0);AddStackItem(50,6,1,153,10,0,0,0,0); return Msg2Player(bC("yel", "§· nhËn ®­îc 1 bé ®¸ hiÖn"))
	-- elseif bilSel == 7 then AddStackItem(50,6,1,150,10,0,0,0,0);AddStackItem(50,6,1,152,10,0,0,0,0);AddStackItem(50,6,1,154,10,0,0,0,0); return Msg2Player(bC("yel", "§· nhËn ®­îc 1 bé ®¸ Èn"))
	-- elseif bilSel == 8 then if GetLastFactionNumber() == -1 then return bilNeedJoinFac() end AddItem(6,1,2424,10,0,0,0,0);AddItem(6,1,2424,10,0,0,0,0);AddItem(6,1,2424,10,0,0,0,0);AddItem(6,1,2425,10,0,0,0,0); return Msg2Player(bC("yel", "§· nhËn ®­îc bé <§¹i thµnh bÝ kÝp> cÊp 90 vµ 120"))
	end
	tinsert(bilVatPhamC, "Ta muèn nhËn 10.000 V¹n l­îng/#bilVatPham(1)")
	tinsert(bilVatPhamC, "Ta muèn nhËn 1000 TiÒn ®ång/#bilVatPham(2)")
	tinsert(bilVatPhamC, "Ta muèn nhËn 10 Kim nguyªn b¶o/#bilVatPham(3)")
	tinsert(bilVatPhamC, "Ta muèn nhËn 1 bé Thñy tinh/#bilVatPham(4)")
	-- tinsert(bilVatPhamC, "Ta muèn nhËn bé <§¹i thµnh bÝ kÝp> cÊp 90 vµ 120/#bilVatPham(8)")
	-- tinsert(bilVatPhamC, "Ta muèn nhËn 50 viªn HuyÒn tinh cÊp 10/#bilVatPham(5)")
	-- tinsert(bilVatPhamC, "Ta muèn nhËn 1 bé ®¸ <hiÖn> kh¶m ®å/#bilVatPham(6)")
	-- tinsert(bilVatPhamC, "Ta muèn nhËn 1 bé ®¸ <Èn> kh¶m ®å/#bilVatPham(7)")
	tinsert(bilVatPhamC, "Quay l¹i/bilTestGameMain")
	tinsert(bilVatPhamC, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."C¸c vËt phÈm ë chç cña L·o v« cïng phong phó, ch¼ng hay vÞ ®¹i hiÖp cÇn lÊy thø g×?", getn(bilVatPhamC), bilVatPhamC)
end

function bilPointAndExp(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bilTbPointAndExp = {}
	if bilSel == 1 then 
		local bilLevelE = 199
		if GetLevel() < 120 then
			bilLevelE = 120
		elseif GetLevel() < 150 then
			bilLevelE = 150
		elseif GetLevel() < 180 then
			bilLevelE = 180
		elseif GetLevel() < 199 then
			bilLevelE = 199
		end
		while (GetLevel() < bilLevelE) do 
			AddOwnExp(800000000)
		end
		return Msg2Player(bC(1, "§· nhËn ®­îc ®¼ng cÊp: "..bilLevelE))
	-- elseif bilSel == 2 then AddOwnExp(200000000); return Msg2Player(bC("yel", "§· nhËn ®­îc 200 triÖu Kinh nghiÖm"))
	elseif bilSel == 3 then AddRepute(100000); return Msg2Player(bC("yel", "§· nhËn ®­îc 100.000 ®iÓm Danh Väng"))
	elseif bilSel == 4 then SetTask(151, GetTask(151) + 100000); return Msg2Player(bC("yel", "§· nhËn ®­îc 100.000 ®iÓm Phóc Duyªn"))
	elseif bilSel == 5 then SetTask(2501, GetTask(2501) + 100000); return Msg2Player(bC("yel", "§· nhËn ®­îc 100.000 ®iÓm Vinh Dù"))
	elseif bilSel == 6 then SetTask(747, GetTask(747) + 1000000); return Msg2Player(bC("yel", "§· nhËn ®­îc 1 triÖu ®iÓm Tèng kim"))
	elseif bilSel == 7 then AddContribution(100000); return Msg2Player(bC("yel", "§· nhËn ®­îc 100.000 §iÓm cèng hiÕn bang héi"))
	elseif bilSel == 8 then AddLeadExp(10000000); return Msg2Player(bC("yel", "§· nhËn ®­îc 10 triÖu §iÓm Tµi l·nh ®¹o"))
	elseif bilSel == 9 then SetTireTime(36000); return Msg2Player(bC("yel", "§· nhËn ®­îc 10 giê thêi gian ®· Online"))
	end
	tinsert(bilTbPointAndExp, "Ta muèn nhËn ®iÓm Kinh NghiÖm/#bilPointAndExp(1)")
	-- tinsert(bilTbPointAndExp, "Ta muèn nhËn 200 triÖu ®iÓm Kinh nghiÖm/#bilPointAndExp(2)")
	tinsert(bilTbPointAndExp, "Ta muèn nhËn 100.000 ®iÓm Danh väng/#bilPointAndExp(3)")
	tinsert(bilTbPointAndExp, "Ta muèn nhËn 100.000 ®iÓm Phóc duyªn/#bilPointAndExp(4)")
	tinsert(bilTbPointAndExp, "Ta muèn nhËn 100.000 ®iÓm Vinh dù/#bilPointAndExp(5)")
	tinsert(bilTbPointAndExp, "Ta muèn nhËn 1 triÖu ®iÓm Tèng kim/#bilPointAndExp(6)")
	tinsert(bilTbPointAndExp, "Ta muèn nhËn 100.000 ®iÓm cèng hiÕn bang héi/#bilPointAndExp(7)")
	tinsert(bilTbPointAndExp, "Ta muèn nhËn 10 triÖu ®iÓm tµi l·nh ®¹o/#bilPointAndExp(8)")
	tinsert(bilTbPointAndExp, "Ta muèn nhËn 10 giê thêi gian ®· Online/#bilPointAndExp(9)")
	tinsert(bilTbPointAndExp, "Quay l¹i/bilTestGameMain")
	tinsert(bilTbPointAndExp, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."ë ®©y ta cã rÊy nhiÒu lo¹i ®iÓm, ch¼ng hay  vÞ ®¹i hiÖp ®©y cÇn ta gióp cho viÖc g× nhØ?", getn(bilTbPointAndExp), bilTbPointAndExp)
end

function bilTrangBiHoangKim(bilSel, bilID, bilLoop)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local _bil_a = 
	{
		{bil_1 = "Nhu T×nh tuÖ t©m ngäc béi", bil_2 = {193}, bil_3 = 4},
		{bil_1 = "Nhu T×nh phông nghi giíi chØ", bil_2 = {192}, bil_3 = 4},
		{bil_1 = "Nhu T×nh thôc n÷ h¹ng liªn", bil_2 = {191}, bil_3 = 4},
		{bil_1 = "Nhu T×nh c©n quèc nghª th­êng", bil_2 = {190}, bil_3 = 6},
		{bil_1 = "HiÖp Cèt t×nh ý kÕt", bil_2 = {189}, bil_3 = 6},
		{bil_1 = "HiÖp Cèt ®an t©m giíi", bil_2 = {188}, bil_3 = 4},
		{bil_1 = "HiÖp Cèt ®a t×nh hoµn", bil_2 = {187}, bil_3 = 4},
		{bil_1 = "HiÖp Cèt thuyÕt huyÕt sam", bil_2 = {186}, bil_3 = 4},
		{bil_1 = "§Þnh Quèc thanh xa tr­êng sam", bil_2 = {159}, bil_3 = 4},
		{bil_1 = "§Þnh Quèc « xa ph¸t qu¸n", bil_2 = {160}, bil_3 = 6},
		{bil_1 = "§Þnh Quèc xÝch quyªn nhuyÔn ngoa", bil_2 = {161}, bil_3 = 4},
		{bil_1 = "§Þnh Quèc tö ®»ng hé uyÓn", bil_2 = {162}, bil_3 = 4},
		{bil_1 = "§Þnh Quèc ng©n tµm yªu ®¸i", bil_2 = {163}, bil_3 = 4},
		{bil_1 = "An Bang b¨ng tinh th¹ch h¹ng liªn", bil_2 = {164}, bil_3 = 6},
		{bil_1 = "An Bang cóc hoa th¹ch chØ hoµn", bil_2 = {165}, bil_3 = 6},
		{bil_1 = "An Bang ®iÒn hoµng th¹ch ngäc béi", bil_2 = {166}, bil_3 = 6},
		{bil_1 = "An Bang kª huyÕt th¹ch giíi chØ", bil_2 = {167}, bil_3 = 6},
		------------------- Vò khÝ m«n ph¸i ------------------- 18
		{
			{
				bil_4 = "ThiÕu L©m Ph¸i",
				bil_5 = {
					{6, "C«n ph¸p - Phôc Ma Tö Kim C«n"},
					{11, "§ao ph¸p - Tø Kh«ng Gi¸ng Ma Giíi ®ao"},
					{2, "Tay kh«ng - Méng Long Kim Ti ChÝnh Hång Cµ Sa"},
				},
			},
			{
				bil_4 = "Thiªn V­¬ng Bang",
				bil_5 = {
					{16, "Chïy ph¸p - H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy"},
					{21, "Th­¬ng ph¸p - KÕ NghiÖp B«n L«i Toµn Long th­¬ng"},
					{26, "§ao ph¸p - Ngù Long L­îng Ng©n B¶o ®ao"},
				},
			},
			{
				bil_4 = "§­êng M«n Ph¸i",
				bil_5 = {
					{71, "Phi ®ao - B¨ng Hµn §¬n ChØ Phi §ao"},
					{76, "B·o vò - Thiªn Quang Hoa Vò M¹n Thiªn"},
					{81, "Phi tiªu - S©m Hoang Phi Tinh §o¹t Hån"},
					{86, "BÉy - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n"},
				},
			},
			{
				bil_4 = "Ngò §éc Gi¸o",
				bil_5 = {
					{57, "Néi c«ng - U Lung XÝch YÕt MËt trang"},
					{61, "§ao ph¸p - Minh ¶o Tµ S¸t §éc NhËn"},
					{66, "Bïa chó - Chó Ph­îc Ph¸ gi¸p ®Çu hoµn"},
				},
			},
			{
				bil_4 = "Nga My Ph¸i",
				bil_5 = {
					{31, "KiÕm ph¸p - V« Gian û Thiªn KiÕm"},
					{39, "Néi c«ng - V« Ma TÈy T­îng Ngäc KhÊu"},
					{45, "Hç trî - V« TrÇn PhËt Quang ChØ Hoµn"},
				},
			},
			{
				bil_4 = "Thóy Yªn Ph¸i",
				bil_5 = {
					{46, "§¬n ®ao - Tª Hoµng Phông Nghi ®ao"},
					{51, "Song ®ao - BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao"},
				},
			},
			{
				bil_4 = "C¸i Bang Ph¸i",
				bil_5 = {
					{94, "Néi c«ng - §ång Cõu Kh¸ng Long Hé UyÓn"},
					{96, "Bæng ph¸p - §Þch Kh¸i Lôc Ngäc Tr­îng"},
				},
			},
			{
				bil_4 = "Thiªn NhÉn Gi¸o",
				bil_5 = {
					{101, "Th­¬ng - Ma S¸t Quû Cèc U Minh Th­¬ng"},
					{111, "TN.L­u Tinh - Ma ThÞ LiÖt DiÖm Qu¸n MiÖn"},
					{106, "Bïa chó - Ma Hoµng Kim Gi¸p Kh«i"},
				},
			},
			{
				bil_4 = "Vâ §ang Ph¸i",
				bil_5 = {
					{116, "Néi c«ng - L¨ng Nh¹c Th¸i Cùc KiÕm"},
					{121, "KiÕm ph¸p - CËp Phong Ch©n Vò KiÕm"},
				},
			},
			{
				bil_4 = "C«n L«n Ph¸i",
				bil_5 = {
					{126, "§ao ph¸p - S­¬ng Tinh Thiªn Niªn Hµn ThiÕt"},
					{131, "Néi c«ng - L«i Khung Hµn Tung B¨ng B¹ch quan"},
					{140, "Bïa chó - Vô ¶o Tung Phong TuyÕt ¶nh ngoa"},
				},
			},
		},
		------------------- Vò khÝ m«n ph¸i ------------------- 18
	}
	if bilSel == 1 then
		local bil_4 = bilID + bilLoop - 1
		for i = bilID, bil_4 do
			if  CalcFreeItemCellCount() < _bil_a[i].bil_3 then
				return Say(_bilTestGameContent[1].."H×nh nh­ hµnh trang cña ®¹i hiÖp qu¸ bõa bén nªn kh«ng thÓ nhËn ®ñ bé trang bÞ, ngµi h·y s¾p xÕp l¹i råi tiÕn hµnh nhËn l¹i!", 1, "Ta biÕt råi!/OnCancel")
			else
				AddGoldItem(0, _bil_a[i].bil_2[1])
				Msg2Player(bC(1, "NhËn ®­îc: ")..bC(2, _bil_a[i].bil_1))
			end
		end
		return
	elseif bilSel == 2 then
		if bilLoop then
			AddGoldItem(0, _bil_a[18][bilID].bil_5[bilLoop][1])
			return Msg2Player(bC(1, "NhËn ®­îc: ")..bC(2, _bil_a[18][bilID].bil_5[bilLoop][2]))
		end
	end
	local _bil_b = {}
	if bilSel == 0 then
		tinsert(_bil_b, "Ta muèn lÊy Vò KhÝ TrÊn Ph¸i/#bilTrangBiHoangKim(2)")
		tinsert(_bil_b, "Nguyªn liÖu hîp thµnh ®å phæ TrÊn Ph¸i/#bilTestGameDoPhoTranPhai(0)")
		tinsert(_bil_b, "Ta muèn lÊy trang bÞ An Bang/#bilTrangBiHoangKim(1, 14, 4)")
		tinsert(_bil_b, "Ta muèn lÊy trang bÞ §Þnh Quèc/#bilTrangBiHoangKim(1, 9, 5)")
		tinsert(_bil_b, "Ta muèn lÊy trang bÞ HiÖp Cèt/#bilTrangBiHoangKim(1, 5, 4)")
		tinsert(_bil_b, "Ta muèn lÊy trang bÞ Nhu T×nh/#bilTrangBiHoangKim(1, 1, 4)")
	elseif bilSel == 2 then
		if bilID then
			for i = 1, getn(_bil_a[18][bilID].bil_5) do
				tinsert(_bil_b, _bil_a[18][bilID].bil_5[i][2].."/#bilTrangBiHoangKim(2,"..bilID..", "..i..")")
			end
		else
			for i = 1, getn(_bil_a[18]) do
				tinsert(_bil_b, "Ta muèn lÊy Vò KhÝ ".._bil_a[18][i].bil_4.."/#bilTrangBiHoangKim(2,"..i..")")
			end
		end
	end
		tinsert(_bil_b, "Quay l¹i/bilTestGameMain")
		tinsert(_bil_b, _bilTestGameContent[3])
	return Say(_bilTestGameContent[1].."VÞ ®¹i hiÖp cÇn lÊy ë chç cña ta mãn trang  bÞ Hoµng Kim nµo, ë ®©y ta chØ cã "..bC("yel", "Nhu T×nh, HiÖp Cèt,§Þnh Quèc, An Bang, Vò khÝ trÊn ph¸i").." th«i, kh«ng biÕt®¸p øng ®ñ nhu cÇu cña ngµi kh«ng?", getn(_bil_b), _bil_b)
end

function bilTestGameDoPhoTranPhai(bilSel, bilID, bilIdItem)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = GetLastFactionNumber()
	if bil_1 == -1 then
		return Say(_bilTestGameContent[1].."VÞ thiÕu hiÖp ®©y "..bC(1, "Ch­a gia nhËp ph¸i").." nªn kh«ng thÓ nhËn nguyªn liÖu ®Ó kh¶m n¹m ®å phæ m«n ph¸i, ng­¬i h·y gia nhËp m«n ph¸i bÊt kú råi quay l¹i gÆp ta!", 1, "Ta biÕt råi!/OnCancel")
	end
	local bil_2 = {}
	if bilSel == 2 then
		local bil_3 = _bilTbAtlasCompound[bil_1][bilID][bilIdItem].bilAtlasNL
		AddItem(6,1,_bilTbAtlasCompound[bil_1][bilID][bilIdItem].bilAtlasName[2],1,0,0)
		AddItem(6,1,147,10,0,0)
		for i = 1, getn(bil_3) do
			local bilAddID =  bil_3[i][1]
			local bilAddLv =  bil_3[i][2]
			local bilAddSeri =  bil_3[i][3]
			local bilAddMagic =  bil_3[i][4]
			if bilAddID ~= nil then
				if bil_3[i][2] == nil then
					AddItem(6,1,bil_3[i][1],1,0,0)
				else
					if bilAddSeri == nil then bilAddSeri = 0 end
					-- AddItemEx(4, 37122, 0, 6, 1, bilAddID, bilAddLv, bilAddSeri, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic);
					AddItemEx(4, random(1, 37122), 0, 6, 1, bilAddID, bilAddLv, bilAddSeri, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic);
				end
			end
		end
		Msg2Player(bC(1, "§· nhËn ®­îc bé nguyªn liÖu: ")..bC(2, _bilTbAtlasCompound[bil_1][bilID][bilIdItem].bilAtlasName[1]))
		local bilStrSay = "§¹i hiÖp cã thÓ mua "..bC(1, "M¶nh Thiªn Th¹ch").." ë "..bC(1, "Hµng Rong c¸c Thµnh ThÞ").." vµ ®Õn thî rÌn thµnh thÞ ®Ó ®óc thµnh m¶nh trang bÞ t­¬ng øng!"
		Msg2Player(bilStrSay)
		-- return Say(_bilTestGameContent[1]..bilStrSay)
		return Talk(1, "", _bilTestGameContent[1]..bilStrSay)
	end
	if bilSel == 1 then
		for i = 2, getn(_bilTbAtlasCompound[bil_1][bilID]) do
			tinsert(bil_2, _bilTbAtlasCompound[bil_1][bilID][i].bilAtlasName[1].."/#bilTestGameDoPhoTranPhai(2, "..bilID..", "..i..")")
		end
	else
		for i = 1, getn(_bilTbAtlasCompound[bil_1]) do
			tinsert(bil_2, _bilTbAtlasCompound[bil_1][i][1].bilEquipName.."/#bilTestGameDoPhoTranPhai(1, "..i..")")
		end
	end
	tinsert(bil_2, "Quay l¹i/#bilTrangBiHoangKim(0)")
	tinsert(bil_2, _bilTestGameContent[3])
	return Say(_bilTestGameContent[1].."VÞ thiÕu hiÖp vui lßng chän bé trang bÞ mµ m×nh thÝch, ta cã thÓ cung cÊp ®Çy ®ñ c¸c nguyªn liÖu cho tõng trang bÞ!", getn(bil_2), bil_2)
end

function bilNeedJoinFac()
	Talk(2, "", _bilTestGameContent[1].."C¸c h¹ vÉn cßn lµ 1 v« danh tiÓu tèt, kh«ng thÓ thùc hiÖn tÝnh n¨ng nµy, h·y gia nhËp m«n ph¸i   råi L·o míi cã thÓ gióp ®­îc!", _bilTestGameContent[1].."C¸c h¹ h·y ®Õn gÆp "..bC(4, "T©n Thñ Quan").." nhê gióp ®ì gãi t©n thñ vµ ®Õn gÆp c¸c "..bC(4,"NPC M«n ph¸i").." ®Ó tiÕn hµnh gia nhËp ph¸i. "..bC(2, "nhËn BÝ kÝp kü n¨ng cÊp 90 t¹i T©n Thñ Quan!"))
	Msg2Player("C¸c h¹ h·y ®Õn gÆp "..bC(4, "T©n Thñ Quan").."   nhê gióp ®ì gãi t©n thñ vµ ®Õn gÆp c¸c "..bC(4,"NPC M«nph¸i").." ®Ó tiÕn hµnh gia nhËp ph¸i. "..bC(2, "nhËn BÝ kÝp  kü n¨ng cÊp 90 trong gãi hç trî cÊp 80 chç T©n Thñ Quan!"))
end

function bC(CodeColor, bilStr)
	local bilColorTb = {yel = "yellow",gre = "green",ora = "Orange",blu = "blue",red = "red",woo = "wood",fir = "fire",}
	local bilColorTbNum = {"yellow","green","red","Orange",}
	if type(CodeColor) == "number" then return "<color="..bilColorTbNum[CodeColor]..">"..bilStr.."<color>" end
	return "<color="..bilColorTb[CodeColor]..">"..bilStr.."<color>"
end

function OnCancel() end