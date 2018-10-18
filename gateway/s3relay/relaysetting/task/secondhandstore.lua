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

	Include( "\\script\\second_hand_store\\second_hand_gc.lua")

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "�� c� �i�m ")

	local nInterval = 30

	local nStartHour = tonumber(date( "%H ")) ;

	local nStartMinute = tonumber(date( "%M "));

	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)

	TaskTime(nNextHour, nNextMinute);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(nInterval) --nInterval ph�t m�t l�n

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	SecondHandStore:LoadFromDb()

	SecondHandStore:CheckAllItem()

	local szMsg = format( "=====%s ## %d:%d ### %d #  ###=======", "Tiem do cu",nNextHour, nNextMinute, nInterval)

	OutputMsg(szMsg);

	end

	function TaskContent()

	SecondHandStore:CheckAllItem()

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


