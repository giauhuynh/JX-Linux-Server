Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
--Include("\\script\\global\\bil4i3n\\bil4i3n_chuyenmonphai.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\global\\quanlygame\\chuyenmonphai.lua")
Include([[\script\event\mid_autumn06\head.lua]]);

-----------------------------------------------------------------------
	-- 6,1,1670: Tİn vËt m«n ph¸i
	-- 6,1,1671: Tİn vËt D­¬ng anh
-----------------------------------------------------------------------

function main()
	bilMain()
end

function bilMain()
	if bilCheckDuaTop:FuncMain() then
		return
	end
	
	if GetTask(5994) ~= 0 then
		local a, b = bil.Str2Byte(GetName(), 1)
		local c = tonumber(b..(strlen(a)))
		local d = GetTask(5994)
		
		if d == c or d == 1111112 then
			SetTask(5994, 1111112)
			return Talk(1, "change_rolename3", "VÉn ch­a chän ®­îc tªn nh©n vËt ­ng ı víi ®¹i hiÖp sao?")
		else
			SetTask(5994, 0)
		end
	end
	
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>C¸c nh©n sÜ giang hå muèn thay ®æi tªn tuæi, chuyÓn ®æi m«n ph¸i ®Òu qua mét tay cña <enter>tiÓu muéi, kh«ng biÕt vŞ ®¹i hiÖp cÇn tiÓu muén nµy <enter>gióp viÖc g×?", 6, 
		-- "PhiÒn muén gióp ta ®æi tªn Bang héi/bilChangeTongName_Check",
		"PhiÒn muén gióp chuyÓn ®æi m«n ph¸i yªu cÇu 120/MenuChuyen",
		"PhiÒn muéi gióp ta thay ®æi ngo¹i h×nh trang bŞ/bilChangeFeature",
		"PhiÒn muéi gióp ta chuyÓn sang "..bilCovertSex(GetSex()).." giíi/#bilChangeSex("..GetSex()..")",
		"§çi Tªn Nh©n VËt 80xu/DoiTenNV",
		--"PhiÒn muén gióp ta ®æi tªn/change_rolename",
		"T¹i h¹ muèn hái th¨m vÒ 1 sè lÖnh bµi ®Æt biÖt!/#HoanhBaTT_MuaLenhBaiDB()",
		"KÕt thóc ®èi tho¹i./OnCancel"
	)
end

function HoanhBaTT_MuaLenhBaiDB(_1, _2, _3)
	local a = {
		{{6,1,1671,1,0,0,0}, "Tİn vËt cña D­¬ng Anh", 150, "vËt nµy giao cho D­¬ng Anh cã thÓ kÕt n¹p 1 n÷ nh©n sÜ bÊt kú nµo ®ã vµo Thiªn v­¬ng bang"},
		{{6,1,4317,1,0,0,0}, "Tİnh Danh Chi LÖnh", 250, "vËt nµy dïng ®Ó thay ®æi tªn tuæi trong giang hå"},
	}

	if _1 then

			if _2 then
				if _2 == 1 then
					if _3 then
						if _3 == 1 then
							if CalcEquiproomItemCount(4,417,1,-1) < a[_1][3] then
								return Talk(1, "", a[_1][2].." cã gi¸ "..a[_1][3].." xu, h×nh nh­ thiÕu hiÖp ch­a mang ®ñ tiÒn ®ång th× ph¶i!")
							end
							ConsumeEquiproomItem(a[_1][3],4,417,1,-1)
							AddItem(unpack(a[_1][1]))
							return Msg2Player("Mua ®­îc "..a[_1][2].." tõ chç Hoµnh Ba Tiªn Tö!")
						end
					end
				
					return Say(a[_1][2].." cã gi¸ "..a[_1][3].." Xu, kh«ng biÕt vŞ thiÕu hiÖp cã muèn mua kh«ng?", 2, "Ta muèn mua tİn vËt nµy!/#HoanhBaTT_MuaLenhBaiDB(".._1..", 1, 1)", "Th«i, ®¾t qu¸!/OnCancel")
				end
			end
		
			return Talk(2, "#HoanhBaTT_MuaLenhBaiDB(".._1..", 1)", "Muèn xem qua "..a[_1][2].." µ!", "§©y, mêi thiÕu hiÖp, "..a[_1][4].."!, Gi¸ cña tİn vËt nµy lµ "..a[_1][3].." xu!")

	end

	return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>ë ®©y tiÓu n÷ cã l­u gi÷a mét sè lÖnh bµi ®Æt biÖt kh¸c, kh«ng biÕt vŞ thiÕu hiÖp ®©y muèn xem mãn nµo?", 2,
		"Ta muèn xem qua Tİn vËt cña D­¬ng Anh./#HoanhBaTT_MuaLenhBaiDB(1)",
		"Ta muèn xem qua Danh Tİnh LÖnh./#HoanhBaTT_MuaLenhBaiDB(2)",
		"KÕt thóc ®èi tho¹i./OnCancel"
	)
end

function bilChangeFeature()
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>TiÓu muéi cã thÓ t¹o ra 'ngo¹i h×nhtrang bŞ' theo nh­ ı muèn, chØ cÇn thu thËp ®ñ nguyªnliÖu cÇn thiÕt nh­ <color=Orange>TiÒn ®ång<color> vµ <color=yellow>trang bŞ cÇn thay ®æi<color>®em ®Õn ®©y th× muéi sÏ gióp ®¹i hiÖp thay ®æi <color=green>ngo¹i h×nh trang bŞ nh­ ı muèn<color>. Nªn nhí tiÓu muéi chØ cã <enter>thÓ gióp ®¹i hiÖp thay ®æi ngo¹i h×nh trang bŞ mµ <enter><color=yellow>kh«ng thay ®æi ®é m¹nh yÕu cña trang bŞ<color> ®©u nhĞ.",
		4,
		-- 3,
		"Ta muèn xem tr­íc ngo¹i h×nh trang bŞ/bilChangeFeature_PriView",
		"Gióp ta Thay ®æi ngo¹i h×nh trang bŞ ­ng ı nhÊt!/bilWant2ChangeFeature",
		"Xãa hiÖu øng ngo¹i h×nh xem thö/RestoreOwnFeature",
		"KÕt thóc ®èi tho¹i./OnCancel")
end

function bilChangeFeature_PriView()
	tbFeatureNpc:SelectType()
end

function bilWant2ChangeFeature()
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>Mçi lÇn muéi thay ®æi ngo¹i h×nh   cña trang bŞ ®¹i hiÖp cÇn ph¶i tèn <color=yellow>10 TiÒn ®ång<color>, ®¹i  hiÖp ®ång ı thùc hiÖn chø!<enter>ID nhËp vµo lµ sè thø tù cña ngo¹i h×nh xem ë phÇn <color=green>  'Xem tr­íc ngo¹i h×nh trang bŞ'<color>.",2, "Ta ®ång ı vµ ®· chuÈn bŞ nguyªn liÖu!/bilWant2ChangeFeature_Sure", "Th«i ®Ó ta suy nghÜ l¹i tı n÷a!/OnCancel")
end

function bilWant2ChangeFeature_Sure()
	tbFeatureNpc:InjectToItem()
end

function bilChangeToushiCheck()
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>Ng­êi chuyÓn ®æi m«n ph¸i sang m«n ph¸i míi sÏ ®­îc <color=green>gi÷ l¹i<color> c¸c ®iÓm ®· cã cña c¸c kü <enter>n¨ng cÊp <color=yellow>90 vµ 120<color> nÕu ch­a häc kü n¨ng sÏ kh«ng cã <enter>c¸c ®iÓm céng l¹i nµy, sau khi rêi khái m«n ph¸i ®¹i hiÖp sÏ ®­îc <color=green>tÈy l¹i<color> hoµn toµn ®iÓm <color=yellow>tiÒm n¨ng vµ kü <enter>n¨ng<color>, ®¹i hiÖp muèn liªn hÖ víi ch­ëng m«n nh©n ®Ó <enter>rêi <color=Orange>khái m«n ph¸i<color> chø?", 2, 
		"PhiÒn muéi gióp ta nãi mét tiÕng víi ch­ëng m«n/bilChangeToushiSure",
		"Hay lµ muén cho ta thêi gian suy nghÜ l¹i nhĞ/OnCancel"
	)
end

function bilChangeToushiSure()
	if (CalcItemCount(2,0,-1,-1,-1) > 0) then
		return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color> §Ó chuyÓn ®æi m«n ph¸i ®¹i hiÖp   cÇn th¸o bá toµn bé trang bŞ trªn ng­êi th× tiÓu muéimíi gióp ®­îc!", 1, "§­îc råi! muéi ®îi ta 1 tı!/OnCancel")
	end
	Talk(1, "bilChangeToushiSure_Check", "<color=Orange>Hoµnh Ba Tiªn Tö: <color>§Ó liªn hÖ víi ch­ëng m«n nh©n, ®¹ihiÖp cÇn ph¶i giao Tİn vËt m«n ph¸i ra ®Ó lµm tin th×tiÓu muén míi cã thÓ gióp ®­îc, h·y ®Æt Tİn vËt m«n <enter>ph¸i vµo « sau.")
end

function bilChangeToushiSure_Check()
	GiveItemUI("Tr×nh tİn vËt m«n ph¸i", "Bá tİn vËt m«n ph¸i vµo « trèng bªn d­íi.", "bilChangeToushiSure_Check2", "OnCancel", 1);
end

function bilChangeToushiSure_Check2(bilVal)
	local bilFac = GetFaction()
	if (bilVal ~= 1) then
		return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>Tİn VËt M«n Ph¸i kh«ng ph¶i lµ mãn ®å ch¬i cña trÎ con, ®¹i hiÖp kh«ng nªn ®ïa víi tiÓu muén nh­ vËy!",2 ,
			"Tr×nh l¹i m«n ph¸i tİn vËt/bilChangeToushiSure_Check",
			"M¹n phĞp cho ta t×m l¹i mét lÇn n÷a/OnCancel"
		)
	end
	if bilFac == "" or bilFac == nil then
		return Talk(1, "", "<color=Orange>Hoµnh Ba Tiªn Tö: <color>§¹i hiÖp ch­a gia nhËp m«n ph¸i th× lµm sao cã ch­ëng m«n nh©n mµ cÇn tiÓu muéi nãi gióp!")
	elseif GetTongName() ~= "" then
		return Say("§¹i hiÖp lµ ng­êi ®· cã bang héi, kh«ng thÓ liªn l¹c víi Ch­ëng m«n nh©n.")
	end
	if bilCheckFactionToushi(bilFac) == 0 then
		return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>§Ó rêi khái m«n ph¸i th× ®¹i hiÖp  ph¶i lµ ng­êi cña m«n ph¸i, hiÖn t¹i ®¹i hiÖp ch­a lµm«n ®Ö cña ph¸i nµo c¶, h·y ®Õn gÆp ch­ëng m«n ®Ó vµol¹i ph¸i råi míi ®Õn ®©y gÆp tiÓu muéi", 1, "Ta biÕt råi!/OnCancel")
	end
	local bilItemIdx = GetGiveItemUnit(bilVal);
	local nG, nD, nP = GetItemProp(bilItemIdx);
	if nG ~= 6 or nD ~= 1 or nP ~= 1670 then
		local bilNameItem = GetItemName(bilItemIdx)
		return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>Tİn VËt M«n Ph¸i kh«ng ph¶i lµ mãn ®å ch¬i cña trÎ con, ®¹i hiÖp kh«ng nªn ®ïa víi tiÓu muén nh­ vËy!<enter>§¹i hiÖp sao l¹i ®­a cho tiÓu muéi <color=green>"..bilNameItem.."<color>, ®©y ®©u ph¶i Tİn vËt!",2 ,
			"Tr×nh l¹i m«n ph¸i tİn vËt/bilChangeToushiSure_Check",
			"M¹n phĞp cho ta t×m l¹i mét lÇn n÷a/OnCancel"
		)
	end
	RemoveItemByIndex(bilItemIdx);
	return bilChangeToushiSureOK()
end

_bilFactionCheckTb = 
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

function bilCheckFactionToushi(bilFac)
	for i = 1, getn(_bilFactionCheckTb) do
		if bilFac == _bilFactionCheckTb[i][1] then
			return 1
		end
	end
	return 0
end

function bilChangePlayerName_Check()
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>VŞ ®¹i hiÖp muèn thay ®æi tªn tuæi cña m×nh?", 3, 
		"T×m hiÓu tªn nh©n vËt cßn sö dông ®­îc kh«ng/query_rolename",
		"Thay ®æi tªn nh©n vËt cña m×nh/change_rolename",
		"KÕt thóc ®èi tho¹i./OnCancel"
	)
end

function change_rolename()
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>C¸c b­íc cô thÓ: Rêi Bang Héi nÕu  cã, ®èi tho¹i víi  NPC, nhËp tªn nh©n vËt cÇn thay <enter>®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng <enter>nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem  ®æi tªn thµnh c«ng. NÕu xuÊt hiÖn mét sè hiÖn t­îng  l¹ xin liªn hÖ GM gi¶i quyÕt.",
		2,
		"B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"§Ó ta suy nghÜ l¹i/OnCancel")
end

function bilChangeTongName_Check()
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>VŞ ®¹i hiÖp cÇn ®æi l¹i tªn bang héi sao?", 3,
		"KiÓm tra tªn Bang héi cßn sö dông ®­îc kh«ng?/query_tongname",
		"Söa ®æi tªn Bang héi cña m×nh/change_tongname",
		"§Ó lÇn sau ta thay ®æi vËy/OnCancel")
end

function change_tongname()
	Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>C¸c b­íc cô thÓ: §èi tho¹i víi NPC, nhËp tªn bang héicÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn bang héi ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n  thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè <enter>hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.", 2,
		"B¾t ®Çu thay ®æi tªn Bang héi/change_tongname2",
		"§Ó ta suy nghÜ l¹i/cancel");
end

function bilCovertSex(Num)
	if Num == 0 then
		return "N÷"
	else
		return "Nam"
	end
end

function change_tongname2()
	local bilTongName, bilTongID = GetTong()
	if bilTongName == "" or bilTongID == 0 then
		return Talk(1, "", "<color=Orange>Hoµnh Ba Tiªn Tö: <color>§¹i hiÖp cßn ch­a gia nhËp bang héi lµm sao tiÓu muén cã thÓ thay ®æi tªn Bang héi cho ngµi ®­îc!")
	end
	AskClientForString("on_change_tongname", "", 1, 20, "Xin nhËp tªn Bang héi míi vµo");
end

function on_change_tongname(new_tong)
	if (GetTongMaster() ~= GetName()) then
		Talk(1, "", "<color=Orange>Hoµnh Ba Tiªn Tö: <color>ChØ cã bang chñ míi cã thÓ thay ®æi tªn Bang héi")
	else
		old_tong, res = GetTong()
		if (res == 1 and old_tong ~= "") then
			if (old_tong == new_tong) then
				Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>Kh«ng thÓ thay ®æi tªn Bang héi gièng nhau", 1, "BiÕt råi!/OnCancel")
			else
				RenameTong(old_tong, new_tong)
			end
		end
	end
end

function query_tongname()
	AskClientForString("on_query_tongname", "", 1, 20, "Xin nhËp tªn Bang héi muèn t×m hiÓu");
end

function on_query_tongname(new_tong)
	QueryTongName(new_tong)
end

function on_change_rolename_checknot1()
	return Say("B¹n muèn ®æi tªn nh©n vËt! <enter>Xin xem l¹i c¸c viÖc cÇn tr­íc khi ®æi tªn: <enter>"..bil.C(1, "H·y ch¾c ch¾n r»ng b¹n ®· kiÓm tra tªn nh©n vËt nµy vµ ch­a cã ng­êi sö dông. <enter>").."NÕu tªn nh©n vËt ®· cã ng­êi sö dông b¹n sÏ bŞ mÊt lÖnh bµi ®æi tªn vµ tªn nh©n vËt sÏ kh«ng ®­îc ®æi, viÖc nµy bæn tr¹i chñ sÏ kh«ng chŞu tr¸ch nhiÖm.", 2, 
		"§· ch¾c ch¾n kiÓm tra tªn nµy, vµ ch­a cã ng­êi sö dông!/change_rolename2",
		"§Ó t¹i h¹ kiÓm tra l¹i tªn nh©n vËt nµy!/OnCancel")
end

function change_rolename3()
	AskClientForString("on_change_rolename", "", 1, 16, "Tªn NV míi 16 kı tù")
end

function change_rolename2()
	local _, nTongId = GetTongName()
	-- local bilSilverCount = GetItemCountEx( 343 );
	
	local a = CalcEquiproomItemCount(6,1,4317,-1)
	
	-- if bilSilverCount <= 0 then
	if a <= 0 then
		-- return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>§¹i hiÖp cÇn ph¶i mang theo Kim <enter>Nguyªn B¶o lµm tin th× tiÓu muéi míi cã thÓ gióp ®­îc.", 1 , "§óng råi, ta quªn mang theo/cancel")
		return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>§¹i hiÖp cÇn ph¶i mang theo Tİnh Danh Chi LÖnh ®Ó lµm tin th× tiÓu muéi míi cã thÓ gióp ®­îc.", 1 , "§óng råi, ta quªn mang theo/cancel")
	-- else
		-- if Bil_GetTask(6) >= 1 then
			-- if bilSilverCount < Bil_GetTask(6) + 1 then
				-- return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>§¹i hiÖp ®· ®æi tªn <color=yellow>"..Bil_GetTask(6).."<color> lÇn råi, ®¹i hiÖp cÇn ph¶i cã <color=green>"..(Bil_GetTask(6) + 1).."<color> Kim Nguyªn B¶o th× tiÓu muén míi  cã thÓ gióp ®­îc", 1 , "§óng råi, ta quªn mang theo/OnCancel")
			-- end
		-- end
	end
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 16, "Tªn NV míi 16 kı tù");
end

function on_change_rolename(new_name)
		if (GetName() == new_name) then
			Talk(1, "", "<color=Orange>Hoµnh Ba Tiªn Tö: <color>B¹n muèn ®æi tªn g×?")
		else
			if GetTask(5994) ~= 1111112 then
				SetTask(5994, 1111111)
			end
			QueryRoleName(new_name)
		end
end

function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "<#> Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end

function bilChangeSex(bilPreSex)
	return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>ChuyÓn ®æi giíi tİnh lµ ®¹i hiÖp sÏ®­îc chuyÓn sang <color=metal>"..bilCovertSex(GetSex()).."<color> giíi, tÊt c¶ mäi thø liªn quan <enter>®Õn nh©n vËt ®Òu ®­îc gi÷ nguyªn vµ mçi lÇn chuyÓn <enter>giíi ph¶i tiªu hao thªm 1 <color=yellow>Kim Nguyªn B¶o<color>, ®¹i hiÖp <enter>vÉn muèn chuyÓn ®æi chø?", 2, "Ta ®ång ı!/#bilChangeSexSure("..bilPreSex..")", "Muéi cho ta thªm thêi gian suy nghÜ l¹i ®·!/OnCancel")
end

function bilChangeSexSure(PreSex)
	local bilSilverCount = GetItemCountEx( 343 );
	local bil_n_LastFac = GetLastFactionNumber()
	if bilSilverCount <= 0 then
		return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>§¹i hiÖp cÇn ph¶i mang theo Kim <enter>Nguyªn B¶o lµm tin th× tiÓu muéi míi cã thÓ gióp ®­îc.", 1 , "§óng råi, ta quªn mang theo/OnCancel")
	else
		if Bil_GetTask(12) >= 1 then
			if bilSilverCount < Bil_GetTask(12) + 1 then
				return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>§¹i hiÖp ®· tiÕn hµnh chuyÓn giíi <color=yellow>"..Bil_GetTask(12).."<color> lÇn råi, ®Ó tiÕn hµnh chuyÓn giíi lÇn tiÕp theo ®¹i hiÖp ph¶i mang theo İt nhÊt <color=yellow>"..(Bil_GetTask(12) + 1).."<color> Kim Nguyªn B¶o th× tiÓu muéi míi cã thÓ gióp ®­îc!", 1 , "§óng råi, ta quªn mang theo/OnCancel")
			end
		end
	end
	
	-- Thªm yªu cÇu Tİn vËt ch­ëng m«n cho c¸c ph¸i ®Æc biÖt
		local bil_n_CardT = 0
		if bil_n_LastFac == 0 or bil_n_LastFac == 1 then
			if PreSex == 0 then
				if ConsumeItem(3, 0, 6, 1, 1671, -1) < 1 then -- tİn vËt D­¬ng anh
					return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>M«n ph¸i Thiªn v­¬ng vµ ThiÕu l©m muèn chuyÓn giíi yªu cÇu ®¹i hiÖp ph¶i mang theo <color=white>Tİn vËt D­¬ng Anh<color> th× tiÓu muéi míi cã thÓ gióp ®¹i hiÖp ®­îc!", 1, "T¹i h¹ quªn mang theo Tİn vËt D­¬ng Anh./OnCancel")
				else
					bil_n_CardT = 1
				end
			end
		elseif bil_n_LastFac == 4 or bil_n_LastFac == 5 then
			if PreSex == 1 then
				if ConsumeItem(3, 0, 6, 1, 4301, -1) < 1 then -- tİn vËt Thanh hiÓu s­ th¸i
					return Say("<color=Orange>Hoµnh Ba Tiªn Tö: <color>M«n ph¸i Thóy yªn vµ Nga my muèn chuyÓn giíi yªu cÇu ®¹i hiÖp ph¶i mang theo <color=white>Tİn vËt Thanh HiÓu S­ Th¸i<color> th× tiÓu muéi míi cã thÓ gióp ®¹i hiÖp ®­îc!", 1, "T¹i h¹ quªn mang theo Tİn vËt Thanh HiÓu S­ Th¸i./OnCancel")
				else
					bil_n_CardT = 2
				end
			end
		end
	-- Thªm yªu cÇu Tİn vËt ch­ëng m«n cho c¸c ph¸i ®Æc biÖt
	
	if PreSex == 0 then
		SetSex(1)
	elseif PreSex == 1 then
		SetSex(0)
	end
	Bil_SetTask(12, Bil_GetTask(12) + 1)
	for i =1, Bil_GetTask(12) do
		DelItemEx( 343 )
	end
	
	if bil_n_CardT == 1 then
		ConsumeEquiproomItem(1,6,1,1671,-1)
	elseif bil_n_CardT == 2 then
		ConsumeEquiproomItem(1,6,1,4301,-1)
	end
	
	local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/change_sex.log"
	local Bi_FileLog = openfile(Bil_LogFileName, "a");
	write(Bi_FileLog, format("%s\tAccount: %s\tNamePlayer: %s\tPreSex: %d\tBeforSex: %d\tTimes & KNB: %d\n", date("%d-%m-%Y %H:%M:%S"), GetAccount(), GetName(), PreSex, GetSex(), Bil_GetTask(12)))
	closefile(Bi_FileLog)
	Msg2Player("<color=yellow>§· tiÕn hµnh chuyÓn giíi cho ®¹i  hiÖp thµnh c«ng, xin kiÓm tra l¹i!<color>")
	Talk(2, "KickOutSelf", "<color=Orange>Hoµnh Ba Tiªn Tö: <color>§· tiÕn hµnh chuyÓn giíi cho ®¹i <enter>hiÖp lÇn thø <color=yellow>"..Bil_GetTask(12).."<color> thµnh c«ng, xin kiÓm tra l¹i!", "§a t¹ muén!")
end

function OnCancel() end


----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng­¬i t×m ta cã viÖc g×?",3,
		"Mua ®æi tªn nh©n vËt 80 TiÒn §ång/dangkydoiten",
		"§Æt l¹i tªn cho nh©n vËt/about_rename_role",
		"Nh©n tiÖn ghĞ qua th«i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B¹n vÉn cßn 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end

	Say("Mçi lÇn ®æi tªn nh©n vËt cÇn <color=red>80 TiÒn §ång<color>, ng­êi chuÈn bŞ xong ch­a?",
		2,
		"Ta ®· chuÈn bŞ xong/#buy_addibox_yes(10)",
		"Khi nµo ®ñ tiÒn ta sÏ quay l¹i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 80) then
		Say("<color=yellow>Kh¸ch quan ch­a ®ñ 80 tiÒn! Khi nµo cã ®ñ tiÒn h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(80, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt");
end
function about_rename_role()
	local strInfo = "Chµo b¹n! V× tªn nh©n vËt cña b¹n vµ ng­êi ch¬i kh¸c gièng nhau, cho nªn hÖ thèng ®· gióp b¹n ®æi tªn, b¹n cã thÓ söa tªn nh©n vËt cña b¹n tr­íc ®©y, cã thÓ kiÓm tra xem tªn ®ã cã dïng ®­îc kh«ng. Chó ı! B¹n chØ cã 1 c¬ héi duy nhÊt ®Ó ®æi tªn, xin h·y cÈn thËn tõng b­íc.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"KiÓm tra tªn nh©n vËt sö dông ®­îc kh«ng/query_rolename",
			"Thay ®æi tªn nh©n vËt cña m×nh/change_rolename",
			"§Ó lÇn sau ta thay ®æi vËy/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.",
		2,
		"B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"§Ó ta suy nghÜ l¹i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt míi vµo");
end
function on_change_rolename(new_name)
Msg2SubWorld( "§¹i hiÖp <color=yellow>"..GetName().."<color> ®· ®æi tªn thµnh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B¹n muèn ®æi tªn g×?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin lçi! B¹n ph¶i mua lÇn ®æi tªn nh©n vËt råi h·y chän chøc n¨ng nµy!<color>",
		1,
		"BiÕt råi!/cancel")
end


function MenuChuyen()
--AddItem(6,1,1670,1,1,0,0)
ChuyenPhaiMenu()
end