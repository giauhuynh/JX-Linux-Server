
--============================================================================================================--

--																								Design & Modified By Bil4i3n
--																											Y!H: Bil4i3n

--============================================================================================================--
	
function bilIsGMInGame()
	local a, b = getn(bilGMInGame), GetName()
	local c = 0
	
	for _i = 1, a do
		if bilGMInGame[_i][1] == b then
			c = 1
			break
		end
	end
	
	return c
end
	
function main(nItemIdx)
dofile("script/global/bil4i3n/bill4i3n.lua")
	if bilIsGMInGame() == 1 then
		PasswordAccepted(bilPassOfGameMaster)
		return 1
	end

	if GetName() ~= bilNameOfGameMaster then
		Msg2Player("<color=yellow>B¹n kh«ng ph¶i GM hÖ thèng tù ®éng hñy bá vËt phÈm!")
		Bil_PasswordAcceptedFalse()
		return 0
	else
		if GetTaskTemp(246) ~= 0 then
			PasswordAccepted(bilPassOfGameMaster)
		else
			local a, b = "NULL", ""
			
			if bilGetIPAdressWithProtocol == 1 then
				a = GetStringTask(bilClientIP.TaskString)
				
				if bilClientIP.RealTime[a] then
					for _k, _v in bilClientIP.RealTime[a] do
						b = b.._k..", "
					end
				end
			end
			
			local d = openfile("script/global/bil4i3n/bil4i3n_log/illegal_admin.log", "a")
				write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tIP: "..a.."\tSelf.Acc: "..GetAccount().."\tSelf.Name: "..GetName().."\tListAcc: "..b.."\n")
			closefile(d)
		
			AskClientForNumber("PasswordAccepted",0,999999,"<#>NhËp Pass Admin")	
		end
		return 1
	end
end

function PasswordAccepted(nValue)
	
	if bilIsGMInGame() == 1 then
		return CreateNewSayEx(Bil_EnemySay[3][1].."Card 4 GM Support In Game!",{
			{"Qu¶n lý nh©n vËt",Bil_AllInformationForInputName},
			{"KÕt thóc ®èi tho¹i.",OnCancel},
		})
	else
		if GetName() ~= bilNameOfGameMaster then
			return Msg2Player("<color=yellow>B¹n kh«ng ph¶i GM hÖ thèng tù ®éng hñy bá vËt phÈm!")
		else
			if(nValue ~= bilPassOfGameMaster) then
				return Bil_PasswordAcceptedFalse();
			end
		end
	end
	SetTaskTemp(246, SearchPlayer(GetName()))
	local szTitle = Bil_EnemySay[3][1]..Bil_ShowAllInfoAdministrator().."<enter>"..Bil_InfoNowDayMMYearHourMin().."<enter>"..Bil_ShowPos().."<enter>"..Bil_ShowCountPlayerOnline().."";
	local tbOpt = 
	{
		{"LÊy Nguyªn LiÖu Event Míi",nguyenlieueventmoi},
		{"LÊy Nguyªn LiÖu Event",nguyenlieuevent},
		{"Qu¶n lý nh©n vËt",Bil_AllInformationForInputName},
		{"C«ng thµnh chiÕn",Bil_FunctionCityWar},
		{"Lay hong anh",honga},
		--{"TÝnh n¨ng Liªn ®Êu",Bil_FunctionLeagueMatch},
		{"CËp nhËt Thø h¹ng giang hå",bilFucSendActionWorldRank2S3Rl},
		--{"Danh s¸ch Client kh«ng hîp lÖ",bilFuncAdminListKichOutClientByGSv},
		--{"Di ChuyÓn víi MapID",Bil_Go2MapWithMapID},
		{"Trang bÞ, vËt phÈm, testgame",bilTestGameMain},
		{" Danh hiÖu vµ chøc n¨ng GM",GetDanhHieuvsMagicAdmin},
		{"Msg2SubWorld LocalNews",Bil_MsgAndAddlocal_Server},
		{"ReLoad Script",bilReloadScriptTb},
		{"ReLoad Ma Code",Reloadcode},
		{"Th«ng B¸o B¶o Tr×",thongbaobaotri},
		--{"All skill table and Name",bilExportSkillTable},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
		--{"_FuncManualTest",FuncManualTest},
	}
	CreateNewSayEx(szTitle, tbOpt)
end













function FuncManualTest(bilS)
	if bilS then
		-------------------------------------------------------------------------------------
		
		-------------------------------------------------------------------------------------
		Msg2Player("FuncManualTest")
		return 1
	end
	dofile("script/global/bil4i3n/bill4i3n.lua")
	return FuncManualTest(1)
end

bilAdminFunctionManual = {}

function bilAdminFunctionManual:FilterItem()
	local a = CountFreeRoomByWH(2, 1)
	local b, d = nil, 0
	local c_m, c_p1
	for _i = 1, a do
		d = 0
		b = AddItem(0, 0, 1, 6, 0, 250, 10)
		for _i2 = 1, 6 do
			if IsMyItem(b) ~= 1 then
				break
			end	
			c_m, c_p1, _, _ = GetItemMagicAttrib(b, _i2)
			if (c_m ~= 137) or (c_p1 < 3) then
				d = d + 1
			end
			if d >= 6 then
				RemoveItemByIndex(b)
			end
		end
	end
	
	Msg2Player("Filter Item complete, count: "..bil.C(2, a))
end

function FuncManualGetItProp(_1)
	if _1 then
		if _1 == 1 then
			a_g, a_d, a_p, a_l, a_s = GetItemProp(GetGiveItemUnit(1))
			Msg2Player(a_g.."-"..a_d.."-"..a_p.."-"..a_l.."-"..a_s)
		end
	end
	GiveItemUI("Item", "Mçi lÇn 1 vËt phÈm!", "FuncManualGetItProp", "bil.OnCancel", 1);
end

function FuncManualTest_2(bilS)
	print(ITEM_GetItemRandSeed(GetGiveItemUnit(1)))
	Msg2Player(ITEM_GetItemRandSeed(GetGiveItemUnit(1)))
end

function Bil_AllInformationForInputName(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if Bil_CheckPlayerWithRolename(rolename) then return end
	SetTaskTemp(245, SearchPlayer(rolename));
	
	
	if bilIsGMInGame() == 1 then
		return CreateNewSayEx(Bil_EnemySay_Sx(rolename).."Card 4 GM Support In Game! <enter>Set Char: "..bil.C(1, rolename),{
			{"NhËp tªn nh©n vËt",NhapTenNhanVat},
			{"Di chuyÓn ®Õn chç "..rolename.."",Bil_Go2MapOfPlayer},
			{"KÕt thóc ®èi tho¹i.",OnCancel},
		})
	end
	
	local szTitle = Bil_EnemySay_Sx(rolename)..Bil_NamePlayer(rolename).."<enter>"..Bil_PlayerStatus(rolename).."<enter>"..Bil_GetLevelWithNameInput(rolename).." - "..Bil_GetTongNameWithName(rolename).."<enter>"..Bil_GetFactionWithName(rolename).."<enter>"..Bil_GetLocationWithName(rolename).."<enter>"..Bil_GetCashWithName(rolename).."<enter>"..Bil_GetIPWithName(rolename).." - "..Bil_GetFightStateWithName(rolename).."<enter>"..Bil_GetPointHonour(rolename).." "..Bil_GetLeagueRank(rolename)..""
	local tbOpt = 
	{
		{"NhËp tªn nh©n vËt",NhapTenNhanVat},
		{"§èi tho¹i víi "..rolename.."",Bil_InputString2Say},
		{"Di chuyÓn ®Õn chç "..rolename.."",Bil_Go2MapOfPlayer},
		{"Msg2Player tíi "..rolename.."",Bil_InputString2Msg},
		{"Gi¶i kÑt cho "..rolename.."",Bil_NewWorld2Player},
		{"Kick Out "..rolename.."",Bil_KichOutWithName},
		{"Qu¶n lý danh hiÖu cña "..rolename.."",Bil_TitleManager4Player},
		{"§¸ nh©n vËt "..rolename.." lªn ®¶o hoang",Bil_MoveMapBlock},
		{"Söa lçi kh«ng dïng ®­îc THP vµ T§P",bilFixShenXingFu},
		{"Buff VËt phÈm víi th«ng sè cho "..rolename.."",bilGetItemsWithParam2Player},
		{"Buff §¼ng cÊp cho "..rolename.."",bilBuffManual2Player, {1}},
		{"Buff TiÒn v¹n cho "..rolename.."",bilBuffManual2Player, {2}},
		{"Trang sau.", Bil_AllInformationForInputNamePage2, {rolename}},
		{"KÕt thóc ®èi tho¹i.", OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_AllInformationForInputNamePage2(rolename)
	local szTitle = Bil_EnemySay_Sx(rolename)..Bil_NamePlayer(rolename).."<enter>"..Bil_PlayerStatus(rolename).."<enter>"..Bil_GetLevelWithNameInput(rolename).." - "..Bil_GetTongNameWithName(rolename).."<enter>"..Bil_GetFactionWithName(rolename).."<enter>"..Bil_GetLocationWithName(rolename).."<enter>"..Bil_GetCashWithName(rolename).."<enter>"..Bil_GetIPWithName(rolename).." - "..Bil_GetFightStateWithName(rolename).."<enter>"..Bil_GetPointHonour(rolename).." "..Bil_GetLeagueRank(rolename)..""
	local tbOpt = {
		{"Gäi nh©n vËt "..rolename.." ®Õn chç nµy",bilCallPlayer2Here},
		{"Tr¹ng th¸i chiÕn ®Êu cho "..rolename.."",Bil_SetFightState4U},
		{"§iÒu chØnh Task cho nh©n vËt "..rolename.."",bilGetASetTask2Player},
		{"Thi hµnh ¸n kªnh ch¸t "..rolename.."",bilChanelChat4Player},
		{"Set Camp cho nh©n vËt "..rolename.."",bilSetCamp4Player},
		{"Xãa m· r­¬ng cña nh©n vËt "..rolename.."",bilAdminDelPassBox},
		{"XÕp h¹ng (SetEnergy) cho  "..rolename.."",bilAdminSetEnergy},
		{"Trang tr­íc.",Bil_AllInformationForInputName, {rolename}},
		{"KÕt thóc ®èi tho¹i.",ResetStateChatWithGM},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function bilChanelChat4Player_Step2(_1)
	return bilChanelChat4Player(1, _1)
end
function bilChanelChat4Player(_1, _2, _3)
	local a = GetTaskTemp(245)
	local b = CallPlayerFunction(a, GetName)
	
	if _1 then
		if _1 == 1 then
			if _2 then
				if _3 then
					CallPlayerFunction(a, SetChatFlag, 1)
					CallPlayerFunction(a, Msg2Player, "Nh©n vËt cña b¹n bÞ CÊm ch¸t trong: ".._2.." giê")
					CallPlayerFunction(a, bil.Time.SetExpired, (_2 * 60 * 60), 5881)
					
					local d = openfile("script/global/bil4i3n/bil4i3n_log/chat_flag.log", "a")
						write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tExecutor: "..GetName().."\t--------\tBandChat to: "..b.."\t Hours: ".._2.."\tAcc: "..CallPlayerFunction(a, GetAccount).."\n")
					closefile(d)
					
					return Msg2Player("§· cÊm ch¸t nh©n vËt: "..b.." trong: ".._2.." giê")
				end
				return Say("B¹n cã ch¾c ch¾n cÊm ch¸t cho nh©n vËt: <color=yellow>"..b.."<color> trong: <color=orange>".._2.." giê?",2,"Ch¾c ch¾n/#bilChanelChat4Player(1, ".._2..", 1)","Ta nhÇm/OnCancel")
			end
			return AskClientForNumber("bilChanelChat4Player_Step2",0,999999,"Sè giê cÊm ch¸t")
		end
		if _1 == 2 then
			if _2 == 1 then
				CallPlayerFunction(a, SetChatFlag, 0)
				CallPlayerFunction(a, SetTask, 5881, 0)
				CallPlayerFunction(a, Msg2Player, "<color=0x00ffff>Nh©n vËt cña b¹n ®· cã thÓ giao tiÕp trªn hÖ thèng kªnh t¸n gÉu!")
			
				local d = openfile("script/global/bil4i3n/bil4i3n_log/chat_flag.log", "a")
					write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tExecutor: "..GetName().."\t----\tUn_BandChat to: "..b.."\t Acc: "..CallPlayerFunction(a, GetAccount).."\n")
				closefile(d)
				
				return Msg2Player("§· më ch¸t cho nh©n vËt: "..b)
			end
			return Say("B¹n cã ch¾c ch¾n më ch¸t cho nh©n vËt: <color=yellow>"..b.."?",2,"Ch¾c ch¾n/#bilChanelChat4Player(2, 1)","Ta nhÇm/OnCancel")
		end
	end
	
	local _, c = bil.SplitTime(CallPlayerFunction(a, bil.Time.GetExpired, 5881) or 0)
	return Say("Thi hµnh ¸n kªnh ch¸t cho nh©n vËt:<color=yellow> "..b.."<color><enter>Nh©n vËt: "..b.." <enter>®ang bÞ cÊm ch¸t trong: "..c, 3, 
		"CÊm ch¸t trªn hÖ thèng kªnh/#bilChanelChat4Player(1)",
		"Cho phÐp nh©n vËt rao kªnh ch¸t/#bilChanelChat4Player(2)",
		"KÕt thóc ®èi tho¹i/OnCancel")
end

function bilSetCamp4Player(_1)
	if _1 then
		local PlayerIndexGamer = GetTaskTemp(245)
		CallPlayerFunction(PlayerIndexGamer, SetCamp, _1)
		CallPlayerFunction(PlayerIndexGamer, SetCurCamp, _1)
		return Msg2Player("Set is OK")
	end
	return AskClientForNumber("bilSetCamp4Player",0,999999,"Camp Value")
end

function bilAdminDelPassBox(_1)
	local a = GetTaskTemp(245)
	local b = CallPlayerFunction(a, GetName)
	local c = CallPlayerFunction(a, CheckStoreBoxState, 1)
	
	if _1 and _1 == -1 then
		return Bil_AllInformationForInputNamePage2(b)
	end
	
	if c <= 0 then
		return Talk(1, "#bilAdminDelPassBox(-1)", "Nh©n vËt "..b.." vÉn <color=red>ch­a cã pass r­¬ng<color>, kh«ng thÓ tiÕn hµnh xãa!")
	end
	
	if _1 and _1 == 1 then
		CallPlayerFunction(a, GMCancleBoxPassword)
		return Msg2Player("§· xãa m· r­¬ng cho nh©n vËt: <color=yellow>"..b)
	end
	
	return Say("B¹n muèn xãa MËt khÈu r­¬ng cho nh©n vËt <color=yellow>"..b.."<color>", 2, "X¸c nhËn xãa!/#bilAdminDelPassBox(1)", "Th«i ta nhÇm./OnCancel")
end

function bilAdminSetEnergy(_1, _2)
	local a = GetTaskTemp(245)
	local b = CallPlayerFunction(a, GetName)
	
	if _1 then
		if not(_2) then
			return Say("XÕp h¹ng thÕ giíi cho <color=yellow>"..b.."<color><enter>H¹ng (SetEnergy): <color=green>".._1.."<color>", 2, "Ch¾c ch¾n./#bilAdminSetEnergy(".._1..", 1)", "Th«i, ta nhÇm!/OnCancel")
		end
		
		CallPlayerFunction(a, SetEnergy, _1)
		return Msg2Player("<color=yellow>§· SetEnergy cho "..b..": ".._1)
	end
	
	return AskClientForNumber("bilAdminSetEnergy",0,999999,"SetEnergy")
end

function Bil_FunctionCityWar()
	local szTitle = ""..Bil_GetSignUpStateWithnCityId().." <enter>"..Bil_CityNameDaywnCityId().."<enter>"..Bil_GetRandomChallenger().."<enter>"..Bil_NameAndValueFirstvsDoubleTong().."<enter>"..Bil_GetNameTong1vs2CityWarNowDay().."."
	local tbOpt = 
	{
		{"Xem bang héi chiÕm thµnh",ViewNameCityOwner},
                                                        {"Di ChuyÓn §Õn N¬i",GMDC},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function GMDC()
	local tbOpt =
	{
                                            {"§Õn TT", GMTONGKIM2},
                                            {"§Õn Tèng Kim", GMTONGKIM},
                                            {"VÒ Ba L¨ng HuyÖn", GMBLH},
                                            {"C«ng Thµnh", GMCONGTHANH},
                                            {"Trô rång L©m An", ronglaman},
                                            {"Trô rång BiÖn Kinh", rongbk},

	{"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i ca ®i ®©u ?", tbOpt)
end

function GMTONGKIM2()
NewWorld(900,1440, 3334)
end

function GMTONGKIM()
NewWorld(380,1440, 3334)
end

function GMBLH()
NewWorld(53,1621, 3190)
end

function GMCONGTHANH()
NewWorld(930,1764, 3372)
end

function ronglaman()
NewWorld(930,1761, 3398)
end

function rongbk()
NewWorld(927,1755, 3397)
end


function Bil_FunctionLeagueMatch()
	local szTitle = Bil_EnemySay[4][1]..Bil_CheckLgMatchName().."<enter>"..Bil_CheckLGMatchType().."<enter>"..Bil_GetStateGlMatch().."<enter>"..Bil_CheckCityNameVsLevelAndGroup()..Bil_GetGroupAndPlayer()..""
	local tbOpt = 
	{
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

--================================================-- Liªn ®Êu --===============================================--
-- TÝnh n¨ng:
	-- Ng­êi th¾ng sÏ nhËn ®c 3 triÖu Kinh nghiÖm ë c¶ S¬ - Trung cÊp vµ Cao cÊp
	-- ng­êi thua hoÆc hßa sÏ nhËn ®c 1.5 triÖu Kinh nghiÖm ë c¶ S¬ - Trung cÊp vµ Cao cÊp
	-- Cao cÊp ng­êi th¾ng sÏ nhËn ®c 15 ®iÓm Vinh Dù, thua sÏ kh«ng cã ®iÓm vinh dù, hßa nhau  sÏ ®c 9 ®iÓm vinh dù.
	-- S¬ - Trung cÊp ng­êi th¾ng sÏ nhËn ®c 10 ®iÓm Vinh Dù, thua sÏ kh«ng cã ®iÓm vinh dù, hßa nhau sÏ ®c 7 ®iÓm vinh dù
	-- C«ng khai minh b¹ch trong viÖc xÕp h¹ng
	-- Vµo ®Êu tr­êng sÏ ko thÓ di chuyÓn vËt phÈm trong hµnh trang, vµ cã thÓ sö dông vËt phÈm trong thanh c«ng cô.
	-- Xãa bá ®é n¨ng ®éng khi tham gia Liªn ®Êu
	-- HiÖn t¹i thêi gian b¾t ®Çu tõ ngµy 8 ®Õn 28 hµng th¸ng
	-- Tõ Season [58] trë ®i më liªn ®Êu ë h×nh thøc ®¬n ®Êu tù do, n_ntype = 5
	-- C¸c ngµy ®Çu tuÇn tõ thø 2 ®Õn thø 6 ®Êu mçi ngµy 4 trËn tõ 19h~20h00. C¸c ngµy cuèi tuÇn thø 7 vµ chñ nhËt ®Êu 8 trËn mçi ngµy tõ 18h~19h00 vµ 21h~22h00
	-- ®· xãa bá ®é n¨ng ®éng céng thªm khi tham gia liªn ®Êu
	-- viÖt hãa vµ chØnh söa hoµn toµn c¸c c©u tho¹i vµ th«ng b¸o
	-- TÊt c¶ mäi ng­êi cã thÓ b¸o danh tham gia liªn ®Êu ë thÊt ®¹i thµnh thÞ, kh«ng cÇn ph©n chia MapID, hÖ thèng sÏ tù nhËn diÖn vµ ®­a vµo khu vùc thi ®Êu khu vùc <~ 199 vµ 120 ~ 
	-- 1 ®Êu tr­êng 10x10 « = 100 « x2 ng­êi = 200 ng­êi tèi ®a trong 1 ®Êu tr­êng, cã 8 ®Êu tr­êng <=> 800 « <=> 1600 ng­êi thi ®Êu tèi ®a trong 1 lÇn (cã thÓ më thªm 2 ®Êu tr­êng cho mçi 2 Level)
	-- tÊt c¶ ng­êi tham gia b¸o danh ®Òu sÏ ®­a vµ 1 Map vâ l©m liªn ®Êu (1), b¸o danh vµo ®Êu tr­êng hÖ thèng sÏ tÝnh tæng ng­êi ®· cã trong ®Êu tr­êng, nÕu ®Êu tr­êng nµo Ýt h¬n 200 ng­êi
		-- hÖ thèng sÏ ®­a vµo, nÕu b»ng 200 ng­êi hÖ thèng sÏ tiÕn hµnh ®­a vµo ®Êu tr­êng tiÕp theo.
	-- Toµn bé script ®· ®­îc g¸n cho NPC Vâ l©m truyÒn nh©n, c¸c NPC liªn quan ®Õn liªn ®Êu kh¸c ®· ®­îc xãa hoµn toµn.

	-- Fix l¹i cöa hµng vinh dù.
	
Include("\\script\\missions\\leaguematch\\head.lua")

_Bil_CityNameWithMapID = {{1, "Ph­îng T­êng"},{11, "Thµnh §«"},{37, "BiÖn Kinh"},{78, "T­¬ng D­¬ng"},{80, "D­¬ng Ch©u"},{162, "§¹i Lý"},{176, "L©m An"},}
_Bil_SubWorldLvl1 = {{506, "(1)"},{507, "(2)"},{508, "(3)"},{509, "(4)"},{510, "(5)"},{511, "(6)"},{512, "(7)"},{513, "(8)"},}
_Bil_SubWorldLvl2 = {{516, "(1)"},{517, "(2)"},{518, "(3)"},{519, "(4)"},{520, "(5)"},{521, "(6)"},{522, "(7)"},{523, "(8)"},}

function Bil_GetGroupAndPlayer()
	local Bil_String1 = "Error Bil_String1"
	local Bil_String2 = "Error Bil_String2"
	local OldSubWorld = SubWorld
	for i = 1, 8 do
		SubWorld = _Bil_SubWorldLvl1[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local Bil_String1_1 = "<color=pink>-------------------[<color><color=Orange>S¬ - Tr"
				local Bil_String1_2 = "ung cÊp<color><bclr><color=pink>]-------------------<color>§Êu tr"
				local Bil_String1_3 = "­êng: <color=green>"..i.."<color> - Sè ng­êi: <color=gree"
				local Bil_String1_4 = "n>"..getn(wlls_get_ms_troop()).."<color> - Tæng ng­êi: <col"
				local Bil_String1_5 = "or=green>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				Bil_String1 = Bil_String1_1..Bil_String1_2..Bil_String1_3..Bil_String1_4..Bil_String1_5
				break;
			end
	end
	for i = 1, 8 do
		SubWorld = _Bil_SubWorldLvl2[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local Bil_String2_1 = "<color=pink>-----------------------[<color><color=Orange>Cao cÊp<"
				local Bil_String2_2 = "color><bclr><color=pink>]----------------------<color>§Êu tr­êng: <color"
				local Bil_String2_3 = "=green>"..i.."<color> - Sè ng­êi: <color=green"
				local Bil_String2_4 = ">"..getn(wlls_get_ms_troop()).."<color> - Tæng ng­êi: <color=g"
				local Bil_String2_5 = "reen>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				Bil_String2 = Bil_String2_1..Bil_String2_2..Bil_String2_3..Bil_String2_4..Bil_String2_5
				break;
			end
	end
	SubWorld = OldSubWorld
	return "<enter>"..Bil_String2.."<enter>"..Bil_String1.."";
end

function Bil_CityNameWithMapID(MapID)
	for i = 1, getn(_Bil_CityNameWithMapID) do
		if _Bil_CityNameWithMapID[i][1] == MapID then
			return _Bil_CityNameWithMapID[i][2];
		end
	end
end

function Bil_CheckCityNameVsLevelAndGroup()
	local NowDayw = tonumber(date("%w"))
	local strNowDayw
	if NowDayw == 0 or NowDayw >= 6 then
		strNowDayw = "®Êu <color=yellow>8<color> trËn, tõ <color=yellow>18h00 ~ 19h00<color> vµ <color=yellow>20h00 ~ 21h00<color>"
	else
		strNowDayw = "®Êu <color=yellow>4<color> trËn, tõ <color=yellow>19h00 ~ 20h00<color><enter>"
	end
	return "H«m nay: "..strNowDayw..""
end

function Bil_CheckLgMatchName()
	return "TÝnh n¨ng : <color=yellow>Vâ L©m Liªn §Êu<color>";
end

function Bil_GetStateGlMatch()
	local n_timer = GetGlbValue(GLB_WLLS_TIME) + 1
			n_timer = WLLS_TIMER_PREP_TOTAL - n_timer
	local n_matchphase = GetGlbValue( 820 );
	if n_matchphase < 2 then
		return "Tr¹ng th¸i: <color=pink>T¹m nghØ, tiÕn hµnh nhËn th­ëng<color>";
	elseif n_matchphase == 2 then
		return "Tr¹ng th¸i: <color=green>Ch­a tíi giê b¸o danh<color>";
	elseif n_matchphase == 3 then
		return "Tr¹ng th¸i: <color=yellow>ChuÈn bÞ b¸o danh<color>";
	elseif n_matchphase == 4 then
		return "Tr¹ng th¸i: <color=Water>TiÕn hµnh b¸o danh<color>, thêi gian cßn <color=yellow>"..ceil(n_timer*WLLS_TIMER_PREP_FREQ/60).." phót<color>";
	elseif n_matchphase == 5 then
		local n_resttime = 120 - GetGlbValue(825)
		local n_resttime = ceil(n_resttime*5/60)
		return "Tr¹ng th¸i: <color=yellow>§ang thi ®Êu, thêi gian cßn<color> <color=blue>"..n_resttime.." phót<color>";
	end
end

function Bil_CheckLGMatchType()
	local n_ntype = GetGlbValue(824);
	if n_ntype == 0 then
		return "H×nh thøc : <color=red>TÝnh n¨ng ch­a ®­îc më<color>";
	elseif (WLLS_TAB[n_ntype].max_member <= 1) then
		return "H×nh thøc : <color=green>§¬n ®Êu tù do<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	elseif (WLLS_TAB[n_ntype].max_member > 1) then
		return "H×nh thøc : <color=green>§Êu nhiÒu ng­êi<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	end
end

--==============================================-- END - Liªn ®Êu --============================================--

--==============================================-- TÝn sø Phong kú --============================================--


-- Thêi gian tham gia: bÊt kÓ thêi gian, tæng thêi gian tham gia vµo Phong kú lµ 2 giê Code sÏ tù tÝnh tæng thêi gian ®· ë b¶n ®å Phong kú, sang ngµy míi sÏ Reset l¹i thêi gian
-- nÕu vµo team, th× mçi täa ®é hoÆc NPC ®¹t ®c sÏ ®c céng vµo cho tÊt c¶ c¸c thµnh viªn cña team bao gåm Exp vµ c¸c chØ sè.
-- mçi täa ®é ®¹t ®c 5.000 Kinh nghiÖm nhËn ngay
-- mçi täa ®é ®¹t ®­îc ®æi ë DÞch Quan sÏ nhËn ®c 20.000 Kinh nghiÖm
-- mçi NPC tiªu diÖt ®c sÏ nhËn ngay 15.000 Kinh nghiÖm
-- mçi NPC ®¹t ®­îc ®æi ë DÞch Quan sÏ nhËn ®c 10.000 Kinh nghiÖm
-- NhiÖm vô ®­a th­ nhËn danh väng mçi ngµy

-- Task 1201: Phong kú
	-- Value 10: B¾t ®Çu lµm nhiÖm vô
	-- Value 20: §· vµo b¶n ®å phong kú 
	-- Value 30: §· ra khái b¶n ®å phong kú
-- MapID: 389 - Map trªn 100

-- Task:
	-- 1201: Phong kú -----------------------
	-- 1202: s¬n thÇn - Task 1202, cña nhiÖm vô s¬n thÇn miÕu lµm tæng täa ®é nhËn ®c. -----------------------
	-- 1203: b¶o khè - Task 1203, cña nhiÖm vô Thiªn b¶o khè lµm tæng NPC tiªu diÖt ®­îc. -----------------------
	-- 1204:  == citygo[i][2] 
	-- 1205: ®iÓm tÝch lòy tÝn sø
	-- 1206: "Kh«ng ph¶i b¹n ®· v­ît qua thö th¸ch cña Phong Kú sao? Muèn xuÊt quan µ" lÖnh bµi
	-- 1207: tæng täa ®é ®· ®¹t ®c
	-- 1208: SetMessengerPlayer Fly
	-- 1209: SetMessengerPlayer shanshenmiao
	-- 1210: SetMessengerPlayer Tiªu trÊn ------------------------ lµm ngµy giê h«m tr­íc
	-- 1211: GetGameTime() -----------------------
	-- 1212: Used Time = GetGameTime() - Task 1211 -----------------------
	-- 1213: Thêi gian t¨ng gÊp ®«i Kinh nghiÖm khi ®¸nh qu¸i
	-- 1214: == 0 then "Tªn nµy ®· bÞ ng­êi ta ®· ng­êi ta mua ®øt råi, ng­¬i ®¸nh h¾n còng kh«ng ®­îc phÇn th­ëng."
	-- 1215: == 0 then "Ng­êi nµy ®· bÞ ng­êi kh¸c bäc, ng­¬i ®¸nh h¾n ch¾c sÏ kh«ng ®­îc phÇn th­ëng g×."

-- _Bil_CityIDWithMapID = {{1, 2, "Ph­îng T­êng"},{11, 3, "Thµnh §«"},{37, 5, "BiÖn Kinh"},{78, 6, "T­¬ng D­¬ng"},{80, 7, "D­¬ng Ch©u"},{162, 4162, "§¹i Lý"},{176, 1, "L©m An"},}
_Bil_CityIDWithMapID = {{1, 2, "Ph­îng T­êng"},{11, 3, "Thµnh §«"},{37, 5, "BiÖn Kinh"},{78, 6, "T­¬ng D­¬ng"},{80, 7, "D­¬ng Ch©u"},{162, 4, "§¹i Lý"},{176, 1, "L©m An"},}

function Bil_Getletter_station(W)
	for i = 1, getn(_Bil_CityIDWithMapID) do
		if _Bil_CityIDWithMapID[i][1] == W then
			return _Bil_CityIDWithMapID[i][2];
		end
	end
end

function Bil_CheckResetTask1212Fl(Bil_Task1210Date)
	local Bil_ymd = tonumber(date("%y%m%d"))
	if Bil_ymd <= Bil_Task1210Date then
		return 0
	else
		return 1212
	end
end

function bilCheckTimeFengzhiqui()
	local bilHour = tonumber(GetLocalDate("%H"))
	if mod(bilHour, 2) ~= 0 then
		Say("HiÖn t¹i Phong Kú ch­a tíi thêi gian më cöa, phiÒn   ®¹i nh©n ®îi ®Õn khi cã th«ng b¸o h·y ®Õn t×m ta.")
		return 1
	else
		return nil
	end
end

--===========================================-- END - TÝn sø Phong kú --=========================================--

--==========================================-- NieShiChen _ NV S¸t thñ --=========================================--

-- nhiÖm vô s¸t thñ, mçi Boss 9x nhËn ®c 1k4 Exp, Code tù ®éng ®­a ng­êi lµm nhiÖm vô ®Õn n¬i cña Boss, 1 ngµy h¹ s¸t ®c 8 ng­êi: --------OK
-- ®· chØnh söa l¹i hÖ thèng drop boss

function Bil_ProcessBossPos(PosX,PosY)
	local X = PosX
	local Y = PosY
	if X >= 0 and X < 1000 then X = X*8
	elseif X >= 1000 and X < 10000 then X = X
	elseif X >= 10000 and X < 100000 then X = (X/100)*8
	elseif X >= 100000 and X < 1000000 then X = (X/1000)*8
	elseif X >= 1000000 then X = (X/10000)*8
	end
	if Y >= 0 and Y <1000 then Y = Y*16
	elseif Y >= 1000 and Y < 10000 then Y = Y
	elseif Y >= 10000 and Y < 100000 then Y = (Y/100)*16
	elseif Y >= 100000 and Y < 1000000 then Y = (Y/1000)*16
	elseif Y >= 1000000 then Y = (Y/10000)*16
	end
	return X, Y
end

--=============================================-- END - NV S¸t thñ --===========================================--

--=============================================-- Qu¶n lý nh©n vËt --============================================--
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_autooffline4player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_client_ip.lua")
GetNameAdmin = bilNameOfGameMaster;

Bil_FactionVietvsCn = 
{
	{"shaolin", "ThiÕu L©m ph¸i"},
	{"tianwang", "Thiªn V­¬ng Bang"},
	{"tangmen", "§­êng M«n"},
	{"wudu", "Ngò §éc Gi¸o"},
	{"emei", "Nga My ph¸i"},
	{"cuiyan", "Thóy Yªn m«n"},
	{"gaibang", "C¸i Bang"},
	{"tianren", "Thiªn NhÉn Gi¸o"},
	{"wudang", "Vâ §ang ph¸i"},
	{"kunlun", "C«n L«n ph¸i"},
	{"huashan", "Hoa S¬n ph¸i"},
}

function Bil_VietFactionWithCnInput(FactionCn)
	for i = 1, 11 do
		if  Bil_FactionVietvsCn[i][1] == FactionCn then
			return Bil_FactionVietvsCn[i][2];
		end
	end
end

function Bil_EnemySay_Sx(Name)
	if callPlayerFunction(SearchPlayer(Name), GetSex) == 0 then
		return Bil_EnemySay[1][1];
	else
		return Bil_EnemySay[2][1];
	end
end

function Bil_CheckPlayerWithRolename(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local bilPlayerOfflineLive_W, bilPlayerOfflineLive_X, bilPlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("Nh©n vËt ®ang <color=yellow>Offline Live<color><enter>Tµi kho¶n ng­êi ch¬i: <color=yellow>"..CallPlayerFunction(SearchPlayer(Name), GetAccount).."<color><enter>VÞ trÝ: "..bilPlayerOfflineLive_W.." - "..bilPlayerOfflineLive_X.." - "..bilPlayerOfflineLive_Y.."<enter>Kh«ng thÓ hiÓn thÞ thªm!", 3, "§­a ta ®Õn ngay vÞ trÝ ng­êi nµy!/#bilPlayerOfflineLive_bilGo2Pos_OK("..bilPlayerOfflineLive_W..", "..bilPlayerOfflineLive_X..", "..bilPlayerOfflineLive_Y..")", "KÝch Out ng­êi nµy ra khái game!/#bilPlayerOfflineLive_KichOutPl("..Name..")", "Th«i kh«ng cÇn!/OnCancel")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "Lçi hoÆc tªn nh©n vËt kh«ng tån t¹i <enter>kh«ng thÓ lÊy PlayerIndex")
		return 1
	else
		return nil
	end
end

function bilPlayerOfflineLive_bilGo2Pos_OK(bilW, bilX, bilY)
	NewWorld(bilW, bilX, bilY)
	return Msg2Player("<color=yellow>§· ®Õn vÞ trÝ cña ng­êi ch¬i!")
end

function bilPlayerOfflineLive_KichOutPl(bilNameGamer, bilSel)
	if bilSel then
		CallPlayerFunction(SearchPlayer(bilNameGamer), KickOutSelf)
		return Msg2Player("<color=yellow>Ng­êi ch¬i ®· ®­îc ®­a ra khái game!")
	end
	return Say("ViÖc KÝch ng­êi ch¬i ra khái game lóc ®ang ñy th¸c sÏlµm sai lÖch th«ng sè b¶ng ng­êi ch¬i online vµ ng­êich¬i ®ang ñy th¸c, ng­êi thËt sù muèn thùc hiÖn thao t¸c nµy chø?", 2, "Ta ch¾c råi!/#bilPlayerOfflineLive_KichOutPl("..bilNameGamer..", 1)", "Th«i ta nhÇm!/OnCancel")
end

function NhapTenNhanVat()
	return AskClientForString("Bil_ProcNameInput4AllInformation", "", 1, 20, "NhËp tªn nh©n vËt");
end

function Bil_ProcNameInput4AllInformation(Name)
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return Bil_AllInformationForInputName(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return Bil_AllInformationForInputName(Name)
end

function Bil_NamePlayer(Name)
	if Name == GetNameAdmin then
		return "Tªn nh©n vËt: <color=black><bclr=red>"..Name.."<bclr><color> - "..Bil_GetAccountWithNameInput(Name).."";
	else
		return "Tªn nh©n vËt: <color=black><bclr=green>"..Name.."<bclr><color> - "..Bil_GetAccountWithNameInput(Name).."";
	end
end

function Bil_PlayerStatus(Name)
	if SearchPlayer(Name) == 0 then
		return "T×nh tr¹ng  : <color=red>Offline<color> <pic=137> - PlayerIndex: <color=red>__<color> - PK: <color=red>Offline<color>";
	else
		return "T×nh tr¹ng  : <color=green>Online<color> <pic=135> - PlayerIndex: <color=green>"..SearchPlayer(Name).."<color> - PK: <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetPK).."<color>";
	end
end

function Bil_GetAccountWithNameInput(Name)
	if SearchPlayer(Name) == 0 then
		return "Tªn tµi kho¶n: <color=red>Offline<color>";
	else
		return "Tªn tµi kho¶n: <color=green>"..callPlayerFunction(SearchPlayer(Name), GetAccount).."<color>";
	end
end

function Bil_GetLevelWithNameInput(Name)
	if SearchPlayer(Name) == 0 then
		return "§¼ng cÊp    : <color=red>Offline<color> - Exp: <color=red>Offline<color>";
	else
		return "§¼ng cÊp    : <color=green>"..callPlayerFunction(SearchPlayer(Name), GetLevel).."<color> - Exp: <color=green>"..(callPlayerFunction(SearchPlayer(Name), GetExpPercent)).."%<color>";
	end
end

function Bil_GetFactionWithName(Name)
	local MonPhai = ""
	local GioiTinh
	if SearchPlayer(Name) == 0 then
		return "M«n ph¸i    : <color=red>Offline<color> - Giíi tÝnh: <color=red>Offline<color>";
	else
		if callPlayerFunction(SearchPlayer(Name), GetSex) == 0 then
			GioiTinh = "Nam";
		else
			GioiTinh = "N÷";
		end
		if CallPlayerFunction(SearchPlayer(Name), GetFaction) == "" then
			MonPhai = "Ch­a gia nhËp ph¸i"
		else
			MonPhai = Bil_VietFactionWithCnInput(CallPlayerFunction(SearchPlayer(Name), GetFaction))
		end
		if FALSE(MonPhai) then
			MonPhai = "§· xuÊt s­"
		end
		return "M«n ph¸i    : <color=green>"..MonPhai.."<color> - Giíi tÝnh: <color=green>"..GioiTinh.."<color>";
	end
end

function Bil_GetTongNameWithName(Name)
	if SearchPlayer(Name) == 0 then
		return "Bang héi: <color=red>Offline<color>";
	else
		local tongname, _ = CallPlayerFunction(SearchPlayer(Name), GetTong)
		return "Bang héi: <color=green>"..tongname.."<color>";
	end
end

function Bil_GetLocationWithName(Name)
	if SearchPlayer(Name) == 0 then 
		return "VÞ trÝ      : <color=red>Offline<color>";
	else
		W,X,Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		return "VÞ trÝ      : MapID: <color=green>"..W.."<color> X: <color=green>"..floor(X/8).."<color> Y: <color=green>"..floor(Y/16).."<color> - <color=violet>H¹ng: <color><color=green>"..CallPlayerFunction(SearchPlayer(Name), GetEnergy).."<color>"
	end
end

function Bil_GetCashWithName(Name)
	local AllCash
	if SearchPlayer(Name) == 0 then
		return "Tµi  s¶n    : <color=red>Offline<color> - TiÒn §ång: <color=red>Offline<color>";
	else
		AllCash = CallPlayerFunction(SearchPlayer(Name), GetCash) + CallPlayerFunction(SearchPlayer(Name), GetBoxMoney)
		return "Tµi s¶n     : <color=green>"..floor(AllCash/10000).."<color><color=yellow> v¹n<color> <color=green>"..mod(AllCash, 10000).."<color><color=yellow> l­îng<color> - TiÒn §ång: <color=Orange>"..CallPlayerFunction(SearchPlayer(Name), GetCashCoin).."<color>";
	end
end

function Bil_GetIPWithName(Name)
	if SearchPlayer(Name) == 0 then
		return "§Þa chØ IP  : <color=red>Offline<color>";
	else
		if bilGetIPAdressWithProtocol ~= 1 then
			return "§Þa chØ IP  : <color=green>T¹m ®ãng!!<color>";
		end
		-- return "§Þa chØ IP  : <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetIP).."<color>";
		return "§Þa chØ IP  : <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetStringTask, (bilClientIP.TaskString or 0)).."<color>";
	end
end

function Bil_GetFightStateWithName(Name)
	if SearchPlayer(Name) == 0 then
		return "FightState: <color=red>Offline<color>";
	else
		return "FightState: <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetFightState).."<color>";
	end
end

function Bil_GetPointHonour(Name)
	if SearchPlayer(Name) == 0 then
		return "§iÓm vinh dù: <color=red>Offline<color>";
	else
		return "§iÓm vinh dù: <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetTask, 2501).."<color>";
	end
end

function Bil_GetLeagueRank(Name)
	if SearchPlayer(Name) == 0 then
		return "H¹ng liªn ®Êu: <color=red>Offline<color>";
	else
		local _, d = bil.SplitTime(CallPlayerFunction(SearchPlayer(Name), GetGameTime))
		return "H¹ng liªn ®Êu: <color=yellow>"..LG_GetLeagueTask(LG_GetLeagueObjByRole(5, CallPlayerFunction(SearchPlayer(Name), GetName)), 5).."<color> - Phong kú: <color=green>"..floor((CallPlayerFunction(SearchPlayer(Name), GetTask, 1212))/60).." Min <color>"
			.."<enter>PlayAllTime : "..d
	end
end

function Bil_Go2MapOfPlayer()
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then 
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		W,X,Y = CallPlayerFunction(PlayerIndex, GetWorldPos)
		return NewWorld(W, X, Y);
	end
end

function Bil_KichOutWithName()
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		Say("B¹n cã ch¾c vÒ ®iÒu nµy? <color=red>KickOut Player<color> <color=yellow>"..CallPlayerFunction(PlayerIndex, GetName).."<color>", 2, "Ch¾c råi/Bil_KichOutWithName_Sure", "Ta nhÇm/OnCancel")
	end
end
function Bil_KichOutWithName_Sure()
	local PlayerIndex = GetTaskTemp(245);
	return CallPlayerFunction(PlayerIndex, KickOutSelf);
end

function Bil_TitleManager4Player()
	if FALSE(CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle)) or CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle) == nil then
		CheckTitleActive = "<color=red>NULL<color>";
		CheckNameTitleActive = "<color=red>NULL<color>";
	else 
		CheckTitleActive = "<color=green>"..CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle).."<color>"
		CheckNameTitleActive = "<color=green>"..Title_GetTitleName(CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle)).."<color>"
	end
	local szTitle = "Danh hiÖu ®ang kÝch ho¹t: "..CheckTitleActive.."<enter>Title Name - "..CheckNameTitleActive.."<enter>GetTask(1122): <color=green>"..CallPlayerFunction(GetTaskTemp(245), GetTask, 1122).."<color>"
	local tbOpt = 
	{
		{"Thªm vµ kÝch ho¹t danh hiÖu míi cho "..CallPlayerFunction(GetTaskTemp(245), GetName).."",Bil_TitleManager4Player_EditTitle},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function Bil_TitleManager4Player_EditTitle()
	Say("B¹n cã ch¾c vÒ ®iÒu nµy? <enter><color=red>Thªm, söa, xãa danh hiÖu cho<color><color=yellow> "..CallPlayerFunction(GetTaskTemp(245), GetName).."", 2, "Ch¾c råi/Bil_TitleManager4Player_EditTitle_Sure", "Ta nhÇm/OnCancel")
end
function Bil_TitleManager4Player_EditTitle_Sure()
	return AskClientForString("Bil_TitleManager4Player_EditTitle_Sure_Input", "", 1, 500, "ID,Time")
end
function Bil_TitleManager4Player_EditTitle_Sure_Input(StrTitleID)
	local bilString1 = strfind(StrTitleID, ",")
	if(FALSE(bilString1)) then return Msg2Player("Khai b¸o lçi!") end
	local TitleID = tonumber(strsub(StrTitleID, 1, bilString1 - 1))
	if(FALSE(TitleID)) then return Msg2Player("Khai b¸o lçi TitleID!") end
	local bilTitleTime = tonumber(strsub(StrTitleID, bilString1 + 1, strlen(StrTitleID)))
	local nServerTime = GetCurServerTime()+ (bilTitleTime*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	CallPlayerFunction(GetTaskTemp(245), Title_AddTitle, TitleID, 2, nTime)
	CallPlayerFunction(GetTaskTemp(245), Title_ActiveTitle, TitleID)
	CallPlayerFunction(GetTaskTemp(245), SetTask, 1122, TitleID)
	Msg2Player("GM: §· thªm vµ kÝch ho¹t danh hiÖu <color=yellow>"..Title_GetTitleName(TitleID).."<color> cho <color=green>"..CallPlayerFunction(GetTaskTemp(245), GetName).." trong "..bilTitleTime.." ngµy!")
end

function Bil_InputString2Msg()
	if GetTaskTemp(245) == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		return AskClientForString("Bil_Msg2PlayerWithName", "", 1, (255-51), "<#>NhËp th«ng b¸o");
	end
end

function Bil_Msg2PlayerWithName(msg)
	local StringMsg = "<bclr=yellow><color=black>GameMaster<bclr><color> <pic=139> "..msg..""
	return callPlayerFunction(GetTaskTemp(245), Msg2Player, StringMsg);
end

function Bil_InputString2Say()
	if GetTaskTemp(245) == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		return AskClientForString("Bil_Say2PlayerWithName", "", 1, (410), "<#>NhËp th«ng b¸o");
	end
end

function Bil_Say2PlayerWithName(msg)
	local StringMsg = {"<bclr=yellow><color=black>GameMaster<bclr><color> <pic=139> "..msg.."", 1, "Tr¶ lêi l¹i GameMaster/Bil_Reply2GameMaster"};
	Bil_ViewInfoCenterOfGamer(GetTaskTemp(245))
	return callPlayerFunctionParamList(GetTaskTemp(245), Say, StringMsg);
end

function Bil_Reply2GameMaster()
	return AskClientForString("Bil_Reply2GameMasterStr", "", 1, (410), "<#>NhËp c©u tr¶ lêi");
end

function Bil_Reply2GameMasterStr(Messenger)
	local GamerName = GetName()
	local PlayerIndexAdmin = SearchPlayer(GetNameAdmin); 
	local PlayerIndexGamer = SearchPlayer(GamerName)
	local StringMsg = 
		{
			"<bclr=green><color=black>"..GamerName.."<bclr><color> <pic=139> "..Messenger.."", 3, 
				"Tr¶ lêi l¹i "..GamerName.."/Bil_InputString2Say", 
				"Xem th«ng tin cña "..GamerName.."/#Bil_ViewInfoCenterOfGamer("..PlayerIndexGamer..")", 
				"KÕt thóc ®èi tho¹i./ResetStateChatWithGM",
		};
	CallPlayerFunction(PlayerIndexAdmin, SetTaskTemp, 245, PlayerIndexGamer)
	return callPlayerFunctionParamList(PlayerIndexAdmin, Say, StringMsg);
end

function Bil_ViewInfoCenterOfGamer(GamerIndex)
	return Bil_AllInformationForInputName(callPlayerFunction(GamerIndex, GetName))
end

function Bil_NewWorld2Player()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, SetFightState, 0);
		CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>Trë vÒ Ba l¨ng huyÖn!");
		return CallPlayerFunction(PlayerIndexGamer, NewWorld, 53, 1622, 3181);
	end
end

function ResetStateChatWithGM()
	Bil_SetTask(3, 0)
end

--==========================================-- END - Qu¶n lý nh©n vËt --==========================================--

--==========================================-- Chøc n¨ng Administrator --==========================================--

BilNpcSongJinShop = "<color=Orange>Qu©n nhu quan<color>: "
BilNpcSongJinShopExChangeExp = 1234.5679

IncludeLib("RELAYLADDER")
Include("\\script\\gmscript.lua");
Include("\\script\\global\\bil4i3n\\bil4i3n_testgame.lua");

Bil_EnemyTTQ = "<color=Orange>T©n Thñ Quan<color>: "
Bil_EnemySay = 
{
	{"<link=image[4,20]:\\spr\\npcres\\enemy\\enemy208\\enemy208_at.spr><link><color>","Tèng kim nam nh©n vËt h×nh t­îng"}, --
	{"<link=image[0,15]:\\spr\\npcres\\enemy\\enemy207\\enemy207_at.spr><link><color>","Tèng kim n÷ nh©n vËt h×nh t­îng"}, --
	{"<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>","Liªn ®Êu Qu¸n qu©n"}, --
	{"<link=image[0,8]:\\spr\\npcres\\passerby\\passerby092\\passerby092_st.spr><link><color>","Vâ l©m truyÒn nh©n"}, --
	{"<link=image[0,13]:\\spr\\npcres\\passerby\\passerby181\\passerby181_pst.spr><link><color=Orange>DÞch Quan: <color>","DÞch quan"}, --
	{"<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>","Liªn ®Êu ¸ qu©n"},
	{"<link=image:\\spr\\skill\\others\\title_bj.spr><link><color>","Liªn ®Êu h¹ng 3"},
	{"<link=image:\\spr\\skill\\others\\title_yl.spr><link><color>","Liªn ®Êu h¹ng 4"},
	{"<link=image:\\spr\\skill\\others\\title_zw.spr><link><color>","Vßng s¸ng mµu xanh"},
	{"<link=image[147,167]:\\spr\\npcres\\enemy\\enemy154\\enemy154_pst.spr><link><color>","NhiÕp ThÝ TrÇn"},
	-- {"<link=image[0,0]:\\spr\\item\\script\\jingniangshijian.spr><link><color>","CÈm nang ®ång hµnh"},
	{"<link=image:\\spr\\skill\\christmas\\star2.spr><link><color>","CÈm nang ®ång hµnh"},
	{"<link=image[0,20]:\\spr\\npcres\\passerby\\passerby181\\passerby181_pst.spr><link><color>", "LÔ quan"},
}

function Bil_MsgAndAddlocal_Server()
	AskClientForString("Bil_MsgAndAddlocal_Server_Ok", "", 1, 500, "NhËp th«ng b¸o")
end

function Bil_MsgAndAddlocal_Server_Ok(Strg)
	RemoteExc("\\script\\bil4i3n\\bil4i3n_msg2allworld.lua", "bilMsg2AllWorld:Send2All", {"<color=yellow>"..Strg})
end 

function Bil_SetFightState4U()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		AskClientForNumber("Bil_SetFightState4U_Sure",0,1,"<#>NhËp gi¸ trÞ!")	
	end
end

function Bil_SetFightState4U_Sure(Value)
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, SetFightState, Value);
		-- CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>Tr¹ng th¸i chiÕn ®Êu: "..Value);
		Msg2Player("<color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).." FightState: "..Value)
	end
end

function bilCallPlayer2Here()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		local W,X,Y = GetWorldPos();
		CallPlayerFunction(PlayerIndexGamer, NewWorld, W, X, Y)
		CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>B¹n ®· ®­îc triÖu håi ®Õn ®©y!")
	end
end

function bilGetASetTask2Player()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		AskClientForString("bilGetASetTask2Player_Step2", "",0,500,"<#>NhËp Task,Value!")	
	end
end

function bilGetASetTask2Player_Step2(bilStringTaskID)
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		local bilString1 = strfind(bilStringTaskID, ",")
		if(FALSE(bilString1)) then return Msg2Player("Khai b¸o lçi!") end
		local bilTaskID = tonumber(strsub(bilStringTaskID, 1, bilString1 - 1))
		if(FALSE(bilTaskID)) then return Msg2Player("Khai b¸o lçi TaskID!") end
		local bilValue = tonumber(strsub(bilStringTaskID, bilString1 + 1, strlen(bilStringTaskID)))
		if((bilValue == nil)) then return Msg2Player("Khai b¸o lçi Value!") end
		local bilGamerTaksValueOld = CallPlayerFunction(PlayerIndexGamer, GetTask, bilTaskID)
		return Say("ChØnh söa gi¸ trÞ Task cho ng­êi ch¬i.<enter>TaskID: <color=green>"..bilTaskID.."<color><enter>Gi¸ trÞ cò: <color=green>"..bilGamerTaksValueOld.."<color><enter>Gi¸ trÞ míi: <color=yellow>"..bilValue.."<color><enter>B¹n ch¾c ch¾n chØnh söa gi¸ trÞ chø?", 2, "Ch¾c råi!/#bilGetASetTask2Player_Step3("..bilTaskID..","..bilValue..")", "Th«i ta nhÇm!/OnCancel")
	end
end

function bilGetASetTask2Player_Step3(bilTaskID, bilValue)
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, SetTask, bilTaskID, bilValue)
	Msg2Player("<color=yellow>§· SetTask "..bilTaskID..": "..bilValue.." - cho: "..CallPlayerFunction(PlayerIndexGamer, GetName))
end

function Bil_DefaultTalk4Npc()
	Bil_DefaultTalk4NpcTable = 
	{
		"Xin chµo! <pic=103>",
		"Ha ha ha! Vui qu¸!  Vui qu¸! <pic=0>",
		"Xin chµo! ®¹i hiÖp ®i ®©u rñ ta ®i víi <pic=103>",
		"Kh¸ch quan! Ng­¬i mÖt råi, ngåi xuèng uèng ly trµ ®·. <pic=99>",
		"Cã ph¶i vÞ thiÕu hiÖp ®Õn ®©y ®Ó du xu©n ng¾m c¶nh ch¨ng <pic=96>",
		"Giµu cã thËt lµ s­íng, cã ai kh«ng muèn sèng trong sung s­íng chø? <pic=120>",
		"N¬i nµy thËt tÊp nËp, ta quyÕt ®Þnh sang n¨m sÏ chuyÓn ®Õn ®©y ®Þnh c­. <pic=48>",
		"Bän quan phñ ¨n nhËu 1 ngµy b»ng bän ta tiªu sµi c¶ n¨m, thËt bÊt c«ng. <pic=81>",
		"Tªn nµy ch¾c ®Çu ãc cã vÊn ®Ò.<enter>Si T¨ng: A! §Ëu hñ! ThÞt chã... <pic=99>",
		"VÞ kh¸ch nµy ch¾c ë ph­¬ng xa ®Õn, cã muèn cïng ta ®i d¹o 1 vßng kh«ng? <pic=99>",
		"Ta ë ®©y kh«ng quen ko biÕt ai, cuéc sèng thËt ch¸n!, cã muèn cïng ta lµm chót kh«ng? <pic=99>",
		"Tøc thËt! §¸m chã sãi nµy ®óng lµ muèn lÊy m¹ng ng­êi! §· h¹i lÊy m¹ng m­êi huynh ®Ö råi. <pic=6>",
		"Ng­¬i tõ n¬i kh¸c ®Õn ph¶i kh«ng? ë ®©y quanh n¨m 4 mïa c¶nh vËt nh­ tranh, phong hoa tuyÕt nguyÖt. <pic=48>",
		"VÞ huynh ®Ö nµy cã ph¶i muèn uèng trµ, nµo l¹i ®©y ®· l©u kh«ng gÆp, chóng ta cïng ngåi hµn huyªn chuyÖn cò råi h·y ®i. <pic=58>",
		"Nghe ng­êi ta nãi, ë trong triÒu ®Òu lµ tuyÖt thÕ giai nh©n, nÕu nh­ cuéc ®êi nµy gÆp ®­îc ng­êi xinh ®Ñp nh­ thÕ, chÕt còng ®¸ng. <pic=99>",
		"Ta ®øng ë ®©y c¶ ngµy trêi kh«ng 1 th»ng hái th¨m <pic=6>, tøc qu¸ h«m nay ta miÔn phÝ <pic=103>, thiÕu hiÖp cã muèn vui vÎ víi ta kh«ng? <pic=99>",
	}
	return Talk(1, "", Bil_DefaultTalk4NpcTable[random(1,16)])
end

function Bil_ShowAllInfoAdministrator()
	Bil_SetTask(3, PlayerIndex)
	return "Chµo Admin: <color=black><bclr=red>"..GetName().."<bclr><color> - "..Bil_GetWorldPosWXY()..".<enter>NameServer: <color=green>"..GetServerName().."<color>";
end

function Bil_GetWorldPosWXY()
	local W,X,Y = GetWorldPos();
	return "MapID: <color=green>"..W.."<color> X: <color=green>"..X.."<color> Y: <color=green>"..Y.."<color>";
end

function Bil_InfoNowDayMMYearHourMin()
	local year = tonumber(date( "%y"))
	local mm = tonumber(date( "%m"))
	local day = tonumber(date( "%d"))
	local hour = tonumber(GetLocalDate("%H"))
	local mmin = tonumber(GetLocalDate("%M"))
	return "H«m nay lµ: <color=yellow>Ngµy <color><color=green>"..day.."<color> <color=yellow>Th¸ng <color><color=green>"..mm.."<color> <color=yellow>N¨m<color> <color=green>"..year.."<color> - <color=green>"..hour.."<color> <color=yellow>Giê<color> <color=green>"..mmin.."<color> <color=yellow>Phót<color>";
end

function Bil_ShowCountPlayerOnline()
	local bil_1 = ""
	local a = bil.IniFile
	a.Load("doanh_thu.dat")
	local b, c = a.Get("doanhthu", ("day_"..(date("%d_%m_%y")))), a.Get("doanhthu", "day_all")
	a.Release()
	
	if bilAllowOnTimerAutoChat == 0 then
		bil_1 = "<color=orange>§ang t¹m ®ãng.<color>"
	else
		bil_1 = "<color=green>"..GetGlbValue(4999).."<color> ng­êi."
	end
	return "CountPlayr: <color=green>"..GetPlayerCount().."<color> = Online: <color=green>"..(GetPlayerCount() - bilAdminGetCountPlayerAutoOffline()).."<color> + Offline Live: <color=green>"..bilAdminGetCountPlayerAutoOffline().."<color>"
		.."<enter>Auto Chat : "..bil_1.."<enter>Doanh thu : Ngµy "..bil.C(2, (bil.False(b) and "0" or b)).." T§ - Tæng "..bil.C(2, bil.False(c) and "0" or c).." T§"
end

function Bil_ShowPos()
	x,y = GetPos();
	return "GetPos    : <color=green>"..x..", "..y.."<color> - SubWorld: <color=green>"..SubWorld.."<color>";
end

function Bil_PasswordAcceptedFalse()
	Talk(1, "","<color=green>Cã lÏ nhµ ng­¬i nªn tr¶ l¹i vËt nµy th× h¬n, hoÆc b¸n Shop<color><enter>Tªn Tµi Kho¶n : <color=blue>"..GetAccount().."<color><enter>Tªn Nh©n VËt  : <color=blue>"..GetName().."<color><enter><color=red>Th«ng b¸o nµy sÏ gëi ®Õn GM ®Ó tiÕn hµnh gi¶i quyÕt!")
		print( " .")print( " .")
		print( " --=================================================================--")
		print( "                    Lenh Bai Admin bi that lac")
		print(format( " Ten Tai Khoan : %s ", GetAccount( )))
		print(format( " Ten Nhan Vat  : %s ", GetName( )))
		print(format( " Dang Cap      : %s ", GetLevel( )))
		print( " --=================================================================--")print( " .")print( " .")
end

function Bil_GetDanhHieuGM()
	local n_title = 327 -- GAME MASTER
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	SetTask(1122, n_title)
end

function GetDanhHieuvsMagicAdmin()
	return Say("Kü n¨ng ®Æc biÖt cho ng­êi qu¶n lý vµo theo dâi hÖ thèng!", 8, 
		"XuÊt danh s¸ch xÕp h¹ng ra file!/bilExportLadder", 
		"Xãa b¶ng xÕp h¹ng thËp ®¹i cao thñ!/#bilAdminClearLadderAll()", 
		"NhËn kü n¨ng tµng h×nh/GetDanhHieuvsMagicAdmin_TanHinh", 
		"Hñy kü n¨ng tµng h×nh/GetDanhHieuvsMagicAdmin_UnTanHinh", 
		"CÊm CHAT trªn hÖ thèng kªnh/#GetDanhHieuvsMagicAdmin_ChatFlag(1)", 
		"Hñy cÊm CHAT trªn hÖ thèng kªnh/#GetDanhHieuvsMagicAdmin_ChatFlag(0)", 
		"Danh hiÖu cho GM/GetDanhHieuvsMagicAdmin_DanhHieu", 
		"KÕt thóc ®èi tho¹i!/OnCancel")
end

function bilAdminClearLadderAll(bil_In_1, bil_In_2, bil_In_3, bil_In_4)
	local bil_tbLadderId = {
		[1] = {
			bil_sName = "ThËp ®¹i cao thñ M«n ph¸i",
			bil_nID = {
				{bil_nID = 10282, bil_sDesc = "Cao thñ Thóy yªn"},
				{bil_nID = 10281, bil_sDesc = "Cao thñ Nga my"},
				{bil_nID = 10279, bil_sDesc = "Cao thñ §­êng m«n"},
				{bil_nID = 10280, bil_sDesc = "Cao thñ Ngò ®éc"},
				{bil_nID = 10278, bil_sDesc = "Cao thñ Thiªn v­¬ng"},
				{bil_nID = 10277, bil_sDesc = "Cao thñ ThiÕu l©m"},
				{bil_nID = 10285, bil_sDesc = "Cao thñ Vâ ®ang"},
				{bil_nID = 10286, bil_sDesc = "Cao thñ C«n l«n"},
				{bil_nID = 10284, bil_sDesc = "Cao thñ Thiªn nhÉn"},
				{bil_nID = 10283, bil_sDesc = "Cao thñ C¸i bang"},
			},
		},
		[2] = {
			bil_sName = "ThËp ®¹i cao thñ ThÕ giíi",
			bil_nID = {
				{bil_nID = 10287, bil_sDesc = "ThËp ®¹i Cao thñ thÕ giíi"},
				{bil_nID = 10288, bil_sDesc = "ThËp ®¹i Phó hé"},
				{bil_nID = 10195, bil_sDesc = "ThËp ®¹i Vinh dù"},
				{bil_nID = 10122, bil_sDesc = "ThËp ®¹i §iÓm danh"},
				{bil_nID = 10121, bil_sDesc = "ThËp ®¹i Phóc duyªn"},
				{bil_nID = 10228, bil_sDesc = "ThËp ®¹i Online"},
				{bil_nID = 10229, bil_sDesc = "ThËp ®¹i Khiªu chiÕn lÖnh"},
			},
		},
		[3] = {
			bil_sName = "ThËp ®¹i Phó hé M«n ph¸i",
			bil_nID = {
				{bil_nID = 10265, bil_sDesc = "Phó hé Thóy yªn"},
				{bil_nID = 10266, bil_sDesc = "Phó hé Nga my"},
				{bil_nID = 10267, bil_sDesc = "Phó hé §­êng m«n"},
				{bil_nID = 10268, bil_sDesc = "Phó hé Ngò ®éc"},
				{bil_nID = 10269, bil_sDesc = "Phó hé Thiªn v­¬ng"},
				{bil_nID = 10270, bil_sDesc = "Phó hé ThiÕu l©m"},
				{bil_nID = 10271, bil_sDesc = "Phó hé Vâ ®ang"},
				{bil_nID = 10272, bil_sDesc = "Phó hé C«n l«n"},
				{bil_nID = 10273, bil_sDesc = "Phó hé Thiªn nhÉn"},
				{bil_nID = 10274, bil_sDesc = "Phó hé C¸i bang"},
			},
		},
	}
	local bil_1 = {}
	if bil_In_4 then
		if bil_In_4 == 1 then
			local bil_3 = "Xãa <color=red> Toµn bé b¶ng xÕp h¹ng<color>"
			if bil_In_1 then
				bil_3 = format(bil_3.."<color=yellow> %s<color>", bil_tbLadderId[bil_In_1].bil_sName)
			end
			return CreateNewSayEx(Bil_EnemySay[3][1]..bil_3.." ?", {{"X¸c nhËn xãa!", bilAdminClearLadderAll, {bil_In_1, nil, nil, bil_In_4 + 1}}, {"KÕt thóc ®èi tho¹i.", OnCancel}})
		elseif bil_In_4 == 2 then
			if bil_In_1 then
				for bil_l_3 = 1, getn(bil_tbLadderId[bil_In_1].bil_nID) do
					Ladder_ClearLadder(bil_tbLadderId[bil_In_1].bil_nID[bil_l_3].bil_nID)
				end
				return Msg2Player("Xãa toµn bé b¶ng xÕp h¹ng: "..bil_tbLadderId[bil_In_1].bil_sName)
			else
				for bil_l_4 = 1, getn(bil_tbLadderId) do
					for bil_l_3 = 1, getn(bil_tbLadderId[bil_l_4].bil_nID) do
						Ladder_ClearLadder(bil_tbLadderId[bil_l_4].bil_nID[bil_l_3].bil_nID)
					end
				end
				return Msg2Player("Xãa toµn bé b¶ng xÕp h¹ng!")
			end	
		end
	end
	if bil_In_3 then
		Ladder_ClearLadder(bil_tbLadderId[bil_In_1].bil_nID[bil_In_2].bil_nID)
		return Msg2Player("§· xãa b¶ng xÕp h¹ng: "..bil_tbLadderId[bil_In_1].bil_nID[bil_In_2].bil_sDesc)
	end
	if bil_In_2 then
		return CreateNewSayEx(Bil_EnemySay[3][1].."Xãa b¶ng xÕp h¹ng: <color=yellow>"..bil_tbLadderId[bil_In_1].bil_sName.." - "..bil_tbLadderId[bil_In_1].bil_nID[bil_In_2].bil_sDesc.."<color> ?", {{"X¸c nhËn xãa!", bilAdminClearLadderAll, {bil_In_1, bil_In_2, 1}}, {"KÕt thóc ®èi tho¹i.", OnCancel}})
	end
	if bil_In_1 then
		for bil_l_2 = 1, getn(bil_tbLadderId[bil_In_1].bil_nID) do
			tinsert(bil_1, {bil_tbLadderId[bil_In_1].bil_sName.." - "..bil_tbLadderId[bil_In_1].bil_nID[bil_l_2].bil_sDesc, bilAdminClearLadderAll, {bil_In_1, bil_l_2}})
		end
	else
		for bil_l_1 = 1, getn(bil_tbLadderId) do
			tinsert(bil_1, {"Xãa "..bil_tbLadderId[bil_l_1].bil_sName, bilAdminClearLadderAll, {bil_l_1}})
		end
	end
	tinsert(bil_1, {"Xãa toµn bé.", bilAdminClearLadderAll, {bil_In_1, nil, nil, 1}})
	tinsert(bil_1, {"KÕt thóc ®èi tho¹i.", OnCancel})
	return CreateNewSayEx(Bil_EnemySay[3][1].."Xãa b¶ng xÕp h¹ng!", bil_1)
end

function bilExportLadder()
	local bil_1 = "script/global/bil4i3n/bil4i3n_log/Ladder_"..date("%d_%m_%Y")..".log"
	local bil_2 = {
		{s_Name = "Cao thñ ThÕ giíi", n_LadderId = 10287},
		{s_Name = "Cao thñ ThiÕu l©m", n_LadderId = 10277},
		{s_Name = "Cao thñ Thiªn v­¬ng", n_LadderId = 10278},
		{s_Name = "Cao thñ §­êng m«n", n_LadderId = 10279},
		{s_Name = "Cao thñ Ngò ®éc", n_LadderId = 10280},
		{s_Name = "Cao thñ Nga my", n_LadderId = 10281},
		{s_Name = "Cao thñ Thóy yªn", n_LadderId = 10282},
		{s_Name = "Cao thñ C¸i bang", n_LadderId = 10283},
		{s_Name = "Cao thñ Thiªn nhÉn", n_LadderId = 10284},
		{s_Name = "Cao thñ Vâ ®ang", n_LadderId = 10285},
		{s_Name = "Cao thñ C«n l«n", n_LadderId = 10286},
	}
	local bil_4 = openfile(bil_1, "w");
	for bil_l_1 = 1, getn(bil_2) do
		write(bil_4, "\n[[ "..bil_2[bil_l_1].s_Name.." ]] = {\n")
		for bil_l_2 = 1, 10 do
			local bil_3_Name, bil_3_Value = Ladder_GetLadderInfo(bil_2[bil_l_1].n_LadderId, bil_l_2)
			write(bil_4, "\t[ H¹ng "..bil_l_2.." ]  --  "..bil_3_Name.."\n")
		end
		write(bil_4, "}\n")
	end
	closefile(bil_4)
	Msg2Player("<color=white>Export to "..bil_1)
end

function GetDanhHieuvsMagicAdmin_ChatFlag(bilSel)
	SetChatFlag(bilSel)
end

function GetDanhHieuvsMagicAdmin_UnTanHinh()
                                                                                   DelMagic(1208)
                                                                                   SetFightState(0)
	SetCurCamp(0)
	SetCamp(0)
end

function GetDanhHieuvsMagicAdmin_TanHinh()
                                                                                  --AddMagic(732, 20)
                                                                                  --AddMagic(733, 20)
AddMagic(1208,20)
AddMagic(160,50)
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
end

function GetDanhHieuvsMagicAdmin_DanhHieu()
	-- AddProp(155000);AddStrg(50000);AddDex(50000);AddVit(5000);AddEng(50000)
	
	-- AddSkillState(527, 5, 1, 1555200, 1) -- t¨ng l­îng m¸u tèi ®a
	AddSkillState(472, 50, 1, 1555200, 1) -- håi m¸u
	AddSkillState(513, 50, 1, 1555200, 1) -- phßng thñ vËt lý *2
	AddSkillState(514, 50, 1, 1555200, 1) -- kh¸ng ®éc *2
	AddSkillState(515, 50, 1, 1555200, 1) -- kh¸ng b¨ng *2
	AddSkillState(516, 50, 1, 1555200, 1) -- kh¸ng háa*2
	AddSkillState(517, 50, 1, 1555200, 1) -- kh¸ng l«i *2
	
	Bil_GetDanhHieuGM();
	
	AddMagic(732, 1);AddMagic(733, 1)
	
	AddMagic(362, 60);AddMagic(48, 60);AddMagic(252, 60);AddMagic(360, 60);AddMagic(166, 60);AddMagic(275, 60)
	Msg2Player("§· nhËn ®­îc bé kü n¨ng chuyªn dông vµ Danh hiÖu cho GM.")
end

function Bil_SongJinExChangeExp(Point)
	return BilNpcSongJinShopExChangeExp*Point
end

function returnbalanghuyen()
	gopos_step3(8, 1);
end

function OnCancel()
	Bil_SetTask(3, 0)
end

function Bil_MoveMapBlock()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		Say("B¹n cã ch¾c vÒ ®iÒu nµy? <color=red>Lªn ®¶o lét chuèi<color> <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color>", 3, "Ch¾c råi/Bil_MoveMapBlock_Oke", "MiÔn gi¶m ¸n ph¹t/Bil_MoveBack2BLH", "Ta nhÇm/OnCancel")
	end
end

function Bil_MoveMapBlock_Oke()
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, SetTask, 5970, CallPlayerFunction(PlayerIndexGamer, GetCamp));
	CallPlayerFunction(PlayerIndexGamer, NewWorld, 241, 1597, 3205);
	CallPlayerFunction(PlayerIndexGamer, SetCurCamp, 0);
	CallPlayerFunction(PlayerIndexGamer, SetCamp, 0);
	CallPlayerFunction(PlayerIndexGamer, SetChatFlag, 1);
	CallPlayerFunction(PlayerIndexGamer, DelMagic, 210);
	return CallPlayerFunction(PlayerIndexGamer, Say, "HÖ thèng Check ®· ph¸t hiÖn b¹n <color=yellow>Quy ph¹m quy ®Þnh cña m¸y chñ<color> . BÞ tèng lªn <color=yellow>§¶o Hoang<color>. §ång thêi <color=yellow>CÊm ch¸t<color> trªn mäi tÇng sè ", 0);
end

function Bil_MoveBack2BLH()
	local PlayerIndexGamer = GetTaskTemp(245);
	return Say("B¹n cã ch¾c vÒ ®iÒu nµy? <color=red>Th¶ ng­êi vÒ trung nguyªn<color> <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color>", 3, "Ch¾c råi/Bil_MoveBack2BLH_Oke", "Ta nhÇm/OnCancel")
end

function Bil_MoveBack2BLH_Oke()
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, AddMagic, 210,1);
	CallPlayerFunction(PlayerIndexGamer, NewWorld, 53, 1622, 3181);
	CallPlayerFunction(PlayerIndexGamer, SetCurCamp, CallPlayerFunction(PlayerIndexGamer, GetTask, 5970));
	CallPlayerFunction(PlayerIndexGamer, SetCamp, CallPlayerFunction(PlayerIndexGamer, GetTask, 5970));
	CallPlayerFunction(PlayerIndexGamer, SetChatFlag, 0);
	return CallPlayerFunction(PlayerIndexGamer, Say, "B¹n ®· ®­îc ®­a vÒ Trung nguyªn, lÇn sau ®õng quy ph¹m quy ®Þnh th× h¬n!.", 0);
end

function bilFixShenXingFu()
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, DisabledUseTownP, 0);
	return CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>Tr¹ng th¸i sö dông thæ ®Þa phï vµ thÇn hµnh phï cña Quý nh©n sÜ ®· trë vÒ ban ®Çu!.", 0);
end

function bilGetItemsWithParam2Player()
	return AskClientForString("bilGetItemsWithParam_Param", "", 1, 500, "x,y,z,CÊp,Sè l­îng")
end

function bilGetItemsWithParam_Param(Param)
	local Keywk1 = strfind(Param, ",")
	local bilNum1 = tonumber(strsub(Param, 1, Keywk1 - 1))
	local Keywk2 = strsub(Param, Keywk1 + 1, strlen(Param))
	local bilNum2 = tonumber(strsub(Keywk2, 1, strfind(Keywk2, ",") - 1))
	local Keywk3 = strsub(Keywk2, strfind(Keywk2, ",") + 1, strlen(Keywk2))
	local bilNum3 = tonumber(strsub(Keywk3, 1, strfind(Keywk3, ",") - 1))
	local Keywk4 = strsub(Keywk3, strfind(Keywk3, ",") + 1, strlen(Keywk3))
	local bilNum4 = tonumber(strsub(Keywk4, 1, strfind(Keywk4, ",") - 1))
	local bilNum5 = tonumber(strsub(Keywk4, strfind(Keywk4, ",") + 1, strlen(Keywk4)))
	return bilGetItemsWithParam_Answer(bilNum1,bilNum2,bilNum3,bilNum4,bilNum5)
end

function bilGetItemsWithParam_Answer(bilNum1,bilNum2,bilNum3,bilNum4,bilNum5)
	local PlayerIndexGamer = GetTaskTemp(245);
	local bilItemIndex = AddItem(bilNum1, bilNum2, bilNum3, bilNum4, random(0,4), 0, 0)
	local bilItemName2Pler = GetItemName(bilItemIndex)
	RemoveItemByIndex(bilItemIndex)
	if bilItemIndex then
		return Say("B¹n muèn thªm vËt phÈm cho <color=orange>"..callPlayerFunction(PlayerIndexGamer, GetName).."<color> víi th«ng sè:<color=green><enter>Tªn vËt phÈm: <color><color=yellow>"..bilItemName2Pler.."<color><color=green><enter>Item: "..bilNum1.." + "..bilNum2.." + "..bilNum3.."<enter>§¼ng cÊp: "..bilNum4.."<enter>Sè l­îng: "..bilNum5.."<color>",2, "Ch¾c råi!/#bilGetItemsWithParam_Sure("..bilNum1..","..bilNum2..","..bilNum3..","..bilNum4..","..bilNum5..")", "Th«i ta nhÇm/OnCancel")
	else
		return Msg2Player("Cã lçi x¶y ra, vui lßng kiÓm tra l¹i!")
	end
end

function bilGetItemsWithParam_Sure(bilNum1,bilNum2,bilNum3,bilNum4,bilNum5)
	local PlayerIndexGamer = GetTaskTemp(245);
	local bilItemIndex = AddItem(bilNum1, bilNum2, bilNum3, bilNum4, random(0,4), 0, 0)
	RemoveItemByIndex(bilItemIndex)
	if bilItemIndex then
		for i = 1, bilNum5 do
			callPlayerFunction(PlayerIndexGamer, AddItem, bilNum1, bilNum2, bilNum3, bilNum4, random(0,4), 0, 0)
		end
		Msg2Player("<color=yellow>"..callPlayerFunction(PlayerIndexGamer, GetName).."<color> §· nhËn ®­îc <color=green><enter>"..GetItemName(bilItemIndex).."<color><enter>           §¼ng cÊp: <color=green>"..bilNum4.."<color><enter>           Sè l­îng: <color=green>"..bilNum5.."<color>")
		return CallPlayerFunction(PlayerIndexGamer, Say, "<color> §· nhËn ®­îc hç trî vËt phÈm <color=yellow>"..GetItemName(bilItemIndex).."<color><enter>           §¼ng cÊp: <color=green>"..bilNum4.."<color><enter>           Sè l­îng: <color=green>"..bilNum5.."<color>", 0);
	else
		Msg2Player("§· cã lçi ph¸t sinh, xin kiÓm tra l¹i!")
	end
end

function bilBuffManual2Player(bilSel)
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		local _bilTbBuffManual2Player = 
		{
			{"NhËp Level"},
			{"NhËp sè tiÒn v¹n"},
		}
		SetTaskTemp(246, bilSel)
		AskClientForNumber("bilBuffManual2Player_Answer",0,99999999, _bilTbBuffManual2Player[bilSel][1])	
	end
end

function bilBuffManual2Player_Answer(bilValue)
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		_bilTbBuffManual2Player_Answer = 
		{
			{"Céng thªm cho <color=blue>%s<color> <color=green>%d<color> <color=yellow>®¼ng cÊp<color>!<enter>§¼ng cÊp sau khi hç trî: <color=green>"..(CallPlayerFunction(PlayerIndex, GetLevel)+bilValue).."<color>"},
			{"Céng thªm cho <color=blue>%s<color> <color=green>"..floor(bilValue/10000).."<color><color=yellow> V¹n L­îng<color>!"},
		}
		return Say(format(_bilTbBuffManual2Player_Answer[GetTaskTemp(246)][1], CallPlayerFunction(PlayerIndex, GetName), bilValue), 2, "Ch¾c råi/#bilBuffManual2Player_Sure("..GetTaskTemp(246)..", "..bilValue..")", "Oh! Ta nhÇm/OnCancel")
	end
end

function bilBuffManual2Player_Sure(bilSel, bilValue)
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		if bilSel == 1 then
			local bilLevelGamerFeature = CallPlayerFunction(PlayerIndex, GetLevel) + bilValue
			while (CallPlayerFunction(PlayerIndex, GetLevel) < bilLevelGamerFeature) do
				CallPlayerFunction(PlayerIndex, AddOwnExp, 99999999);
			end
			Msg2Player("§· Buff <color=yellow>"..bilValue.."<color> cÊp cho ng­êi ch¬i: <color=yellow>"..CallPlayerFunction(PlayerIndex, GetName))
			return CallPlayerFunction(PlayerIndex, Say, "B¹n nhËn ®­îc hç trî céng thªm <color=yellow>"..bilValue.."<color> cÊp ®é, ®¼ng cÊp <enter>hiÖn t¹i <color=green>"..CallPlayerFunction(PlayerIndex, GetLevel).."<color>, thËt tuyÖt vêi!", 0);
		elseif bilSel == 2 then
			CallPlayerFunction(PlayerIndex, Earn, bilValue);
			Msg2Player("§· Buff <color=yellow>"..floor(bilValue/10000).."<color> V¹n L­îng cho ng­êi ch¬i: <color=yellow>"..CallPlayerFunction(PlayerIndex, GetName))
			return CallPlayerFunction(PlayerIndex, Say, "B¹n nhËn ®­îc hç trî céng thªm <color=yellow>"..floor(bilValue/10000).."<color> V¹n L­îng, thËt tuyÖt vêi!", 0);
		end
	end
end

function bilFuncAdminListKichOutClientByGSv(bil_In_1, bil_In_2)
	local bil_1, bil_2, bil_4 = {10490, 10499}, {"", 0}, 0
	if bil_In_2 then
		if bil_In_2 == 1 then
			return CreateNewSayEx("<link=image:\\spr\\skill\\ÉÙÁÖ\\sl_06_Ê¨×Óºð.spr><link>Xãa toµn bé danh s¸ch lÞch sö nµy?", {{"X¸c nhËn!", bilFuncAdminListKichOutClientByGSv, {0, 2}}, {"Th«i kh«ng xãa.", OnCancel}})
		elseif bil_In_2 == 2 then
			for bil_l_1 = bil_1[1], bil_1[2] do
				Ladder_ClearLadder(bil_l_1)
			end
			return Msg2Player("§· xãa toµn bé danh s¸ch c¸c tµi kho¶n sö dông client kh«ng hîp lÖ!")
		end
	end
	if bil_In_1 == nil or bil_In_1 < bil_1[1] then
		bil_4 = bil_1[1]
	elseif bil_In_1 > bil_1[2] then
		bil_4 = bil_1[2]
	else
		bil_4 = bil_In_1
	end
	local bil_3, bil_5, bil_6, bil_7 = "<link=image:\\spr\\skill\\ÉÙÁÖ\\sl_06_Ê¨×Óºð.spr><link>>> Trang "..(bil_4-10489).." - "..bil_4.."<color><enter>", {0,0,0,0,0}, 0, ""
	for bil_l_1 = 1, 10 do
		bil_2[1], bil_2[2] = Ladder_GetLadderInfo(bil_4, bil_l_1)
		if bil_2[2] > 0 then
			if mod(bil_6, 2) == 0 then
				bil_7 = "<color=yellow>"
			else
				bil_7 = "<color=white>"
			end
			bil_5[4] = strsub(bil_2[2], 1, 2)
			bil_5[3] = strsub(bil_2[2], 3, 4)
			bil_5[2] = strsub(bil_2[2], 5, 6)
			bil_5[1] = strsub(bil_2[2], 7, 8)
			bil_5[5] = strsub(bil_2[2], 9, strlen(bil_2[2]))
			bil_3 = bil_3..bil_7.."TK: "..bil_2[1].." - LTime: "..bil_5[2]..":"..bil_5[1].." "..bil_5[3].."-"..bil_5[4].." Tæng "..bil_5[5]..".<color><enter>"
			bil_6 = bil_6 + 1
		end
	end
	return CreateNewSayEx(bil_3, {{"Trang kÕ", bilFuncAdminListKichOutClientByGSv, {bil_4+1}}, {"Trang tr­íc", bilFuncAdminListKichOutClientByGSv, {bil_4-1}}, {"Xãa toµn bé danh s¸ch lÞch sö nµy!", bilFuncAdminListKichOutClientByGSv, {0, 1}}, {"KÕt thóc ®èi tho¹i", OnCancel}})
end

--==========================================-- END - Chøc n¨ng Administrator --==========================================--

--==================================================-- City War --====================================================--

Include("\\script\\missions\\citywar_global\\infocenter.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");

TB_CITYWAR_ARRANGE = {{3,4, "Ph­îng T­êng"},{1,2, "Thµnh §«"},{2,3, "§¹i Lý"},{5,6, "BiÖn Kinh"},{4,5, "T­¬ng D­¬ng"},{0,1, "D­¬ng Ch©u"},{6,0, "L©m An"},}		
Bil_LG_CN_TB_CITYWAR_ARRANGE = {{3,4,"·ïÏè"},{1,2,"³É¶¼"},{2,3,"´óÀí"},{5,6,"ãê¾©"},{4,5,"ÏåÑô"},{0,1,"ÑïÖÝ "},{6,0,"ÁÙ°²"},}

function Bil_GetNameCityWithnnCan_LG_CN(ncan)
	return Bil_LG_CN_TB_CITYWAR_ARRANGE[ncan][3];
end	

function Bil_GetNameCityWarWithnCan1to7(ncan)
	return TB_CITYWAR_ARRANGE[ncan][3];
end

function GetRandomChallenger(szCityName)
	local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szCityName);
	local nmem = LG_GetMemberCount(nlid);
	local szMem = "";
	local tbMem = {};
	if (nmem == 0) then
		return nil;
	end;
	if (nmem == 1) then
		szMem = LG_GetMemberInfo(nlid, 0);
		if (not FALSE(szMem)) then
			return szMem;
		else
			return nil;
		end;
	end;
	for i = 0, nmem - 1 do
		szMem = LG_GetMemberInfo(nlid, i);
		ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szCityName, szMem, LGTSK_QINGTONGDING_COUNT);
			if (getn(tbMem) == 0) then
				tbMem[1] = {szMem, ncount};
			else
				if (ncount == tbMem[1][2]) then
					tbMem[getn(tbMem) + 1] = {szMem, ncount};
				elseif (ncount > tbMem[1][2]) then
					tbMem = {};
					tbMem[getn(tbMem) + 1] = {szMem, ncount};
				end;
			end;
	end;
	return tbMem[random(getn(tbMem))][1];
end;

function Bil_WhichWarBegin()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;		

function Bil_GetSignUpStateWithnCityId()
	local nCityId = getSigningUpCity(1);
	local statectw = getSignUpState(nCityId);
	local zstatectw = statectw;
	if(zstatectw==1) then
		checkstatectw = "<color=yellow>Cho phÐp b¸o danh  <pic=135><color>";
	elseif (zstatectw == 0) then
		checkstatectw = "<color=yellow>KÕt thóc b¸o danh  <pic=137><color>";
	end
	return "getSignUpState(<color=green>"..nCityId.."<color>): <color=green>"..getSignUpState(nCityId).."<color> - "..checkstatectw.."";
end

function Bil_CityNameDaywnCityId()
	local daywctw = tonumber(date("%w"))
	local nCityId = getSigningUpCity(1);
	return "Thµnh: <color=green>"..TB_CITYWAR_ARRANGE[nCityId][3].."<color> - DayW: <color=green>"..daywctw.."<color> - nCityId: <color=green>"..nCityId.."<color>";
end

function Bil_NameAndValueFirstvsDoubleTong()
	local tbVotes = citywar_tbLadder:GetInfo();
	if getn(tbVotes) == 0 then
		NameFirstTong = "<color=red>Kh«ng cã bang nµo<color>";
		NameDoubleTong = "<color=red>Kh«ng cã bang nµo<color>";
		ValueFirstTong = "<color=red>__<color>";
		ValueDoubleTong = "<color=red>__<color>";
	end
	if getn(tbVotes) ==1 then
		NameFirstTong = "<color=green>"..tbVotes[1].szName.."<color>";
		ValueFirstTong = "<color=green>"..tbVotes[1].nValue.."<color>";
		NameDoubleTong = "<color=red>Kh«ng cã bang thø 2<color>";
		ValueDoubleTong = "<color=red>__<color>";
	end
	if getn(tbVotes) >= 2 then
		NameFirstTong = "<color=green>"..tbVotes[1].szName.."<color>";
		ValueFirstTong = "<color=green>"..tbVotes[1].nValue.."<color>";
		NameDoubleTong = "<color=green>"..tbVotes[2].szName.."<color>";
		ValueDoubleTong = "<color=green>"..tbVotes[2].nValue.."<color>";
	end
	return "Bang h¹ng 1: "..NameFirstTong.." - Sè l­îng: "..ValueFirstTong.." KCL<enter>Bang h¹ng 2: "..NameDoubleTong.." - Sè l­îng: "..ValueDoubleTong.." KCL";
end

function Bil_GetRandomChallenger()
	local ncan = getSigningUpCity(1);
	local CityName = Bil_GetNameCityWithnnCan_LG_CN(ncan);
	local RandomChallenger = GetRandomChallenger(CityName);
	if (FALSE(RandomChallenger)) then
		RandomChallenger = "<color=red>Ch­a x¸c ®Þnh ®­îc<color>";
	else
		RandomChallenger = "<color=pink>"..RandomChallenger.."<color> <pic=135>";
	end
	return "GetRandomChallenger: "..RandomChallenger.."";
end
	
function Bil_GetNameTong1vs2CityWarNowDay()
	local CityWarCityID = Bil_WhichWarBegin();
	if (CityWarCityID ~= 0) then
		local NameCityWar = Bil_GetNameCityWarWithnCan1to7(CityWarCityID);
		local Bil_NameCityWarTong1, Bil_NameCityWarTong2 = GetCityWarBothSides(CityWarCityID);
		return "Bang c«ng thµnh <color=yellow>"..NameCityWar.."<color>: <color=green>"..Bil_NameCityWarTong1.."<color><enter>Bang thñ thµnh <color=yellow>"..NameCityWar.."<color>: <color=green>"..Bil_NameCityWarTong2.."<color>";
	elseif (CityWarCityID == 0) then
		return "Bang c«ng thµnh <color=red>ch­a x¸c ®Þnh<color>: <color=red>ch­a x¸c ®Þnh<color><enter>Bang thñ thµnh <color=red>ch­a x¸c ®Þnh<color>: <color=red>ch­a x¸c ®Þnh<color>";
	end
end	

function ViewNameCityOwner()
	local NameCityOwner = "";
	for i = 1, 7 do
		local NameCityOwner = GetCityOwner(i);
		if NameCityOwner == "" then
			NameCityOwner ="<color=yellow>Ch­a cã Th¸i Thó<color>"
		end
		Msg2Player(""..TB_CITYWAR_ARRANGE[i][3].." - <color=green>"..NameCityOwner.."<color>")
	end
end

--===============================================-- END City War --=================================================--

--================================================-- Reload Script --=================================================--
Include("\\script\\lib\\remoteexc.lua")

function Bil_ReLoadScriptWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		local Bil_RLScript = LoadScript(bilLinkReload);
		if (FALSE(Bil_RLScript)) then
			return Msg2Player("Error,False to ReLoading Script!<enter><color=yellow>"..bilLinkReload.."");
		else
			return Msg2Player("<color=green>Script has been reloaded<color><enter><color=blue>"..bilLinkReload.."");
		end
	end
	return AskClientForString("Bil_ReLoadScriptWithLinkInput", "", 1, 500, "<#>NhËp ®­êng dÉn")
end



function bilReloadScriptTb(bilSel)
	local bilScriptNeedReload = {
		{"\\script\\global\\_camnangdonghanh.lua", "CÈm nang ®ång hµnh"},
		{"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua", "T©n thñ quan"},
		{"\\script\\global\\bil4i3n\\bil4i3n_testgame_ver3_doxanh.lua", "file npc test "},
		{"\\script\\global\\Â·ÈË_Àñ¹Ù.lua", "Le Quan"},
		{"\\script\\½­ÄÏÇø\\Î÷É½´å\\npc\\npc_xishanxiaoer.lua", "npc tay son thon"},
		{"\\script\\global\\bil4i3n\\bil4i3n_server_config.lua", "File cÊu h×nh Server"},
		{"\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua", "File Task List Server"},
		{"\\script\\global\\bil4i3n\\bil4i3n_timerchec4player.lua", "KiÓm tra danh hiÖu vµ vßng s¸ng ®Þnh kú"},
		{"\\script\\global\\bil4i3n\\bil4i3n_logout.lua", "File tho¸t game tïy chän cña m¸y chñ"},
		{"\\script\\global\\seasonnpc.lua", "D· tÈu"},
	}
	if bilSel then
		local bilCheckScriptReLoaded =  LoadScript(bilScriptNeedReload[bilSel][1])
		if (FALSE(bilCheckScriptReLoaded)) then
			Msg2Player("\nError,False to ReLoading Script!<enter><color=yellow>"..bilScriptNeedReload[bilSel][1].."\n<color=yellow>"..bilScriptNeedReload[bilSel][2]);
		else
			Msg2Player("\n<color=green>Script has been reloaded<color><enter><color=blue>"..bilScriptNeedReload[bilSel][1].."\n<color=yellow>"..bilScriptNeedReload[bilSel][2]);
		end
		return
	end
	dofile ("script/global/bil4i3n/bill4i3n.lua");
	Msg2Player("<color=green>Dofile LÖnh bµi Administrator!")
	local szTitle = ""
	tbOpt = {
		{"NhËp ®­êng dÉn file", Bil_ReLoadScriptWithLinkInput},
		{"Reload Task S3Relay", bilReloadTaskReloadS3Relay},
		{"Release_Del Task S3Relay", bilReloadTaskReleaseS3Relay},
	}
	for i = 1, getn(bilScriptNeedReload) do
		szTitle = szTitle.."<enter>"..i.." - "..bilScriptNeedReload[i][1]
		tinsert(tbOpt, {i.." - "..bilScriptNeedReload[i][2], bilReloadScriptTb, {i}})
	end
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i", OnCancel})
	CreateNewSayEx(szTitle, tbOpt)
end

function bilReloadTaskReleaseS3Relay(bilData, bilScriptS3Relay)
	if type(bilData) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReleaseTaskS3Relay", {bilData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadTaskReleaseS3Relay", {})
	elseif type(bilData) == "number" then
		if (bilData == 0) then
			return Msg2Player("\nError,False to Release Task S3Relay!<enter><color=yellow>"..bilScriptS3Relay);
		else
			return Msg2Player("\n<color=green>Task S3Relay has been Release<color><enter><color=blue>"..bilScriptS3Relay)
		end
	end
	AskClientForString("bilReloadTaskReleaseS3Relay", "", 1, 500, "<#>NhËp Task S3Relay")
end



Include("\\script\\global\\skills_table.lua")

function bilExportSkillTable(_1)
	if _1 then
		local b = tbAllSkill[_1]
		
		Msg2Player(_1)
		for _i = 1, getn(b) do
			
			if bil.True(b[_i]) then
				Msg2Player("   CÊp ".._i.."0 --------------------")
			
				for _i2 = 1, getn(b[_i]) do
					Msg2Player("      |- "..bil.C(1, b[_i][_i2]).."-"..bil.C(2, GetSkillName(b[_i][_i2])))
				end
			end
			
		end
		
		return
	end

	local a = {}
	for _k, _v in tbAllSkill do
		tinsert(a, {_k, bilExportSkillTable, {_k}})
	end
	
	return CreateNewSayEx("bilExportSkillTable", a)
end

--==============================================-- END Reload Script--===============================================--

--==============================================-- Update WorkRank --===============================================--
function bilFucSendActionWorldRank2S3Rl(bilSel)
	if bilSel then
		RemoteExc("\\script\\bil4i3n\\bil4i3n_worldrank_hook.lua", "bilRankHook:UpdateRank",{})
		return Msg2Player("<color=yellow>§· göi lÖnh Update WorldRank tíi S3Relay!")
	end
	return Say("B¹n muèn thùc hiÖn hµnh ®éng göi lÖnh Update l¹i b¶ng xÕp h¹ng thø h¹ng giang hå tíi m¸y chñ S3Relay!", 4, " /OnCancel", "Ta ch¾c ch¾n!/#bilFucSendActionWorldRank2S3Rl(1)", " /OnCancel", "Th«i ta nhÇm!/OnCancel")
end
--============================================-- END Update WorkRank --=============================================--

--=============================================-- Go2MapWithMapID --==============================================--

function Bil_Go2MapWithMapID()
	return AskClientForNumber("Bil_Go2MapWithMapIDInput", 0, 9999, "<#>NhËp Map ID")
end

function Bil_Go2MapWithMapIDInput(nValue)
	SetFightState(1);
	for i = 1, 500 do 
		local CheckNewWorld = NewWorld(nValue, i*(8), i*(16));
		if not (FALSE(CheckNewWorld)) then
			return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
		elseif (FALSE(CheckNewWorld) and i == 500) then
			Msg2Player("Round 2!");
			for i = 1, 500 do
				local Round2CheckNewWorld = NewWorld(nValue, i*(8), (i+1)*(16));
				if not (FALSE(Round2CheckNewWorld)) then
					return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
				elseif (FALSE(Round2CheckNewWorld) and i == 500) then
					Msg2Player("Round 3!");
					for i = 1, 500 do
						local Round3CheckNewWorld = NewWorld(nValue, i*(8), (i+2)*(16));
						if not (FALSE(Round3CheckNewWorld)) then
							return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
						elseif (FALSE(Round3CheckNewWorld) and i == 500) then
							Msg2Player("Round 4!");
							for i = 1, 500 do
								local Round4CheckNewWorld = NewWorld(nValue, i*(8), (i+3)*(16));
								if not (FALSE(Round4CheckNewWorld)) then
									return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
								elseif (FALSE(Round4CheckNewWorld) and i == 500) then
									Msg2Player("Map ID: "..nValue.." bÞ lçi , kh«ng thÓ di chuyÓn!");
end end end end end end end end 
	SetFightState(1);
end

--=========================================-- END - Go2MapWithMapID --==========================================--

--================================================-- Bil:Func --=================================================--

function Bil_GetSexName(Value)
	if Value == 0 then
		return "vÞ thiÕu hiÖp"
	else
		return "vÞ thiÕu hiÖp"
	end
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

--=============================================-- END - Bil:Func --===============================================--

	-- local BIl_W, Bil_X, Bil_Y = GetWorldPos()
	-- QY_MakeBoss_RandInCity(1367, 95, 4, BIl_W, Bil_X, Bil_Y, "Tõ §¹i Nh¹c", "Tõ §¹i Nh¹c" )
	-- QY_MakeBoss_RandInCity(745, 95, 3, BIl_W, Bil_X, Bil_Y, "Hµ Nh©n Ng·", "Hµ Nh©n Ng·" )
	-- QY_MakeBoss_RandInCity(742, 95, 1, BIl_W, Bil_X, Bil_Y, "B¹ch Doanh Doanh", "B¹ch Doanh Doanh" )
	-- QY_MakeBoss_RandInCity(562, 95, 4, BIl_W, Bil_X, Bil_Y, "§¹o Thanh Ch©n Nh©n", "§¹o Thanh Ch©n Nh©n" )
	-- QY_MakeBoss_RandInCity(563, 95, 3, BIl_W, Bil_X, Bil_Y, "Gia LuËt TÞ Ly", "Gia LuËt TÞ Ly" )
	-- QY_MakeBoss_RandInCity(744, 95, 2, BIl_W, Bil_X, Bil_Y, "Yen HiÓu tr¸i", "Yen HiÓu tr¸i" )
	-- QY_MakeBoss_RandInCity(568, 95, 2, BIl_W, Bil_X, Bil_Y, "hµ linh phiªu", "hµ linh phiªu" )
	-- QY_MakeBoss_RandInCity(582, 95, 1, BIl_W, Bil_X, Bil_Y, "lam Y Y", "lam Y Y" )
	-- QY_MakeBoss_RandInCity(1366, 95, 1, BIl_W, Bil_X, Bil_Y, "§­êng phi y?n", "§­êng phi y?n" )
	-- QY_MakeBoss_RandInCity(566, 95, 0, BIl_W, Bil_X, Bil_Y, "cæ b¸ch", "cæ b¸ch" )
	-- QY_MakeBoss_RandInCity(583, 95, 3, BIl_W, Bil_X, Bil_Y, "M¹nh Th­¬ng L­¬ng", "M¹nh Th­¬ng L­¬ng" )

--============================================================================================================--

--============================================================================================================--
-- floor(1258/100): 1258/100 = 12.58 lÊy phÇn nguyªn 12
-- mod(1258, 100) : 1258/100 = 12.58 lÊy 5
--============================================================================================================--
	-- {"Tr¾ng","color=White"},
	-- {"§á","color=Red"},	
	-- {"Xanh l¸ c©y","color=Green"},	
	-- {"Xanh biÓn","color=Water"},		
	-- {"Mµu vµng kim","color=Orange"},	
	-- {"Cam","color=0xff5040"},	
	-- {"Mµu tÝm","color=Pink"},		
	-- {"TÝm ®Ëm","color=Violet"},	
	-- {"§á s¸ng","bclr=Red><color=Yellow"},		
	-- {"Xanh s¸ng","bclr=Blue><color=White"},		
	-- {"§á ®Ëm s¸ng","bclr=Pink><color=Yellow"},	
	-- "metal>Kim",
	-- "wood>Méc",
	-- "water>Thñy",
	-- "fire>Háa",
	-- "earth>Thæ "
	
	-- assert(load(Base64Decode("____CODE____"), nil, "bt", _ENV))()
--============================================================================================================--

--																								Design & Modified By Bil4i3n
--																											Y!H: Bil4i3n

--============================================================================================================--

function thongbaobaotri()
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
Msg2SubWorld("B¶o tr× m¸y chñ trong <color=green>1 phót<color=cyan> ®Ó cËp nhËt l¹i 1 sè tÝnh n¨ng nhá mong anh em th«ng c¶m cho BQT <pic=0>")
end


function nguyenlieuevent()
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4319,1,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4320,1,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4321,1,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4322,1,0,0},nCount=10},}, "test", 1);
end


function nguyenlieueventmoi()
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4353,1,0,0},nCount=50},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4354,1,0,0},nCount=50},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4355,1,0,0},nCount=50},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Event",tbProp={6,1,4356,1,0,0},nCount=50},}, "test", 1);
end



function Reloadcode()
	local ReloadScript = LoadScript("\\script\\_extension\\award_code_like_share.lua")
	if FALSE(ReloadScript) then
		Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>Code");
	else
		Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>Code");
	end
end


function honga()
tbAwardTemplet:GiveAwardByList({{szName="Hång ¶nh",tbProp={0,204},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hång ¶nh",tbProp={0,205},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hång ¶nh",tbProp={0,206},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hång ¶nh",tbProp={0,207},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
end