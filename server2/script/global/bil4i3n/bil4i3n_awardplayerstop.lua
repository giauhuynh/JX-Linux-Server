Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_chuyenmonphai.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_log\\bil4i3n_awardplayertop_tb.lua")
IncludeLib("RELAYLADDER");
IL("TITLE");

_bilTbFac = {{"shaolin", "ThiÕu L©m"},{"tianwang", "Thiªn V­¬ng"},{"tangmen", "§­êng M«n"},{"wudu", "Ngò §éc"},{"emei", "Nga My"},{"cuiyan", "Thóy Yªn"},{"gaibang", "C¸i Bang"},{"tianren", "Thiªn NhÉn"},{"wudang", "Vâ §ang"},{"kunlun", "C«n L«n"},}

function bilGetAwardTOPRace(bilSel, bilType, bilTOP)
	local bil_a = { -- b¶ng danh s¸ch cao thñ vµ phÇn th­ëng
		{ -- Danh s¸ch c¸c cao thñ nhËn th­ëng
			bil_a1 = { -- danh s¸ch 10 cao thñ thÕ giíi
					-- bil_a4_1: Normal Items[ID, sè l­îng, h¹n sö dông, khãa vÜnh viÔn: 2] - bil_a4_2: tiÒn v¹n - bil_a4_3: GoldItems[ID, sè l­îng, h¹n sö dông, khãa vÜnh viÔn: 2]
				[1] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{1,1,0,0},{4,1,0,0},{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[2] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{2,1,0,0},{4,1,0,0},{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[3] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{3,1,0,0},{4,1,0,0},{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[4] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[5] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[6] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[7] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[8] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[9] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[10] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
			},
			bil_a5 = { -- danh s¸ch c¸c cao thñ m«n ph¸i vµ phÇn th­ëng
				{ -- danh s¸ch c¸c cao thñ: bil_a5_1: Tªn nh©n vËt - bil_a5_2: ®¼ng cÊp
					[1] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- thiÕu l©m
					[2] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- thiªn v­¬ng
					[3] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- ®­êng m«n
					[4] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- ngò ®éc
					[5] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- nga my
					[6] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- thóy yªn
					[7] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- c¸i bang
					[8] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- thiªn nhÉn
					[9] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- vâ ®ang
					[10] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- c«n l«n
				},
				{ -- danh s¸ch c¸c phÇn th­ëng cña top m«n ph¸i
					-- bil_a4_1: NormalItems - bil_a4_2: tiÒn v¹n - bil_a4_3: GoldItems[ID, sè l­îng, h¹n sö dông, khãa vÜnh viÔn: 2]
					[1] = {bil_a4_1 = {{5,1,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0}}, bil_a4_2 = 500000, bil_a4_3 = {}},
					[2] = {bil_a4_1 = {{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0}}, bil_a4_2 = 500000, bil_a4_3 = {}},
					[3] = {bil_a4_1 = {{6,3,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0}}, bil_a4_2 = 500000, bil_a4_3 = {}},
				},
			},
		},
		{ -- Danh s¸ch c¸c phÇn th­ëng cÇn trao
			[1] = {{0,10,6,10,random(0,4),0},"Ngùa Phiªn Vò"},
			[2] = {{0,10,6,10,random(0,4),0},"Ngùa B«n Tiªu"},
			[3] = {{0,10,8,10,random(0,4),0},"Ngùa Phi V©n"},
			[4] = {{0,10,5,10,random(0,4),0},"Ngùa ChiÕu D¹"},
			[5] = {{0,10,5,10,random(0,4),0},"Ngùa ChiÕu D¹"},
			[6] = {{0,10,5,10,random(0,4),0},"Ngùa ChiÕu D¹"},
			[7] = {{0,10,5,10,random(0,4),0},"Ngùa ChiÕu D¹"},
			[8] = {{0,10,5,10,random(0,4),0},"Ngùa ChiÕu D¹"},
			[9] = {{0,10,5,10,random(0,4),0},"Ngùa ChiÕu D¹"},
			[10] = {{0,10,5,10,random(0,4),0},"Ngùa ChiÕu D¹"},
		},
	}
	local bil_1, bil_2 = "<color=Orange>LÔ Quan: <color>", "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><npc>"
	if bilType then
		local bil_9, bil_10, bil_19
		local bil_12 = bil_a[2]
		if bilType == 1 then
			bil_9 = bil_a[1].bil_a1[bilTOP].bil_a4
			bil_19 = "Cao thñ thÕ giíi"
		elseif bilType == 2 then
			bil_9 = bil_a[1].bil_a5[2][bilTOP]
			bil_19 = "Cao thñ m«n ph¸i"
		end
		Msg2Player("<color=yellow>PhÇn th­ëng cña TOP: "..bilTOP.." - "..bil_19..":")
		for bil_10 = 1, getn(bil_9["bil_a4_1"]) do
			for bil_14 = 1, bil_9["bil_a4_1"][bil_10][2] do
				local bil_11 = AddItem(unpack(bil_12[bil_9["bil_a4_1"][bil_10][1]][1]))
				if bil_9["bil_a4_1"][bil_10][3] > 0 then
					local bil_15 = FormatTime2Date(tonumber(bil_9["bil_a4_1"][bil_10][3]) * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bil_11, bil_15);
					SyncItem(bil_11);
				end
				if bil_9["bil_a4_1"][bil_10][4] == 2 then
					SetItemBindState(bil_11,-2)
				end
			end
			Msg2Player("<color=green>"..bil_9["bil_a4_1"][bil_10][2].." - "..bil_12[bil_9["bil_a4_1"][bil_10][1]][2])
		end
		if bil_9["bil_a4_2"] > 0 then
			Earn(bil_9["bil_a4_2"])
			Msg2Player("<color=green>"..bil_9["bil_a4_2"].." L­îng")
		end
		if getn(bil_9["bil_a4_3"]) > 0 then
			for bil_16 = 1, getn(bil_9["bil_a4_3"]) do
				for bil_17 = 1, bil_9["bil_a4_3"][bil_16][2] do
					local bil_18 = AddGoldItem(0, bil_12[bil_9["bil_a4_3"][bil_16][1]][1][1])
					if bil_9["bil_a4_3"][bil_16][3] > 0 then
						local bil_15 = FormatTime2Date(tonumber(bil_9["bil_a4_3"][bil_16][3]) * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bil_18, bil_15);
						SyncItem(bil_18);
					end
					if bil_9["bil_a4_3"][bil_16][4] == 2 then
						SetItemBindState(bil_18,-2)
					end
				end
				Msg2Player("<color=green>"..bil_9["bil_a4_3"][bil_16][2].." - "..bil_12[bil_9["bil_a4_3"][bil_16][1]][2])
			end
		end
		return Talk(1, "", bil_1.."§¹i hiÖp ®· nhËn ®­îc phÇn th­ëng xøng ®¸ng, xin kiÓm tra l¹i trong hµnh trang!")
	end
	if bilSel then
		local bil_6 = {{"Quay l¹i", bilGetAwardTOPRace}, {"Th«i, ta chØ ghÐ th¨m ngµi!", OnCancel}}
		if bilSel == 11 then
			local bil_4 = ""
			for bil_5 = 1, getn(bil_a[1].bil_a1) do
				bil_4 = bil_4.."H¹ng <color=fire> "..bil_5.."<color>: Tªn: <color=yellow>"..bil_a[1].bil_a1[bil_5].bil_a2.."<color> - §¼ng cÊp: <color=green>"..bil_a[1].bil_a1[bil_5].bil_a3.."<color><enter>"
			end
			return CreateNewSayEx(bil_2.."Danh s¸ch c¸c cao thñ thÕ giíi!<enter>"..bil_4, bil_6)
		end
		if bilSel == 22 then
			local bil_4 = ""
			for bil_5 = 1, getn(bil_a[1].bil_a5[1]) do
				bil_4 = bil_4.._bilTbFac[bil_5][2]..": 1 - <color=yellow>"..bil_a[1].bil_a5[1][bil_5][1].bil_a5_1.."<color>, 2 - <color=yellow>"..bil_a[1].bil_a5[1][bil_5][2].bil_a5_1.."<color>, 3 - <color=yellow>"..bil_a[1].bil_a5[1][bil_5][3].bil_a5_1.."<color><enter>"
			end
			return CreateNewSayEx(bil_2.."Danh s¸ch c¸c cao thñ m«n ph¸i!<enter>"..bil_4, bil_6)
		end
		if bilSel == 1 then
			local bil_7 = GetName()
			for bil_8 = 1, getn(bil_a[1].bil_a1) do
				if bil_a[1].bil_a1[bil_8].bil_a2 == bil_7 then
					if GetTask(5971) == 0 then
						if CalcFreeItemCellCount() < 50 then
							return Say(bil_1.."VÞ ®¹i hiÖp cÇn ph¶i ®Ó trèng Ýt nhÊt lµ 50 « trèng trong hµnh trang míi cã thÓ nhËn th­ëng!", 1, "§îi tý ®Ó ta s¾p xÕp l¹i!/OnCancel")
						end
						SetTask(5971, tonumber(date("%y%m%d")))
						return Talk(1, "#bilGetAwardTOPRace(0, 1, "..bil_8..")", bil_1.."Th× ra ®¹i hiÖp lµ ng­êi ®øng TOP "..bil_8.." cña thÕ giíi, nÓ phôc, nÓ phôc!")
					else
						return Talk(1,"",bil_1.."Ch¼ng ph¶i c¸c h¹ ®· tiÕn hµnh nhËn th­ëng  råi sao, ch¶ lÏ ®Õn chäc L·o giµ nµy!")
					end
				end
			end
			return Talk(1,"#bilGetAwardTOPRace(11)",bil_1.."VÞ ®¹i hiÖp ®©y l¹i ®Õn ®©y chäc ghÑo L·o   giµ nµy sao, ch¶ lÏ ta nh×n lÇm, tªn cña ng­¬i ®©u cãtrong danh s¸ch nµy!") 
		end
		if bilSel == 2 then
			local bil_7 = GetName()
			for bil_8 = 1, getn(bil_a[1].bil_a5[1]) do
				for bil_20 = 1, getn(bil_a[1].bil_a5[1][bil_8]) do
					if bil_a[1].bil_a5[1][bil_8][bil_20].bil_a5_1 == bil_7 then
						if GetTask(5971) == 0 then
							if CalcFreeItemCellCount() < 50 then
								return Say(bil_1.."VÞ ®¹i hiÖp cÇn ph¶i ®Ó trèng Ýt nhÊt lµ 50 « trèng trong hµnh trang míi cã thÓ nhËn th­ëng!", 1, "§îi tý ®Ó ta s¾p xÕp l¹i!/OnCancel")
							end
							SetTask(5971, tonumber(date("%y%m%d")))
							return Talk(1, "#bilGetAwardTOPRace(0,2,"..bil_20..")", bil_1.."Th× ra ®¹i hiÖp lµ ng­êi ®øng TOP "..bil_20.." cña ph¸i ".._bilTbFac[bil_8][2]..", nÓ phôc, nÓ phôc!")
						else
							return Talk(1,"",bil_1.."Ch¼ng ph¶i c¸c h¹ ®· tiÕn hµnh nhËn th­ëng  råi sao, ch¶ lÏ ®Õn chäc L·o giµ nµy!")
						end
					end
				end
			end
			return Talk(1,"#bilGetAwardTOPRace(22)",bil_1.."VÞ ®¹i hiÖp ®©y l¹i ®Õn ®©y chäc ghÑo L·o   giµ nµy sao, ch¶ lÏ ta nh×n lÇm, tªn cña ng­¬i ®©u cãtrong danh s¸ch nµy!") 
		end
	end
	local bil_3 = {
		-- "> T¹i h¹ ®Õn nhËn th­ëng cã tham gia §ua TOP!/bilAwardJoinTopRacing",
		-- "> Ta muèn nhËn th­ëng lµ cao thñ ThÕ Giíi/#bilGetAwardTOPRace(1)",
		"Ta muèn xem danh s¸ch cao thñ ThÕ Giíi/#bilGetAwardTOPRace(11)",
		-- "> Ta muèn nhËn th­ëng lµ cao thñ M«n Ph¸i/#bilGetAwardTOPRace(2)",
		-- "Ta muèn xem danh s¸ch cao thñ M«n Ph¸i/#bilGetAwardTOPRace(22)",
		-- "> NhËn th­ëng cao thñ top 4 ®Õn 10 cña M«n Ph¸i/#bilGetAwardTOPRace_Top4_10Fac(1111)",
		-- "Xem danh s¸ch cao thñ top 4 ®Õn 10 cña M«n Ph¸i/#bilGetAwardTOPRace_Top4_10Fac(2222)",
		"Th«i, ta chØ ghÐ th¨m ngµi!/OnCancel"
	}
	return Say(bil_1.."HiÖn t¹i §éc C« KiÕm chñ ®· cã trong tay <enter>danh s¸ch cña thËp ®¹i cao thñ ®­¬ng ®¹i vµ c¸c s­ <enter>huynh s­ tû trong c¸c m«n ph¸i, nh÷ng hiÖp kh¸ch nµy søng ®¸ng ®­îc nhËn nh÷ng phÇn th­ëng gi¸ trÞ tõ §éc C« KiÕm, ch¼ng hay ®¹i hiÖp ®Õn ®©y lµ cã viÖc g×?", getn(bil_3), bil_3)
end

function bilAwardJoinTopRacing()
	if GetTask(5966) == 1234 then
		if GetTask(5965) == 0 then
			local bilIndxIt = AddItem(6,1,71,1,1,1)
			SetItemBindState(bilIndxIt,-2)
			local bilIndxIt2 = AddItem(6,1,71,1,1,1)
			SetItemBindState(bilIndxIt2,-2)
			local bilIndxIt3 = AddItem(6,1,71,1,1,1)
			SetItemBindState(bilIndxIt3,-2)
			
			SetTask(5965, 1)
			return Talk(1, "", "<color=Orange>LÔ Quan: <color>Chóc mõng c¸c h¹ ®· nhËn ®­îc 3 <color=yellow>Tiªn Th¶o Lé<color>!")
		else
			return Talk(1, "", "<color=Orange>LÔ Quan: <color>Ch¼ng ph¶i c¸c h¹ ®· nhËn th­ëng nµy råi sao!")
		end
	else
		return Talk(1, "", "<color=Orange>LÔ Quan: <color>H×nh nh­ tr­íc 19h ngµy 08/08 c¸c h¹ ch­a tham gia ®ua TOP cïng anh em th× ph¶i!")
	end
end

function bilGetAwardTOPRace_Top4_10Fac(bilSel, bilFac)
	local bil_1, bil_2 = "<color=Orange>LÔ Quan: <color>", "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><npc>"
	local bilDanhSachTOP4_10 = { -- danh s¸ch c¸c cao thñ: bil_a5_1: Tªn nh©n vËt - bil_a5_2: ®¼ng cÊp
		[1] = {{bil_a5_1 = "", bil_a5_2 = 114},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- thiÕu l©m
		[2] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 111},}, -- thiªn v­¬ng
		[3] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- ®­êng m«n
		[4] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 111},{bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- ngò ®éc
		[5] = {{bil_a5_1 = "", bil_a5_2 = 114},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- nga my
		[6] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 111},{bil_a5_1 = "", bil_a5_2 = 110}, {bil_a5_1 = "", bil_a5_2 = 90}, {bil_a5_1 = "", bil_a5_2 = 89}, {bil_a5_1 = "", bil_a5_2 = 86}, {bil_a5_1 = "", bil_a5_2 = 86},}, -- thóy yªn
		[7] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 111},{bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- c¸i bang
		[8] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- thiªn nhÉn
		[9] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- vâ ®ang
		[10] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- c«n l«n
	}
	local bilTbSel = {}
	if bilSel == 2222 then
		tinsert(bilTbSel, "Xem TOP ThiÕu L©m/#bilGetAwardTOPRace_Top4_10Fac(3333, 1)")
		tinsert(bilTbSel, "Xem TOP Thiªn V­¬ng/#bilGetAwardTOPRace_Top4_10Fac(3333, 2)")
		tinsert(bilTbSel, "Xem TOP §­êng M«n/#bilGetAwardTOPRace_Top4_10Fac(3333, 3)")
		tinsert(bilTbSel, "Xem TOP Ngò §éc/#bilGetAwardTOPRace_Top4_10Fac(3333, 4)")
		tinsert(bilTbSel, "Xem TOP Nga My/#bilGetAwardTOPRace_Top4_10Fac(3333, 5)")
		tinsert(bilTbSel, "Xem TOP Thóy Yªn/#bilGetAwardTOPRace_Top4_10Fac(3333, 6)")
		tinsert(bilTbSel, "Xem TOP C¸i Bang/#bilGetAwardTOPRace_Top4_10Fac(3333, 7)")
		tinsert(bilTbSel, "Xem TOP Thiªn NhÉn/#bilGetAwardTOPRace_Top4_10Fac(3333, 8)")
		tinsert(bilTbSel, "Xem TOP Vâ §ang/#bilGetAwardTOPRace_Top4_10Fac(3333, 9)")
		tinsert(bilTbSel, "Xem TOP C«n L«n/#bilGetAwardTOPRace_Top4_10Fac(3333, 10)")
		tinsert(bilTbSel, "KÕt thóc ®èi tho¹i/OnCancel")
		return Say(bil_1.."HiÖn t¹i §éc C« KiÕm chñ ®· cã trong tay <enter>danh s¸ch cña thËp ®¹i cao thñ ®­¬ng ®¹i vµ c¸c s­ <enter>huynh s­ tû trong c¸c m«n ph¸i, nh÷ng hiÖp kh¸ch nµy søng ®¸ng ®­îc nhËn nh÷ng phÇn th­ëng gi¸ trÞ tõ §éc C« KiÕm, ch¼ng hay ®¹i hiÖp ®Õn ®©y lµ cã viÖc g×?", getn(bilTbSel), bilTbSel)
	elseif bilSel == 3333 then
		local DanhsachbilTop1_10MonPhai = "Danh s¸ch c¸c cao thñ top m«n ph¸i tõ 4 ®Õn 10!"
		for i = 1, getn(bilDanhSachTOP4_10[bilFac]) do
			DanhsachbilTop1_10MonPhai = DanhsachbilTop1_10MonPhai.."\nTOP "..(i+3)..": Tªn: <color=yellow>"..bilDanhSachTOP4_10[bilFac][i].bil_a5_1.."<color> - CÊp: <color=Orange>"..bilDanhSachTOP4_10[bilFac][i].bil_a5_2.."<color>"
		end
		return CreateNewSayEx(bil_2..DanhsachbilTop1_10MonPhai, {{"Quay l¹i", bilGetAwardTOPRace}, {"Th«i, ta chØ ghÐ th¨m ngµi!", OnCancel}})
	elseif bilSel == 1111 then
		local bilGetNamePlayer = GetName()
		for i = 1, 10 do
			for j = 1, getn(bilDanhSachTOP4_10[i]) do
				if bilDanhSachTOP4_10[i][j].bil_a5_1 == bilGetNamePlayer then
					if GetTask(5971) == 0 then
						if CalcFreeItemCellCount() >= 10 then
							AddItem(4,353,0,0,0,0)
							AddItem(4,353,0,0,0,0)
							AddItem(4,239,0,0,0,0)
							Earn(200000)
							SetTask(5971, tonumber(date("%y%m%d")))
							return Talk(1, "", bil_1.."Th× ra c¸c h¹ lµ "..bilGetNamePlayer.." TOP "..(j+3).." cña m«n ph¸i ".._bilTbFac[i][2].." b¸i phôc b¸i phôc!")
						else
							return Say(bil_1.."VÞ ®¹i hiÖp cÇn ph¶i ®Ó trèng Ýt nhÊt lµ 10 « trèng trong hµnh trang míi cã thÓ nhËn th­ëng!", 1, "§îi tý ®Ó ta s¾p xÕp l¹i!/OnCancel")
						end
					else
						return Talk(1,"",bil_1.."Ch¼ng ph¶i c¸c h¹ ®· tiÕn hµnh nhËn th­ëng  råi sao, ch¶ lÏ ®Õn chäc L·o giµ nµy!")
					end
				end
			end
		end
		return Talk(1,"",bil_1.."H×nh nh­ c¸c h¹ kh«ng cã tªn trong b¶ng danh s¸ch c¸c cao thñ m«n ph¸i tõ 4 ®Õn 10 th× ph¶i!")
	end
end

function bilAwardCityWar()
	local bilTbbilAwardCityWarPlayer = 
	{
		{bilName = "V« hÖ", bilNamePlayer = "", bilCity = "Ph­îng T­êng", bilTitleID = 153},
		{bilName = "V« hÖ", bilNamePlayer = "", bilCity = "T­¬ng D­¬ng", bilTitleID = 157},
		{bilName = "V« hÖ", bilNamePlayer = "", bilCity = "D­¬ng Ch©u", bilTitleID = 158},
		{bilName = "V« hÖ", bilNamePlayer = "", bilCity = "Thµnh §«", bilTitleID = 154},
		{bilName = "V« hÖ", bilNamePlayer = "", bilCity = "§¹i Lý", bilTitleID = 155},
		{bilName = "V« hÖ", bilNamePlayer = "", bilCity = "L©m An", bilTitleID = 159},
		{bilName = "V« hÖ", bilNamePlayer = "", bilCity = "BiÖn Kinh", bilTitleID = 156},
	}
	for i = 1, getn(bilTbbilAwardCityWarPlayer) do
		if (bilTbbilAwardCityWarPlayer[i].bilNamePlayer == GetName()) then
			local bilTimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
			if tonumber(date("%w")) == 0 then
				bilTimeActive = (24 - tonumber(GetLocalDate("%H")))
			end
			local nServerTime = GetCurServerTime()+ (bilTimeActive * 60 * 60);
			local nDate	= FormatTime2Number(nServerTime);
			local nDay	= floor(mod(nDate,1000000) / 10000);
			local nMon	= mod(floor(nDate / 1000000) , 100)
			local bilTimeActived	= nMon * 1000000 + nDay * 10000
			Title_AddTitle(bilTbbilAwardCityWarPlayer[i].bilTitleID, 2, bilTimeActived)
			Title_ActiveTitle(bilTbbilAwardCityWarPlayer[i].bilTitleID)
			SetTask(1122, bilTbbilAwardCityWarPlayer[i].bilTitleID)
			-- Say("Chóc mõng ®¹i hiÖp ®· nhËn ®­îc danh hiÖu <enter><color=yellow>Thµnh Chñ "..bilTbbilAwardCityWarPlayer[i].bilCity.."<color> <enter>thêi gian kÝch ho¹t cßn <color=green>"..bilTimeActive.."<color> giê .<enter>Mét lÇn n÷a bæn trang rÊt lÊy lµm vinh dù khi trao <enter>th­ëng cho ®¹i hiÖp, h·y tiÕp tôc cè g¾ng!")
			Msg2Player("Chóc mõng ®¹i hiÖp ®· nhËn ®­îc danh hiÖu <enter><color=yellow>Thµnh Chñ "..bilTbbilAwardCityWarPlayer[i].bilCity.."<color> <enter>thêi gian kÝch ho¹t cßn <color=green>"..bilTimeActive.."<color> giê !")
		end
	end
		if GetName() == "Nh­Ù1ÙThãiÙQuen"	then
			if GetTask(5955) < 6 then  -- kiÓm tra ®· nhËn th­ëng ch­a, t¨ng lªn theo ®ît c«ng thµnh
				if CalcFreeItemCellCount() < 20 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 20 « míi cã thÓ nhËn vËt phÈm!") return 1 end
				SetTask(5955, 6)	-- kiÓm tra ®· nhËn th­ëng ch­a, t¨ng lªn theo ®ît c«ng thµnh
				
				-------------- th­ëng c¸c vËt phÈm
					-- 1000 c¸i tói nguyªn liÖu VU LAN
						for i = 1, 4 do
							local bilItemIndex = AddStackItem(250,6,1,4265,1,0,0,0)
							local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
							ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
							SyncItem(bilItemIndex);
						end
					-- 2 KNB
						AddItem(4,343,1,0,0,0)
						AddItem(4,343,1,0,0,0)
					-- 5 Tö thñy tinh
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
					-- 5 Tinh hång b¶o th¹ch
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
					-- 1000 v¹n l­îng
						Earn(10000000)
				-------------- th­ëng c¸c vËt phÈm
			else
				return Msg2Player("Ch¼ng ph¶i c¸c h¹ ®· nhËn th­ëng lµ thµnh chñ råi sao!")
			-- end
		end
	end
	local bilMsg = ""
	for i = 1, getn(bilTbbilAwardCityWarPlayer) do
		bilMsg = bilMsg.."\nThµnh: <color=yellow>"..bilTbbilAwardCityWarPlayer[i].bilCity.."<color> Th¸i Thó: <color=green>"..bilTbbilAwardCityWarPlayer[i].bilName.."<color>"
	end
	return CreateNewSayEx("<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>".."<npc>C¸c h¹ kh«ng ph¶i lµ Thµnh chñ, chuyÖn lµm   chñ thµnh tr× kh«ng ph¶i lµ chuyÖn nhá, ch¼ng lÏ c¸c  h¹ l¹i ®em ra ®ïa sao?<enter><color=fire>D­íi ®©y lµ danh s¸ch c¸c Th¸i thó cña c¸c Thµnh thÞ.<color>"..bilMsg, {{"Th«i, ta chØ ®Õn th¨m ngµi th«i!", OnCancel}})
end

function bilUpdateTOPPlayerPrivWeek()
	local bilOpenFileTopWrite = openfile("script/global/bil4i3n/bil4i3n_log/bil4i3n_awardplayertop_tb.lua", "w")
	write(bilOpenFileTopWrite, "_bilPlayersNameTb = \n{\n\tTopCaoThu = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10287, i);
		write(bilOpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	end
	write(bilOpenFileTopWrite, "\t\t},\n\tTopPhuHo = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10288, i);
		write(bilOpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Money = "..nValue..",},", "\n")
	end
	write(bilOpenFileTopWrite, "\t\t},\n\TopMonPhai = \n\t\t{", "\n")
	
	local szName, nValue = Ladder_GetLadderInfo(10277, 1);
	write(bilOpenFileTopWrite, "\t\t\tshaolin = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10278, 1);
	write(bilOpenFileTopWrite, "\t\t\ttianwang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10279, 1);
	write(bilOpenFileTopWrite, "\t\t\ttangmen = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10280, 1);
	write(bilOpenFileTopWrite, "\t\t\twudu = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10281, 1);
	write(bilOpenFileTopWrite, "\t\t\temei = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10282, 1);
	write(bilOpenFileTopWrite, "\t\t\tcuiyan = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10283, 1);
	write(bilOpenFileTopWrite, "\t\t\tgaibang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10284, 1);
	write(bilOpenFileTopWrite, "\t\t\ttianren = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10285, 1);
	write(bilOpenFileTopWrite, "\t\t\twudang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10286, 1);
	write(bilOpenFileTopWrite, "\t\t\tkunlun = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	
	write(bilOpenFileTopWrite, "\t\t},\n}", "\n")
	closefile(bilOpenFileTopWrite)
	LoadScript("\\script\\global\\bil4i3n\\bil4i3n_log\\bil4i3n_awardplayertop_tb.lua")
	dofile("script/global/Â·ÈË_Àñ¹Ù.lua")
	for i=10277, 10286 do -- m«n ph¸i cao thñ
		Ladder_ClearLadder(i)
	end
	for i=10265, 10275 do -- m«n ph¸i phó hé
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10288) -- phó hé
	Msg2SubWorld("<color=yellow>Danh s¸ch c¸c cao thñ cña tuÇn<enter>tr­íc ®· ®­îc cËp nhËt, c¸c nh©n sü cã tªn<enter>trong danh s¸ch cÇn ®Õn gÆp LÔ quan ®Ó nhËn<enter>th­ëng!")
	AddLocalNews("<color=yellow>Danh s¸ch c¸c cao thñ cña tuÇn tr­íc ®· ®­îc cËp nhËt, c¸c nh©n sü cã tªn trong danh s¸ch cÇn ®Õn gÆp LÔ quan ®Ó nhËn th­ëng!")
end

function bilGetAwardTOPPlayers()
	local bilTbOp = {}
	tinsert(bilTbOp, "> Ta ®Õn ®Ó nhËn th­ëng TOP cao thñ tuÇn tr­íc!/#bilReceiveAward(1)")
	tinsert(bilTbOp, "Ta muèn xem danh s¸ch cao thñ tuÇn tr­íc!/#bilViewTOP(1)")
	tinsert(bilTbOp, "> Ta ®Õn ®Ó nhËn th­ëng TOP phó hé tuÇn tr­íc!/#bilReceiveAward(2)")
	tinsert(bilTbOp, "Ta muèn xem danh s¸ch phó hé tuÇn tr­íc!/#bilViewTOP(2)")
	tinsert(bilTbOp, "> Ta ®Õn ®Ó nhËn th­ëng TOP m«n ph¸i tuÇn tr­íc!/#bilReceiveAward(3)")
	tinsert(bilTbOp, "Ta muèn xem danh s¸ch cao thñ m«n ph¸i tuÇn tr­íc!/#bilViewTOP(3)")
	tinsert(bilTbOp, "Ta ®Õn ®Ó hái th¨m ngµi th«i!/OnCancel")
	Say("<color=Orange>LÔ quan: <color>".."TuÇn míi ®· ®Õn, tÊt c¶ c¸c cao thñ cña tuÇntr­íc ®· ®­îc ghi danh, ®Ó t«n vinh c¸c vÞ cao thñ,  bæn trang sÏ ®Æt biÖt trao th­ëng cho nh÷ng nh©n tµi nµy!", getn(bilTbOp), bilTbOp)
end

_bilTitleTopLvl = 
{
	{bilTitleID = 328, TitleName = "Cao thñ thiªn h¹ h¹ng nhÊt",},
	{bilTitleID = 329, TitleName = "Cao thñ thiªn h¹ h¹ng hai",},
	{bilTitleID = 330, TitleName = "Cao thñ thiªn h¹ h¹ng ba",},
	{bilTitleID = 331, TitleName = "Cao thñ thiªn h¹ h¹ng t­",},
}

_bilTitleTopMoney =
{
	{bilTitleID = 332, TitleName = "Giµu nhÊt thiªn h¹ h¹ng nhÊt",},
	{bilTitleID = 333, TitleName = "Giµu nhÊt thiªn h¹ h¹ng hai",},
	{bilTitleID = 334, TitleName = "Giµu nhÊt thiªn h¹ h¹ng ba",},
	{bilTitleID = 335, TitleName = "Giµu nhÊt thiªn h¹ h¹ng t­",},
}

_bilTitleFaction = 
{
	shaolin = 
		{
			[0] = {bilTitleID = 336, TitleName = "ThiÕu l©m §¹i s­ huynh",},
			[1] = {bilTitleID = 337, TitleName = "ThiÕu l©m §¹i s­ tû",},
		},
	tianwang = 
		{
			[0] = {bilTitleID = 338, TitleName = "Thiªn v­¬ng §¹i s­ huynh",},
			[1] = {bilTitleID = 339, TitleName = "Thiªn v­¬ng §¹i s­ tû",},
		},
	tangmen = 
		{
			[0] = {bilTitleID = 340, TitleName = "§­êng m«n §¹i s­ huynh",},
			[1] = {bilTitleID = 341, TitleName = "§­êng m«n §¹i s­ tû",},
		},
	wudu = 
		{
			[0] = {bilTitleID = 342, TitleName = "Ngò ®éc §¹i s­ huynh",},
			[1] = {bilTitleID = 343, TitleName = "Ngò ®éc §¹i s­ tû",},
		},
	emei = 
		{
			[0] = {bilTitleID = 344, TitleName = "Nga my §¹i s­ huynh",},
			[1] = {bilTitleID = 345, TitleName = "Nga my §¹i s­ tû",},
		},
	cuiyan = 
		{
			[0] = {bilTitleID = 346, TitleName = "Thóy yªn §¹i s­ huynh",},
			[1] = {bilTitleID = 347, TitleName = "Thóy yªn §¹i s­ tû",},
		},
	gaibang = 
		{
			[0] = {bilTitleID = 348, TitleName = "C¸i bang §¹i s­ huynh",},
			[1] = {bilTitleID = 349, TitleName = "C¸i bang §¹i s­ tû",},
		},
	tianren = 
		{
			[0] = {bilTitleID = 350, TitleName = "Thiªn nhÉn §¹i s­ huynh",},
			[1] = {bilTitleID = 351, TitleName = "Thiªn nhÉn §¹i s­ tû",},
		},
	wudang = 
		{
			[0] = {bilTitleID = 352, TitleName = "Vâ ®ang §¹i s­ huynh",},
			[1] = {bilTitleID = 353, TitleName = "Vâ ®ang §¹i s­ tû",},
		},
	kunlun = 
		{
			[0] = {bilTitleID = 354, TitleName = "C«n l«n §¹i s­ huynh",},
			[1] = {bilTitleID = 355, TitleName = "C«n l«n §¹i s­ tû",},
		},
}

function bilReceiveAward(bilSel)
	if bilSel == 1 then
		for i = 1, 4 do
			if _bilPlayersNameTb["TopCaoThu"][i].Name == GetName() then
				return bilReceiveAwardActive(bilSel, i)
			end
		end
		return Talk(1, "", "§¹i hiÖp kh«ng cã trong danh s¸ch nhËn th­ëng cña <enter>tuÇn nµy, ®¹i hiÖp cã thÓ vµo phÇn xem danh s¸ch ®Ó <enter>biÕt ai ®­îc nhËn th­ëng!")
	elseif bilSel == 2 then
		for i = 1, 4 do
			if _bilPlayersNameTb["TopPhuHo"][i].Name == GetName() then
				return bilReceiveAwardActive(bilSel, i)
			end
		end
		return Talk(1, "", "§¹i hiÖp kh«ng cã trong danh s¸ch nhËn th­ëng cña <enter>tuÇn nµy, ®¹i hiÖp cã thÓ vµo phÇn xem danh s¸ch ®Ó <enter>biÕt ai ®­îc nhËn th­ëng!")
	elseif bilSel == 3 then
		local bilCheckFac = 0
		for facloop = 1, 10 do
			if _bilSectTable[facloop][1] == GetFaction() then
				if _bilPlayersNameTb["TopMonPhai"][GetFaction()].Name == GetName() then
					return bilReceiveAwardActive(bilSel, GetFaction())
				else
					bilCheckFac = 1
				end
			end
		end
		if bilCheckFac == 1 then
			return Talk(1, "", "§¹i hiÖp kh«ng cã trong danh s¸ch nhËn th­ëng cña <enter>tuÇn nµy, ®¹i hiÖp cã thÓ vµo phÇn xem danh s¸ch ®Ó <enter>biÕt ai ®­îc nhËn th­ëng!")
		end
		return Talk(1, "", "<color=metal>§¹i hiÖp ch­a lµ ®Ö tö cña gi¸o ph¸i nµo c¶ nªn kh«ng thÓ nhËn th­ëng ë môc nµy!<color>")
	end
end

function bilReceiveAwardActive(RankType, RankNum)
	local bilTitleIDAward
	local bilTitleIDName
	if RankType == 1 then
		bilTitleIDAward = _bilTitleTopLvl[RankNum].bilTitleID
		bilTitleIDName = _bilTitleTopLvl[RankNum].TitleName
	elseif RankType == 2 then
		bilTitleIDAward = _bilTitleTopMoney[RankNum].bilTitleID
		bilTitleIDName = _bilTitleTopMoney[RankNum].TitleName
	elseif RankType == 3 then
		bilTitleIDAward = _bilTitleFaction[GetFaction()][GetSex()].bilTitleID
		bilTitleIDName = _bilTitleFaction[GetFaction()][GetSex()].TitleName
	end
	local bilTimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		bilTimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
	local nServerTime = GetCurServerTime()+ (bilTimeActive * 60 * 60);
	local nDate	= FormatTime2Number(nServerTime);
	local nDay	= floor(mod(nDate,1000000) / 10000);
	local nMon	= mod(floor(nDate / 1000000) , 100)
	local bilTimeActived	= nMon * 1000000 + nDay * 10000
	Title_AddTitle(bilTitleIDAward, 2, bilTimeActived)
	Title_ActiveTitle(bilTitleIDAward)
	SetTask(1122, bilTitleIDAward)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®­îc danh hiÖu <enter><color=yellow>"..bilTitleIDName.."<color> <enter>thêi gian kÝch ho¹t cßn <color=green>"..bilTimeActive.."<color> giê .<enter>Mét lÇn n÷a bæn trang rÊt lÊy lµm vinh dù khi trao <enter>th­ëng cho ®¹i hiÖp, h·y tiÕp tôc cè g¾ng!")
end

function bilViewTOP(sel)
	local bilStr = ""
	if sel == 1 then
		if FALSE(_bilPlayersNameTb["TopCaoThu"][1].Name) then
			bilStr = "<color=Orange>LÔ quan: <color>HiÖn t¹i ch­a cã xÕp h¹ng, xin ®¹i hiÖp ®îi th«ng b¸o!\n"
		else
			for i = 1, 4 do
				bilStr = bilStr.."Cao thñ Top [<color=yellow>"..i.."<color>]: <color=fire>".._bilPlayersNameTb["TopCaoThu"][i].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopCaoThu"][i].Level.."<color>\n"
			end
		end
	elseif sel == 2 then
		if FALSE(_bilPlayersNameTb["TopPhuHo"][1].Name) then
			bilStr = "<color=Orange>LÔ quan: <color>HiÖn t¹i ch­a cã xÕp h¹ng, xin ®¹i hiÖp ®îi th«ng b¸o!\n"
		else
			for i = 1, 4 do
				bilStr = bilStr.."Phó hé TOP [<color=yellow>"..i.."<color>]: <color=fire>".._bilPlayersNameTb["TopPhuHo"][i].Name.."<color> - TiÒn: <color=green>".._bilPlayersNameTb["TopPhuHo"][i].Money.."<color> l­îng\n"
			end
		end
	elseif sel == 3 then
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["shaolin"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña ThiÕu l©m<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>ThiÕu l©m<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["shaolin"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["shaolin"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["tianwang"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña Thiªn v­¬ng<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>Thiªn v­¬ng<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["tianwang"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["tianwang"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["tangmen"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña §­êng m«n<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>§­êng m«n<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["tangmen"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["tangmen"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["wudu"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña Ngò ®éc<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>Ngò ®éc<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["wudu"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["wudu"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["emei"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña Nga my<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>Nga my<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["emei"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["emei"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["cuiyan"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña Thóy yªn<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>Thóy yªn<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["cuiyan"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["cuiyan"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["gaibang"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña C¸i bang<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>C¸i bang<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["gaibang"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["gaibang"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["tianren"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña Thiªn nhÉn<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>Thiªn nhÉn<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["tianren"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["tianren"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["wudang"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña Vâ ®ang<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>Vâ ®ang<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["wudang"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["wudang"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["kunlun"].Name) then
			bilStr = bilStr.."<color=white>HiÖn ch­a cã danh s¸ch cña C«n l«n<color>\n"
		else
			bilStr = bilStr.."Cao thñ <color=yellow>C«n l«n<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["kunlun"].Name.."<color> - §¼ng cÊp: <color=green>".._bilPlayersNameTb["TopMonPhai"]["kunlun"].Level.."<color>\n"
		end
	end
	CreateNewSayEx("<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>"..bilStr, {{"Quay l¹i", bilGetAwardTOPPlayers}, {"KÕt thóc ®èi tho¹i", OnCancel}})
end

function bilGetItem2AccountClone(bilS, bil_3)
	local bil_1 = { 
		[1]= {"D©y chuyÒn - N÷", {0,4,0,1}},
		[2]= {"D©y chuyÒn - Nam", {0,4,1,1}},
		[3]= {"Ngäc béi - N÷", {0,9,0,1}},
		[4]= {"Ngäc béi - Nam", {0,9,1,1}},
		[5]= {"NhÉn - Nam, N÷", {0,3,0,1}},
	} 
	if bilS then
		if bilS == -2 then
			SetTaskTemp(246, bil_3)
			return AskClientForNumber("bilGetItem2AccountClone",0,99,"NhËp sè l­îng")
		elseif bilS == -1 then
			local bil_2 = {}
			for i = 1, getn(bil_1) do 
				tinsert(bil_2, bil_1[i][1].."/#bilGetItem2AccountClone(-2, "..i..")")
			end
			tinsert(bil_2, "Th«i kh«ng lÊy g× c¶!/OnCancel")
			return Say("LÊy trang bÞ cho Acc Clone!", getn(bil_2), bil_2)
		else
			local bil_5 = GetTaskTemp(246)
			for bil_4 = 1, bilS do
				if CalcFreeItemCellCount() > 0 then
					AddItem(bil_1[bil_5][2][1], bil_1[bil_5][2][2], bil_1[bil_5][2][3], random(1, 10), random(0, 4), 1, 1)
				end
			end
			return SetTaskTemp(246, 0)
		end
	end
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

function OnCancel()
end
