	-- may m�n ng�i sao Relay �oan g�y ra k�ch b�n g�c

	function GameSvrConnected(dwGameSvrIP)

	rolename = GetStringFromSDB( "LuckyStar", 0, 0);

	if (rolename ~= " ") then

	NotifySDBRecordChanged( "LuckyStar", 0, 0, 1);

	end;

	str = format( "Tr� ch�i ph�c v� kh�: Li�n ti�p %d Relay, tr��c may m�n tinh vi %s", dwGameSvrIP, rolename)

	OutputMsg(str);

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	TaskName( "May m�n tinh ")

	TaskTime(12, 0)

	TaskInterval(360)

	TaskCountLimit(0)

	end

	function TaskContent()

	ac vname, rolename = RandomSelAOnlinePlayer()

	date = GetCurrentTime()

	success = SaveStringToSDBOw( "LuckyStarLog", date, 0, rolename)

	success = SaveStringToSDBOw( "LuckyStar", 0, 0, rolename)

	str = format( "T�n xu�t hi�n may m�n tinh vi %s",rolename)

	OutputMsg(str);

	NotifySDBRecordChanged( "LuckyStar", 0, 0, 1);

	end


