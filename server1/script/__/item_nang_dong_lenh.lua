Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bil_tb_NangDongLenh_Img = "<link=image:\\spr\\item\\questkey\\obj_item_herokey3.spr><link><color><color=orange>N�ng ��ng l�nh: <color>"
local bil_tb_NangDongLenh = {
	{bil_sName = "tham gia V��t �i Vi�m ��", 				bil_nTask = 5932, bil_nLimit = 2, bil_nType = 1, bil_nUpto = 1},
	{bil_sName = "tham gia V��t �i Nh�p Th� Tr�n", 		bil_nTask = 1550, bil_nLimit = 0, bil_nType = 2, bil_nUpto = 1, bil_nTaskDay = 1551, bil_nDayCompare = tonumber(GetLocalDate("%y%m%d"))},
	{bil_sName = "tham gia T�n s� Phong k� t�a ��",	 	bil_nTask = 1212, bil_nLimit = 0, bil_nType = 3, bil_nUpto = 40*60},
	{bil_sName = "d�ng Qu� Huy Ho�ng", 						bil_nTask = 2313, bil_nLimit = 5, bil_nType = 1, bil_nUpto = 3},
	{bil_sName = "d�ng Qu� Ho�ng Kim", 						bil_nTask = 2322, bil_nLimit = 2, bil_nType = 1, bil_nUpto = 1},
	{bil_sName = "nhi�m v� Boss s�t th� Nh�p th� tr�n", 	bil_nTask = 1193, bil_nLimit = 8, bil_nType = 1, bil_nUpto = 4},
	{bil_sName = "S�n Nh�m b�o ph�", 							bil_nTask = 5979, bil_nLimit = 10, bil_nType = 1, bil_nUpto = 3},
}

function main()
	local bil_1 = {}
	for bil_l_1 = 1, getn(%bil_tb_NangDongLenh) do
		tinsert(bil_1, {"T�ng s� l�n "..%bil_tb_NangDongLenh[bil_l_1].bil_sName, bilNangDongLenh_Func1, {bil_l_1}})
	end
	tinsert(bil_1, {"K�t th�c ��i tho�i!", bil.OnCancel})
	CreateNewSayEx(%bil_tb_NangDongLenh_Img.."V� thi�u hi�p mu�n s� d�ng N�ng ��ng l�nh cho m�c ��ch n�o?", bil_1)
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
		return CreateNewSayEx(%bil_tb_NangDongLenh_Img.."S� l�n "..bil_1.bil_sName.." c�a thi�u hi�p h�m nay v�n ch�a h�t, kh�ng th� t�ng th�m", {{"K�t th�c ��i tho�i!", bil.OnCancel}})
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
			Msg2Player(bil.C(10, "T�ng th�m s� l�n "..bil_1.bil_sName.." th�nh c�ng, t�ng th�m "..bil_1.bil_nUpto.." l�n(gi�)"))
			return CreateNewSayEx(%bil_tb_NangDongLenh_Img.."T�ng th�m s� l�n "..bil_1.bil_sName.." th�nh c�ng, t�ng th�m "..bil_1.bil_nUpto.." l�n(gi�)", {{"K�t th�c ��i tho�i!", bil.OnCancel}})
		else
			return CreateNewSayEx(%bil_tb_NangDongLenh_Img.."Kh�u tr� ��o c� N�ng ��ng L�nh th�t b�i, thi�u hi�p vui l�ng ki�m tra l�i h�nh trang!", {{"K�t th�c ��i tho�i!", bil.OnCancel}})
		end
	end
end



































