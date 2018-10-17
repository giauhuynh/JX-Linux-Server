
	INTERVAL_TIME = 1440	

	function TaskShedule()

	TaskName( " 'Khiªu chiÕn thêi gian 'BØ t¸i ");

	TaskInterval(INTERVAL_TIME);

	TaskTime(14, 50);

	-- OutputMsg( "                      Nhiem vu khieu chien thoi gian (Vuot ai) 14 : 50");

	TaskCountLimit(0);

	end

	function TaskContent()

	OutputMsg( " =========================Khieu chien thoi gian (Vuot ai) bat dau bao danh  ---> ");

	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");

	szMsg = "NhiÖm vô th¸ch thøc thêi gian ®· b¾t ®Çu, ®éi tr­ëng nhanh ®i ®Õn NhiÕp ThÝ TrÇn b¸o danh. Thêi gian b¸o danh lµ 10 phót."
	
	zMsg2SubWorld = "<color=0xa9ffe0>NhiÖm vô <color=yellow>th¸ch thøc thêi gian     (V­ît ¶i)<color> ®· b¾t ®Çu, ®éi tr­ëng nhanh ®i ®Õn <color=pink>NhiÕp ThÝ TrÇn<color> b¸o danh. Thêi gian b¸o danh lµ <color=pink>10<color> phót."

	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)",szMsg))
	GlobalExecute(format("dw Msg2SubWorld([[%s]], 2)",zMsg2SubWorld))

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


