
	Include( "\\script\\gb_modulefuncs.lua")
	Include( "\\script\\leaguematch\\timetable.lua")
	Include( "\\script\\leaguematch\\head.lua")

function TaskShedule()
	TaskName( "YANDIBAOZANG ");
	TaskInterval(1440);
	TaskTime(10, 55);	
	TaskCountLimit(0);
	-- OutputMsg( "                                  Hoat dong Bao Tang Viem De" );
	-- OutputMsg( "                   Cac gio bao danh hoat dong: tu 6h55, 10h55,... hang ngay" );
	-- OutputMsg( "                         Thoi gian bao danh tiep theo: "..h.." gio "..m.." phut" );
	-- OutputMsg( " ========================================================================================" );
end

function TaskContent()
	OutputMsg( "========> Hoat Dong Viem De ".. tonumber(date( "%H "))..":55 Khoi dong");
	GlobalExecute( "dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger() ");
	szMsg = "Viªm ®Õ b¶o tµng ®· b¾t ®Çu b¸o danh, c¸c nh©n sü nhanh ch©n tíi BiÖn Kinh gÆp B×nh b×nh c« n­¬ng ®Ó ®¨ng ký b¸o danh, thêi gian b¸o danh lµ 5 phót!."
	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))
	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0><color=yellow>Viªm ®Õ b¶o tµng<color> ®· b¾t ®Çu b¸o danh, c¸c nh©n sü nhanh ch©n tíi <color=earth>BiÖn Kinh<color> gÆp <color=Orange> B×nh b×nh c« n­¬ng<color> ®Ó ®¨ng ký b¸o danh, thêi gian b¸o danh lµ <color=green>5 phót<color>!."))
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


