Include("\\script\\lib\\remoteexc.lua")

function TaskShedule()
	TaskName( "BILCALLCauCa" );
	TaskInterval( 1440 );
	TaskTime(20, 00 );
	TaskCountLimit( 0 );
end

function TaskContent()
	local TimeForPreparing = 10*60
	
	RemoteExc("\\script\\_missions\\cau_ca\\open_mission.lua", "m_CauCa:OpenMission", {TimeForPreparing});
	OutputMsg( " =========================> Cau Ca 20h : 00 Bat dau")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
















