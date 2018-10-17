
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
	if bilDenyAfterOpenTopRacing == 1 then
		Msg2Player("V�t ph�m n�y ch� c� th� s� d�ng sau �ua TOP!")
		return 1
	end
	local bil_t_1 = {
		-- bil_1: th�ng s� item - bil_2: t�n item - bil_3: t� l� nh�n ���c - bil_4: th�ng b�o k�nh th� gi�i
		{bil_1 = {6,1,388,1,0,0}, bil_2 = "�� ph� An Bang", bil_3 = 1, bil_4 = 1},
		{bil_1 = {6,1,389,1,0,0}, bil_2 = "�� ph� An Bang", bil_3 = 2, bil_4 = 1},
		{bil_1 = {6,1,390,1,0,0}, bil_2 = "�� ph� An Bang", bil_3 = 3, bil_4 = 1},
		{bil_1 = {6,1,391,1,0,0}, bil_2 = "�� ph� An Bang", bil_3 = 4, bil_4 = 1},
		
		{bil_1 = {6,1,383,1,0,0}, bil_2 = "�� ph� ��nh Qu�c", bil_3 = 4, bil_4 = 1},
		{bil_1 = {6,1,384,1,0,0}, bil_2 = "�� ph� ��nh Qu�c", bil_3 = 5, bil_4 = 1},
		{bil_1 = {6,1,385,1,0,0}, bil_2 = "�� ph� ��nh Qu�c", bil_3 = 6, bil_4 = 1},
		{bil_1 = {6,1,386,1,0,0}, bil_2 = "�� ph� ��nh Qu�c", bil_3 = 5, bil_4 = 1},
		{bil_1 = {6,1,387,1,0,0}, bil_2 = "�� ph� ��nh Qu�c", bil_3 = 6, bil_4 = 1},
		
		{bil_1 = {6,1,1403,1,0,0}, bil_2 = "�� ph� Hi�p C�t", bil_3 = 6, bil_4 = 0},
		{bil_1 = {6,1,1404,1,0,0}, bil_2 = "�� ph� Hi�p C�t", bil_3 = 7, bil_4 = 0},
		{bil_1 = {6,1,1405,1,0,0}, bil_2 = "�� ph� Hi�p C�t", bil_3 = 8, bil_4 = 0},
		{bil_1 = {6,1,1406,1,0,0}, bil_2 = "�� ph� Hi�p C�t", bil_3 = 9, bil_4 = 0},
		
		{bil_1 = {6,1,1407,1,0,0}, bil_2 = "�� ph� Nhu T�nh", bil_3 = 6, bil_4 = 0},
		{bil_1 = {6,1,1408,1,0,0}, bil_2 = "�� ph� Nhu T�nh", bil_3 = 7, bil_4 = 0},
		{bil_1 = {6,1,1409,1,0,0}, bil_2 = "�� ph� Nhu T�nh", bil_3 = 8, bil_4 = 0},
		{bil_1 = {6,1,14010,1,0,0}, bil_2 = "�� ph� Nhu T�nh", bil_3 = 9, bil_4 = 0},
		
		{bil_1 = {1, 204}, bil_2 = "Trang b� H�ng �nh", bil_3 = 16, bil_4 = 1},
		{bil_1 = {1, 205}, bil_2 = "Trang b� H�ng �nh", bil_3 = 17, bil_4 = 1},
		{bil_1 = {1, 206}, bil_2 = "Trang b� H�ng �nh", bil_3 = 18, bil_4 = 1},
		{bil_1 = {1, 207}, bil_2 = "Trang b� H�ng �nh", bil_3 = 19, bil_4 = 1},
		
		{bil_1 = {4,353,1,1,0,0}, bil_2 = "Tinh h�ng b�o th�ch", bil_3 = 15, bil_4 = 0},
		{bil_1 = {4,238,1,1,0,0}, bil_2 = "Lam th�y tinh", bil_3 = 15, bil_4 = 0},
		{bil_1 = {4,239,1,1,0,0}, bil_2 = "T� th�y tinh", bil_3 = 15, bil_4 = 0},
		{bil_1 = {4,240,1,1,0,0}, bil_2 = "L�c th�y tinh", bil_3 = 10, bil_4 = 0},
		{bil_1 = {4,489,1,1,0,0}, bil_2 = "L�nh b�i phong l�ng ��", bil_3 = 15, bil_4 = 0},
		
		{bil_1 = {6,1,122,1,0,0}, bil_2 = "Ph�c duy�n Ti�u", bil_3 = 40, bil_4 = 0},
		{bil_1 = {6,1,123,1,0,0}, bil_2 = "Ph�c duy�n Trung", bil_3 = 30, bil_4 = 0},
		{bil_1 = {6,1,124,1,0,0}, bil_2 = "Ph�c duy�n ��i", bil_3 = 15, bil_4 = 0},
		
		{bil_1 = {6,1,71,1,0,0}, bil_2 = "Ti�n th�o l�", bil_3 = 20, bil_4 = 0},
		{bil_1 = {6,1,72,1,0,0}, bil_2 = "Thi�n s�n th�o l�", bil_3 = 30, bil_4 = 0},
		{bil_1 = {6,1,73,1,0,0}, bil_2 = "B�ch qu� l�", bil_3 = 30, bil_4 = 0},
		
		{bil_1 = {2, 10000}, bil_2 = "Ti�n v�n", bil_3 = 100, bil_4 = 0},
		{bil_1 = {2, 50000}, bil_2 = "Ti�n v�n", bil_3 = 60, bil_4 = 0},
		{bil_1 = {2, 100000}, bil_2 = "Ti�n v�n", bil_3 = 40, bil_4 = 0},
		{bil_1 = {2, 200000}, bil_2 = "Ti�n v�n", bil_3 = 20, bil_4 = 1},
		{bil_1 = {2, 500000}, bil_2 = "Ti�n v�n", bil_3 = 15, bil_4 = 1},
		
		{bil_1 = {3, 1000000}, bil_2 = "�i�m kinh nghi�m", bil_3 = 60, bil_4 = 0},
		{bil_1 = {3, 2000000}, bil_2 = "�i�m kinh nghi�m", bil_3 = 50, bil_4 = 0},
		{bil_1 = {3, 3000000}, bil_2 = "�i�m kinh nghi�m", bil_3 = 40, bil_4 = 1},
		{bil_1 = {3, 4000000}, bil_2 = "�i�m kinh nghi�m", bil_3 = 30, bil_4 = 1},
		{bil_1 = {3, 5000000}, bil_2 = "�i�m kinh nghi�m", bil_3 = 15, bil_4 = 1},
		
		{bil_1 = {5, 1}, bil_2 = "Ti�n ��ng", bil_3 = 20, bil_4 = 1},
		{bil_1 = {5, 2}, bil_2 = "Ti�n ��ng", bil_3 = 12, bil_4 = 1},
		{bil_1 = {5, 3}, bil_2 = "Ti�n ��ng", bil_3 = 8, bil_4 = 1},
		{bil_1 = {5, 4}, bil_2 = "Ti�n ��ng", bil_3 = 5, bil_4 = 1},
		{bil_1 = {5, 5}, bil_2 = "Ti�n ��ng", bil_3 = 2, bil_4 = 1},
		
		{bil_1 = {6,1,400,90,random(0,4),0}, bil_2 = "S�t th� gi�n", bil_3 = 15, bil_4 = 0},
		{bil_1 = {6,1,1987,1,0,0}, bil_2 = "B�c ��u thu�n m� thu�t", bil_3 = 8, bil_4 = 1},
		{bil_1 = {6,1,1617,1,0,0}, bil_2 = "Vi�m �� l�nh", bil_3 = 15, bil_4 = 0},
		
		{bil_1 = {6,1,4302,1,0,0}, bil_2 = "Ph�c l�i ��n [Th�n m�]", bil_3 = 50, bil_4 = 0},
		{bil_1 = {6,1,4303,1,0,0}, bil_2 = "Ph�c l�i ��n [H�ng �nh]", bil_3 = 60, bil_4 = 0},
		{bil_1 = {6,1,4304,1,0,0}, bil_2 = "Ph�c l�i ��n [Nhu t�nh]", bil_3 = 60, bil_4 = 0},
		{bil_1 = {6,1,4305,1,0,0}, bil_2 = "Ph�c l�i ��n [Hi�p c�t]", bil_3 = 50, bil_4 = 0},
		{bil_1 = {6,1,4306,1,0,0}, bil_2 = "Ph�c l�i ��n [��nh qu�c]", bil_3 = 40, bil_4 = 0},
		{bil_1 = {6,1,4307,1,0,0}, bil_2 = "Ph�c l�i ��n [An bang]", bil_3 = 30, bil_4 = 0},
		
		{bil_1 = {6,1,4308,1,0,0}, bil_2 = "M�nh �� Ph� [Ho�ng Kim]", bil_3 = 12, bil_4 = 1},
	}
	
	if CalcFreeItemCellCount() < 1 then
		Msg2Player(bil.C(10, "Ph�i �� tr�ng �t nh�t 1 � h�nh m�i c� th� m� l� bao!"))
		return 1
	end
	
	local bil_1, bil_2, bil_4, bil_5, bil_6 = getn(bil_t_1), random(1,100), 0, FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime()), 0
	local bil_3 = bil.InitRandMemTb(bil_1)
	for i = 1, bil_1 do
		bil_6 = bil_3[i]
		if bil_2 <= bil_t_1[bil_6].bil_3 then
			if (bil_t_1[bil_6].bil_1[1] == 1) then
				bil_4 = AddGoldItem(0, bil_t_1[bil_6].bil_1[2])
				break
			elseif (bil_t_1[bil_6].bil_1[1] == 2) then
				Earn(bil_t_1[bil_6].bil_1[2])
				break
			elseif (bil_t_1[bil_6].bil_1[1] == 3) then
				AddOwnExp(bil_t_1[bil_6].bil_1[2])
				break
			elseif (bil_t_1[bil_6].bil_1[1] == 5) then
				bil_4 = AddStackItem(bil_t_1[bil_6].bil_1[2],4,417,1,1,0,0,0)
				break
			else
				bil_4 = AddItem(unpack(bil_t_1[bil_6].bil_1))
				break
			end
		end
	end
	if bil_4 ~= 0 then
		ITEM_SetExpiredTime(bil_4, bil_5);
		SyncItem(bil_4);
	end
	if bil_t_1[bil_6].bil_4 == 1 then
		if bil_t_1[bil_6].bil_1[1] == 2 or bil_t_1[bil_6].bil_1[1] == 3 then
			Msg2SubWorld("<color=white>��i hi�p "..bil.C(1, GetName()).." m� "..bil.C(7, "N�ng ��ng l� bao").." nh�n ���c "..bil.C(2, bil_t_1[bil_6].bil_1[2].." - "..bil_t_1[bil_6].bil_2))
			AddLocalNews("<color=white>��i hi�p "..bil.C(1, GetName()).." m� "..bil.C(7, "N�ng ��ng l� bao").." nh�n ���c "..bil.C(2, bil_t_1[bil_6].bil_1[2].." - "..bil_t_1[bil_6].bil_2))
		else
			Msg2SubWorld("<color=white>��i hi�p "..bil.C(1, GetName()).." m� "..bil.C(7, "N�ng ��ng l� bao").." nh�n ���c "..bil.C(2, bil_t_1[bil_6].bil_2))
			AddLocalNews("<color=white>��i hi�p "..bil.C(1, GetName()).." m� "..bil.C(7, "N�ng ��ng l� bao").." nh�n ���c "..bil.C(2, bil_t_1[bil_6].bil_2))
		end
	end
	Msg2Player("<color=yellow>nh�n ���c "..bil.C(2, bil_t_1[bil_6].bil_2).." t� "..bil.C(7, "N�ng ��ng l� bao"))
	return 0
end

















