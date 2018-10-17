
	Include( "\\script\\gb_modulefuncs.lua")
	Include( "\\script\\leaguematch\\timetable.lua")
	Include( "\\script\\leaguematch\\head.lua")

function TaskShedule()
	TaskName( "YANDIBAOZANG ");
	TaskInterval(1440);
	TaskTime(14, 55);	
	TaskCountLimit(0);
	-- OutputMsg( "                                  Hoat dong Bao Tang Viem De" );
	-- OutputMsg( "                   Cac gio bao danh hoat dong: tu 6h55, 10h55,... hang ngay" );
	-- OutputMsg( "                         Thoi gian bao danh tiep theo: "..h.." gio "..m.." phut" );
	-- OutputMsg( " ========================================================================================" );
end

function TaskContent()
	OutputMsg( "========> Hoat Dong Viem De ".. tonumber(date( "%H "))..":55 Khoi dong");
	GlobalExecute( "dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger() ");
	szMsg = "Vi�m �� b�o t�ng �� b�t ��u b�o danh, c�c nh�n s� nhanh ch�n t�i Bi�n Kinh g�p B�nh b�nh c� n��ng �� ��ng k� b�o danh, th�i gian b�o danh l� 5 ph�t!."
	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))
	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0><color=yellow>Vi�m �� b�o t�ng<color> �� b�t ��u b�o danh, c�c nh�n s� nhanh ch�n t�i <color=earth>Bi�n Kinh<color> g�p <color=Orange> B�nh b�nh c� n��ng<color> �� ��ng k� b�o danh, th�i gian b�o danh l� <color=green>5 ph�t<color>!."))
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


