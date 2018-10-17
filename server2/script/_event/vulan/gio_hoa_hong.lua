Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

-- nh�n ���c 1.200.000 �i�m exp
-- t�i �a 500 c�i
-- t� l� nh�n ���c c�c v�t ph�m

function main()
	if GetTask(5963) >= 500 then
		Talk(1, "","��i hi�p �� s� d�ng Gi� Hoa H�ng ��t ��n gi�i h�n cho ph�p 500 c�i, �n nhi�u s� l�m ph�n c�ng l�c!")
		return 1
	end
	if CalcFreeItemCellCount() < 2 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 2 � m�i c� th� d�ng v�t ph�m!") return 1 end
	-- local bil_2 = random(1,5)
	local bil_2 = random(1,4)
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
	}
	SetTask(5963, GetTask(5963) + 1)
	AddOwnExp(1200000)
	Msg2Player("T�ng s� <color=yellow>Gi� Hoa H�ng<color> �� d�ng: <color=green>"..GetTask(5963).."<color> c�i")
	Ladder_NewLadder(10125, GetName(), GetTask(5963), 1);
	if bil_2 == 3 then
		-- local bil_3 = random(1, getn(bil_1) + 100)
		local bil_3 = random(1, getn(bil_1) + 30)
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
	return 0
end

function GetDesc( nItemIdx )
	return "<color=green>V�t ph�m d�ng �� d�ng t�ng c�c b�c cha m� nh�n ng�y l� Vu Lan<color><enter><color=yellow>c� gi� tr� kh�ng nh�<color><enter>S� ki�n Vu Lan m�y ch� V� L�m T�ch S�!"
end