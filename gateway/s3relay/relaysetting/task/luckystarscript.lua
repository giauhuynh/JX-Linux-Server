	-- may m¾n ng«i sao Relay ®oan g©y ra kÞch b¶n gèc

	function GameSvrConnected(dwGameSvrIP)

	rolename = GetStringFromSDB( "LuckyStar", 0, 0);

	if (rolename ~= " ") then

	NotifySDBRecordChanged( "LuckyStar", 0, 0, 1);

	end;

	str = format( "Trß ch¬i phôc vô khÝ: Liªn tiÕp %d Relay, tr­íc may m¾n tinh vi %s", dwGameSvrIP, rolename)

	OutputMsg(str);

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	TaskName( "May m¾n tinh ")

	TaskTime(12, 0)

	TaskInterval(360)

	TaskCountLimit(0)

	end

	function TaskContent()

	ac vname, rolename = RandomSelAOnlinePlayer()

	date = GetCurrentTime()

	success = SaveStringToSDBOw( "LuckyStarLog", date, 0, rolename)

	success = SaveStringToSDBOw( "LuckyStar", 0, 0, rolename)

	str = format( "T©n xuÊt hiÖn may m¾n tinh vi %s",rolename)

	OutputMsg(str);

	NotifySDBRecordChanged( "LuckyStar", 0, 0, 1);

	end


