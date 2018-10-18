Include("\\script\\lib\\remoteexc.lua")

function TaskShedule()
	TaskName( "BILCALLTieuBangChien" );
	TaskInterval( 1440 );
	TaskTime( 19, 00 );
	TaskCountLimit( 0 );
	
	OutputMsg( "                         Tieu Bang Chien - Chien truong bang hoi" );
	OutputMsg( "                               Bat dau vao 19h hang ngay" );
	OutputMsg( " ========================================================================================" );
	OutputMsg( "" );
end

function TaskContent()
	local TimeForPreparing = 10
	
	RemoteExc("\\script\\_missions\\tieu_bang_chien\\m_mission.lua", "m_TieuBangChien:m_RemoteStart", {TimeForPreparing});
	OutputMsg( " =========================> Tieu Bang Chien 19 : 00 Bat dau")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
















