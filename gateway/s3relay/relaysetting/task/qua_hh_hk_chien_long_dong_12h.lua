Include("\\script\\lib\\remoteexc.lua")

function TaskShedule()
	TaskName( "BILCALLChienLongDong" );
	TaskInterval( 1440 );
	TaskTime( 17, 15 );
	TaskCountLimit( 0 );
	
	OutputMsg( "                         Qua Huy Hoang, Hoang Kim - Chien Long Dong" );
	OutputMsg( "                               Bat dau vao 12h, 20h hang ngay" );
	OutputMsg( " ========================================================================================" );
	OutputMsg( "" );
end

function TaskContent()
	local TimeForPreparing = 30*60
	
	RemoteExc("\\script\\_missions\\chien_long_dong\\open_mission.lua", "m_ChienLongDong:OpenMission", {TimeForPreparing});
	OutputMsg( " =========================> Qua HH, HK - Chien Long Dong 12 : 00 Bat dau")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
















