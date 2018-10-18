	-- bang héi chiªu mé ®Ö tö ho¹t ®éng

	Include( "\\script\\gb_taskfuncs.lua");

	function TaskShedule()

	FESTIVAL_SHREWMOUSE = "Thu thËp bang héi vËt phÈm ";

	TaskName( "Thu thËp bang héi vËt phÈm ");

	-- 3 mÊy giê mét lÇn, ®¬n vÞ phót

	TaskInterval(15);

	-- thiÕt trÝ g©y ra thêi gian

	local nNowHour = tonumber(date( "%H "));

	local nBeginTime = mod(nNowHour + 1, 24);-- cÇu ra thêi gian tíi 3 béi sè + 1 giê

	TaskTime(nBeginTime, 0);

	OutputMsg(format( "Thu thËp bang héi vËt phÈm ho¹t ®éng b¾t ®Çu tõ %d:%d?", nBeginTime, 0));

	-- chÊp hµnh v« h¹n thø

	TaskCountLimit(0);

	gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 3);

	end

	function TaskContent()

	local nHour = tonumber(date( "%H "));

	local nMin = tonumber(date( "%M "));

	nResult = hourcheck(nHour, nMin);

	if (nResult == 0) then

	return

	end

	OutputMsg( "Thu thËp bang héi vËt phÈm ho¹t ®éng ®· b¾t ®Çu b¸o danh.");

	GlobalExecute( "dwf \\script\\missions\\tong\\collectgoods\\collg_gmscript.lua collg_opencellectgoods( 827 ) ");	--827 vi bang héi thu thËp vËt phÈm ho¹t ®éng chuÈn bÞ trµng mapid

	end

	function hourcheck(nHour, nMin)

	if (mod(nHour, 3) ~= 2) then

	return 0;

	end

	if (nMin > 55) then

	return 0;

	end;

	return 1;

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


