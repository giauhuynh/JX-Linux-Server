Include("\\RelaySetting\\Task\\boss_mini_old_call.lua")

function TaskShedule()
	TaskName( "BILCALLBOSS_MINI_12H00" );
	TaskInterval( 1440 );
	TaskTime( 22, 15 );
	TaskCountLimit( 0 );
end

function TaskContent()
	BossHKMini:Relay_Call()
	OutputMsg( " =========================Boss Tieu Hoang Kim 22 : 15 Xuat hien")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
















