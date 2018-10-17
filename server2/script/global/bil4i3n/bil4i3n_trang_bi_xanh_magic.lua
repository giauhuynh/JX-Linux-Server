Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bilTrangBiXanh_ThayDoiMaPhap_Up = function(bil_2, bil_6, bil_7)
	for bil_l_1 = 1, getn(bil_6) do
		local bil_1 = bil.Pack(GetItemProp(bil_6[bil_l_1][1]))
		if IsMyItem(bil_6[bil_l_1][1]) ~= 1 then
			return Msg2Player(bil.C(10, "Nguyªn liÖu kh«ng cßn trªn ng­êi cña ®¹i hiÖp, thao t¸c thÊt b¹i, xin kiÓm tra lai hµnh trang!"))
		elseif bil_1[1] ~= bil_6[bil_l_1][2] or  bil_1[2] ~= bil_6[bil_l_1][3] or  bil_1[3] ~= bil_6[bil_l_1][4] or  bil_1[4] ~= bil_6[bil_l_1][5] or  bil_1[5] ~= bil_6[bil_l_1][6] then
			return Msg2Player(bil.C(10, "Nguyªn liÖu kh«ng cßn trªn ng­êi cña ®¹i hiÖp, thao t¸c thÊt b¹i, xin kiÓm tra lai hµnh trang!"))
		end
	end
	for bil_l_2 = 1, getn(bil_6) do
		RemoveItemByIndex(bil_6[bil_l_2][1])
	end
	-- AddItem(bil_2[1][1], bil_2[1][2], bil_2[1][3], bil_2[1][4], bil_2[1][5], bil_7, 10)
	AddItemEx(0,random(),0,bil_2[1][1], bil_2[1][2], bil_2[1][3], bil_2[1][4], bil_2[1][5],bil_7,random(5,10),random(5,10),random(5,10),random(5,10),random(5,10),random(5,10),0)
	return Msg2Player(bil.C(9, "Thay ®æi ma ph¸p cña trang bŞ thµnh c«ng, xin kiÓm tra l¹i hµnh trang!"))
end

local bilTrangBiXanh_ThayDoiMaPhap_OnBreak = function()
	return Msg2Player(bil.C(10, "Qu¸ tr×nh thay ®æi ma ph¸p trang bŞ ®· gi¸n ®o¹n, ®¹i hiÖp vui lßng thö l¹i!"))
end

function bilTrangBiXanh_ThayDoiMaPhap(bil_In_1)
	if bil_In_1 then
		if bil_In_1 == 0 then
			return GiveItemUI("Thay ®æi ma ph¸p trang bŞ", "Nguyªn liÖu:<enter><color=blue>Trang bŞ Xanh bÊt kú<enter>Lôc Thñy Tinh<enter>[Tïy chän] Phóc Duyªn!<enter>[Tïy chän] Thªm Thñy tinh thªm may m¾n", "bilTrangBiXanh_ThayDoiMaPhap", "bil.OnCancel", 1);
		elseif bil_In_1 > 1 then
			-- bil_1: Temp Item - bil_2: {G, D, P, L, S} - bil_3: {Lam, Tö, Lôc} - bil_4: Item Idx - bil_5: {Phóc D tiÓu, trung, ®¹i} - bil_6: All Idx Item
			local bil_1, bil_2, bil_3, bil_4, bil_5, bil_6 = nil, {}, {0,0,0}, 0, {0,0,0}, {}
			for bil_l_1 = 1, bil_In_1 do
				bil_4 = GetGiveItemUnit(bil_l_1)
				bil_1 = bil.Pack(GetItemProp(bil_4))
				tinsert(bil_6, {bil_4, bil_1[1], bil_1[2], bil_1[3], bil_1[4], bil_1[5]})
				if bil_1[1] == 0 then
					tinsert(bil_2, {bil_1[1], bil_1[2], bil_1[3], bil_1[4], bil_1[5]})
				elseif bil_1[1] == 4 and bil_1[2] == 238 then
					bil_3[1] = bil_3[1] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 4 and bil_1[2] == 239 then
					bil_3[2] = bil_3[2] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 4 and bil_1[2] == 240 then
					bil_3[3] = bil_3[3] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 6 and bil_1[3] == 122 then
					bil_5[1] = bil_5[1] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 6 and bil_1[3] == 123 then
					bil_5[2] = bil_5[2] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 6 and bil_1[3] == 124 then
					bil_5[3] = bil_5[3] + GetItemStackCount(bil_4)
				else
					return Msg2Player(bil.C(10, "Nguyªn liÖu ®¹i hiÖp ®­a cho l·o phu kh«ng phï hîp yªu cÇu, chØ cã thÓ ®Æt vµo trang bŞ th«ng th­êng, thñy tinh vµ phóc duyªn, vui lßng kiÓm tra l¹i!"))
				end
			end
			if getn(bil_2) > 1 then
				return Msg2Player(bil.C(10, "Mçi lÇn thao t¸c chØ cã thÓ thay ®æi ma ph¸p cña 1 trang bŞ duy nhÊt, ®¹i hiÖp vui lßng kiÓm tra l¹i!"))
			elseif getn(bil_2) < 1 then
				return Msg2Player(bil.C(10, "Ch¼ng hay vŞ ®¹i hiÖp ®©y muèn thay ®æi thuéc tİnh ma ph¸p cña mãn trang bŞ nµo, l·o phu kh«ng t×m thÊy trong ®©y!"))
			elseif bil_3[3] == 0 then
				return Msg2Player(bil.C(10, "Kh«ng thÓ thiÕu nguyªn tè quan träng trong qu¸ tr×nh thay ®æi lµ Lôc Thñy Tinh, ®¹i hiÖp vui lßng kiÓm tra l¹i!"))
			end
			local bil_7 = 100 + (bil_3[1] * 15) + (bil_3[2] * 15) + (bil_5[1] * 2) + (bil_5[2] * 4) + (bil_5[3] * 8)
			if bil_3[3] > 1 then
				bil_3[3] = bil_3[3] - 1
				bil_7 = bil_7 + (bil_3[3] * 15)
			end
			Msg2Player(bil.C(10, "§iÓm may m¾n hiÖn t¹i: "..bil_7))
			return tbProgressBar:OpenByConfig(23, %bilTrangBiXanh_ThayDoiMaPhap_Up, {bil_2, bil_6, bil_7}, %bilTrangBiXanh_ThayDoiMaPhap_OnBreak, {})
		else
			return Msg2Player(bil.C(10, "Nguyªn liÖu bŞ thiÕu hoÆc kh«ng phï hîp, ®¹i hiÖp vui lßng kiÓm tra l¹i!"))
		end
	end
	return Talk(1,"#bilTrangBiXanh_ThayDoiMaPhap(0)","Sö dông Lôc Thñy Tinh ®Ó thay ®æi ngÉu nhiªn thuéc <enter>tİnh ma ph¸p cña trang bŞ xanh, cã thÓ sö dông thªm <enter>Phóc duyªn ®Ó t¨ng ®iÓm may m¾n!<enter>§¼ng cÊp vµ ngò hµnh cña trang bŞ kh«ng bŞ thay ®æi")
end



































