	-- thêi gian khiªu chiÕn bØ t¸i ®óng giê khÝ

	INTERVAL_TIME = 60	-- mçi tiÕng ®ång hå g©y ra

	-- INTERVAL_TIME = 10	-- mçi tiÕng ®ång hå g©y ra

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

	TaskName( " 'Khiªu chiÕn thêi gian 'BØ t¸i ");

	-- 60 phót mét lÇn

	TaskInterval(INTERVAL_TIME);

	-- thiÕt trÝ g©y ra thêi gian

	local h, m = GetNextTime();

	TaskTime(h, m);

	OutputMsg(format( " Nhiem vu khieu chien thoi gian %d:%d. . .", h, m));

	-- chÊp hµnh v« h¹n thø

	TaskCountLimit(0);

	-- OutputMsg( "Khëi ®éng tù ®éng ch¹y th«ng b¸o. . .");

	end

	function TaskContent()

	OutputMsg( " Khieu chien thoi gian bat dau bao danh ");

	-- g©y ra GameServer th­îng ch©n cña b¶n

	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");

	szMsg = " Khiªu chiÕn th¸ch thøc thêi gian ®· b¾t ®Çu, ®éi tr­ëng nhanh ®i ®Õn NhiÕp ThÝ TrÇn b¸o danh. Thêi gian b¸o danh lµ 10 phót."

	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)",szMsg))

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


