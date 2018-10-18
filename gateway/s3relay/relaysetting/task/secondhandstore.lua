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

	-- thi’t tr› ph≠¨ng ∏n t™n g‰i

	TaskName( "ßÂ cÚ Æi’m ")

	local nInterval = 30

	local nStartHour = tonumber(date( "%H ")) ;

	local nStartMinute = tonumber(date( "%M "));

	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)

	TaskTime(nNextHour, nNextMinute);

	-- thi’t tr› kho∂ng c∏ch thÍi gian, Æ¨n vﬁ vi phÛt

	TaskInterval(nInterval) --nInterval phÛt mÈt l«n

	-- thi’t tr› g©y ra sË l«n, 0 bi”u thﬁ v´ hπn sË l«n

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


