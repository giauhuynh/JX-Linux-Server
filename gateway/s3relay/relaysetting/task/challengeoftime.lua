	-- th�i gian khi�u chi�n b� t�i ��ng gi� kh�

	INTERVAL_TIME = 60	-- m�i ti�ng ��ng h� g�y ra

	-- INTERVAL_TIME = 10	-- m�i ti�ng ��ng h� g�y ra

	function GetNextTime()

	local hour = tonumber(date("%H"));

	if (hour == 23) then

	hour = 0;

	else

	hour = hour + 1;

	end

	return hour, 0;

	end

	function TaskShedule()

	TaskName( " 'Khi�u chi�n th�i gian 'B� t�i ");

	-- 60 ph�t m�t l�n

	TaskInterval(INTERVAL_TIME);

	-- thi�t tr� g�y ra th�i gian

	local h, m = GetNextTime();

	TaskTime(h, m);

	OutputMsg(format( " Nhiem vu khieu chien thoi gian %d:%d. . .", h, m));

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0);

	-- OutputMsg( "Kh�i ��ng t� ��ng ch�y th�ng b�o. . .");

	end

	function TaskContent()

	OutputMsg( " Khieu chien thoi gian bat dau bao danh ");

	-- g�y ra GameServer th��ng ch�n c�a b�n

	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");

	szMsg = " Khi�u chi�n th�ch th�c th�i gian �� b�t ��u, ��i tr��ng nhanh �i ��n Nhi�p Th� Tr�n b�o danh. Th�i gian b�o danh l� 10 ph�t."

	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)",szMsg))

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


