
	function TaskShedule()

	-- thi’t tr› ph≠¨ng ∏n t™n g‰i

	TaskName( "Hoa S¨n Æπi chi’n ")

	local nStartHour = tonumber(date("%H")) + 1;

	if (nStartHour >= 24) then

	nStartHour = 0;

	end;

	TaskTime(nStartHour, 0);

	-- thi’t tr› kho∂ng c∏ch thÍi gian, Æ¨n vﬁ vi phÛt

	TaskInterval(60) --15 mÈt l«n

	-- thi’t tr› g©y ra sË l«n, 0 bi”u thﬁ v´ hπn sË l«n

	TaskCountLimit(0)

	OutputMsg(" ================= Hoa Son Dai Chien ================== ");

	end

	function TaskContent()

	local nHour = tonumber(date("%H"))

	local nWeek	= tonumber(date("%w"))

	local nDate	= tonumber(date("%y%m%d"))

	local bIsStart = 0

	if nHour == 10 or nHour == 22 then

	bIsStart = 1

	elseif (nHour == 15 ) and (nWeek == 6 or nWeek == 0) then

	bIsStart = 1

	end

	if bIsStart == 1 then

	GlobalExecute("dwf \\script\\missions\\huashanqunzhan\\missionctrl.lua startHuaShanQunZhanMission()")

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", "Hoa S¨n l∑o Æi Æ∑ bæt Æ«u Hoa S¨n Æπi chi’n b∏o danh."))

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


