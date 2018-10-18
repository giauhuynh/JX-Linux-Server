-- Include("\\script\\__\\npc_chuong_mon_thap_dai_phai.lua")

local bilFunc_ChuongMonThapDaiPhai_nNum = {
	[01] = {n = "Thi�u L�m", s120 = {i = 709, n = "��i Th�a Nh� Lai Ch�"}},
	[02] = {n = "Thi�n V��ng", s120 = {i = 708, n = "��o H� Thi�n"}},
	[03] = {n = "���ng M�n", s120 = {i = 710, n = "M� �nh Tung"}},
	[04] = {n = "Ng� ��c", s120 = {i = 711, n = "H�p Tinh Y�m"}},
	[05] = {n = "Ngay Mi", s120 = {i = 712, n = "B� Nghuy�t Ph�t Tr�n"}},
	[06] = {n = "Th�y Y�n", s120 = {i = 713, n = "Ng� Tuy�t �n"}},
	[07] = {n = "C�i Bang", s120 = {i = 714, n = "H�n Nhi�n Kh� C�ng"}},
	[08] = {n = "Thi�n Nh�n", s120 = {i = 715, n = "Ma �m Ph� Ph�ch"}},
	[09] = {n = "V� �ang", s120 = {i = 716, n = "Xu�t � B�t Nhi�m"}},
	[10] = {n = "C�n L�n", s120 = {i = 717, n = "L��ng Nghi Ch�n Kh�"}},
}

function bilFunc_ChuongMonThapDaiPhai_CallFunc(_1, _fNum, _Accepted)
	if _fNum and _fNum == 1 then
	
		local FACTION_BOOK = {
			[0] = {{6, 1, 56, "Thi�u L�m Quy�n Ph�p. Quy�n 1"}, {6, 1, 57, "Thi�u L�m C�n ph�p. Quy�n 2"}, {6, 1, 58, "Thi�u L�m �ao ph�p. Quy�n 3"}},
			[1] = {{6, 1, 37, "Thi�n V��ng Ch�y Ph�p. Quy�n 1"}, {6, 1, 38, "Thi�n V��ng Th��ng ph�p. Quy�n 2"}, {6, 1, 39, "Thi�n V��ng �ao ph�p.Quy�n 3"}},
			[2] = {{6, 1, 27, "T� Ti�n thu�t. B�o V� L� Hoa"}, {6, 1, 28, "H�m T�nh thu�t.Lo�n Ho�n K�ch"}, {6, 1, 45, "Phi �ao thu�t. Nhi�p H�n Nguy�t �nh"}, {6, 1, 46 , "Phi Ti�u thu�t. C�u Cung Phi Tinh"}},
			[3] = {{6, 1, 47, "Ng� ��c Ch��ng Ph�p. Quy�n 1"}, {6, 1, 48, "Ng� ��c �ao ph�p. Quy�n 2"}, {6, 1, 49, "Ng� ��c Nhi�p T�m thu�t. Quy�n 3"}},
			[4] = {{6, 1, 42, "Di�t Ki�m M�t T�ch"}, {6, 1, 43 ,"Nga Mi  Ph�t Quang Ch��ng M�t T�ch"}, {6, 1, 59, "Ph� �� M�t T�ch"}},
			[5] = {{6, 1, 40, "Th�y Y�n �ao ph�p"}, {6, 1, 41 ,"Th�y Y�n Song �ao"}},
			[6] = {{6, 1, 54, "C�i Bang Ch��ng Ph�p"}, {6, 1, 55 ,"C�i Bang C�n ph�p"}},
			[7] = {{6, 1, 35, "V�n Long K�ch. M�u ph�p"}, {6, 1, 36 ,"L�u Tinh. �ao ph�p"}, {6, 1, 53, "Nhi�p H�n. Ch� thu�t"}},
			[8] = {{6, 1, 33, "Th�i C�c Quy�n Ph�. Quy�n 3"}, {6, 1, 34 ,"Th�i C�c Ki�m Ph�. Quy�n 2"}},
			[9] = {{6, 1, 50, "Ng� Phong thu�t"}, {6, 1, 51 ,"Ng� L�i thu�t"}, {6, 1, 52, "Ng� T�m thu�t"}},
		}
		
		local b = getn(FACTION_BOOK[_1[3]])
		
		if _Accepted and _Accepted == 1 then
			ConsumeEquiproomItem(1, 6, 1, 12, -1)
			ConsumeEquiproomItem(1, 4, 353, 1, -1)
			
			for _i = 238, 240 do
				if CalcEquiproomItemCount(4, _i, 1, -1) > 0 then
					ConsumeEquiproomItem(1, 4, _i, 1, -1)
					break
				end
			end
			
			for _i = 1, b do
				ConsumeEquiproomItem(1, FACTION_BOOK[_1[3]][_i][1], FACTION_BOOK[_1[3]][_i][2], FACTION_BOOK[_1[3]][_i][3], -1)
			end
			
			AddItem(6, 1, 1125, 1, 0,0,0)
			
			Msg2Player("<color=green>��i ���c 1 cu�n k� n�ng tuy�t h�c c�p 120 c�a m�n ph�i, xin ch�c m�ng!")
			
			return
		end
		
		if CalcEquiproomItemCount(6, 1, 12, -1) < 1 then
			Msg2Player("Y�u c�u: 1 B�n nh��c t�m kinh, 1 Tinh h�ng b�o th�ch, 1 Th�y tinh b�t k�, 1 b� s�ch k� n�ng ��y �� c�a m�n ph�i m�nh!")
			return Talk(1, "", "Ng��i kh�ng mang theo cu�n B�n nh��c t�m kinh b�n ng��i!")
		end
		
		if CalcEquiproomItemCount(4, 353, 1, -1) < 1 then
			Msg2Player("Y�u c�u: 1 B�n nh��c t�m kinh, 1 Tinh h�ng b�o th�ch, 1 Th�y tinh b�t k�, 1 b� s�ch k� n�ng ��y �� c�a m�n ph�i m�nh!")
			return Talk(1, "", "Ng��i kh�ng mang theo 1 vi�n Tinh h�ng b�o th�ch tr�n ng��i!")
		end
		
		local a = 0
		for _i = 238, 240 do
			a = (CalcEquiproomItemCount(4, _i, 1, -1) + a)
		end
		
		if a < 1 then
			Msg2Player("Y�u c�u: 1 B�n nh��c t�m kinh, 1 Tinh h�ng b�o th�ch, 1 Th�y tinh b�t k�, 1 b� s�ch k� n�ng ��y �� c�a m�n ph�i m�nh!")
			return Talk(1, "", "Ng��i kh�ng mang theo 1 vi�n Th�y tinh b�t k� n�o tr�n ng��i!")
		end
		
		if not(FACTION_BOOK[_1[3]]) then
			return Msg2Player("L�i, kh�ng x�c ��nh ���c m�n ph�i, xin th� l�i ho�c li�n h� v�i b� ph�n h� tr� �� ���c tr� gi�p!")
		end
		
		for _i = 1, b do
			if CalcEquiproomItemCount(FACTION_BOOK[_1[3]][_i][1], FACTION_BOOK[_1[3]][_i][2], FACTION_BOOK[_1[3]][_i][3], -1) < 1 then
				Msg2Player("Y�u c�u: 1 B�n nh��c t�m kinh, 1 Tinh h�ng b�o th�ch, 1 Th�y tinh b�t k�, 1 b� s�ch k� n�ng ��y �� c�a m�n ph�i m�nh!")
				return Talk(1, "", "Ng��i kh�ng mang theo cu�n k� n�ng m�n ph�i: "..FACTION_BOOK[_1[3]][_i][4])
			end
		end
		
		return Say("B�n th�n ng��i �� h�i t� �� c�c y�u t� �� l�nh ng� cu�n b� k�p "..(%bilFunc_ChuongMonThapDaiPhai_nNum[_1[1]].s120.n)..", ng��i c� mu�n ��i kh�ng!", 2, 
			"�� t� xin ��i l�y cu�n b� k�p n�y/#bilFunc_ChuongMonThapDaiPhai_CallFunc({".._1[1]..", ".._1[2]..", ".._1[3].."}, ".._fNum..", 1)",
			"�� t� ch�a mu�n/OnCancel")
	end
end

function bilFunc_ChuongMonThapDaiPhai(_nNum, _pLevel, _pLastFn, _pFName, _pName, CallFunctionNum)
	if _pLastFn ~= (_nNum - 1) then
		return nil
	end

	local a = {}
	
	if ((_pLevel >= 120) and (HaveMagic(%bilFunc_ChuongMonThapDaiPhai_nNum[_nNum].s120.i) == -1)) then
		tinsert(a, "�� t� mu�n l�nh ng� b� t�m ph�p c�p 120/#bilFunc_ChuongMonThapDaiPhai_CallFunc({".._nNum..", ".._pLevel..", ".._pLastFn..", ".._pFName..", ".._pName.."}, 1)")
	end
	
	if getn(a) > 0 then
		return 1, a
	end
	
	return nil
end














