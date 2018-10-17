

	INTERVAL_TIME = 60
	Include( "\\script\\gb_modulefuncs.lua")
	Include( "\\script\\leaguematch\\timetable.lua")
	Include( "\\script\\leaguematch\\head.lua")
	
function GetNextTime()
	local hour = tonumber(date( "%H "));
	if (hour == 24) then
		hour = 13;
	elseif(hour <= 14) then
		hour = 14
	else
		hour = hour + 1;
	end
	return hour, 25;
end

function TaskShedule()
	TaskName( "YANDIBAOZANG ");
	TaskInterval(INTERVAL_TIME);
	local h, m = GetNextTime();
	TaskTime(h, m);
	TaskCountLimit(0);
	OutputMsg( "                                  Hoat dong Bao Tang Viem De" );
	OutputMsg( "                   Cac gio bao danh hoat dong: tu 14h25 den 23h25 hang ngay" );
	OutputMsg( "                         Thoi gian bao danh tiep theo: "..h.." gio "..m.." phut" );
	OutputMsg( " ========================================================================================" );
end

function TaskContent()
	local TB_YDBZ_DATE_START =
	{
		14,16,18,20,22,
	}
	local nhour = tonumber(date( "%H "))
	for nindex,ndate_hour in TB_YDBZ_DATE_START do
		if (nhour == ndate_hour) then
			OutputMsg( "[YANDIBAOZANG] ".. tonumber(date( "%H "))..":55 StartSignUp...");
			GlobalExecute( "dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger() ");
			szMsg = "Viªm ®Õ b¶o tµng ®· b¾t ®Çu b¸o danh, c¸c nh©n sü nhanh ch©n tíi BiÖn Kinh gÆp B×nh b×nh c« n­¬ng ®Ó ®¨ng ký b¸o danh, thêi gian b¸o danh lµ 5 phót!."
			GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))
			GlobalExecute(format( "dw Msg2SubWorld([[%s]])", "<color=yellow>Viªm ®Õ b¶o tµng<color> ®· b¾t ®Çu b¸o danh, c¸c nh©n sü nhanh ch©n tíi <color=earth>BiÖn Kinh<color> gÆp <color=Orange> B×nh b×nh c« n­¬ng<color> ®Ó ®¨ng ký b¸o danh, thêi gian b¸o danh lµ <color=green>5 phót<color>!."))
			break;
		end
	end
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


