	Include( "\\script\\event\\zhaojingling\\event.lua")

	function TaskShedule()

	TaskName( "Hu�n luy�n m�c nh�n ")

	local nStartHour = tonumber(date( "%H ")) + 1

	if nStartHour < 12 then

	nStartHour = 12

	end

	if nStartHour == 24 then

	nStartHour = 0

	end

	--15 ph�t m�t l�n

	TaskInterval(15) -- tr�c th�

	-- thi�t tr� g�y ra th�i gian

	TaskTime(nStartHour, 0)

	OutputMsg( "=== Hoa Moc Nhan === ")

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0)

	------------ tr�c th� d�ng

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


