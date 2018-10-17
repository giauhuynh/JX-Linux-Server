	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "Tø quı bØ t¸i ngµy lÔ ho¹t ®éng ")

	local nStartHour = tonumber(date("%H")) + 1;

	if (nStartHour >= 24) then

	nStartHour = 0;

	end;

	TaskTime(nStartHour, 0);

	-- thiÕt trİ kho¶ng c¸ch thêi gian, ®¬n vŞ vi phót

	TaskInterval(15) --15 mét lÇn

	-- thiÕt trİ g©y ra sè lÇn, 0 biÓu thŞ v« h¹n sè lÇn

	TaskCountLimit(0)

	OutputMsg( "================= Su kien le hoat dong ================== ");

	end

	function TaskContent()

	local nHour = tonumber(date("%H"))

	local nWeek	= tonumber(date("%w"))

	local nDate	= tonumber(date("%y%m%d"))

	if nDate < 080611 or nDate > 200713 then -- tõ 2008 niªn 06 nguyÖt 11 hµo tíi – 2008 niªn 07 nguyÖt 13 hµo 24 ®iÓm

	return

	end

	local bIsStart = 0

	if (nHour >= 10 and nHour < 11) or (nHour >= 22 and nHour < 23) then

	bIsStart = 1

	elseif nHour >= 14 and nHour < 15 and (nWeek == 6 or nWeek == 0 or nDate == 080430 or nDate == 200501 ) then

	bIsStart = 1

	elseif nHour >= 2 and nHour < 3 and (nWeek == 6 or nDate == 080430 or nDate == 200501 ) then

	bIsStart = 1

	end

	if bIsStart == 1 then

	GlobalExecute( "dwf \\script\\missions\\racegame\\missionctrl.lua startRaceMission() ")

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", "HiÖn nay cã thÓ ®i tr¨ng s¸ng trÊn b¸o danh tham gia, 1 phót sau bØ t¸i b¾t ®Çu."))

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


