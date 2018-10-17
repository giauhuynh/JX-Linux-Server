Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bil_tb_NangDongLenh_Img = "<link=image:\\spr\\item\\questkey\\obj_item_herokey3.spr><link><color><color=orange>N¨ng ®éng lÖnh: <color>"
local bil_tb_NangDongLenh = {
	{bil_sName = "tham gia V­ît ¶i Viªm §Õ", 				bil_nTask = 5932, bil_nLimit = 2, bil_nType = 1, bil_nUpto = 1},
	{bil_sName = "tham gia V­ît ¶i Nhİp Thİ TrÇn", 		bil_nTask = 1550, bil_nLimit = 0, bil_nType = 2, bil_nUpto = 1, bil_nTaskDay = 1551, bil_nDayCompare = tonumber(GetLocalDate("%y%m%d"))},
	{bil_sName = "tham gia Tİn sø Phong kú täa ®é",	 	bil_nTask = 1212, bil_nLimit = 0, bil_nType = 3, bil_nUpto = 40*60},
	{bil_sName = "dïng Qu¶ Huy Hoµng", 						bil_nTask = 2313, bil_nLimit = 5, bil_nType = 1, bil_nUpto = 3},
	{bil_sName = "dïng Qu¶ Hoµng Kim", 						bil_nTask = 2322, bil_nLimit = 2, bil_nType = 1, bil_nUpto = 1},
	{bil_sName = "nhiÖm vô Boss s¸t thñ Nhİp thİ trÇn", 	bil_nTask = 1193, bil_nLimit = 8, bil_nType = 1, bil_nUpto = 4},
	{bil_sName = "S¨n Nhİm bĞo ph×", 							bil_nTask = 5979, bil_nLimit = 10, bil_nType = 1, bil_nUpto = 3},
}

function main()
	local bil_1 = {}
	for bil_l_1 = 1, getn(%bil_tb_NangDongLenh) do
		tinsert(bil_1, {"T¨ng sè lÇn "..%bil_tb_NangDongLenh[bil_l_1].bil_sName, bilNangDongLenh_Func1, {bil_l_1}})
	end
	tinsert(bil_1, {"KÕt thóc ®èi tho¹i!", bil.OnCancel})
	CreateNewSayEx(%bil_tb_NangDongLenh_Img.."VŞ thiÕu hiÖp muèn sö dông N¨ng ®éng lÖnh cho môc ®İch nµo?", bil_1)
	return 1
end

function bilNangDongLenh_Func1(bil_In_1)
	local bil_1, bil_2, bil_3 = %bil_tb_NangDongLenh[bil_In_1], 0, 0
	if bil.True(bil_1.bil_nTaskDay) then
		if GetTask(bil_1.bil_nTaskDay) == bil_1.bil_nDayCompare then
			bil_3 = bil_1.bil_nDayCompare
		end
	end
	if bil_1.bil_nType == 1 then
		if GetTask(bil_1.bil_nTask) >= bil_1.bil_nLimit then
			bil_2 = bil_1.bil_nUpto
		end
	elseif bil_1.bil_nType == 2 or bil_1.bil_nType == 3 then
		if GetTask(bil_1.bil_nTask) <= bil_1.bil_nLimit then
			bil_2 = bil_1.bil_nUpto
		end
	end
	if bil_2 == 0 and bil_3 == 0 then
		return CreateNewSayEx(%bil_tb_NangDongLenh_Img.."Sè lÇn "..bil_1.bil_sName.." cña thiÕu hiÖp h«m nay vÉn ch­a hÕt, kh«ng thÓ t¨ng thªm", {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
	else
		if CalcEquiproomItemCount(6,1,4313,-1) >= 1 then
			ConsumeEquiproomItem(1,6,1,4313,-1)
			if bil_1.bil_nType == 1 then
				SetTask(bil_1.bil_nTask, GetTask(bil_1.bil_nTask) - bil_1.bil_nUpto)
			elseif bil_1.bil_nType == 2 then
				SetTask(bil_1.bil_nTask, GetTask(bil_1.bil_nTask) + bil_1.bil_nUpto)
			elseif bil_1.bil_nType == 3 then
				SetTask(bil_1.bil_nTask, GetTask(bil_1.bil_nTask) + bil_1.bil_nUpto)
			end
			Msg2Player(bil.C(10, "T¨ng thªm sè lÇn "..bil_1.bil_sName.." thµnh c«ng, t¨ng thªm "..bil_1.bil_nUpto.." lÇn(giê)"))
			return CreateNewSayEx(%bil_tb_NangDongLenh_Img.."T¨ng thªm sè lÇn "..bil_1.bil_sName.." thµnh c«ng, t¨ng thªm "..bil_1.bil_nUpto.." lÇn(giê)", {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
		else
			return CreateNewSayEx(%bil_tb_NangDongLenh_Img.."KhÊu trõ ®¹o cô N¨ng §éng LÖnh thÊt b¹i, thiÕu hiÖp vui lßng kiÓm tra l¹i hµnh trang!", {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
		end
	end
end



































