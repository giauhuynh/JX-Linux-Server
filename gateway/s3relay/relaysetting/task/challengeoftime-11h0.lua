
	INTERVAL_TIME = 1440	

	function TaskShedule()

	TaskName( " 'Khi�u chi�n th�i gian 'B� t�i ");

	TaskInterval(INTERVAL_TIME);

	TaskTime(10, 50);

	-- OutputMsg( "                      Nhiem vu khieu chien thoi gian (Vuot ai) 10 : 50");

	TaskCountLimit(0);

	end

	function TaskContent()

	OutputMsg( " =========================Khieu chien thoi gian (Vuot ai) bat dau bao danh  ---> ");

	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");

	szMsg = "Nhi�m v� th�ch th�c th�i gian �� b�t ��u, ��i tr��ng nhanh �i ��n Nhi�p Th� Tr�n b�o danh. Th�i gian b�o danh l� 10 ph�t."
	
	zMsg2SubWorld = "<color=0xa9ffe0>Nhi�m v� <color=yellow>th�ch th�c th�i gian     (V��t �i)<color> �� b�t ��u, ��i tr��ng nhanh �i ��n <color=pink>Nhi�p Th� Tr�n<color> b�o danh. Th�i gian b�o danh l� <color=pink>10<color> ph�t."

	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)",szMsg))
	GlobalExecute(format("dw Msg2SubWorld([[%s]], 2)",zMsg2SubWorld))

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


