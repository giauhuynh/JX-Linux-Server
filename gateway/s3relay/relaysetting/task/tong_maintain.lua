	-- bang h�i gi� g�n k�ch b�n g�c

	--by luobaohang 06/03/10

	IncludeLib("TONG")

	-- bang h�i gi� g�n ��ng gi� kh�

	INTERVAL_TIME = 1440	-- m�i 24 ti�ng ��ng h� g�y ra 7 th�

	function TaskShedule()

	TaskName( "M�i ng�y duy tu ");

	-- 1440 ph�t m�t l�n

	TaskInterval(INTERVAL_TIME);

	-- thi�t tr� g�y ra th�i gian (0 �i�m 0 ph�n)

	TaskTime(0, 0);

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0);

	end

	function TaskContent()

	local nTongID = TONG_GetFirstTong()

	OutputMsg( "Khoi dong bang hoi duy tu... ... ... . . . . .")

	while (nTongID ~= 0)do

	OutputMsg( "Dang tien hanh duy tu: ".. TONG_GetName(nTongID))

	TONG_ApplyMaintain(nTongID)

	nTongID = TONG_GetNextTong(nTongID)

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


