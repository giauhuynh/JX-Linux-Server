IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

bilTbTransLife = {
	-- bil_tb_1: ®iÓm kü n¨ng - bil_tb_2: ®iÓm tiÒm n¨ng - bil_tb_3: kh¸ng tİnh tèi ®a (céng dån) - bil_tb_4: kü n¨ng tèi ®a - bil_tb_5: ®¼ng cÊp yªu cÇu - bil_tb_6: tiÒn v¹n yªu cÇu
	[1] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 1, bil_tb_5 = 190, bil_tb_6 = 10000000},
	[2] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 2, bil_tb_5 = 190, bil_tb_6 = 20000000},
	[3] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 3, bil_tb_5 = 190, bil_tb_6 = 30000000},
	[4] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 4, bil_tb_5 = 190, bil_tb_6 = 40000000},
	[5] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 5, bil_tb_5 = 190, bil_tb_6 = 50000000},
}

function main()
	return bilTbTransLife:MainNPC()
end

function bilTbTransLife:MainNPC()
	local bil_1 = {
		{"Xin gióp ®Ö tö tiÕn hµnh Trïng Sinh", self.AboutNext, {0}},
		{"T¹i h¹ chØ v« t×nh ®i ngang qua!", bil.OnCancel},
	}
	return CreateNewSayEx("<npc><color=green>C¸i trÊn nhá nµy quanh n¨m tr¨ngs¸ng nh­ g­¬ng, tªn Minh nguyÖt trÊn còng tõ ®ã mµ ra.<color>Nhµ ng­¬i ®Õn n¬i hÎo l¸nh nµy ch¼ng hay cã viÖc g× <enter>chØ gi¸o?", bil_1)
end

function bilTbTransLife:AboutNext(bilSel)
	local TSK_ZHUANSHENG_FLAG = 2547
	local bil_1 = ST_GetTransLifeCount() + 1
	if bil_1 > getn(bilTbTransLife) then
		return CreateNewSayEx("<npc>C¸c h¹ ®· ®¹t ®Õn giíi h¹n Trïng sinh, hiÖn ch­a cã th«ng tin vÒ Trïng sinh lÇn thø "..bil.C(2, bil_1).." xin h·y ®îi tin tøc vÒ lÇn Trïng sinh tiÕp theo!", {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
	end
	local bil_2_1, bil_2_2, bil_2_3, bil_2_4, bil_2_5, bil_2_6, bil_2_7, bil_2_8 = 0,0,0, "", "", "", 0, {}
	for bil_2 = 1, bil_1 do 
		bil_2_1 = bil_2_1 + bilTbTransLife[bil_2].bil_tb_1
		bil_2_2 = bil_2_2 + bilTbTransLife[bil_2].bil_tb_2
		bil_2_3 = bil_2_3 + bilTbTransLife[bil_2].bil_tb_3
	end
	if GetLevel() >= bilTbTransLife[bil_1].bil_tb_5 then 
		bil_2_4 = "-- <pic=135>  <color=green>[§¹t] <color>" 
	else 
		bil_2_4 = "-- <pic=137> <color=red>[Ch­a ®¹t]<color>" 
		bil_2_7 = 1
	end
	if GetCash() >= bilTbTransLife[bil_1].bil_tb_6 then
		bil_2_5 = "-- <pic=135> <color=green>[§¹t] <color>" 
	else 
		bil_2_5 = "-- <pic=137> <color=red>[Ch­a ®¹t]<color>" 
		bil_2_7 = 2
	end
	if GetTask(TSK_ZHUANSHENG_FLAG) == 1 then
		bil_2_6 = "-- <pic=135> <color=green>[§¹t] <color>" 
	else 
		bil_2_6 = "-- <pic=137> <color=red>[Ch­a ®¹t]<color>" 
		bil_2_7 = 3
	end
	if bil_2_7 ~= 0 then
		tinsert(bil_2_8, {"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel})
	else
		tinsert(bil_2_8, {"X¸c nhËn Trïng sinh, mong s­ phô gióp ®ì!", bilTbTransLife.CheckPlayer})
		tinsert(bil_2_8, {"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel})
	end
	return CreateNewSayEx("<npc>TiÕp theo lµ: "..bil.C(2, "Trïng sinh - "..bil_1)
		.."<enter><enter>Yªu cÇu:"
		.."<enter>"..bil.C(5, "§¼ng cÊp: ")..bil.C(2, bilTbTransLife[bil_1].bil_tb_5.." cÊp ")..bil_2_4
		.."<enter>"..bil.C(5, "Ng©n l­îng: ")..bil.C(2, bilTbTransLife[bil_1].bil_tb_6.." l­îng ")..bil_2_5
		.."<enter>"..bil.C(5, "B¾c ®Çu tr­êng sinh thuËt: ")..bil.C(2, "1 cuèn ")..bil_2_6
		.."<enter><enter>Lîi İch:"
		.."<enter>"..bil.C(1, "T¨ng kü n¨ng: ")..bil.C(2, bil_2_1.." ®iÓm")
		.."<enter>"..bil.C(1, "T¨ng tiÒm n¨ng: ")..bil.C(2, bil_2_2.." ®iÓm")
		.."<enter>"..bil.C(1, "T¨ng kh¸ng tİnh tèi ®a: ")..bil.C(2, bil_2_3.." ®iÓm")
		.."<enter>"..bil.C(1, "T¨ng kü n¨ng tèi ®a: ")..bil.C(2, bilTbTransLife[bil_1].bil_tb_4.." ®iÓm"),
		bil_2_8)
end

function bilTbTransLife:CheckPlayer()
	local bil_1 = ST_GetTransLifeCount() + 1
	local TSK_ZHUANSHENG_FLAG = 2547
	if bil_1 > getn(bilTbTransLife) then
		return CreateNewSayEx("<npc>C¸c h¹ ®· ®¹t ®Õn giíi h¹n Trïng sinh, hiÖn ch­a cã th«ng tin vÒ Trïng sinh lÇn thø "..bil.C(2, bil_1).." xin h·y ®îi tin tøc vÒ lÇn Trïng sinh tiÕp theo!", {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
	end
	if GetLevel() < bilTbTransLife[bil_1].bil_tb_5 then 
		return CreateNewSayEx("<npc>§¼ng cÊp cña nhµ ng­¬i ch­a ®ñ "..bil.C(2, bilTbTransLife[bil_1].bil_tb_5)..", ta kh«ng thÓ gióp g× ®­îc!", {{"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel}})
	end
	if GetCash() < bilTbTransLife[bil_1].bil_tb_6 then
		return CreateNewSayEx("<npc>Ng©n l­îng trªn ng­êi ng­¬i ch­a ®ñ "..bil.C(2, bilTbTransLife[bil_1].bil_tb_6).." l­îng, ta kh«ng thÓ gióp g× ®­îc!", {{"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel}})
	end
	if GetTask(TSK_ZHUANSHENG_FLAG) ~= 1 then
		return CreateNewSayEx("<npc>Nhµ ng­¬i ch­a häc quyÓn "..bil.C(2, "C¬ Së Thiªn")..", ta kh«ng thÓ gióp g× ®­îc!", {{"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel}})
	end
	if (CalcItemCount(2,0,-1,-1,-1) > 0) then
		return CreateNewSayEx("<npc>§Ó tiÕn hµnh Trïng sinh, lu©n   håi chuyÓn thÕ nhµ ng­¬i cÇn ph¶i "..bil.C(2,"cëi bá toµn bé trangbŞ vµ vËt phÈm trªn ng­êi").." míi cã thÓ tiÕn hµnh thao   t¸c ®­îc!", {{"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel}})
	end
	return CreateNewSayEx("<npc>Sau khi häc xong cuèn "..bil.C(2, "§¹i Thõa  T©m Ph¸p").." ng­¬i sÏ trë vÒ víi cÊp "..bil.C(1, "10")..", ng­¬i cã muèn <enter>tiÕp tôc kh«ng!", {{"Xin s­ phô ra tay!", bilTbTransLife.GoTransLife},{"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel}})
end

function bilTbTransLife:GoTransLife()
	local bil_1 = ST_GetTransLifeCount() + 1
	if GetCash() < bilTbTransLife[bil_1].bil_tb_6 then
		return CreateNewSayEx("<npc>Ng©n l­îng trªn ng­êi ng­¬i ®©u råi nhØ, míi ®ã mµ ®· kh«ng thÊy ®©u n÷a!", {{"Xem ra ®Ö tö ch­a chuÈn bŞ kü, ®· lµm phiÒn ng­êi!", bil.OnCancel}})
	else
		Pay(bilTbTransLife[bil_1].bil_tb_6)
	end
	Msg2Player("häc ®­îc "..bil.C(2, "B¾c §Èu Tr­êng Sinh ThuËt - §¹i Thõa T©m Ph¸p"))
	return ST_DoTransLife()
end























