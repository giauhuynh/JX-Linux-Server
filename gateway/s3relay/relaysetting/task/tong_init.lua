	-- bang h�i gi� g�n k�ch b�n g�c

	--by luobaohang 06/03/10

	IncludeLib("TONG")

	-- bang h�i gi� g�n ��ng gi� kh�

	INTERVAL_TIME = 999999

	function TaskShedule()

	TaskName( "C� bang h�i d� kh�i ��ng ");

	-- thi�t tr� g�y ra th�i gian (t�c th�i ch�p h�nh)

	-- ch�p h�nh 1 th�

	TaskCountLimit(1);

	end

	function TaskContent()

	local nTongID = TONG_GetFirstTong()

	OutputMsg( "Khoi dong bang hoi cu ... ... ... . . . . .")

	while (nTongID ~= 0)do

	if (TONG_GetDay(nTongID) <= 0)then

	OutputMsg( "Dang khoi dong bang hoi ".. TONG_GetName(nTongID))

	TONG_ApplyInit(nTongID)

	end

	nTongID = TONG_GetNextTong(nTongID)

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


