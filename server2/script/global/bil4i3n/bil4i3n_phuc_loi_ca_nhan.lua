IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

local bilImgCn = "<link=image:\\spr\\skill\\christmas\\star2.spr><link><color>"
local bil_tb_Award = {
	[1] = {{6,1,4302,1,0,0,0}, "Phóc lîi ®¬n [ThÇn m·]"},
	[2] = {{6,1,4303,1,0,0,0}, "Phóc lîi ®¬n [Hång ¶nh]"},
	[3] = {{6,1,4304,1,0,0,0}, "Phóc lîi ®¬n [Nhu t×nh]"},
	[4] = {{6,1,4305,1,0,0,0}, "Phóc lîi ®¬n [HiÖp cèt]"},
	[5] = {{6,1,4306,1,0,0,0}, "Phóc lîi ®¬n [§Þnh quèc]"},
	[6] = {{6,1,4307,1,0,0,0}, "Phóc lîi ®¬n [An bang]"},
	[7] = {{6,1,71,1,0,0,0}, "Tiªn th¶o lé"},
	[8] = {{6,1,1181,1,0,0,0}, "Tiªn th¶o lé (®Æc biÖt)"},
	[9] = {{6,1,23,1,0,0,0}, "ThiÕt la h¸n"},
	[10] = {{4,353,1,1,0,0,0}, "Tinh hång b¶o th¹ch"},
	[11] = {{4,238,1,1,0,0,0}, "Lam thñy tinh"},
	[12] = {{4,239,1,1,0,0,0}, "Tö thñy tinh"},
	[13] = {{4,240,1,1,0,0,0}, "Lôc thñy tinh"},
	[14] = {{4,489,1,1,0,0,0}, "LÖnh bµi phong l¨ng ®é"},
	[15] = {{6,1,124,1,0,0,0}, "Phóc duyªn ®¹i"},
	[16] = {{6,1,2514,1,0,0,0}, "M¶nh s¬n hµ x· t¾c x1000"},
	[17] = {{6,1,1082,1,0,0,0}, "Håi thµnh phï (nhá)"},
	[18] = {{6,1,1083,1,0,0,0}, "Håi thµnh phï (lín)"},
	[19] = {{6,1,1427,1,0,0,0}, "Tö mÉu lÖnh"},
	[20] = {{6,1,1617,1,0,0,0}, "Viªm ®Õ lÖnh"},
	[21] = {{6,1,400,90,random(0,4),0,0}, "S¸t thñ gi¶n (CÊp 90)"},
	[22] = {{6,1,1448,1,0,0,0}, "M¹c b¾c truyÒn tèng lÖnh"},
	[23] = {{6,1,26,1,0,0,0}, "Vâ l©m mËt tÞch"},
	[24] = {{6,1,22,1,0,0,0}, "TÈy tû kinh"},
	[25] = {{6,1,1403,1,0,0,0}, "§å phæ - HiÖp cèt thuyÕt huyÕt sam"},
	[26] = {{6,1,1404,1,0,0,0}, "§å phæ - HiÖp cèt ®a t×nh hoµn"},
	[27] = {{6,1,1405,1,0,0,0}, "§å phæ - HiÖp cèt ®an t©m giíi"},
	[28] = {{6,1,1406,1,0,0,0}, "§å phæ - HiÖp cèt t×nh ý kÕt"},
	[29] = {{6,1,1407,1,0,0,0}, "§å phæ - Nhu t×nh c©n quèc nghª th­êng"},
	[30] = {{6,1,1408,1,0,0,0}, "§å phæ - Nhu t×nh thôc n÷ h¹ng liªn"},
	[31] = {{6,1,1409,1,0,0,0}, "§å phæ - Nhu t×nh phông nghi giíi chØ"},
	[32] = {{6,1,1410,1,0,0,0}, "§å phæ - Nhu t×nh tuÖ t©m ngäc béi"},
	[33] = {{6,1,1399,1,0,0,0}, "ThËp toµn ®¹i bæ thÇn ®an"},
	[34] = {{6,1,1308,1,0,0,0}, "M¶nh Bæ thiªn th¹ch (tiÓu)"},
	[35] = {{6,1,1309,1,0,0,0}, "M¶nh Bæ thiªn th¹ch (trung)"},
	[36] = {{6,1,1310,1,0,0,0}, "M¶nh Bæ thiªn th¹ch (®¹i)"},
	
	[37] = {{1, 204}, "Trang bÞ Hång ¶nh"},
	[38] = {{1, 205}, "Trang bÞ Hång ¶nh"},
	[39] = {{1, 206}, "Trang bÞ Hång ¶nh"},
	[40] = {{1, 207}, "Trang bÞ Hång ¶nh"},
	
	[41] = {{0,10,5,6,random(0,4),0,0}, "ThÇn m· ¤ V©n §¹p TuyÕt"},
	[42] = {{0,10,5,7,random(0,4),0,0}, "ThÇn m· XÝch Thè"},
	-- [43] = {{0,10,5,8,random(0,4),0,0}, "ThÇn m· TuyÖt ¶nh"},
	-- [44] = {{0,10,5,9,random(0,4),0,0}, "ThÇn m· §Ých L«"},
	
	[43] = {{6,1,4308,1,0,0,0}, "M¶nh §å Phæ [Hoµng Kim]"},
}

local bil_tb_PhucLoi = {
	["_TM"] = {
		{bil_1 = "§iÓm tÝch lòy phóc lîi ThÇn m·", bil_2 = 5918, bil_3 = 5917},
		{bil_1 = {0,10,5,6,random(0,4),0,0}, bil_2 = 3000, bil_3 = "¤ V©n §¹p TuyÕt"},
		{bil_1 = {0,10,5,7,random(0,4),0,0}, bil_2 = 7000, bil_3 = "XÝch Thè"},
		{bil_1 = {0,10,5,8,random(0,4),0,0}, bil_2 = 12000, bil_3 = "TuyÖt ¶nh"},
		{bil_1 = {0,10,5,9,random(0,4),0,0}, bil_2 = 18000, bil_3 = "§Ých L«"},
		{bil_1 = {0,10,5,10,random(0,4),0,0}, bil_2 = 26000, bil_3 = "ChiÕu D¹ Ngäc S­ Tö"},
		{bil_1 = {0,10,8,10,random(0,4),0,0}, bil_2 = 38000, bil_3 = "Phi V©n"},
		{bil_1 = {0,10,6,10,random(0,4),0,0}, bil_2 = 52000, bil_3 = "B«n Tiªu"},
	},
	["_HA"] = {
		{bil_1 = "§iÓm tÝch lòy phóc lîi Hång ¶nh", bil_2 = 5916, bil_3 = 5915},
		{bil_1 = {1,205}, bil_2 = 3000, bil_3 = "Hång ¶nh KiÕm Bµi"},
		{bil_1 = {1,206}, bil_2 = 7000, bil_3 = "Hång ¶nh Môc Tóc"},
		{bil_1 = {1,207}, bil_2 = 12000, bil_3 = "Hång ¶nh Tô Chiªu"},
		{bil_1 = {1,204}, bil_2 = 18000, bil_3 = "Hång ¶nh ThÈm Viªn UyÓn"},
	},
	["_NT"] = {
		{bil_1 = "§iÓm tÝch lòy phóc lîi Nhu t×nh", bil_2 = 5914, bil_3 = 5913},
		{bil_1 = {1,193}, bil_2 = 3000, bil_3 = "Nhu T×nh TuÖ T©m Ngäc Béi"},
		{bil_1 = {1,192}, bil_2 = 8000, bil_3 = "Nhu T×nh Phông Nghi Giíi ChØ"},
		{bil_1 = {1,191}, bil_2 = 15000, bil_3 = "Nhu T×nh Thôc N÷ H¹ng Liªn"},
		{bil_1 = {1,190}, bil_2 = 24000, bil_3 = "Nhu T×nh C©n Quèc Nghª Th­êng"},
	},
	["_HC"] = {
		{bil_1 = "§iÓm tÝch lòy phóc lîi HiÖp cèt", bil_2 = 5912, bil_3 = 5911},
		{bil_1 = {1,189}, bil_2 = 3000, bil_3 = "HiÖp Cèt T×nh ý KÕt"},
		{bil_1 = {1,188}, bil_2 = 8000, bil_3 = "HiÖp Cèt §an T©m Giíi"},
		{bil_1 = {1,187}, bil_2 = 15000, bil_3 = "HiÖp Cèt §a T×nh Hoµn"},
		{bil_1 = {1,186}, bil_2 = 24000, bil_3 = "HiÖp Cèt ThiÕt HuyÕt Sam"},
	},
	["_DQ"] = {
		{bil_1 = "§iÓm tÝch lòy phóc lîi §Þnh quèc", bil_2 = 5910, bil_3 = 5909},
		{bil_1 = {1,163}, bil_2 = 6000, bil_3 = "§Þnh Quèc Ng©n Tµm Yªu ®¸i"},
		{bil_1 = {1,162}, bil_2 = 10000, bil_3 = "§Þnh Quèc Tö §»ng Hé uyÓn"},
		{bil_1 = {1,161}, bil_2 = 18000, bil_3 = "§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa"},
		{bil_1 = {1,159}, bil_2 = 31000, bil_3 = "§Þnh Quèc Thanh Sa Tr­êng Sam"},
		{bil_1 = {1,160}, bil_2 = 49000, bil_3 = "§Þnh Quèc ¤ Sa Ph¸t Qu¸n"},
	},
	["_AB"] = {
		{bil_1 = "§iÓm tÝch lòy phóc lîi An bang", bil_2 = 5908, bil_3 = 5907},
		{bil_1 = {1,166}, bil_2 = 24000, bil_3 = "An Bang §iÒn Hoµng Th¹ch Ngäc Béi"},
		{bil_1 = {1,167}, bil_2 = 34000, bil_3 = "An Bang Kª HuyÕt Th¹ch Giíi ChØ"},
		{bil_1 = {1,165}, bil_2 = 48000, bil_3 = "An Bang Cóc Hoa Th¹ch ChØ hoµn"},
		{bil_1 = {1,164}, bil_2 = 66000, bil_3 = "An Bang B¨ng Tinh Th¹ch H¹ng Liªn"},
	},
}

function bilPhucLoi_Main()
	local bil_1 = %bilImgCn.."Tham gia ho¹t ®éng cµng nhiÒu, tÝch lòy cµng lín, phÇn th­ëng cµng gi¸ trÞ!<enter>"
		..bil.C(1,"N¹p thÎ lÇn ®Çu ").." - c¸c phÇn th­ëng sÏ tù t¹o míi ngÉu nhiªn vµo 0h00<enter>"
		..bil.C(1,"TÝch lòy phóc lîi").." - phÇn th­ëng sÏ khëi t¹o l¹i mçi khi ®¹t ®Õn mèc th­ëng cao nhÊt!<enter>"
		..bil.C(1, "TÝch lòy")..": ThÇn m· "..bil.C(2, GetTask(5918))..", Hång ¶nh "..bil.C(2, GetTask(5916))..", Nhu t×nh "..bil.C(2, GetTask(5914))..", HiÖp cèt "..bil.C(2, GetTask(5912))..", §Þnh quèc "..bil.C(2, GetTask(5910))..", An bang "..bil.C(2, GetTask(5908))
	local bil_2 = {
		{"Quµ n¹p thÎ lÇn ®Çu", bilPhucLoi_NapTheLanDau},
		{"Sö dông m· dù th­ëng (GiftCode)", bilPhucLoi_GetGiftCode},
		{"TÝch lòy ®iÓm nhËn ThÇn M·", bilPhucLoi_PhucLoiDon, {"_TM"}},
		{"TÝch lòy ®iÓm nhËn trang bÞ Hång ¶nh", bilPhucLoi_PhucLoiDon, {"_HA"}},
		{"TÝch lòy ®iÓm nhËn trang bÞ Nhu T×nh", bilPhucLoi_PhucLoiDon, {"_NT"}},
		{"TÝch lòy ®iÓm nhËn trang bÞ HiÖp Cèt", bilPhucLoi_PhucLoiDon, {"_HC"}},
		{"TÝch lòy ®iÓm nhËn trang bÞ §Þnh Quèc", bilPhucLoi_PhucLoiDon, {"_DQ"}},
		{"TÝch lòy ®iÓm nhËn trang bÞ An Bang", bilPhucLoi_PhucLoiDon, {"_AB"}},
		{"KÕt thóc ®èi tho¹i.", bil.OnCancel},
	}
	CreateNewSayEx(bil_1, bil_2)
end

function bilPhucLoi_GetGiftCode(bil_In_1)
	local bil_tb_1 = {
		bil_Code = {
			{bil_sGift = "GiftCode hç trî t©n thñ", bil_nExtNum = 2, bil_nExtValue = 1, bil_nTaskSave = 5899, bil_listAw = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17}, bil_sMsg = "Trang chñ hoÆc Fanpage vµo môc GiftCode"},
		},
		bil_Award = {
			[1] = {bil_Pr1Item = {6,1,2514,1,0,0,0}, bil_Pr2Item = {-2, 0,"M¶nh S¬n hµ x· t¾c x1000"}},
			[2] = {bil_Pr1Item = {6,1,1082,1,0,0,0}, bil_Pr2Item = {-2, 0,"Håi thµnh phï nhá"}},
			[3] = {bil_Pr1Item = {6,1,1617,1,0,0,0}, bil_Pr2Item = {-2, 0,"Viªm ®Õ lÖnh"}},
			[4] = {bil_Pr1Item = {6,1,400,90,0,0,0}, bil_Pr2Item = {-2, 0,"S¸t thñ gi¶n cÊp 90"}},
			[5] = {bil_Pr1Item = {4,489,1,1,0,0,0}, bil_Pr2Item = {-2, 0,"LÖnh bµi phong l¨ng ®é"}},
			[6] = {bil_Pr1Item = {6,1,122,1,0,0,0}, bil_Pr2Item = {-2, 0,"Phóc duyªn tiÓu"}},
			[7] = {bil_Pr1Item = {6,1,72,1,0,0,0}, bil_Pr2Item = {-2, 0,"Thiªn s¬n th¶o lé"}},
			[8] = {bil_Pr1Item = {6,1,73,1,0,0,0}, bil_Pr2Item = {-2, 0,"B¸ch qu¶ lé"}},
			[9] = {bil_Pr1Item = {4,239,1,1,0,0,0}, bil_Pr2Item = {-2, 0,"Tö thñy tinh"}},
			[10] = {bil_Pr1Item = {6,1,23,1,0,0,0}, bil_Pr2Item = {-2, 0,"ThiÕt la h¸n"}},
			[11] = {bil_Pr1Item = {6,0,6,1,0,0,0}, bil_Pr2Item = {-2, 0,"Phi tèc hoµn"}},
			[12] = {bil_Pr1Item = {6,0,2,1,0,0,0}, bil_Pr2Item = {-2, 0,"Gia bµo hoµn"}},
			[13] = {bil_Pr1Item = {6,0,3,1,0,0,0}, bil_Pr2Item = {-2, 0,"§¹i lùc hoµn"}},
			[14] = {bil_Pr1Item = {6,0,11,1,0,0,0}, bil_Pr2Item = {-2, 0,"Ph¸o hoa"}},
			[15] = {bil_Pr1Item = {6,0,20,1,0,0,0}, bil_Pr2Item = {-2, 0,"Hoa hång"}},
			[16] = {bil_Pr1Item = {6,0,1012,1,0,0,0}, bil_Pr2Item = {-2, 0,"Quµ mµu xanh"}},
			[17] = {bil_Pr1Item = {6,0,1013,1,0,0,0}, bil_Pr2Item = {-2, 0,"Hoa tuyÕt"}},
		}
	}
	if bil_In_1 then
		if bil_In_1 >= 1 then
			local bil_3 = bil_tb_1.bil_Code[bil_In_1]
			if GetTask(bil_3.bil_nTaskSave) ~= bil_3.bil_nExtValue then
				if GetExtPoint(bil_3.bil_nExtNum) == bil_3.bil_nExtValue then
					if bilOpenTestGame == 1 then
						return CreateNewSayEx(%bilImgCn.."Trong thêi gian "..bil.C(1, "Open Test Game kh«ng thÓ nhËn").." gãi phÇn th­ëng "..bil_3.bil_sGift..", h·y ®îi ®Õn Open Game.", {{"T¹i h¹ biÕt råi", bil.OnCancel}})
					elseif CountFreeRoomByWH(2,9) < 1 then
						return CreateNewSayEx(%bilImgCn.."B¹n vui lßng ®Ó trèng Ýt nhÊt 18 « hµnh trang (2x9) ®Ó tr¸nh t×nh tr¹ng tæn thÊt vËt phÈm", {{"§îi ta mét tý", bil.OnCancel}})
					end
					SetTask(bil_3.bil_nTaskSave, bil_3.bil_nExtValue)
					local bil_4 = 0
					for bil_l_2 = 1, getn(bil_3.bil_listAw) do
						bil_4 = AddItem(unpack(bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr1Item))
						if bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[2] ~= 0 then
							ITEM_SetExpiredTime(bil_4, FormatTime2Date(bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[2] * 24 * 60 *60 + GetCurServerTime()))
							SyncItem(bil_4)
						end
						if bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[1] ~= 0 then
							SetItemBindState(bil_4, bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[1])
						end
					end
					return Msg2Player(bil.C(10, "NhËn gãi phÇn th­ëng "..bil_3.bil_sGift.." thµnh c«ng, xin kiÓm tra l¹i hµnh trang!"))
				else
					return CreateNewSayEx(%bilImgCn.."B¹n ch­a tham gia ho¹t ®éng nµy, ®Ó tham gia ho¹t ®éng nhËn th­ëng "..bil.C(1, bil_3.bil_sGift).." b¹n cã thÓ theo dâi trªn "..bil.C(2, bil_3.bil_sMsg)..". NÕu nh­ ®· tham gia nh­ng ch­a nhËn ®­îc phÇn th­ëng b¹n vui lßng tho¸t game vµ ®¨ng nhËp l¹i sau ®ã h·y nhËn th­ëng!", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}})
				end
			else
				return CreateNewSayEx(%bilImgCn.."B¹n ®· nhËn gãi phÇn th­ëng tham gia "..bil_3.bil_sGift.." nµy råi!", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}})
			end
		end
	end
	local bil_1, bil_2 = getn(bil_tb_1.bil_Code), {}
	if bil_1 > 0 then
		for bil_l_1 = 1, bil_1 do
			tinsert(bil_2, {"NhËn th­ëng "..bil_tb_1.bil_Code[bil_l_1].bil_sGift, bilPhucLoi_GetGiftCode, {bil_l_1}})
		end
		tinsert(bil_2, {"KÕt thóc ®èi tho¹i", bil.OnCancel})
		return CreateNewSayEx(%bilImgCn.."Vui lßng chän gãi phÇn th­ëng mµ b¹n ®· tham gia. NÕu ch­a tham gia b¹n cã thÓ theo dâi c¸c th«ng tin phÇn  th­ëng ë Trang chñ, Fanpage hoÆc th«ng b¸o trong game.", bil_2)
	else
		return CreateNewSayEx(%bilImgCn.."<enter><enter><enter><enter>HiÖn t¹i ch­a cã ch­¬ng tr×nh ph¸t th­ëng nµo trong   môc nµy, ®¹i hiÖp vui lßng quay l¹i sau!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	end
end

function bilPhucLoi_PhucLoiDon(bil_In_1, bil_In_2)
	local bil_1 = %bil_tb_PhucLoi[bil_In_1]
	local bil_2 = getn(bil_1)
	local bil_3 = GetTask(bil_1[1].bil_2)
	local bil_4 = GetTask(bil_1[1].bil_3)
	local bil_5 = bil_1[bil_4+2].bil_2
	local bil_6 = bil_1[bil_4+2].bil_3
	if bil_In_2 then
		local bil_7
		if bil_3 >= bil_5 then
			if CalcFreeItemCellCount() < 20 then
				return CreateNewSayEx(%bilImgCn.."Ph¶i ®Ó trèng Ýt nhÊt "..bil.C(2,"20 « hµnh trang").." míi cã thÓ nhËn phÇn th­ëng nµy!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
			end
			if bil_In_1 == "_TM" then
				bil_7 = AddItem(unpack(bil_1[bil_4+2].bil_1))
			else
				bil_7 = AddGoldItem(0, bil_1[bil_4+2].bil_1[2])
			end
			ITEM_SetExpiredTime(bil_7, FormatTime2Date(14 * 24 * 60 *60 + GetCurServerTime()))
			SyncItem(bil_7)
			SetTask(bil_1[1].bil_3, bil_4 + 1)
			AddLocalNews(bil.C(9, GetName().." NhËn ®­îc "..bil_6.." tõ ho¹t ®éng tÝch lòy ®iÓm phóc lîi, uy chÊn thiªn h¹!"), 1)
			Msg2SubWorld(bil.C(9, GetName().." NhËn ®­îc "..bil_6.." tõ ho¹t ®éng tÝch lòy ®iÓm phóc lîi, uy chÊn thiªn h¹!"))
			if GetTask(bil_1[1].bil_3) >= bil_2 -1 then
				SetTask(bil_1[1].bil_3, 0)
				SetTask(bil_1[1].bil_2, 0)
				Msg2Player(bil.C(10, "§· nhËn ®­îc phÇn th­ëng tèi ®a cña h¹ng môc "..bil_1[1].bil_1.." tiÕn hµnh lµm míi h¹ng môc nµy thµnh c«ng!"))
			end
			return
		else
			return CreateNewSayEx(%bilImgCn.."TÝch lòy hiÖn t¹i cña c¸c h¹ kh«ng ®ñ ®Ó nhËn th­ëng  mèc tiÕp theo. Yªu cÇu tÝch lòy "..bil.C(2, bil_3).."/"..bil.C(1, bil_5).."<enter>H·y tham gia vµo c¸c ho¹t ®éng ®Ó nhËn thªm ®iÓm th­ëng!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
		end
	end
	CreateNewSayEx(%bilImgCn..bil.C(1, bil_1[1].bil_1).."<enter><enter>TÝch lòy hiÖn t¹i: "..bil.C(2, bil_3).." ®iÓm<enter><enter>§¹t mèc tiÕp theo "..bil.C(1, bil_3.."/"..bil_5).." nhËn th­ëng: <enter><enter>"..bil.C(4, bil_6), {{"NhËn th­ëng ngay!", bilPhucLoi_PhucLoiDon, {bil_In_1, 1}}, {"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
end

function bilPhucLoi_NapTheLanDau()
	if bilAllowPhucLoiCaNhan ~= 1 then
		return CreateNewSayEx(%bilImgCn.."<bclr=red><enter><enter><enter><enter>"..bil.C(1,"HiÖn t¹i tÝnh n¨ng nµy ®ang t¹m ®ãng!").."<bclr>", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	end
	local bil_tb_1 = {{1, 2},{2, 2},{3, 2},{4, 2},{5, 2},{6, 2},{8, 1},{9, 3},{14, 1},{16, 1},{20, 1},{21, 1},{41, 1},{33, 1},}
	local bil_tb_2 = {5921, 5922, 5923, 5924, 5925, 5926}
	if GetTask(5928) ~= tonumber(date("%y%m%d")) then
		if GetTask(5927) == 0 then
			local bil_1 = %bilImgCn.."Th­ëng n¹p thÎ "..bil.C(1, "LÇn ®Çu trong ®êi").." c¸c vËt phÈm sÏ bÞ khãa. Th­ëng n¹p thÎ "..bil.C(2, "LÇn ®Çu trong ngµy").." vËt phÈm sÏ kh«ng khãa vµ t¹o míi danh s¸ch vµo mçi 0h00 h»ng ngµy.<enter>Danh s¸ch c¸c phÇn th­ëng n¹p thÎ lÇn ®Çu trong ®êi:<enter>"
			for bil_l_1 = 1, getn(bil_tb_1) do
				bil_1 = bil_1.."<enter>"..%bil_tb_Award[bil_tb_1[bil_l_1][1]][2].." x"..bil_tb_1[bil_l_1][2]
			end
			return CreateNewSayEx(bil_1, {{"NhËn th­ëng ngay!", bilPhucLoi_NapTheLanDau2}, {"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
		else
			if GetTask(5920) ~= tonumber(date("%y%m%d")) then
				SetTask(5920, tonumber(date("%y%m%d")))
				local bil_tb_ran_1 = bil.InitRandMemTb(getn(%bil_tb_Award))
				for bil_l_2 = 1, getn(bil_tb_2) do
					SetTask(bil_tb_2[bil_l_2], bil_tb_ran_1[bil_l_2])
				end
			end
			local bil_2 = %bilImgCn..bil.C(1,"PhÇn th­ëng sÏ t¹o míi mçi 0h00 h»ng ngµy")..bil.C(2,"<enter>Danh s¸ch c¸c phÇn th­ëng cña h«m nay:<enter>")
			for bil_l_3 = 1, getn(bil_tb_2) do
				bil_2 = bil_2.."<enter>"..%bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][2]
			end
			return CreateNewSayEx(bil_2, {{"NhËn th­ëng ngay!", bilPhucLoi_NapTheLanDau2}, {"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(%bilImgCn.."<enter><enter><enter><enter><bclr=red>"..bil.C(1, "H«m nay b¹n ®· nhËn phÇn th­ëng nµy råi!").."<bclr>", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	end
end

function bilPhucLoi_NapTheLanDau2()
	if GetTask(5919) ~= tonumber(date("%y%m%d")) then
		return CreateNewSayEx(%bilImgCn.."Tµi kho¶n: "..bil.C(1, GetAccount()).." kh«ng cã trong danh s¸ch ®· n¹p thÎ h«m nay nªn vÉn ch­a ®ñ ®iÒu kiÖn ®Ó nhËn phÇn th­ëng nµy!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	elseif CalcFreeItemCellCount() < 20 then
		return CreateNewSayEx(%bilImgCn.."Ph¶i ®Ó trèng Ýt nhÊt "..bil.C(2,"20 « hµnh trang").." míi cã thÓ nhËn phÇn th­ëng nµy!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	elseif GetFightState() ~= 0 then
		return CreateNewSayEx(%bilImgCn.."PhÇn th­ëng nµy chØ cã thÓ nhËn ë khu vùc "..bil.C(2,"phi chiÕn ®Êu")..", vui lßng rêi khái khu vùc nµy råi h·y nhËn l¹i phÇn th­ëng!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	end
	local bil_tb_1 = {{1, 2},{2, 2},{3, 2},{4, 2},{5, 2},{6, 2},{8, 1},{9, 3},{14, 1},{16, 1},{20, 1},{21, 1},{41, 1},{33, 1},}
	local bil_tb_2, bil_1 = {5921, 5922, 5923, 5924, 5925, 5926}, 0
	if bil.TaskDate(5928, GetTask(5927) + 1, 5927) == 0 then
		if GetTask(5927) == 1 then
			for bil_l_1 = 1, getn(bil_tb_1) do
				for bil_l_2 = 1, bil_tb_1[bil_l_1][2] do
					bil_1 = AddItem(unpack(%bil_tb_Award[bil_tb_1[bil_l_1][1]][1]))
					ITEM_SetExpiredTime(bil_1, FormatTime2Date(14 * 24 * 60 *60 + GetCurServerTime()));
					SyncItem(bil_1);
					SetItemBindState(bil_1, -2)
				end
				Msg2Player(bil.C(10, "NhËn ®­îc "..%bil_tb_Award[bil_tb_1[bil_l_1][1]][2]))
			end
			return Msg2Player(bil.C(9, "NhËn ®­îc phÇn th­ëng thÎ n¹p ®Çu tiªn thµnh c«ng, xin kiÓm tra l¹i hµnh trang!"))
		else
			for bil_l_3 = 1, getn(bil_tb_2) do
				if %bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][1][1] == 1 then
					bil_1 = AddGoldItem(0, %bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][1][2])
				else
					bil_1 = AddItem(unpack(%bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][1]))
				end
				Msg2Player(bil.C(10, "NhËn ®­îc "..%bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][2]))
				ITEM_SetExpiredTime(bil_1, FormatTime2Date(14 * 24 * 60 *60 + GetCurServerTime()));
				SyncItem(bil_1);
			end
			return Msg2Player(bil.C(9, "NhËn ®­îc phÇn th­ëng n¹p thÎ ®Çu tiªn trong ngµy thµnh c«ng, xin kiÓm tra l¹i hµnh trang!"))
		end
	else
		return CreateNewSayEx(%bilImgCn.."H«m nay ®· nhËn phÇn th­ëng phóc lîi nµy råi, ®îi h«m sau h·y tiÕp tôc!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	end
end

function bilPhucLoi_CheckNapThe_Logs(_1)
	local a, b, c = bil.IniFile, ("day_"..(date("%d_%m_%y"))), "day_all"
	
	a.Load("doanh_thu.dat")
	
	local d = a.Get("doanhthu", b) or 0
	local e = a.Get("doanhthu", c) or 0
	
	d = bil.False(d) and 0 or d
	e = bil.False(e) and 0 or e
	
	a.Set("doanhthu", b, (tonumber(d) + _1))
	a.Set("doanhthu", c, (tonumber(e) + _1))
	
	a.Release()
end

function bilPhucLoi_CheckNapThe()
	local bil_1 = GetTask(5930)
	local bil_2 = GetExtPoint(1)
	local bil_3 = (bil_2 - bil_1)
	if bil_2 > 1 then
		if bil_2 > bil_1 then
			SetTask(5929, GetTask(5929) + 1)
			SetTask(5919, tonumber(date("%y%m%d")))
			SetTask(5906, GetTask(5906) + (bil_3))
			bilPhucLoi_CheckNapThe_Logs(bil_3)
			-- if GetTask(5928) ~= tonumber(date("%y%m%d")) then
				-- Msg2Player(bil.C(9, "N¹p thÎ lÇn ®Çu thµnh c«ng, hiÖn b¹n cã thÓ më ")..bil.C(1, "CÈm nang ®ång hµnh ")..bil.C(9, "®Ó nhËn phÇn th­ëng n¹p thÎ lÇn ®Çu!"))
			-- end
			
			if bil_3 >= 50 and GetTask(5864) == 0 then
				SetTask(5864, 1)
				Msg2Player(bil.C(9, "N¹p thÎ lÇn ®Çu mÖnh gi¸ 50k thµnh c«ng, hiÖn b¹n cã thÓ më ")..bil.C(1, "CÈm nang ®ång hµnh ")..bil.C(9, "®Ó nhËn phÇn th­ëng n¹p thÎ lÇn ®Çu!"))
			end
		end
		SetTask(5930, bil_2)
	end
end

function bilPhucLoi_NapTheLanDau_50k()
	if GetTask(5864) == 1 then
		if (bilDenyAfterOpenTopRacing == 1) then
			return bil.Talk("§ang trong thêi gian  ®ua top, kh«ng thÓ sö dông c«ng n¨ng nµy, xin h·y quay l¹i sau!")
		end
	
		if CountFreeRoomByWH(3,9) < 1 then
			return bil.Talk("Vui lßng ®Ó trèng Ýt nhÊt 27(3x9) « trèng míi cã thÓ nhËn phÇn th­ëng nµy!")
		end
		
		local a = {
			{
				P = {
					i = {
						{v = {6,1,71,1,0,0,0}, n = 3, b = -2, e = 0, ne = "Tiªn th¶o lé 1 giê", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,1,72,1,0,0,0}, n = 2, b = -2, e = 0, ne = "Thiªn s¬n b¶o lé", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,1,125,1,0,0,0}, n = 2, b = -2, e = 0, ne = "QuÕ hoa töu", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,1,23,1,0,0,0}, n = 2, b = -2, e = 0, ne = "ThiÕt la h¸n", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,0,6,1,0,0,0}, n = 2, b = -2, e = 0, ne = "Phi tèc hoµn", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {0,10,5,random(6,9),0,0,0}, n = 1, b = -2, e = (5*24*60*60), ne = "Ngùa cÊp 80", l = "PhucLoi_NapTheLanDau_50K"},
					},
					c = {{SetTask, {5864, 2}}},
				}
			}
		}
		bil.Say(a)
		SetTask(5864, 2)
		
		Msg2Player("NhËn th­ëng n¹p thÎ lÇn ®Çu thµnh c«ng!")
	elseif GetTask(5864) < 1 then
		return bil.Talk("B¹n ch­a ®ñ ®iÒu kiÖn ®Ó nhËn th­ëng!")
	elseif GetTask(5864) > 1 then
		return bil.Talk("B¹n ®· nhËn gãi phÇn th­ëng nµy råi!")
	end
end
























