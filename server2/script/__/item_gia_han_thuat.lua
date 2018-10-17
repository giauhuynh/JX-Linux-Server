IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bil_tb_GiaHanThuat = {
	bil_1 = {
		[4309] = {30, "Gia H¹n ThuËt (lín)"},
		[4310] = {15, "Gia H¹n ThuËt (nhá)"},
	},
	bil_2 = {
		n_IndexS = nil,
		n_ParticularType = nil,
		n_BindState = nil,
		s_ItemName = nil,
		s_LinkImg = "<link=image:\\spr\\item\\script\\beidouchuangongshu.spr><link><color><color=orange>Gia H¹n ThuËt: <color>",
	},
}

function main(bil_In_1)
	local bil_1 = bil.Pack(GetItemProp(bil_In_1))
	%bil_tb_GiaHanThuat.bil_2.n_IndexS = bil_In_1
	%bil_tb_GiaHanThuat.bil_2.n_ParticularType = bil_1[3]
	if bil.True(%bil_tb_GiaHanThuat.bil_1[bil_1[3]]) then
		GiveItemUI("Gia h¹n vËt phÈm", "Gia h¹n vËt phÈm sö dông<enter>"..%bil_tb_GiaHanThuat.bil_1[bil_1[3]][2].."<enter>®­îc céng thªm "..%bil_tb_GiaHanThuat.bil_1[bil_1[3]][1].." ngµy!", "bilFuc_GiaHanThuat_2", "bil.OnCancel", 1)
	else
		Msg2Player("HÖ thèng kh«ng nhËn d¹ng ®­îc vËt phÈm, phiÒn b¹n vui lßng b¸o c¸o l¹i víi GM!")
	end
	return 1
end

function bilFuc_GiaHanThuat_2(bil_In_1, bil_In_2)
	if bil_In_2 then
		if bil.True(bil_In_2) then
			local bil_3 = %bil_tb_GiaHanThuat.bil_2
			local bil_4 = %bil_tb_GiaHanThuat.bil_1
			if CalcEquiproomItemCount(6,1,bil_3.n_ParticularType,-1) >= 1 then
				if (IsMyItem(bil_In_2) ~= 1) then
					return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."VËt phÈm mµ ®¹i hiÖp cÇn gia h¹n ®· kh«ng cßn trong hµnh trang, ®¹i hiÖp vui lßng kiÓm tra l¹i hµnh trang cña m×nh!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}}) 
				else
					ConsumeEquiproomItem(1,6,1,bil_3.n_ParticularType,-1)
					ITEM_SetExpiredTime(bil_In_2, FormatTime2Date(bil_4[bil_3.n_ParticularType][1] * 24 * 60 *60 + ITEM_GetExpiredTime(bil_In_2)))
					SyncItem(bil_In_2)
				end
			else
				return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."Kh«ng t×m thÊy "..bil_4[bil_3.n_ParticularType][2].." trong hµnh trang cña ®¹i hiÖp, gia h¹n vËt phÈm thÊt b¹i!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
			end
			return Msg2Player(bil.C(10, "Gia h¹n thµnh c«ng "..bil_3.s_ItemName..", thêi h¹n sö dông ®­îc céng dån thªm "..bil_4[bil_3.n_ParticularType][1].." ngµy!"))
		end
	end
	if bil_In_1 ~= 1 then
		return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."Mçi lÇn gia h¹n b¹n chØ cã thÓ sö dông mét vËt phÈm duy nhÊt!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	end
	local bil_1 = GetGiveItemUnit(bil_In_1)
	local bil_2 = bil.Pack(GetItemProp(bil_1))
	%bil_tb_GiaHanThuat.bil_2.n_BindState = GetItemBindState(bil_1)
	%bil_tb_GiaHanThuat.bil_2.s_ItemName = GetItemName(bil_1)
	if ITEM_GetExpiredTime(bil_1) <= 0 then
		return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."VËt phÈm nµy kh«ng cã thêi h¹n sö dông nªn kh«ng thÓ gia h¹n!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	elseif (ITEM_GetExpiredTime(bil_1) - GetCurServerTime()) >= 29679085 then
		return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."VËt phÈm "..%bil_tb_GiaHanThuat.bil_2.s_ItemName.." thêi gian sö dông cßn qu¸ nhiÒu, v­ît qu¸ møc cho phĞp, kh«ng thÓ tiÕn hµnh gia h¹n thªm!", {{"KÕt thóc ®èi tho¹i.", bil.OnCancel}})
	end
	return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."Sö dông "..%bil_tb_GiaHanThuat.bil_1[%bil_tb_GiaHanThuat.bil_2.n_ParticularType][2].." ®Ó gia h¹n vËt phÈm "..%bil_tb_GiaHanThuat.bil_2.s_ItemName.." thªm "..%bil_tb_GiaHanThuat.bil_1[%bil_tb_GiaHanThuat.bil_2.n_ParticularType][1].." ngµy?", {{"X¸c nhËn gia h¹n vËt phÈm "..%bil_tb_GiaHanThuat.bil_2.s_ItemName, bilFuc_GiaHanThuat_2, {0, bil_1}}, {"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
end















