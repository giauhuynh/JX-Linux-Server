	Include( "\\script\\event\\zhaojingling\\event.lua")

	function TaskShedule()

	TaskName( "Hu n luy÷n mÈc nh©n ")

	local nStartHour = tonumber(date( "%H ")) + 1

	if nStartHour < 12 then

	nStartHour = 12

	end

	if nStartHour == 24 then

	nStartHour = 0

	end

	--15 phÛt mÈt l«n

	TaskInterval(15) -- træc th›

	-- thi’t tr› g©y ra thÍi gian

	TaskTime(nStartHour, 0)

	OutputMsg( "=== Hoa Moc Nhan === ")

	-- ch p hµnh v´ hπn th¯

	TaskCountLimit(0)

	------------ træc th› dÔng

	--tbJingLing:Save(tbJingLing. nSortKey, 0, 0)

	----------------

	tbJingLing:GetNextSortTime()

	tbJingLing:SortPaiMing()

	end

	function TaskContent()

	local nCurHour = tonumber(date( "%H "))

	tbJingLing:SortPaiMing()

	if nCurHour >= 0 and nCurHour < 12 then

	return

	end

	OutputMsg( "======= Khoi dong hoat dong tim kiem moc nhan ========= ")

	RemoteExecute( "\\script\\missions\\zhaojingling\\prepare\\preparetimer.lua", "PrepareGame:InitTimer", 0)

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


