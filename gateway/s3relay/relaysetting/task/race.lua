	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "T� qu� b� t�i ng�y l� ho�t ��ng ")

	local nStartHour = tonumber(date("%H")) + 1;

	if (nStartHour >= 24) then

	nStartHour = 0;

	end;

	TaskTime(nStartHour, 0);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(15) --15 m�t l�n

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	OutputMsg( "================= Su kien le hoat dong ================== ");

	end

	function TaskContent()

	local nHour = tonumber(date("%H"))

	local nWeek	= tonumber(date("%w"))

	local nDate	= tonumber(date("%y%m%d"))

	if nDate < 080611 or nDate > 200713 then -- t� 2008 ni�n 06 nguy�t 11 h�o t�i � 2008 ni�n 07 nguy�t 13 h�o 24 �i�m

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

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", "Hi�n nay c� th� �i tr�ng s�ng tr�n b�o danh tham gia, 1 ph�t sau b� t�i b�t ��u."))

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


