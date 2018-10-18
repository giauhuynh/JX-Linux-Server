Include("\\script\\lib\\remoteexc.lua")

function TaskShedule()
	TaskName( "BILCALLCauCa" );
	TaskInterval( 1440 );
	TaskTime( 19, 00 );
	TaskCountLimit( 0 );
	
	OutputMsg( "                                      Hoat Dong Cau Ca" );
	OutputMsg( "                          Bat dau vao 17h30, 22h20 hang ngay" );
	OutputMsg( " ========================================================================================" );
	OutputMsg( "" );
end

function TaskContent()
	local TimeForPreparing = 10*60
	
	RemoteExc("\\script\\_missions\\cau_ca\\open_mission.lua", "m_CauCa:OpenMission", {TimeForPreparing});
	OutputMsg( " =========================> Cau Ca 19h : 00 Bat dau")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
















