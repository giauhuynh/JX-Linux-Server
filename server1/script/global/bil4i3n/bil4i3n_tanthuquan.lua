Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_testgame.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")

Bil_SupportAwardTb =
{
	[1] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[2] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[3] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[4] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[5] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[6] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[7] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[8] = {ValItem = {6,1,71,0,0,0}, NameItem = "Tiªn th¶o lé",},
	[9] = {ValItem = {6,1,2514,0,0,0,0}, NameItem = "M¶nh s¬n hµ x· t¾c x1000",},
	[10] = {ValItem = {6,1,1083,0,0,0,0}, NameItem = "Håi thµnh phï (lín)",},
	[11] = {ValItem = {6,1,4259,0,0,0,0}, NameItem = "CÈm nang ®ång hµnh",},
	[12] = {ValItem = {6,0,11,1,0,0,0}, NameItem = "Ph¸o hoa",},
	[13] = {ValItem = {6,0,20,1,0,0,0}, NameItem = "Hoa hång",},
	[14] = {ValItem = {6,0,1012,1,0,0,0}, NameItem = "Quµ mµu xanh",},
	[15] = {ValItem = {6,0,1013,1,0,0,0}, NameItem = "Hoa TuyÕt",},
	[16] = {ValItem = {6,1,1266,0,0,0,0}, NameItem = "ThÇn hµnh phï",},
}

Bil_SupportAwardMsg =
{
	"§©y, quµ hç trî cho "..Bil_GetSexName(GetSex())..":<color=yellow><enter>\t\t\t\tTiªn th¶o lé x8<enter>\t\t\t\tM¶nh s¬n hµ x· t¾c x1000<enter>\t\t\t\tHåi thµnh phï (lín)<enter>\t\t\t\tCÈm nang ®ång hµnh<enter>\t\t\t\tThÇn hµnh phï<enter>\t\t\t\t...",
	Bil_EnemySay[3][1].."<color=white>Ng­¬i sÏ ph¶i tr¶i qua rÊt nhiÒu ©n o¸n giang hå, ng­¬i sÏ cã mét ®¸m huynh ®Ö tû muéi ®ång cam céng khæ?  Ng­¬i cã muèn l·nh ®¹o hä, cïng nhau t¹o ra mét m«n vâ c«ng V¹n ThÕ BÊt DiÖt, c­íp ®o¹t quyÒn së h÷u 7 thµnh tr×, ®Ó hä cã thÓ cïng nhau h­ëng vinh hoa phó quý. <color=yellow> VËy th× h·y lËp ra Bang Héi riªng cho m×nh, viÕt vµo ®ã c¸c ©n o¸n t×nh thï, nhi n÷ t×nh tr­êng, c­íp thuyÒn, ®o¹t thµnh, c­íp BOSS.<color><color=wood>TrÝch Bang héi tiÕp dÉn nh©n.<color><enter><color=fire>C«ng Thµnh ChiÕn<color>",
	"Aha, "..Bil_GetSexName(GetSex()).." ®©y ®· ®¹t ®Õn ®¼ng cÊp <color=yellow>%d<color> råi t¹i sao l¹i ®Õn nhê l·o ®©y gióp ®ì n÷a chø, ®¼ng cÊp %d còng ®­îc coi lµ lµ mét ®¹i hiÖp cã tªn tuæi trong giang hå t¹i sao l¹i ph¶i so ®o víi ®¸m hËu bèi chø!",
	"Ch¼ng ph¶i vÞ huynh ®Ö ®©y võa nhËn sù hç trî chç cña l·o sao, t¹i sao míi ®ã ®· quªn råi,  h·y ®i thÓ hiÖn kh¶ n¨ng cña b¶n th©n m×nh ®i, ta <enter>tr«ng chê ë ng­¬i!",
	Bil_GetSexName(GetSex()).." cã vÎ kh«ng ng¨n n¾p nhØ, ng­¬i cÇn ®Ó trèng <color=yellow>16<color> « trong r­¬ng ®Ó nhËn th­ëng.", --5
	"Ch¼ng ph¶i trong hµnh trang cña vÞ <enter>huynh ®Ö ®©y còng cã 1 cuèn <color=yellow>CÈm Nang §ång Hµnh<color> sao,  mçi ng­êi nªn cã <color=red>1 cuèn<color> th«i, lÊy nhiÒu ng­¬i còng <enter>®©u cã ®äc hÕt.",
	"§©y lµ cuèn <color=yellow>CÈm Nang §ång Hµnh<color> cña "..Bil_GetSexName(GetSex()).." ngµi còng nªn b¶o qu¶n tµi s¶n cña m×nh cho cÈn thËn nhÐ!",
	"§¼ng cÊp hiÖn t¹i cña ng­¬i lµ <color=yellow>%d<color>,<enter>tuy l·o ®©y ®· giµ nh­ng vÉn ch­a cã ai qua mÆt ®­îc l·o c¶, ng­¬i vÉn nªn ®i tu luyÖn thªm khi nµo ®¹t <enter>®Õn cÊp <color=yellow>%d <color>cø ®Õn t×m l·o.",
	"H·y nhËn lÊy mãn quµ cña l·o, sau nµy cßn nhiÒu thø  dµnh cho ng­¬i, ch¼ng qua ng­¬i cã cè g¾n hay kh«ng  mµ th«i.",
	"Tr­íc khi nhËn gãi hç trî cÊp <color=yellow>%d<color> ng­¬i cÇn ph¶i nhËn gãi ®¼ng cÊp <color=green>%d<color> tr­íc ®ã.", --10
	"Ng­¬i cßn ch­a kÞp nhËn gãi <color=yellow>hç trî T©n thñ<color> k×a, mau  nhËn ®i sè l­îng cã h¹n ®ã!", "Ta biÕt råi./OnCancel", "Ta biÕt råi.", "§a t¹ ngµi!/OnCancel", "Hµnh trang kh«ng ®ñ <color=yellow>%d<color> « trèng kh«ng thÓ nhËn th­ëng, "..Bil_GetSexName(GetSex()).." nªn s¾p xÕp l¹i hµnh trang cña m×nh cho ng¨n n¾p", "\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua", "HoTroSkill", --17
	"Ch¼ng ph¶i ng­¬i ®· häc bé <color=yellow>Kü n¨ng m«n ph¸i<color> råi sao, cßn t×m l·o lµm g×.", "§Ó nhËn ®­îc bé <color=yellow>Kü n¨ng m«n ph¸i <color>yªu   cÇu thiÕu hiÖp ph¶i <color=red>vµo ph¸i<color> tr­íc sau ®ã ®Õn ®©y gÆpl·o.", --19
	"VÞ huynh ®Ö cßn <color=red>ch­a gia nhËp m«n ph¸i<color> nµo lµm sao cã thÓ nhËn gãi hç trî nµy cña l·o, h·y ®i b¸i s­ råi l¹i ®Õn ®©y gÆp l·o!", --20
	"VÞ huynh ®Ö cßn ch­a kÞp nhËn <color=red>gãi hç <enter>trî t©n thñ<color> cña l·o mµ, h·y nhËn ®i råi míi tÝnh ®Õn chuyÖn giang hå réng lín ngoµi kia!",
}

function main(bilSel)
	local BiltbOpt = {}
	local BiltbMsg = Bil_EnemyTTQ.."Chµo vÞ huynh ®Ö, ta lµ ng­êi phô tr¸chgióp ®ì c¸c hËu bèi trªn con ®­êng hµnh hiÖp tr­îng  nghÜa, "..Bil_GetSexName(GetSex()).." cÇn ta gióp viÖc g× kh«ng?"
	-- if (bilOpenTestGame == 1) then
		-- tinsert(BiltbOpt, "Ta ®Õn ®Ó tham gia TestGame cïng trang chñ/bilTestGameMain")
		-- tinsert(BiltbOpt, "Ta ®Õn ®Ó nhËn hç trî T©n Thñ b»ng GIFTCODE/bilCheckGIFTCODE4Player2Suport")
	-- else
		tinsert(BiltbOpt, "Ta ®Õn ®Ó nhËn hç trî T©n Thñ b»ng GIFTCODE/bilCheckGIFTCODE4Player2Suport")
		tinsert(BiltbOpt, "T¹i h¹ muèn nhËn l¹i [CÈm Nang §ång Hµnh]/Bil_ReceivedItem614259")
	-- end
	-- tinsert(BiltbOpt, "Ta ®Õn ®Ó nhËn hç trî Kü N¨ng M«n Ph¸i/Bil_SupportTanThuSkill")
	tinsert(BiltbOpt, "Th­ëng cÊp 10: S­ ®å thiÕp, m¶nh s¬n hµ x100, thuèc/#bilBonusLevel(10)")
	tinsert(BiltbOpt, "Th­ëng cÊp 20: Giµy kim phong, ngùa cÊp 1/#bilBonusLevel(20)")
	tinsert(BiltbOpt, "Th­ëng cÊp 30: D©y chuyÒn kim phong, ngùa cÊp 3/#bilBonusLevel(30)")
	tinsert(BiltbOpt, "Th­ëng cÊp 40: ¸o, mò kim phong, ngùa cÊp 5/#bilBonusLevel(40)")
	tinsert(BiltbOpt, "Th­ëng cÊp 50: NhÉn, ngäc béi kim phong, ngùa cÊp 7/#bilBonusLevel(50)")
	tinsert(BiltbOpt, "Th­ëng cÊp 60: Bao tay, th¾t l­ng kim phong, ngùa/#bilBonusLevel(60)")
	tinsert(BiltbOpt, "Th­ëng cÊp 70: NhÉn kim phong, ngùa cÊp 9/#bilBonusLevel(70)")
	tinsert(BiltbOpt, "Th­ëng cÊp 80: Bé bÝ kÝp 9x, Ngùa ChiÕu d¹ ngäc s­ tö/#bilBonusLevel(80)")
	tinsert(BiltbOpt, "Th­ëng cÊp 90: Giµy §Þnh quèc, kú tr©n dÞ b¶o/#bilBonusLevel(90)")
	tinsert(BiltbOpt, "Trang sau/#main(2)")
	tinsert(BiltbOpt, "KÕt thóc ®èi tho¹i./OnCancel")
	if bilSel == 2 then
		BiltbOpt = {}
		tinsert(BiltbOpt, "Th­ëng cÊp 100: Bao tay §Þnh quèc, kú tr©n dÞ b¶o/#bilBonusLevel(100)")
		tinsert(BiltbOpt, "Th­ëng cÊp 110: Th¾t l­ng §Þnh quèc, ngùa Phi V©n, kú tr©n dÞ b¶o, .../#bilBonusLevel(110)")
		tinsert(BiltbOpt, "Th­ëng cÊp 120: ¸o §Þnh quèc, Vò khÝ trÊn ph¸i, bÝ    kÝp 120, kú tr©n dÞ b¶o, .../#bilBonusLevel(120)")
		tinsert(BiltbOpt, "Th­ëng cÊp 150: 1 Trang bÞ trÊn ph¸i tïy chän, ®¹i thµnh bÝ kÝp 120, kú tr©n dÞ b¶o,.../#bilBonusLevel2Manual(150)")
		tinsert(BiltbOpt, "Trang tr­íc/main")
		tinsert(BiltbOpt, "KÕt thóc ®èi tho¹i./OnCancel")
	end
	return Say(BiltbMsg, getn(BiltbOpt), BiltbOpt)
end

function bilBonusLevel2Manual(bilSel, bilSkill, bilIdGoldIt)
	if GetLevel() < bilSel then
		return Talk(1, "", Bil_EnemyTTQ..(format(Bil_SupportAwardMsg[8], GetLevel(), bilSel)))
	end
	if Bil_GetTask(1) >= bilSel then
		if Bil_GetTask(1) == bilSel then
			return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[4])
		else
			return Say(Bil_EnemyTTQ..(format(Bil_SupportAwardMsg[3], GetLevel(), GetLevel())))
		end
	end
	if bilSel == 150 then
		if  CalcFreeItemCellCount() < 30 then
			return Talk(1, "", Bil_EnemyTTQ.."Hµnh trang cña c¸c h¹ kh«ng ®ñ 30 « trèng, vui lßng ®Ó trèng 30 « hµnh trang råi h·y ®Õn nhËn th­ëng!")
		end
		local bil_1 = GetLastFactionNumber()
		if bil_1 == -1 then
			return Say(Bil_SupportAwardMsg[20], 1, Bil_SupportAwardMsg[12])
		end
		local bil_2 = {}
		local bil_3 = Bil_EnemyTTQ.."Mçi ng­êi sÏ nhËn ®­îc mét mãn trang bÞ trÊn ph¸i tïy chän, c¸c h¹ muèn nhËn mãn trang bÞ nµo, chØ cã thÓ nhËn 1 lÇn duy nhÊt, h·y c©n nh¾c kü!"
		if bilIdGoldIt then
			local bil_4 = {
				{6,1,71,0,0,0}, -- tiªn th¶o lé
				{6,1,71,0,0,0}, -- tiªn th¶o lé
				{6,1,71,0,0,0}, -- tiªn th¶o lé
				{4,353,0, 0,0, 0}, -- tinh hång b¶o th¹ch
				{4,353,0, 0,0, 0}, -- tinh hång b¶o th¹ch
				{4,353,0, 0,0, 0}, -- tinh hång b¶o th¹ch
				{4,238,0, 0,0, 0}, -- thñy tinh
				{4,239,0, 0,0, 0}, -- thñy tinh
				{4,240,0, 0,0, 0}, -- thñy tinh
			}
			local bilItIdx = AddGoldItem(0, bilIdGoldIt)
			local nExpiredDate = FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItIdx, nExpiredDate);
			SyncItem(bilItIdx);
			SetItemBindState(bilItIdx,-2)
			for iIem = 1, getn(bil_4) do
				AddItem(unpack(bil_4[iIem]))
			end
			local bilItIdx2 = AddItem(6,1,2425, 0,0, 0) -- ®¹i thµnh bÝ kÝp 120
			SetItemBindState(bilItIdx2,-2)
			Bil_SetTask(1, bilSel)
			return Talk(1, "", Bil_EnemyTTQ.."Chóc mõng c¸c h¹ ®· nhËn th­ëng thµnh c«ng mèc th­ëng ®¼ng cÊp 150, xin kiÓm tra trong hµnh trang!")
		end
		if bilSkill then
			for iSel = 2, getn(_bilTbAtlasCompound[bil_1][bilSkill]) do
				tinsert(bil_2, _bilTbAtlasCompound[bil_1][bilSkill][iSel].bilAtlasName[1].."/#bilBonusLevel2Manual("..bilSel..", "..bilSkill..", ".._bilTbAtlasCompound[bil_1][bilSkill][iSel].bilAtlasName[3]..")")
			end
			tinsert(bil_2, "KÕt thóc ®èi tho¹i/OnCancel")
			return Say(bil_3, getn(bil_2), bil_2)
		end
		for iSel = 1, getn(_bilTbAtlasCompound[bil_1]) do
			tinsert(bil_2, _bilTbAtlasCompound[bil_1][iSel][1].bilEquipName.."/#bilBonusLevel2Manual("..bilSel..", "..iSel..")")
		end
		tinsert(bil_2, "KÕt thóc ®èi tho¹i/OnCancel")
		return Say(bil_3, getn(bil_2), bil_2)
	end
end

function bilCheckGIFTCODE4Player2Suport()
	if Bil_GetTask(1) == 0 then
		Msg2Player("<color=yellow>M· th­ëng t©n thñ cña b¹n lµ: <color=green><enter>"..bilTanThuGiftCode.."_"..GetAccount())
		return Talk(2, "#bilCheckGIFTCODE4Player2Suport_InputCODE()", Bil_EnemyTTQ.."M· th­ëng t©n thñ cña b¹n lµ: <enter><color=green>"..bilTanThuGiftCode.."_"..GetAccount(), Bil_EnemyTTQ.."B¹n cÇn nhËp m· Dù th­ëng vµo ¤ nhËp m·!")
	else
		return Talk(1, "#bilCheckGIFTCODE4Player2Suport_InputCODE()", Bil_EnemyTTQ.."B¹n cÇn nhËp m· Dù th­ëng vµo ¤ nhËp m·!")
	end
end

function bilCheckGIFTCODE4Player2Suport_InputCODE(bilCode)
	if type(bilCode) == "string" and bilCode ~= nil then
		if bilCode == bilTanThuGiftCode.."_"..GetAccount() then
			Msg2Player("<color=yellow>X¸c nhËn m· thµnh c«ng!")
			return Bil_SupportTanThuDuaTop()
		else
			return Say(Bil_EnemyTTQ.."VÞ huynh ®µi ®· nhËp sai M· th­ëng hoÆcm· th­ëng kh«ng tån t¹i, ngµi cã thÓ tiÕn hµnh nhËp  l¹i!", 2, "NhËp l¹i m·!/#bilCheckGIFTCODE4Player2Suport_InputCODE()", "KÕt thóc ®èi tho¹i!/OnCancel")
		end
		return
	end
	return AskClientForString("bilCheckGIFTCODE4Player2Suport_InputCODE", "", 1, 500, "NhËp m· th­ëng!");
end

function Bil_SupportTanThuDuaTop()
	if Bil_GetTask(1) == 0 then
		if  CalcFreeItemCellCount() < 16 then
			return Say(Bil_SupportAwardMsg[5], 1, Bil_SupportAwardMsg[12])
		end
		for i = 1, 16 do
			if i == 16 then
				local nItemIndex = AddItem(unpack(Bil_SupportAwardTb[i].ValItem))
				local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
				ITEM_SetExpiredTime(nItemIndex, nExpiredDate);
				SyncItem(nItemIndex);
				SetItemBindState(nItemIndex,-2)
				Msg2Player(Bil_SupportAwardMsg[1])
				CreateNewSayEx(Bil_SupportAwardMsg[2], {{Bil_SupportAwardMsg[13],OnCancel},})
				break
			else
				local nItemIndex = AddItem(unpack(Bil_SupportAwardTb[i].ValItem))
				SetItemBindState(nItemIndex,-2)
			end
		end
		-- if GetLevel() < 90 then
			-- while GetLevel() < 90 do
				-- AddOwnExp(9999999)
			-- end
		-- end
		Earn(5000)
		Bil_SetTask(1, 1)
		return
	else
		if GetLevel() >= 50 then
			return Say(Bil_EnemyTTQ..format(Bil_SupportAwardMsg[3], GetLevel(), GetLevel()))
		else
			return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[4])
		end
	end
end

function Bil_SupportTanThuSkill()
	if Bil_GetTask(4) == 1 then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[18], 1, Bil_SupportAwardMsg[12])
	elseif GetFaction() == nil or GetFaction() == "" then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[19], 1, Bil_SupportAwardMsg[12]) 
	else
		Bil_SetTask(4, 1)
		DynamicExecute(Bil_SupportAwardMsg[16], Bil_SupportAwardMsg[17], PlayerIndex)
	end
end

function Bil_ReceivedItem614259()
	if Bil_GetTask(1) == 0 then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[21], 1, Bil_SupportAwardMsg[12])
	end
	local bilReportItem = ConsumeItem(3, 0, 6, 1, 4259, -1)
	if bilReportItem == 1 then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[6])
	else
		local nItemIndex = AddItem(unpack(Bil_SupportAwardTb[11].ValItem))
		SetItemBindState(nItemIndex,-2)
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[7])
	end
end

bilBonusLevelItemTable = {
	[10] = {{6, 1, 401, 0, 0, 0}, {6, 1, 440, 0, 0, 0}, {6, 0, 1, 1, 0, 0}, {6, 0, 2, 1, 0, 0}, {6, 0, 6, 1, 0, 0}, },
		-- s­ ®å thiÕp, m¶nh s¬n hµ 100, tr­êng mÖnh hoµn, gia bµo hoµn, phi tèc hoµn
	[20] = {bilGoldequip = {184}, bilHorse = {0, 10, 2, 1, random(0, 4), 0}, },
		-- giµy kim phong, ngùa cÊp 1
	[30] = {bilGoldequip = {179}, bilHorse = {0, 10, 2, 3, random(0, 4), 0}, },
		-- d©y chuyÒn kim phong, ngùa cÊp 3
	[40] = {bilGoldequip = {178, 177}, bilHorse = {0, 10, 2, 5, random(0, 4), 0}, },
		-- ¸o - mò kim phong, ngùa cÊp 5
	[50] = {bilGoldequip = {183, 180}, bilHorse = {0, 10, 2, 7, random(0, 4), 0}, },
		-- nhÉn - ngäc béi kim phong, ngùa cÊp 7
	[60] = {bilGoldequip = {182, 181}, bilHorse = {0, 10, 3, 9, random(0, 4), 0}, },
		-- bao tay - th¾t l­ng kim phong, ngùa cÊp 9
	[70] = {bilGoldequip = {185}, bilHorse = {0, 10, 2, 9, random(0, 4), 0}, },
		-- nhÉn kim phong, ngùa cÊp 9
	[80] = 
		{
			-- bé bÝ kÝp m«n ph¸i cÊp 90 vµ ngùa chiÕu d¹ thêi h¹n 15 ngµy
			{bilTimes = {3}, bilItems = {6, 1, 2959, 0, 0, 0}}, 	-- thiÕu l©m
			{bilTimes = {3}, bilItems = {6, 1, 2960, 0, 0, 0}}, 	-- thiªn v­¬ng
			{bilTimes = {4}, bilItems = {6, 1, 2961, 0, 0, 0}}, 	-- ®­êng m«n
			{bilTimes = {3}, bilItems = {6, 1, 2962, 0, 0, 0}}, 	-- ngò ®éc
			{bilTimes = {3}, bilItems = {6, 1, 2963, 0, 0, 0}}, 	-- nga my
			{bilTimes = {2}, bilItems = {6, 1, 2964, 0, 0, 0}}, 	-- thóy yªn
			{bilTimes = {2}, bilItems = {6, 1, 2965, 0, 0, 0}}, 	-- c¸i bang
			{bilTimes = {3}, bilItems = {6, 1, 2966, 0, 0, 0}}, 	-- thiªn nhÉn
			{bilTimes = {2}, bilItems = {6, 1, 2967, 0, 0, 0}}, 	-- vâ ®ang
			{bilTimes = {3}, bilItems = {6, 1, 2968, 0, 0, 0}},		-- c«n l«n
			{bilHorse = {0, 10, 5, 10, random(0, 4), 0}},
		},
	[90] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh hång b¶o th¹ch
			{6,1,125, 0, 0,0, 0}, 		-- quÕ hoa töu
			{6,1,71, 0, 0, 0, 0}, 		-- tiªn th¶o lé
			-- {6,1,123, 0, 0,0, 0}, 		-- phóc duyªn trung
		},
		bilItemsGold = {161},		-- giµy ®Þnh quèc
	}},
	[100] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh hång b¶o th¹ch
			{6,1,125, 0, 0,0, 0}, 		-- quÕ hoa töu
			{6,1,71, 0, 0, 0, 0}, 		-- tiªn th¶o lé
			-- {6,1,123, 0, 0,0, 0}, 		-- phóc duyªn trung
			-- {4,489,0, 0, 0,0, 0},   	-- lÖnh bµi phong l¨ng ®é
			{6,1,1448, 0, 0,0, 0}, 	-- M¹c B¾c TruyÒn Tèng LÖnh
		},
		bilItemsGold = {162},		-- bao tay ®Þnh quèc
	}},
	[110] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh hång b¶o th¹ch
			{6,1,125, 0, 0,0, 0}, 		-- quÕ hoa töu
			{6,1,71, 0, 0, 0, 0}, 		-- tiªn th¶o lé
			-- {6,1,123, 0, 0,0, 0}, 		-- phóc duyªn trung
		},
		bilItemsGold = {163},		-- ®ai l­ng ®Þnh quèc
		bilHorse = {0, 10, 8, 10, random(0,4), 0},	-- ngùa phi v©n 15 ngµy
	}},
	[120] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh hång b¶o th¹ch
			{6,1,125, 0, 0,0, 0}, 		-- quÕ hoa töu
			{6,1,71, 0, 0, 0, 0}, 		-- tiªn th¶o lé
			-- {6,1,123, 0, 0,0, 0}, 		-- phóc duyªn trung
			{6,1,1125, 0, 0,0, 0}, 	-- bÝ kÝp kü n¨ng 120
			{6,1,1427, 0, 0,0, 0}, 	-- tö mÈu lÖnh
		},
		bilItemsGold = {159},		-- ¸o ®Þnh quèc
		bilItemsGoldFac = {			-- 1 mãn vò khÝ trÊn ph¸i tïy chän thêi h¹n 7 ngµy
			{ -- thiÕu l©m
				{6, "C«n ph¸p - Phôc Ma Tö Kim C«n"},
				{11, "§ao ph¸p - Tø Kh«ng Gi¸ng Ma Giíi ®ao"},
				{2, "Tay kh«ng - Méng Long Kim Ti ChÝnh Hång Cµ Sa"},
			},
			{ -- thiªn v­¬ng
				{16, "Chïy ph¸p - H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy"},
				{21, "Th­¬ng ph¸p - KÕ NghiÖp B«n L«i Toµn Long th­¬ng"},
				{26, "§ao ph¸p - Ngù Long L­îng Ng©n B¶o ®ao"},
			},
			{ -- ®­êng m«n
				{71, "Phi ®ao - B¨ng Hµn §¬n ChØ Phi §ao"},
				{76, "B·o vò - Thiªn Quang Hoa Vò M¹n Thiªn"},
				{81, "Phi tiªu - S©m Hoang Phi Tinh §o¹t Hån"},
				{86, "BÉy - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n"},
			},
			{ -- ngò ®éc
				{57, "Néi c«ng - U Lung XÝch YÕt MËt trang"},
				{61, "§ao ph¸p - Minh ¶o Tµ S¸t §éc NhËn"},
				{66, "Bïa chó - Chó Ph­îc Ph¸ gi¸p ®Çu hoµn"},
			},
			{ -- Nga my
				{31, "KiÕm ph¸p - V« Gian û Thiªn KiÕm"},
				{39, "Néi c«ng - V« Ma TÈy T­îng Ngäc KhÊu"},
				{45, "Hç trî - V« TrÇn PhËt Quang ChØ Hoµn"},
			},
			{ -- thóy yªn
				{46, "§¬n ®ao - Tª Hoµng Phông Nghi ®ao"},
				{51, "Song ®ao - BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao"},
			},
			{ -- c¸i bang
				{94, "Néi c«ng - §ång Cõu Kh¸ng Long Hé UyÓn"},
				{96, "Bæng ph¸p - §Þch Kh¸i Lôc Ngäc Tr­îng"},
			},
			{ -- thiªn nhÉn
				{101, "Th­¬ng - Ma S¸t Quû Cèc U Minh Th­¬ng"},
				{111, "TN.L­u Tinh - Ma ThÞ LiÖt DiÖm Qu¸n MiÖn"},
				{106, "Bïa chó - Ma Hoµng Kim Gi¸p Kh«i"},
			},
			{ -- vâ ®ang
				{116, "Néi c«ng - L¨ng Nh¹c Th¸i Cùc KiÕm"},
				{121, "KiÕm ph¸p - CËp Phong Ch©n Vò KiÕm"},
			},
			{ -- c«n l«n
				{126, "§ao ph¸p - S­¬ng Tinh Thiªn Niªn Hµn ThiÕt"},
				{131, "Néi c«ng - L«i Khung Hµn Tung B¨ng B¹ch quan"},
				{140, "Bïa chó - Vô ¶o Tung Phong TuyÕt ¶nh ngoa"},
			},
		},
	}},
}

function bilBonusLevelItemsGold120(bilSI)
	local bil_1, bil_2 = GetLastFactionNumber() + 1, {}
	if bilSI then
		local bil_4 = AddGoldItem(0, bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1][bilSI][1])
		local bil_5 = FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bil_4, bil_5);
		SyncItem(bil_4);
		SetItemBindState(bil_4,-2)
		return Msg2Player("<color=yellow>§· nhËn ®­îc trang bÞ: "..bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1][bilSI][2])
	end
	for bil_3 = 1, getn(bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1]) do
		tinsert(bil_2, bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1][bil_3][2].."/#bilBonusLevelItemsGold120("..bil_3..")")
	end
	return Say(Bil_EnemyTTQ.."H·y chän mãn trang bÞ m×nh thÝch, ®¹i <enter>hiÖp chØ cã thÓ chän 1 lÇn!", getn(bil_2), bil_2)
end

function bilBonusLevel(bilLevel)
		-- if GetLevel() < 90 then
			-- while GetLevel() < 90 do
				-- AddOwnExp(9999999)
			-- end
		-- end
		
	if Bil_GetTask(1) < bilLevel then
		if GetLevel() < bilLevel then
			return Say(Bil_EnemyTTQ..format(Bil_SupportAwardMsg[8], GetLevel(), bilLevel))
		else
			if Bil_GetTask(1) == 0 then
				return Say(Bil_SupportAwardMsg[11], 1, Bil_SupportAwardMsg[12])
			elseif (Bil_GetTask(1) + 10) ~= bilLevel and Bil_GetTask(1) ~= 1 then
				return Say(format(Bil_SupportAwardMsg[10], bilLevel, bilLevel - 10), 1, Bil_SupportAwardMsg[12])
			else
				if Bil_GetTask(1) == 1 then
					bilLevel = 10
				elseif CalcFreeItemCellCount() < 20 then
					return Say(format(Bil_SupportAwardMsg[15], 20), 1, Bil_SupportAwardMsg[12])
				end
				if bilLevel == 10 then
					for i = 1, getn(bilBonusLevelItemTable[bilLevel]) do
						local nItemIndex = AddItem(unpack(bilBonusLevelItemTable[bilLevel][i]))
							SetItemBindState(nItemIndex,-2)
					end
				elseif bilLevel == 80 then
					if GetLastFactionNumber() == -1 then
						return Say(Bil_SupportAwardMsg[20], 1, Bil_SupportAwardMsg[12])
					end
					for bilLoop = 1, bilBonusLevelItemTable[bilLevel][GetLastFactionNumber()+1].bilTimes[1] do
						local nItemIndex = AddItem(unpack(bilBonusLevelItemTable[bilLevel][GetLastFactionNumber()+1].bilItems))
							SetItemBindState(nItemIndex,-2)
					end
					-- lÖnh bµi phong l¨ng ®é
					-- local bilIItemLevel = AddItem(4, 489, 0, 0, 0, 0)
					-- SetItemBindState(bilIItemLevel,-2)
					local bilIndexHorse8x = AddItem(unpack(bilBonusLevelItemTable[bilLevel][11].bilHorse))
					local nExpiredDate = FormatTime2Date(15 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilIndexHorse8x, nExpiredDate);
					SyncItem(bilIndexHorse8x);
					SetItemBindState(bilIndexHorse8x,-2)
				elseif bilLevel >= 90 then
					for bilLoop = 1, getn(bilBonusLevelItemTable[bilLevel][1].bilItems) do
						local bilIItemLevel = AddItem(unpack(bilBonusLevelItemTable[bilLevel][1].bilItems[bilLoop]))
						SetItemBindState(bilIItemLevel,-2)
					end
					local nItemIndexGold = AddGoldItem(0, bilBonusLevelItemTable[bilLevel][1].bilItemsGold[1])
					local nExpiredDate = FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(nItemIndexGold, nExpiredDate);
					SyncItem(nItemIndexGold);
					SetItemBindState(nItemIndexGold,-2)
					if bilLevel == 110 then
						local bilIItemLevel90Horse = AddItem(unpack(bilBonusLevelItemTable[bilLevel][1].bilHorse))
						local nExpiredDate = FormatTime2Date(15 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilIItemLevel90Horse, nExpiredDate);
						SyncItem(bilIItemLevel90Horse);
						SetItemBindState(bilIItemLevel90Horse,-2)
					end
				else
					for i = 1, getn(bilBonusLevelItemTable[bilLevel].bilGoldequip) do
						local nItemIndex = AddGoldItem(0, bilBonusLevelItemTable[bilLevel].bilGoldequip[i])
							SetItemBindState(nItemIndex,-2)
					end
					local nHorseIndex = AddItem(unpack(bilBonusLevelItemTable[bilLevel].bilHorse))
						SetItemBindState(nHorseIndex,-2)
				end
				
				Bil_SetTask(1, bilLevel)
				if bilLevel == 120 then
					return bilBonusLevelItemsGold120()
				end
				return Say(Bil_SupportAwardMsg[9], 1, Bil_SupportAwardMsg[14])
			end
		end
	else
		if Bil_GetTask(1) == bilLevel then
			return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[4])
		else
			return Say(Bil_EnemyTTQ..format(Bil_SupportAwardMsg[3], GetLevel(), GetLevel()))
		end
	end
end

function OnTimer(nNpcIndex)
	local _bilTbTanThuQuanChat = {
		"<color=green>Chµo mõng<enter>c¸c t©n thñ tham gia!",
		"<color=green>T©n thñ muèn nhËn<enter>th­ëng ®Õn gÆp l·o ngay!",
		"<color=green>l·o ®©y l¹i<enter>bËn rén n÷a råi!",
		"<color=green>T©n thñ nµo mµ<enter>kh«ng muèn nhËn th­ëng chø!",
	}
	NpcChat(nNpcIndex, _bilTbTanThuQuanChat[random(1, getn(_bilTbTanThuQuanChat))])
	SetNpcTimer(nNpcIndex,random(10, 20)*18)
end

function OnCancel()
end