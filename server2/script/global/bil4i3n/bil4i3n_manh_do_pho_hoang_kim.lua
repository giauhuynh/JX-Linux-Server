Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\item\\compound\\atlas.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bilChiSoQuyDoi = 2 -- tæng m¶nh ®å phæ yªu cÇu ®ñ ®Ó ®æi b»ng chØ sè quy ®æi nh©n víi tæng sè ®å phæ yªu cÇu cña mãn trang bÞ

function bilManhDoPho_ViewInfo(bil_In_1, bil_In_2, bil_In_3)
	local bil_tb_1 = {"ThiÕu L©m", "Thiªn V­¬ng", "Nga My", "Thóy Yªn", "Ngò §éc", "§­êng M«n", "C¸i Bang", "Thiªn NhÉn", "Vâ §ang", "C«n L«n"}
	local bil_tb_2 = {
		[0] = "Vui lßng chän M«n ph¸i cÇn xem ®å phæ!",
		[1] = "Chän mãn ®å phæ cÇn xem",
	}
	local bil_1 = {}
	if not(bil_In_1) then bil_In_1 = 0 end
	if bil_In_1 == 1 then
		local bil_2 = _bilTbDropAtlasCompound[bil_In_2]
		for bil_l_2 = 1, getn(bil_2) do
			tinsert(bil_1, {bil_2[bil_l_2][2], bilManhDoPho_ViewInfo, {bil_In_1 + 1, {bil_2[bil_l_2][1][1], bil_2[bil_l_2][1][2], bil_2[bil_l_2][1][3]}, bil_In_3}})
		end
	elseif bil_In_1 == 2 then
		local bil_3_1, bil_3_2 = getQueryPiece(0, bil_In_2)
		if bil_In_3 then
			return bilManhDoPho_GetAtlas(bil_3_1, bil_3_2, bil_In_2)
		else
			return CreateNewSayEx(bil.C(1, bil_3_1).." cã thÓ dïng "..bil.C(2, (bil_3_2 * %bilChiSoQuyDoi)).." M¶nh §å Phæ [Hoµng Kim] ®Ó ®æi!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
		end
	else
		for bil_l_1 = 1, getn(bil_tb_1) do
			tinsert(bil_1, {"Xem ®å phæ hoµng kim m«n ph¸i "..bil_tb_1[bil_l_1], bilManhDoPho_ViewInfo, {bil_In_1 + 1, bil_l_1, bil_In_3}})
		end
	end
	tinsert(bil_1, {"KÕt thóc ®èi tho¹i.", bil.OnCancel})
	if bil_In_3 then
		return CreateNewSayEx("<npc>"..bil_tb_2[bil_In_1], bil_1)
	else
		return CreateNewSayEx(bil_tb_2[bil_In_1], bil_1)
	end
end

function bilManhDoPho_GetAtlas(bil_In_1, bil_In_2, bil_In_3, bil_In_4)
	local bil_1 = bil_In_2 * %bilChiSoQuyDoi
	if bil_In_4 then
		if CalcEquiproomItemCount(6,1,4308,1) >= bil_1 then
			ConsumeEquiproomItem(bil_1,6,1,4308,-1)
			AddItem(bil_In_3[1], bil_In_3[2], bil_In_3[3], 1, 0, 0, 0)
			return Msg2Player(bil.C(10, "NhËn ®­îc "..bil_In_1))
		else
			return CreateNewSayEx("<npc>M¶nh §å Phæ [Hoµng Kim] trong hµnh trang hiÖn t¹i cña ®¹i hiÖp kh«ng ®ñ, kh«ng thÓ ®æi "..bil.C(1, bil_In_1).." ®­îc, yªu cÇu "..bil_1.." M¶nh §å Phæ [Hoµng Kim]", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
		end
	end
	return CreateNewSayEx("<npc>Sö dông "..bil.C(1, bil_1).." M¶nh §å Phæ [Hoµng Kim] ®Ó ®æi 1 "..bil.C(4, bil_In_1)..", ®¹i hiÖp ch¾c ch¾n muèn ®æi chø?",
		{
			{"§ång ý ®æi "..bil_In_1, bilManhDoPho_GetAtlas, {bil_In_1, bil_In_2, bil_In_3, 1}},
			{"KÕt thóc ®èi tho¹i.", bil.OnCancel},
		}
	)
end


























