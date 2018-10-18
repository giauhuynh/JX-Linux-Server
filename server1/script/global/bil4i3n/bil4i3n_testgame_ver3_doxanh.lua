IncludeLib("ITEM")
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")
--Include("\\script\\global\\quanlygame\\trangbi.lua")


function bilMain_TestGame_v3()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {}
	if GetLevel() < 200 then
		tinsert(bil_1, "Nh�n c�p �� 200 v� t�t c� c�c �i�m kh�c/#bilMain_TestGame_v3_C(1)")
	end

	tinsert(bil_1, "H�y Trang B� Kh�a/Bil_DelItem")
	tinsert(bil_1, "Nh�n b� trang b� HKMP Full  /hkMP_full")
	tinsert(bil_1, "Nh�n �� �p �� t�m Full/ShopKT")
	tinsert(bil_1, "Trang b� t�m c�c lo�i/dotim")
	tinsert(bil_1, "Nh�n b� trang b� An Bang/#bilMain_TestGame_v3_TrangBiG(1)")
	tinsert(bil_1, "Nh�n b� trang b� ��nh Qu�c/#bilMain_TestGame_v3_TrangBiG(2)")
	tinsert(bil_1, "Nh�n V� kh� xanh/#bilMain_TestGame_v3_TrangBi(1)")
	tinsert(bil_1, "Nh�n Trang b� xanh/#bilMain_TestGame_v3_TrangBi(2)")
	tinsert(bil_1, "Nh�n 500 Ti�n ��ng/#bilMain_TestGame_v3_C(2)")
	tinsert(bil_1, "Nh�n ng�a B�n ti�u/#bilMain_TestGame_v3_C(3)")
	tinsert(bil_1, "Nh�n K� n�ng m�n ph�i/#bilMain_TestGame_v3SkillFac(0)")
	tinsert(bil_1, "Thay ��i phe ph�i/#bilMain_TestGame_v3_C(4)")
	tinsert(bil_1, "Nh�n v�ng s�ng v� danh hi�u/#bilVongSangDH(0)")
	if GetTong() == "" then
		tinsert(bil_1, "Th�nh l�p Bang h�i/#bilMain_TestGame_v3_C(5)")
	end
	tinsert(bil_1, "K�t th�c ��i tho�i!/bil.OnCancel")
--tinsert(bil_1, "111������/bikeptes")
	return Say("M�y ch� th� nghi�m c� nhi�u t�nh n�ng hay v� h�p d�n, ��i hi�p h�y t� t� m� kh�m ph�!", getn(bil_1), bil_1)
end



function bikeptes()
AddItem(6,1,2426, 1, 0, 0, 0)

end

function Bil_DelItem()
	return Say("B�n c� ch�c mu�n <color=red>h�y v�t ph�m<color> ch�, h�y suy ngh� k�!<enter><color=0xffff5f>T�t c� c�c v�t ph�m ���c y�u c�u h�y s� b� h�y b� <enter>ho�n to�n b�i h� th�ng, b�t k� l� v�t ph�m n�o!", 2, "Ta ngh� k� r�i!/Bil_DelItem_Sure", "Th�i, ta nh�m!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong   vi�c h�y v�t ph�m!", "bilDisposeConfirm", "OnCancel", 1);
end


function bilDisposeConfirm(nCount)
	local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/del_item_"..date("%d_%m_%Y")..".log", "a");
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Msg2Player("�� h�y v�t ph�m [<color=green>"..strItem.."<color>]")
		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!<enter>�� h�y<color=yellow> "..nCount.."<color> v�t ph�m!");	
end





function bilVongSangDH(bilSel, bilTileID)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 or GetFaction() == "M�i nh�p giang h� " then 
		return Say("B�n ch�a gia nh�p m�n ph�i, kh�ng th� s� d�ng t�nh n�ng n�y!", 0)
	end
	if bilTileID then
		Title_AddTitle(bilTileID, 2, 10000000)
		Title_ActiveTitle(bilTileID)
		return Msg2Player(bil.C(10,"C�c h� �� nh�n ���c danh hi�u, xin ch�c m�ng!"))
	end
	local bilTbVSvaDH = {}
	if bilSel == 1 then 
		for i = 1, getn(_bilTitleTopLvl) do
			tinsert(bilTbVSvaDH, "Danh hi�u ".._bilTitleTopLvl[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopLvl[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 2 then 
		for i = 1, getn(_bilTitleTopMoney) do
			tinsert(bilTbVSvaDH, "Danh hi�u ".._bilTitleTopMoney[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopMoney[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 4 then 
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng ��i t��ng/#bilVongSangDH(0, 324)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng Ph� t��ng/#bilVongSangDH(0, 325)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng Th�ng l�nh/#bilVongSangDH(0, 326)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 5 then 
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u Qu�n qu�n/#bilVongSangDH(0, 204)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u � qu�n/#bilVongSangDH(0, 205)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u h�ng 3/#bilVongSangDH(0, 206)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u h�ng t�/#bilVongSangDH(0, 207)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 6 then 
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Ph��ng T��ng/#bilVongSangDH(0, 153)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Th�nh ��/#bilVongSangDH(0, 154)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� ��i L�/#bilVongSangDH(0, 155)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Bi�n Kinh/#bilVongSangDH(0, 156)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� T��ng D��ng/#bilVongSangDH(0, 157)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� D��ng Ch�u/#bilVongSangDH(0, 158)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� L�m An/#bilVongSangDH(0, 159)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	else
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Cao th�/#bilVongSangDH(1)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Ph� h�/#bilVongSangDH(2)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP M�n ph�i/#bilVongSangDH(0,".._bilTitleFaction[GetFaction()][GetSex()].bilTitleID..")")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP T�ng Kim/#bilVongSangDH(4)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Li�n ��u/#bilVongSangDH(5)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng Bang Ch� chi�m th�nh/#bilVongSangDH(6)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	end
	Say("Ch�n v�ng s�ng v� danh hi�u m� b�n mu�n!", getn(bilTbVSvaDH), bilTbVSvaDH)
end

function bilMain_TestGame_v3SkillFac(bilSel, bilIDF, bilF, Sel4Set)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local _bil_a = {
		[0] = {{"Thi�u L�m Ph�i", 0, "shaolin", 1},{"Thi�n V��ng Bang", 1, "tianwang", 3}},
		[1] = {{"���ng M�n Ph�i", 2, "tangmen", 3},{"Ng� ��c Gi�o", 3, "wudu", 2}},
		[2] = {{"Nga My Ph�i", 4, "emei", 1},{"Th�y Y�n Ph�i", 5, "cuiyan", 3}},
		[3] = {{"C�i Bang", 6, "gaibang", 1},{"Thi�n Nh�n Gi�o", 7, "tianren", 2}},
		[4] = {{"V� �ang Ph�i", 8, "wudang", 1},{"C�n L�n Ph�i", 9, "kunlun", 3}},
	}
	if bilSel == 2 then
		SetFaction(_bil_a[bilIDF][bilF][3])
		SetCamp(_bil_a[bilIDF][bilF][4])
		SetCurCamp(_bil_a[bilIDF][bilF][4])
		SetLastFactionNumber(_bil_a[bilIDF][bilF][2])
		return bilMain_TestGame_v3SkillFac(((Sel4Set ~= 0) and Sel4Set or 0), GetLastFactionNumber())
	end
	if bilIDF then
		local bil_TranPhai = {273, 36, 48, 75, 252, 114, 130, 150, 166, 275}
		for i = 1, 7 do
			for j = 1, getn(tbAllSkill[GetFaction()][i]) do
				AddMagic(tbAllSkill[GetFaction()][i][j],20)
			end
		end
		for ij = 1, getn(tbAllSkill[GetFaction()][9]) do
			if bilSel == 1 then
				AddMagic(tbAllSkill[GetFaction()][9][ij],1)
			else
				AddMagic(tbAllSkill[GetFaction()][9][ij],20)
			end
		end
		AddMagic(_bilSkill120IDtable[GetLastFactionNumber()][1],20)
		AddMagic(bil_TranPhai[GetLastFactionNumber()+1], 30)
		return Msg2Player(bil.C(10, "Nh�n ���c b� k� n�ng m�n ph�i!"))
	end
	if GetLastFactionNumber() == -1 then
		local bil_1 = {}
		tinsert(bil_1, _bil_a[GetSeries()][1][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 1, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, _bil_a[GetSeries()][2][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 2, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, "K�t th�c ��i tho�i!/bil.OnCancel")
		return Say("V� thi�u hi�p vui l�ng ch�n m�n ph�i mu�n gia nh�p!", getn(bil_1), bil_1)
	else
		return bilMain_TestGame_v3SkillFac(((bilSel ~= 0) and bilSel or 0), GetLastFactionNumber())
	end
end

function bilMain_TestGame_v3_TrangBiG(bil_In_1)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {
		{bil_1 = "��nh Qu�c thanh xa tr��ng sam", bil_2 = {159}, bil_3 = 4},
		{bil_1 = "��nh Qu�c � xa ph�t qu�n", bil_2 = {160}, bil_3 = 6},
		{bil_1 = "��nh Qu�c x�ch quy�n nhuy�n ngoa", bil_2 = {161}, bil_3 = 4},
		{bil_1 = "��nh Qu�c t� ��ng h� uy�n", bil_2 = {162}, bil_3 = 4},
		{bil_1 = "��nh Qu�c ng�n t�m y�u ��i", bil_2 = {163}, bil_3 = 4},
		{bil_1 = "An Bang b�ng tinh th�ch h�ng li�n", bil_2 = {164}, bil_3 = 6},
		{bil_1 = "An Bang c�c hoa th�ch ch� ho�n", bil_2 = {165}, bil_3 = 6},
		{bil_1 = "An Bang �i�n ho�ng th�ch ng�c b�i", bil_2 = {166}, bil_3 = 6},
		{bil_1 = "An Bang k� huy�t th�ch gi�i ch�", bil_2 = {167}, bil_3 = 6},
	}
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 6, 9 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "Nh�n ���c b� trang b� An Bang!"))
		elseif bil_In_1 == 2 then
			for bil_l_1 = 1, 5 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "Nh�n ���c b� trang b� ��nh Qu�c!"))
		end
	end
end

function bilMain_TestGame_v3_TrangBi(bil_In_1, bil_nDetailType, bil_nParticularType, bil_W, bil_H, bilSeri)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = 
	{
		{bilName = "Ki�m", bilItem = {0, 0, 1, 3}},{bilName = "�ao", bilItem = {0, 1, 1, 4}},
		{bilName = "B�ng", bilItem = {0, 2, 1, 4}},{bilName = "Th��ng", bilItem = {0, 3, 1, 4}},
		{bilName = "Ch�y", bilItem = {0, 4, 2, 2}},{bilName = "Song �ao", bilItem = {0, 5, 2, 3}},
		{bilName = "Phi Ti�u", bilItem = {1, 0, 1, 1}},{bilName = "Phi �ao", bilItem = {1, 1, 1, 1}},
		{bilName = "T� Ti�n", bilItem = {1, 2, 2, 2}},{bilName = "�o - Nam", bilItem = {2, random(0, 6), 2, 3}},
		{bilName = "�o - N�", bilItem = {2, random(7, 13), 2, 3}},{bilName = "Nh�n", bilItem = {3,0, 1, 1}},
		{bilName = "D�y chuy�n - Nam", bilItem = {4, 1, 2, 1}},{bilName = "D�y chuy�n - N�", bilItem = {4, 0, 2, 1}},
		{bilName = "Gi�y - Nam", bilItem = {5, random(0, 1), 2, 2}},{bilName = "Gi�y - N�", bilItem = {5, random(2, 3), 2, 2}},
		{bilName = "Th�t l�ng - Nam", bilItem = {6, 1, 2, 1}},{bilName = "Th�t l�ng - N�", bilItem = {6, 0, 2, 1}},
		{bilName = "M� - Nam", bilItem = {7, random(0, 6), 2, 2}},{bilName = "M� - N�", bilItem = {7, random(7, 13), 2, 2}},
		{bilName = "Bao tay - Nam", bilItem = {8, 1, 1, 2}},{bilName = "Bao tay - N�", bilItem = {8, 0, 1, 2}},
		{bilName = "Ng�c b�i - Nam", bilItem = {9, 1, 1, 2}},{bilName = "Ng�c b�i - N�", bilItem = {9, 0, 1, 2}},
	}
	local bil_2, bil_3 = {}, 0
	if bil_nDetailType then
		if bilSeri then
			if CountFreeRoomByWH(bil_W, bil_H) > 0 then
				for i = 1, CountFreeRoomByWH(bil_W, bil_H) do
					-- AddItem(0, bil_nDetailType, bil_nParticularType, 10, bilSeri, 250, 10)
					AddItemEx(0,random(),0,0,bil_nDetailType,bil_nParticularType,10,bilSeri,255,10,10,10,10,10,10,0)
					bil_3 = bil_3 + 1
				end
				return Msg2Player(bil.C(10,"�� nh�n ���c "..bil_3.." m�n trang b�!"))
			else
				return Talk(1, "", "H�nh trang c�a c�c h� c� v� b�a b�n qu�, h�y s�p x�p l�i v� �� tr�ng h�nh trang "..bil.C(1,bil_W.."x"..bil_H).."!")
			end
		else
			return Say("Ch�n h� c�a m�n trang b�!", 6,
				"Trang b� h� Kim/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 0)",
				"Trang b� h� M�c/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 1)",
				"Trang b� h� Th�y/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 2)",
				"Trang b� h� H�a/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 3)",
				"Trang b� h� Th�/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 4)",
				"K�t th�c ��i tho�i!/bil.OnCancel")
		end
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 1, 9 do
				tinsert(bil_2, "Ta mu�n l�y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
		elseif bil_In_1 == 2 then
			for bil_l_1 = 10, 20 do
				tinsert(bil_2, "Ta mu�n l�y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang k�./#bilMain_TestGame_v3_TrangBi(3)")
		elseif bil_In_1 == 3 then
			for bil_l_1 = 21, getn(bil_1) do
				tinsert(bil_2, "Ta mu�n l�y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang tr��c./#bilMain_TestGame_v3_TrangBi(2)")
		end
		tinsert(bil_2, "K�t th�c ��i tho�i!/bil.OnCancel")
		return Say("Ch�n m�n trang b� mu�n l�y!", getn(bil_2), bil_2)
	end
end

function bilMain_TestGame_v3_C(bil_In_1, bil_In_2)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if bil_In_2 then
		SetCamp(bil_In_2)
		SetCurCamp(bil_In_2)
		-- if bil_In_2 == 4 then
			-- SetFaction("")
		-- end
		return Msg2Player(bil.C(10, "Thay ��i phe ph�i th�nh c�ng!"))
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			while GetLevel() < 200 do
				AddOwnExp(999999999)
			end
			SetTask(2501, 50000000)
			Msg2Player(bil.C(10, "5 tri�u �i�m li�n ��u!"))
			AddRepute(99999)
			Msg2Player(bil.C(10, "danh v�ng l�n 99999 �i�m!"))
			SetTask(151, 99999)
			Msg2Player(bil.C(10, "ph�c duy�n l�n 99999 �i�m!"))
			SetTask(747, 1000000)
			Msg2Player(bil.C(10, "t�ng kim l�n 1 tri�u �i�m!"))
			AddLeadExp(10000000)
			Msg2Player(bil.C(10, "10 tri�u �i�m t�i l�nh ��o!"))
			Earn(999999999)
			return Msg2Player(bil.C(10, "ti�n v�n l�n 99 ngh�n v�n l��ng!"))
		elseif bil_In_1 == 2 then
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			return Msg2Player(bil.C(10, " Nh�n ���c 500 ti�n ��ng!"))
		elseif bil_In_1 == 3 then
			AddItem(0,10,6,10,1,0,0)
			return Msg2Player(bil.C(10, " Nh�n ���c B�n ti�u!"))
		elseif bil_In_1 == 4 then
			return Say("Xin ch�n phe ph�i mu�n chuy�n ��i!",6, "T�n Th�./#bilMain_TestGame_v3_C(0, 0)", "Ch�nh Ph�i./#bilMain_TestGame_v3_C(0, 1)", "Trung L�p./#bilMain_TestGame_v3_C(0, 3)", "T� Ph�i./#bilMain_TestGame_v3_C(0, 2)", "S�t Th�./#bilMain_TestGame_v3_C(0, 4)", "K�t th�c ��i tho�i!/bil.OnCancel")
		elseif bil_In_1 == 5 then
			SetCamp(4); SetCurCamp(4); AddRepute(1000); AddLeadExp(10000000); while(GetLevel() < 100) do AddOwnExp(99999999) end
			SetTask(99,1);
			CreateTong(1)
		end
	end
end
 
function main()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	bilMain_TestGame_v3()
end	









function ShopKT()
	tbOpt =
	{
		"<dec><npc>V� kh�ch quan mu�n mua kho�ng th�ch lo�i n�o?",
		"�� \"Kho�ng th�ch\" hi�n/StoneShow",
		"�� \"Kho�ng th�ch\" �n/StoneHide",
		"K�t th�c ��i tho�i./no"
	}
	CreateTaskSay(tbOpt)
end

function StoneHide()
	tbOpt =
	{
		"<dec><npc>Ta �� c� s�n 3 lo�i �� � b�n d��i. M�i v� kh�ch quan ch�n lo�i �� �n!",
		"Kh�ng T��c Nguy�n Th�ch/#StoneHideLevel1(1)",
		"Ph� Dung Nguy�n Th�ch/#StoneHideLevel2(2)",
		"Chung Nh� Nguy�n Th�ch/#StoneHideLevel3(3)",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneShow()
	tbOpt =
	{
		"<dec><npc>Ta �� thu th�p ���c 3 lo�i �� b�n d��i. M�i v� kh�ch quan ch�n lo�i �� hi�n!\n<color=red>(�� kho�ng th�ch ��ng gi� 5 xu)<color>",
		"Huy�n Thi�t Nguy�n Kho�ng/#StoneShowNumber(1)",
		"M�t Ng�n Nguy�n Kho�ng/#StoneShowNumber(2)",
		"Chu Sa Nguy�n Kho�ng/#StoneShowNumber(3)",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneShowNumber(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 149, _, _,_, "Huy�n Thi�t Nguy�n Kho�ng")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 151, _, _,_, "M�t Ng�n Nguy�n Kho�ng")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 153, _, _,_, "Chu Sa Nguy�n Kho�ng")
	end
end

function StoneHideLevel1()
	tbOpt =
	{
		"<dec><npc>M�i v� kh�ch quang l�a ch�n thu�c t�nh c�a lo�i �� �n n�y!\n<color=red>(�� kho�ng th�ch ��ng gi� 5 xu)<color>",
		"�� thu�c t�nh �n h� \"Kim\"/#StoneHideSeries1(1)",
		"�� thu�c t�nh �n h� \"M�c\"/#StoneHideSeries1(2)",
		"�� thu�c t�nh �n h� \"Th�y\"/#StoneHideSeries1(3)",
		"�� thu�c t�nh �n h� \"H�a\"/#StoneHideSeries1(4)",
		"�� thu�c t�nh �n h� \"Th�\"/#StoneHideSeries1(5)",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneHideLevel2()
	tbOpt =
	{
		"<dec><npc>M�i v� kh�ch quang l�a ch�n thu�c t�nh c�a lo�i �� �n n�y!\n<color=red>(�� kho�ng th�ch ��ng gi� 5 xu)<color>",
		"�� thu�c t�nh �n h� \"Kim\"/#StoneHideSeries2(1)",
		"�� thu�c t�nh �n h� \"M�c\"/#StoneHideSeries2(2)",
		"�� thu�c t�nh �n h� \"Th�y\"/#StoneHideSeries2(3)",
		"�� thu�c t�nh �n h� \"H�a\"/#StoneHideSeries2(4)",
		"�� thu�c t�nh �n h� \"Th�\"/#StoneHideSeries2(5)",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneHideLevel3()
	tbOpt =
	{
		"<dec><npc>M�i v� kh�ch quang l�a ch�n thu�c t�nh c�a lo�i �� �n n�y!\n<color=red>(�� kho�ng th�ch ��ng gi� 5 xu)<color>",
		"�� thu�c t�nh �n h� \"Kim\"/#StoneHideSeries3(1)",
		"�� thu�c t�nh �n h� \"M�c\"/#StoneHideSeries3(2)",
		"�� thu�c t�nh �n h� \"Th�y\"/#StoneHideSeries3(3)",
		"�� thu�c t�nh �n h� \"H�a\"/#StoneHideSeries3(4)",
		"�� thu�c t�nh �n h� \"Th�\"/#StoneHideSeries3(5)",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function StoneHideSeries1(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 150, _, 0,_, "Kh�ng T��c Nguy�n Th�ch")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 150, _, 1,_, "Kh�ng T��c Nguy�n Th�ch")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 150, _, 2,_, "Kh�ng T��c Nguy�n Th�ch")
	elseif nSel == 4 then
		BuyItemByXu(5, 6, 1, 150, _, 3,_, "Kh�ng T��c Nguy�n Th�ch")
	elseif nSel == 5 then
		BuyItemByXu(5, 6, 1, 150, _, 4,_, "Kh�ng T��c Nguy�n Th�ch")
	end
end

function StoneHideSeries2(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 152, _, 0,_, "Ph� Dung Nguy�n Th�ch")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 152, _, 1,_, "Ph� Dung Nguy�n Th�ch")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 152, _, 2,_, "Ph� Dung Nguy�n Th�ch")
	elseif nSel == 4 then
		BuyItemByXu(5, 6, 1, 152, _, 3,_, "Ph� Dung Nguy�n Th�ch")
	elseif nSel == 5 then
		BuyItemByXu(5, 6, 1, 152, _, 4,_, "Ph� Dung Nguy�n Th�ch")
	end
end

function StoneHideSeries3(nSel)
	if nSel == 1 then
		BuyItemByXu(5, 6, 1, 154, _, 0,_, "Chung Nh� Nguy�n Th�ch")
	elseif nSel == 2 then
		BuyItemByXu(5, 6, 1, 154, _, 1,_, "Chung Nh� Nguy�n Th�ch")
	elseif nSel == 3 then
		BuyItemByXu(5, 6, 1, 154, _, 2,_, "Chung Nh� Nguy�n Th�ch")
	elseif nSel == 4 then
		BuyItemByXu(5, 6, 1, 154, _, 3,_, "Chung Nh� Nguy�n Th�ch")
	elseif nSel == 5 then
		BuyItemByXu(5, 6, 1, 154, _, 4,_, "Chung Nh� Nguy�n Th�ch")
	end
end

function BuyItemByXu(nCount, nG, nD, nP, nL, nS, nLk, szMsg)
	local nCheck = CalcEquiproomItemCount(4,417,1,-1)
	if nCheck < nCount then
		Talk(1, "no", format("V� kh�ch quan kh�ng mang �� <color=red>%d ti�n ��ng<color> �� mua v�t ph�m n�y!", nCount))
		return
	end
	
	if not nL then
		nL = -1;
	elseif not nS then
		nS = -1;
	elseif not nLk then
		nLk = -1
	end

	AddItem(nG,nD,nP,nL,nS,nLk)
	ConsumeEquiproomItem(nCount, 4,417,1,-1)
	Msg2Player("B�n nh�n ���c 1 "..szMsg)
end




function dotim()	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"V�t ph�m h� tr�/khoangth",
		"M�t n�/manat",
		"Trang b� b�ch kim/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
function khoangth()
local tab_Content = {
		"Huy�n tinh/huytin",
		"kho�ng th�ch/kdb",
		"S�t th� gi�n/stg",
		"Th�y tinh/thuyti",
		"Ph�c duy�n/phucd",
		"K�t th�c."
	}
	Say(" Mu�n l�y g� th� click ! ", getn(tab_Content), tab_Content);
end;

function huytin()
AddItem(6,1,147,1,0,0,0) 
AddItem(6,1,147,2,0,0,0) 
AddItem(6,1,147,3,0,0,0) 
AddItem(6,1,147,4,0,0,0) 
AddItem(6,1,147,5,0,0,0) 
AddItem(6,1,147,6,0,0,0) 
AddItem(6,1,147,7,0,0,0) 
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,9,0,0,0) 
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end


function stg()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 		
end

function thuyti()
AddEventItem(239) 
AddEventItem(240) 
AddEventItem(241) 		
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end


















function hkMP_full()
 local tab_Content = {
  "R�i kh�i/no",
  "Thi�u L�m quy�n/sethkmp_tlq",
  "Thi�u L�m c�n/sethkmp_tlb",
  "Thi�u L�m �ao/sethkmp_tld",
  "Thi�n V��ng ch�y/#sethkmp1(4)",
  "Thi�n V��ng th��ng/#sethkmp1(5)",
  "Thi�n V��ng �ao/sethkmp_tvd",
  "Nga My ki�m/sethkmp_nmk",
  "Nga My ch��ng/sethkmp_nmc",
  "Nga My buff/#sethkmp1(9)",
  "Th�y Y�n �ao/sethkmp_ty1",
  "Th�y Y�n song �ao/sethkmp_ty2",
  "Ng� ��c ch��ng/#sethkmp1(12)",
  "Ng� ��c �ao/sethkmp_ndd",
  "Ng� ��c b�a/sethkmp_ndb",
  "Trang sau/sethkmp2",
  
 }
 Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
 local tab_Content = {
  "R�i kh�i/no",
  "���ng M�n phi �ao/#sethkmp1(15)",
  "���ng M�n t� ti�n/sethkmp_dmno",
  "���ng M�n phi ti�u/#sethkmp1(17)",
  "���ng M�n b�y/sethkmp_dmb",
  "C�i Bang r�ng/sethkmp_cbr",
  "C�i Bang b�ng/#sethkmp1(20)",
  "Thi�n Nh�n k�ch/sethkmp_tnk",
  "Thi�n Nh�n �ao/sethkmp_tnd",
  "Thi�n Nh�n b�a/sethkmp_tnb",
  "V� �ang kh� /sethkmp_vdkhi",
  "V� �ang ki�m/sethkmp_vdk",
  "C�n L�n �ao/sethkmp_cld",
  "C�n L�n ki�m/sethkmp_clc",
  "C�n L�n b�a/#sethkmp1(28)",
 }
 Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end


function sethkmp1(nId)
 for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end
---thieu lam
function sethkmp_tlq()
--AddGoldItem(0,0)--monglong
AddGoldItem(0,1)--monglong
AddGoldItem(0,2)--monglong
AddGoldItem(0,3)--monglong
AddGoldItem(0,4)--monglong
AddGoldItem(0,5)--monglong
AddGoldItem(0,769)--monglong
end

function sethkmp_tlb()
AddGoldItem(0,6)--phuc ma
AddGoldItem(0,7)--phuc ma
AddGoldItem(0,8)--phuc ma
AddGoldItem(0,9)--phuc ma
AddGoldItem(0,10)--phuc ma
AddGoldItem(0,771)--phuc ma
end
function sethkmp_tld()
AddGoldItem(0,11)--tu khong
AddGoldItem(0,12)--tu khong
AddGoldItem(0,13)--tu khong
AddGoldItem(0,14)--tu khong
AddGoldItem(0,15)--tu khong
AddGoldItem(0,776)--tu khong
end
-----------------
---Thien vuong
---------------------
function sethkmp_tvd()
AddGoldItem(0,26)--
AddGoldItem(0,27)--
AddGoldItem(0,28)--
AddGoldItem(0,29)--
AddGoldItem(0,30)--
AddGoldItem(0,793)--
end
---------------------------
--ngamy
function sethkmp_nmk()
AddGoldItem(0,31)--tu khong
AddGoldItem(0,32)--tu khong
AddGoldItem(0,33)--tu khong
AddGoldItem(0,34)--tu khong
AddGoldItem(0,35)--tu khong
AddGoldItem(0,796)--tu khong
end

function sethkmp_nmc()
AddGoldItem(0,36)--
AddGoldItem(0,37)--
AddGoldItem(0,38)--
AddGoldItem(0,39)--
AddGoldItem(0,40)--
AddGoldItem(0,801)--
end
--------------------------
------thuy yen don dao
------------------------
function sethkmp_ty1()
AddGoldItem(0,46)--tu khong
AddGoldItem(0,47)--tu khong
AddGoldItem(0,48)--tu khong
AddGoldItem(0,49)--tu khong
AddGoldItem(0,50)--tu khong
AddGoldItem(0,811)--tu khong
end

function sethkmp_ty2()
AddGoldItem(0,51)--tu khong
AddGoldItem(0,52)--tu khong
AddGoldItem(0,53)--tu khong
AddGoldItem(0,54)--tu khong
AddGoldItem(0,55)--tu khong
AddGoldItem(0,816)--tu khong
end
-----------------------
------------ngu doc dao--------
function sethkmp_ndd()
AddGoldItem(0,61)--tu khong
AddGoldItem(0,62)--tu khong
AddGoldItem(0,63)--tu khong
AddGoldItem(0,64)--tu khong
AddGoldItem(0,65)--tu khong
AddGoldItem(0,829)--tu khong
end

function sethkmp_ndb()
AddGoldItem(0,66)--tu khong
AddGoldItem(0,67)--tu khong
AddGoldItem(0,68)--tu khong
AddGoldItem(0,69)--tu khong
AddGoldItem(0,70)--tu khong
AddGoldItem(0,834)--tu khong
end

--------------
----------Duong mon no


function sethkmp_dmno()
AddGoldItem(0,76)--tu khong
AddGoldItem(0,77)--tu khong
AddGoldItem(0,78)--tu khong
AddGoldItem(0,79)--tu khong
AddGoldItem(0,80)--tu khong
AddGoldItem(0,843)--tu khong
end

function sethkmp_dmb()
AddGoldItem(0,86)--tu khong
AddGoldItem(0,87)--tu khong
AddGoldItem(0,88)--tu khong
AddGoldItem(0,89)--tu khong
AddGoldItem(0,90)--tu khong
AddGoldItem(0,854)--tu khong
end

-----------------------
-------------cai bang rong--------------
function sethkmp_cbr()
AddGoldItem(0,91)--tu khong
AddGoldItem(0,92)--tu khong
AddGoldItem(0,93)--tu khong
AddGoldItem(0,94)--tu khong
AddGoldItem(0,95)--tu khong
AddGoldItem(0,855)--tu khong
end

-----------------------
-----------thien nhan thuong
function sethkmp_tnk()
AddGoldItem(0,101)--tu khong
AddGoldItem(0,102)--tu khong
AddGoldItem(0,103)--tu khong
AddGoldItem(0,104)--tu khong
AddGoldItem(0,105)--tu khong
AddGoldItem(0,868)--tu khong
end

function sethkmp_tnd()
AddGoldItem(0,106)--tu khong
AddGoldItem(0,107)--tu khong
AddGoldItem(0,108)--tu khong
AddGoldItem(0,109)--tu khong
AddGoldItem(0,110)--tu khong
AddGoldItem(0,874)--tu khong
end
function sethkmp_tnb()
AddGoldItem(0,111)--tu khong
AddGoldItem(0,112)--tu khong
AddGoldItem(0,113)--tu khong
AddGoldItem(0,114)--tu khong
AddGoldItem(0,115)--tu khong
AddGoldItem(0,876)--tu khong
end
--------------
----------vo dang nc-----------
function sethkmp_vdkhi()
AddGoldItem(0,116)--tu khong
AddGoldItem(0,117)--tu khong
AddGoldItem(0,118)--tu khong
AddGoldItem(0,119)--tu khong
AddGoldItem(0,120)--tu khong
AddGoldItem(0,881)--tu khong
end

function sethkmp_vdk()
AddGoldItem(0,121)--tu khong
AddGoldItem(0,122)--tu khong
AddGoldItem(0,123)--tu khong
AddGoldItem(0,124)--tu khong
AddGoldItem(0,125)--tu khong
AddGoldItem(0,888)--tu khong
end
---------------------

-----------con lon---
function sethkmp_cld()
AddGoldItem(0,126)--tu khong
AddGoldItem(0,127)--tu khong
AddGoldItem(0,128)--tu khong
AddGoldItem(0,129)--tu khong
AddGoldItem(0,130)--tu khong
AddGoldItem(0,891)--tu khong
end
function sethkmp_clc()
AddGoldItem(0,131)--tu khong
AddGoldItem(0,132)--tu khong
AddGoldItem(0,133)--tu khong
AddGoldItem(0,134)--tu khong
AddGoldItem(0,135)--tu khong
AddGoldItem(0,898)--tu khong
end