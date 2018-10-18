Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

-- nh�n ���c 800.000 �i�m exp
-- t�i �a 500 c�i
-- t� l� th�p nh�n ���c c�c v�t ph�m

function main()
	if GetTask(5964) >= 500 then
		Talk(1, "","��i hi�p �� s� d�ng B�nh chay ��t ��n gi�i h�n cho ph�p 500 c�i, �n nhi�u s� l�m ph�n c�ng l�c!")
		return 1
	end
	if CalcFreeItemCellCount() < 2 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 2 � m�i c� th� d�ng v�t ph�m!") return 1 end
	local bil_2 = random(1,150)
	local bil_1 = {
		[5] = {bilItem = {6, 1, 440, 0, 0,0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
		[9] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
		[14] = {bilItem = {6, 1, 440, 1, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
		[19] = {bilItem = {6, 1, 122, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (Ti�u)",},
		[22] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
		[45] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
		[57] = {bilItem = {6, 1, 125, 0, 0, 0, 0}, bilItemName = "Qu� Hoa T�u",},
		[69] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
		[86] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
	}
	SetTask(5964, GetTask(5964) + 1)
	AddOwnExp(800000)
	Msg2Player("T�ng s� <color=yellow>B�nh Chay<color> �� d�ng: <color=green>"..GetTask(5964).."<color> c�i")
	Ladder_NewLadder(10234, GetName(), GetTask(5964), 1);
	if not(bil_1[bil_2]) then
		return 0
	else
		AddItem(unpack(bil_1[bil_2].bilItem))
		Msg2Player("May m�n nh�n ���c: <color=yellow>"..bil_1[bil_2].bilItemName)
		return 0
	end
	return 0
end

function GetDesc( nItemIdx )
	return "<color=green>C� th� s� d�ng tr�c ti�p ho�c d�ng �� ��i h�p l� v�t<color><enter>S� ki�n Vu Lan m�y ch� V� L�m T�ch S�!"
end