
_BILTBBOSSINCITY = {
	{bilMapID = 78, bilMapName = "T��ng D��ng", bilMapPos = {{1753,3121},{1670,3462},{1369,3411},{1379,3141}}},
	{bilMapID = 1, bilMapName = "Ph��ng T��ng", bilMapPos = {{1799,3265},{1835,3024},{1436,2953},{1404,3338}}},
	{bilMapID = 11, bilMapName = "Th�nh ��", bilMapPos = {{2966,4807},{2999,5266},{3252,5349},{3346,4797}}},
	{bilMapID = 80, bilMapName = "D��ng Ch�u", bilMapPos = {{1934,2861},{1723,3339},{1598,3313},{1538,3041}}},
	{bilMapID = 37, bilMapName = "Bi�n Kinh", bilMapPos = {{1770,3403},{1520,3281},{1535,2902},{2017,2679}}},
	{bilMapID = 162, bilMapName = "��i L�", bilMapPos = {{1404,3417},{1388,3149},{1723,3501},{1785,2986}}},
	{bilMapID = 176, bilMapName = "L�m An", bilMapPos = {{1162,2781},{1832,3342},{1247,3354},{1754,2805}}},
}

_BILTBBOSSCALL = {
	{"C� B�ch", 566, 95, 0, {"Ph� Dung ��ng","S�n B�o ��ng","city"}},
	{"���ng Phi Y�n", 1366, 95, 1, {"Phong L�ng ��","Kho� Lang ��ng","city"}},
	-- {"Lam Y Y", 582, 95, 1, {"V� L�ng ��ng","Phi Thi�n ��ng","city"}},
	{"H� Linh Phi�u", 568, 95, 2, {"Tr��ng B�ch s�n B�c","V� Danh ��ng","city"}},
	{"Y�n Hi�u Tr�i", 744, 95, 2, {"Sa M�c s�n  ��ng 1","Sa M�c s�n  ��ng 3","city"}},
	{"M�nh Th��ng L��ng", 583, 95, 3, {"Sa m�c ��a bi�u","Sa M�c s�n  ��ng 2","city"}},
	{"Gia Lu�t T� Ly", 563, 95, 3, {"L��ng Th�y ��ng","D��ng Trung ��ng","city"}},
	{"��o Thanh Ch�n Nh�n", 562, 95, 4, {"Tr��ng B�ch s�n Nam","M�c Cao Qu�t","city"}},
	{"Tuy�n C� T�", 747, 95, 4, {"T�y S�n ��o","Phi Thi�n ��ng","city"}},
	{"V��ng T�", 739, 95, 0, {"V� L�ng ��ng","Ph� Dung ��ng","city"}},
	-- {"Huy�n Nan ��i S�", 1365, 95, 0, {"Phong L�ng ��","Kho� Lang ��ng","city"}},
	{"���ng B�t Nhi�m", 741, 95, 1, {"Tr��ng B�ch s�n Nam","Kho� Lang ��ng","city"}},
	{"B�ch Doanh Doanh", 742, 95, 1, {"Thanh kh� ��ng","Sa m�c ��a bi�u","city"}},
	{"Thanh Tuy�t S� Th�i", 743, 95, 2, {"T�y S�n ��o","D��ng Trung ��ng","city"}},
	{"Chung Linh T�", 567, 95, 2, {"Phi Thi�n ��ng","V� Danh ��ng","city"}},
	{"H� Nh�n Ng�", 745, 95, 3, {"Nh�n Th�ch ��ng","L��ng Th�y ��ng","city"}},
	{"�oan M�c Du�", 565, 95, 3, {"Phong L�ng ��","S�n B�o ��ng","city"}},
	{"T� ��i Nh�c", 1367, 95, 4, {"M�c B�c Th�o Nguy�n","V� L�ng ��ng","city"}},
	{"Thanh Li�n T�", 1368, 95, 4, {"Tr��ng B�ch s�n B�c","Sa M�c s�n  ��ng 3","city"}},
}

function bilCallBossInCity()
	for i = 1, getn(_BILTBBOSSINCITY) do
		local bilBid, bilBlv, bilBseries, bilBW, bilBX, bilBY, bilBname = bilCallBossInCityCheckBoss(i, bilCallBossInCitySelBoss(1))
		GlobalExecute(format("dw QY_MakeBoss_RandInCity(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bilBid, bilBlv, bilBseries, bilBW, bilBX, bilBY, bilBname, ""));
		-- zMsg2SubWorld = format("Boss <color=yellow>%s<color> xu�t hi�n t�i <color=green>%s<color> t�a �� <color=Water>(%d, %d)<color>.", bilBname, _BILTBBOSSINCITY[i].bilMapName, floor(bilBX/8), floor(bilBY/16))
		zMsg2SubWorld = format("Boss <color=yellow>%s<color> xu�t hi�n t�i <color=green>%s<color>", bilBname, _BILTBBOSSINCITY[i].bilMapName)
		GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end
	GlobalExecute(format("dw AddLocalNews([[%s]])","Nghe ��n c�c s�t th� kh�t ti�ng g�n ��y �� xu�t hi�n � trung nguy�n, giang h� s� c� m�t cu�c chi�n ��m m�u."))
	bilCallBossInCitySelBoss(0)
end

_bilTbTempBossID = {}

function bilCallBossInCitySelBoss(bilSel)
	if bilSel == 1 then
		local bilBSelID, bilFixCountArray, bilCountArrarBossID = 0, 0, getn(_BILTBBOSSCALL)
		while bilBSelID <= 0 do
			bilFixCountArray = bilFixCountArray + 1
			if	bilFixCountArray >= bilCountArrarBossID then break end
			local bilRandomID = random(1, bilCountArrarBossID)
			if not(_bilTbTempBossID[bilRandomID]) and (_bilTbTempBossID[bilRandomID] == nil) then
				bilBSelID = bilRandomID
				_bilTbTempBossID[bilRandomID] = 1
				break
			end
		end
		return bilBSelID
	else
		for bilDel = 1, getn(_bilTbTempBossID) do
			_bilTbTempBossID[bilDel] = nil
		end
	end
end

function bilCallBossInCityCheckBoss(bilCity, bilBoss)
	local bilRandomMapPos = random(1, 4)
	local bilBname = _BILTBBOSSCALL[bilBoss][1]
	local bilBid = _BILTBBOSSCALL[bilBoss][2]
	local bilBlv = _BILTBBOSSCALL[bilBoss][3]
	local bilBseries = _BILTBBOSSCALL[bilBoss][4]
	local bilBW = _BILTBBOSSINCITY[bilCity].bilMapID
	local bilBX = _BILTBBOSSINCITY[bilCity].bilMapPos[bilRandomMapPos][1]
	local bilBY = _BILTBBOSSINCITY[bilCity].bilMapPos[bilRandomMapPos][2]
	return bilBid, bilBlv, bilBseries, bilBW, bilBX, bilBY, bilBname
end

-- \relaysetting\task\bilcallboss_incityhead.lua




