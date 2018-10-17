	-- bang héi gi÷ g×n kÞch b¶n gèc

	--by luobaohang 06/03/10

	IncludeLib("TONG")

	-- bang héi gi÷ g×n ®óng giê khÝ

	INTERVAL_TIME = 999999

	function TaskShedule()

	TaskName( "Cò bang héi dÜ khëi ®éng ");

	-- thiÕt trÝ g©y ra thêi gian (tøc thêi chÊp hµnh)

	-- chÊp hµnh 1 thø

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


