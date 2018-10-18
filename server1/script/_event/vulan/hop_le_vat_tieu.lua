Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

-- nh�n li�n ti�p 10 l�n, m�i l�n 2.000.000 exp
-- t�i �a 10 c�i
-- t� l� nh�n ���c c�c v�t ph�m gi� tr�

function main()
	if GetTask(5961) >= 10 then
		Talk(1, "","��i hi�p �� s� d�ng H�p L� V�t Ti�u ��t ��n gi�i h�n cho ph�p 10 c�i, �n nhi�u s� l�m ph�n c�ng l�c!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 30 � m�i c� th� d�ng v�t ph�m!") return 1 end
	SetTask(5961, GetTask(5961) + 1)
	Msg2Player("T�ng s� <color=yellow>H�p l� v�t ti�u<color> �� d�ng: <color=green>"..GetTask(5961).."<color> c�i")
	Ladder_NewLadder(10128, GetName(), GetTask(5961), 1)
	for i = 1, 10 do
		AddOwnExp(2000000)
		Msg2Player("<color=yellow>Nh�n ���c 2.000.000 Exp!")
	end
	local bil_5 = random(3,7)
	for i = 1, bil_5 do
		bilGetAward()
	end
	return 0
end

function bilGetAward()
	local bil_2 = 2
	local bil_1 = {
		{bilItemParam = {6, 1, 440, 0, 0,0, 0}, bilItemEndDay = 0, bilItemName = "M�nh s�n h� x� t�c x100"},
		{bilItemParam = {6, 1, 910, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Bao D��c ho�n"},
		{bilItemParam = {6, 1, 122, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Ph�c Duy�n L� (Ti�u)"},
		{bilItemParam = {6, 1, 72, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Thi�n s�n B�o L�"},
		{bilItemParam = {6, 1, 73, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "B�ch Qu� L�"},
		{bilItemParam = {6, 1, 125, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Qu� Hoa T�u"},
		{bilItemParam = {4, 489, 0, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "L�nh b�i Phong L�ng ��"},
		{bilItemParam = {6, 1, 71, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Ti�n Th�o L�"},
		{bilItemParam = {4, 353, 0, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Tinh H�ng B�o Th�ch"},
		{bilItemParam = {6, 1, 26, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "V� L�m M�t T�ch"},
		{bilItemParam = {6, 1, 22, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "T�y T�y Kinh"},
		{bilItemParam = {6, 1, 1448, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "M�c B�c Truy�n T�ng L�nh"},
		{bilItemParam = {6, 1, 1427, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "T� M�u L�nh"},
		{bilItemParam = {4,239, 0, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "T� Th�y Tinh"},
		{bilItemParam = {6, 1, 391, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - An Bang k� huy�t th�ch gi�i ch�"},
		{bilItemParam = {6, 1, 390, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - An Bang �i�n th�ch ng�c b�i"},
		{bilItemParam = {6, 1, 389, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - An Bang c�c hoa th�ch ch� ho�n"},
		{bilItemParam = {6, 1, 388, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - An Bang b�ng tinh th�ch h�ng li�n"},
		{bilItemParam = {6, 1, 387, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - ��nh qu�c ng�n t�m y�u ��i"},
		{bilItemParam = {6, 1, 386, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - ��nh qu�c t� ��ng h� uy�n"},
		{bilItemParam = {6, 1, 385, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - ��nh qu�c x�ch quy�n nhuy�n ngoa"},
		{bilItemParam = {6, 1, 384, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - ��nh qu�c � xa ph�t qu�n"},
		{bilItemParam = {6, 1, 383, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - ��nh qu�c thanh xa tr��ng sam"},
		{bilItemParam = {6, 1, 1403, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Hi�p c�t thuy�t huy�t sam"},
		{bilItemParam = {6, 1, 1404, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Hi�p c�t �a t�nh ho�n"},
		{bilItemParam = {6, 1, 1405, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Hi�p c�t �an t�m gi�i"},
		{bilItemParam = {6, 1, 1406, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Hi�p c�t t�nh � k�t"},
		{bilItemParam = {6, 1, 1407, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Nhu t�nh c�n qu�c ngh� th��ng"},
		{bilItemParam = {6, 1, 1408, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Nhu t�nh th�c n� h�ng li�n"},
		{bilItemParam = {6, 1, 1409, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Nhu t�nh ph�ng nghi gi�i ch�"},
		{bilItemParam = {6, 1, 1410, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "�� ph� - Nhu t�nh tu� t�m ng�c b�i"},

		{bilItemParam = {0,10,5,6, 0, 0}, bilItemEndDay = 30, bilItemName = "Th�n m� � V�n ��p Tuy�t"},
		{bilItemParam = {0,10,5,7, 0, 0}, bilItemEndDay = 30, bilItemName = "Th�n m� X�ch Th�"},
		{bilItemParam = {0,10,5,8, 0, 0}, bilItemEndDay = 30, bilItemName = "Th�n m� Tuy�t �nh"},
		{bilItemParam = {0,10,5,9, 0, 0}, bilItemEndDay = 30, bilItemName = "Th�n m� ��ch L�"},
		{bilItemParam = {4, 923, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh tu� t�m ng�c b�i 1"},
		{bilItemParam = {4, 924, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh tu� t�m ng�c b�i 2"},
		{bilItemParam = {4, 925, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh tu� t�m ng�c b�i 3"},
		{bilItemParam = {4, 926, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh tu� t�m ng�c b�i 4"},
		{bilItemParam = {4, 919, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh ph�ng nghi gi�i ch� 1"},
		{bilItemParam = {4, 920, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh ph�ng nghi gi�i ch� 2"},
		{bilItemParam = {4, 921, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh ph�ng nghi gi�i ch� 3"},
		{bilItemParam = {4, 922, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh ph�ng nghi gi�i ch� 4"},
		{bilItemParam = {4, 915, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh th�c n� h�ng li�n 1"},
		{bilItemParam = {4, 916, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh th�c n� h�ng li�n 2"},
		{bilItemParam = {4, 917, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh th�c n� h�ng li�n 3"},
		{bilItemParam = {4, 918, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh th�c n� h�ng li�n 4"},
		{bilItemParam = {4, 777, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh c�n qu�c ngh� th��ng 1"},
		{bilItemParam = {4, 778, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh c�n qu�c ngh� th��ng 2"},
		{bilItemParam = {4, 779, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh c�n qu�c ngh� th��ng 3"},
		{bilItemParam = {4, 780, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh c�n qu�c ngh� th��ng 4"},
		{bilItemParam = {4, 781, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh c�n qu�c ngh� th��ng 5"},
		{bilItemParam = {4, 782, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Nhu T�nh c�n qu�c ngh� th��ng 6"},
		{bilItemParam = {4, 771, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t t�nh � k�t 1"},
		{bilItemParam = {4, 772, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t t�nh � k�t 2"},
		{bilItemParam = {4, 773, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t t�nh � k�t 3"},
		{bilItemParam = {4, 774, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t t�nh � k�t 4"},
		{bilItemParam = {4, 775, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t t�nh � k�t 5"},
		{bilItemParam = {4, 776, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t t�nh � k�t 6"},
		{bilItemParam = {4, 911, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �an t�m gi�i 1"},
		{bilItemParam = {4, 912, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �an t�m gi�i 2"},
		{bilItemParam = {4, 913, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �an t�m gi�i 3"},
		{bilItemParam = {4, 914, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �an t�m gi�i 4"},
		{bilItemParam = {4, 907, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �a t�nh ho�n 1"},
		{bilItemParam = {4, 908, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �a t�nh ho�n 2"},
		{bilItemParam = {4, 909, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �a t�nh ho�n 3"},
		{bilItemParam = {4, 910, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t �a t�nh ho�n 4"},
		{bilItemParam = {4, 903, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t thuy�t huy�t sam 1"},
		{bilItemParam = {4, 904, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t thuy�t huy�t sam 2"},
		{bilItemParam = {4, 905, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t thuy�t huy�t sam 3"},
		{bilItemParam = {4, 906, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh Hi�p C�t thuy�t huy�t sam 4"},
		{bilItemParam = {4, 927, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c thanh xa tr��ng sam 1"},
		{bilItemParam = {4, 928, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c thanh xa tr��ng sam 2"},
		{bilItemParam = {4, 929, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c thanh xa tr��ng sam 3"},
		{bilItemParam = {4, 930, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c thanh xa tr��ng sam 4"},
		{bilItemParam = {4, 783, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c � xa ph�t qu�n 1"},
		{bilItemParam = {4, 784, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c � xa ph�t qu�n 2"},
		{bilItemParam = {4, 785, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c � xa ph�t qu�n 3"},
		{bilItemParam = {4, 786, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c � xa ph�t qu�n 4"},
		{bilItemParam = {4, 787, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c � xa ph�t qu�n 5"},
		{bilItemParam = {4, 788, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c � xa ph�t qu�n 6"},
		{bilItemParam = {4, 931, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c x�ch quy�n nhuy�n ngoa 1"},
		{bilItemParam = {4, 932, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c x�ch quy�n nhuy�n ngoa 2"},
		{bilItemParam = {4, 933, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c x�ch quy�n nhuy�n ngoa 3"},
		{bilItemParam = {4, 934, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c x�ch quy�n nhuy�n ngoa 4"},
		{bilItemParam = {4, 935, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c t� ��ng h� uy�n 1"},
		{bilItemParam = {4, 936, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c t� ��ng h� uy�n 2"},
		{bilItemParam = {4, 937, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c t� ��ng h� uy�n 3"},
		{bilItemParam = {4, 938, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c t� ��ng h� uy�n 4"},
		{bilItemParam = {4, 939, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c ng�n t�m y�u ��i 1"},
		{bilItemParam = {4, 940, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c ng�n t�m y�u ��i 2"},
		{bilItemParam = {4, 941, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c ng�n t�m y�u ��i 3"},
		{bilItemParam = {4, 942, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh ��nh Qu�c ng�n t�m y�u ��i 4"},
		{bilItemParam = {4, 747, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang b�ng tinh th�ch h�ng li�n 1"},
		{bilItemParam = {4, 748, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang b�ng tinh th�ch h�ng li�n 2"},
		{bilItemParam = {4, 749, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang b�ng tinh th�ch h�ng li�n 3"},
		{bilItemParam = {4, 750, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang b�ng tinh th�ch h�ng li�n 4"},
		{bilItemParam = {4, 751, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang b�ng tinh th�ch h�ng li�n 5"},
		{bilItemParam = {4, 752, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang b�ng tinh th�ch h�ng li�n 6"},
		{bilItemParam = {4, 753, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang c�c hoa th�ch ch� ho�n 1"},
		{bilItemParam = {4, 754, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang c�c hoa th�ch ch� ho�n 2"},
		{bilItemParam = {4, 755, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang c�c hoa th�ch ch� ho�n 3"},
		{bilItemParam = {4, 756, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang c�c hoa th�ch ch� ho�n 4"},
		{bilItemParam = {4, 757, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang c�c hoa th�ch ch� ho�n 5"},
		{bilItemParam = {4, 758, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang c�c hoa th�ch ch� ho�n 6"},
		{bilItemParam = {4, 759, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang �i�n ho�ng th�ch ng�c b�i 1"},
		{bilItemParam = {4, 760, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang �i�n ho�ng th�ch ng�c b�i 2"},
		{bilItemParam = {4, 761, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang �i�n ho�ng th�ch ng�c b�i 3"},
		{bilItemParam = {4, 762, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang �i�n ho�ng th�ch ng�c b�i 4"},
		{bilItemParam = {4, 763, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang �i�n ho�ng th�ch ng�c b�i 5"},
		{bilItemParam = {4, 764, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang �i�n ho�ng th�ch ng�c b�i 6"},
		{bilItemParam = {4, 765, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang k� huy�t th�ch gi�i ch� 1"},
		{bilItemParam = {4, 766, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang k� huy�t th�ch gi�i ch� 2"},
		{bilItemParam = {4, 767, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang k� huy�t th�ch gi�i ch� 3"},
		{bilItemParam = {4, 768, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang k� huy�t th�ch gi�i ch� 4"},
		{bilItemParam = {4, 769, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang k� huy�t th�ch gi�i ch� 5"},
		{bilItemParam = {4, 770, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M�nh An Bang k� huy�t th�ch gi�i ch� 6"},
		{bilItemParam = {0,10,5,10, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "Th�n m� Chi�u D� Ng�c S� T�"},
		{bilItemParam = {0,10,8,10, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "Th�n m� Phi V�n"},
	}
	
	if bil_2 == 2 then
		local bil_3 = random(1, getn(bil_1))
		if not(bil_1[bil_3]) then return 0
		else
			local bil_4 = AddItem(unpack(bil_1[bil_3].bilItemParam))
			if bil_1[bil_3].bilItemEndDay > 0 then
				local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
				ITEM_SetExpiredTime(bil_4, nExpiredDate);
				SyncItem(bil_4);
			end
			Msg2Player("May m�n nh�n ���c: <color=yellow>"..bil_1[bil_3].bilItemName)
			return 0
		end
		return 0
	end
end

function GetDesc( nItemIdx )
	return "<color=green>V�t ph�m d�ng �� d�ng t�ng c�c b�c cha m� nh�n ng�y l� Vu Lan<color><enter><color=yellow>c� gi� tr� kh�ng nh�<color><enter>S� ki�n Vu Lan m�y ch� V� L�m!"
end