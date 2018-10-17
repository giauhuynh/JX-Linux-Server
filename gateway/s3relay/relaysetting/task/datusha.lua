	local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)

	local nNextHour = nStartHour

	local nNextMinute = nInterval * ceil(nStartMinute / nInterval)

	if nNextMinute >= 60 then

	nNextHour = nNextHour + floor(nNextMinute / 60)

	nNextMinute = mod(nNextMinute, 60)

	end

	if (nNextHour >= 24) then

	nNextHour = mod(nNextHour, 24);

	end;

	return nNextHour, nNextMinute

	end

	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "datusha ")

	local nInterval = 60

	local nStartHour = tonumber(date( "%H")) ;

	local nStartMinute = tonumber(date( "%M"));

	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)

	TaskTime(nNextHour, nNextMinute);

	-- thiÕt trÝ kho¶ng c¸ch thêi gian, ®¬n vÞ vi phót

	TaskInterval(nInterval) --nInterval phót mét lÇn

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn

	TaskCountLimit(0)

	local szMsg = format( "=====%s ## %d:%d ### %d #  ###=======", "Dia dao sinh tu",nNextHour, nNextMinute, nInterval)

	OutputMsg(szMsg);

	end

	function TaskContent()

	local nTime = tonumber(date( "%H%M "))

	local nWeek	= tonumber(date( "%w "))

	local nDate	= tonumber(date( "%y%m%d "))

	local nTaskState = tonumber(date( "%y%m%d%H "))

	if nTime >= 0000 and nTime <= 0010 then

	Ladder_ClearLadder(10269);

	OutputMsg( "clear ladder datusha ")

	end

	local flag = 0

	if (nTime >= 1200 and nTime < 1300) then

	flag = 1

	elseif (nTime >= 1900 and nTime < 2200) then

	flag = 1

	end

	if flag == 1 then

	local szMsg = "Lo¹n chiÕn Cöu Ch©u cèc ®· b¾t ®Çu, ®¹i gia cã thÓ ®i l©m an cÇm ®Ìn cung n÷ chç b¸o danh tham gia."

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 1)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	OutputMsg( "start datusha ")

	RemoteExecute( "\\script\\missions\\datusha\\datusha.lua","DaTuShaClass:Open", 0);

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


