
_BILTBBOSSINCITY = {
	{bilMapID = 78, bilMapName = "T­¬ng D­¬ng", bilMapPos = {{1753,3121},{1670,3462},{1369,3411},{1379,3141}}},
	{bilMapID = 1, bilMapName = "Ph­îng T­êng", bilMapPos = {{1799,3265},{1835,3024},{1436,2953},{1404,3338}}},
	{bilMapID = 11, bilMapName = "Thµnh §«", bilMapPos = {{2966,4807},{2999,5266},{3252,5349},{3346,4797}}},
	{bilMapID = 80, bilMapName = "D­¬ng Ch©u", bilMapPos = {{1934,2861},{1723,3339},{1598,3313},{1538,3041}}},
	{bilMapID = 37, bilMapName = "BiÖn Kinh", bilMapPos = {{1770,3403},{1520,3281},{1535,2902},{2017,2679}}},
	{bilMapID = 162, bilMapName = "§¹i Lý", bilMapPos = {{1404,3417},{1388,3149},{1723,3501},{1785,2986}}},
	{bilMapID = 176, bilMapName = "L©m An", bilMapPos = {{1162,2781},{1832,3342},{1247,3354},{1754,2805}}},
}

_BILTBBOSSCALL = {
	{"Cæ B¸ch", 566, 95, 0, {"Phï Dung ®éng","S¬n B¶o ®éng","city"}},
	{"§­êng Phi YÕn", 1366, 95, 1, {"Phong L¨ng ®é","Kho¶ Lang ®éng","city"}},
	-- {"Lam Y Y", 582, 95, 1, {"Vò L¨ng ®éng","Phi Thiªn ®éng","city"}},
	{"Hµ Linh Phiªu", 568, 95, 2, {"Tr­êng B¹ch s¬n B¾c","V« Danh ®éng","city"}},
	{"Yªn HiÓu Tr¸i", 744, 95, 2, {"Sa M¹c s¬n  ®éng 1","Sa M¹c s¬n  ®éng 3","city"}},
	{"M¹nh Th­¬ng L­¬ng", 583, 95, 3, {"Sa m¹c ®Þa biÓu","Sa M¹c s¬n  ®éng 2","city"}},
	{"Gia LuËt TÞ Ly", 563, 95, 3, {"L­ìng Thñy ®éng","D­¬ng Trung ®éng","city"}},
	{"§¹o Thanh Ch©n Nh©n", 562, 95, 4, {"Tr­êng B¹ch s¬n Nam","M¹c Cao QuËt","city"}},
	{"TuyÒn C¬ Tö", 747, 95, 4, {"T©y S¬n ®¶o","Phi Thiªn ®éng","city"}},
	{"V­¬ng T¸", 739, 95, 0, {"Vò L¨ng ®éng","Phï Dung ®éng","city"}},
	-- {"HuyÒn Nan §¹i S­", 1365, 95, 0, {"Phong L¨ng ®é","Kho¶ Lang ®éng","city"}},
	{"§­êng BÊt NhiÔm", 741, 95, 1, {"Tr­êng B¹ch s¬n Nam","Kho¶ Lang ®éng","city"}},
	{"B¹ch Doanh Doanh", 742, 95, 1, {"Thanh khª ®éng","Sa m¹c ®Þa biÓu","city"}},
	{"Thanh TuyÖt S­ Th¸i", 743, 95, 2, {"T©y S¬n ®¶o","D­¬ng Trung ®éng","city"}},
	{"Chung Linh Tó", 567, 95, 2, {"Phi Thiªn ®éng","V« Danh ®éng","city"}},
	{"Hµ Nh©n Ng·", 745, 95, 3, {"Nh¹n Th¹ch ®éng","L­ìng Thñy ®éng","city"}},
	{"§oan Méc DuÖ", 565, 95, 3, {"Phong L¨ng ®é","S¬n B¶o ®éng","city"}},
	{"Tõ §¹i Nh¹c", 1367, 95, 4, {"M¹c B¾c Th¶o Nguyªn","Vò L¨ng ®éng","city"}},
	{"Thanh Liªn Tö", 1368, 95, 4, {"Tr­êng B¹ch s¬n B¾c","Sa M¹c s¬n  ®éng 3","city"}},
}

function bilCallBossInCity()
	for i = 1, getn(_BILTBBOSSINCITY) do
		local bilBid, bilBlv, bilBseries, bilBW, bilBX, bilBY, bilBname = bilCallBossInCityCheckBoss(i, bilCallBossInCitySelBoss(1))
		GlobalExecute(format("dw QY_MakeBoss_RandInCity(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bilBid, bilBlv, bilBseries, bilBW, bilBX, bilBY, bilBname, ""));
		-- zMsg2SubWorld = format("Boss <color=yellow>%s<color> xuÊt hiÖn t¹i <color=green>%s<color> täa ®é <color=Water>(%d, %d)<color>.", bilBname, _BILTBBOSSINCITY[i].bilMapName, floor(bilBX/8), floor(bilBY/16))
		zMsg2SubWorld = format("Boss <color=yellow>%s<color> xuÊt hiÖn t¹i <color=green>%s<color>", bilBname, _BILTBBOSSINCITY[i].bilMapName)
		GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end
	GlobalExecute(format("dw AddLocalNews([[%s]])","Nghe ®ån c¸c s¸t thñ khÐt tiÕng gÇn ®©y ®· xuÊt hiÖn ë trung nguyªn, giang hå sÏ cã mét cuéc chiÕn ®Ém m¸u."))
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




