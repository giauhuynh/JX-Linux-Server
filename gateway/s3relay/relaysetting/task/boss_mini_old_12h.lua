Include("\\RelaySetting\\Task\\boss_mini_old_call.lua")

function TaskShedule()
	TaskName( "BILCALLBOSS_MINI_12H00" );
	TaskInterval( 1440 );
	TaskTime( 12, 15 );
	TaskCountLimit( 0 );
	
	OutputMsg( ".")
	OutputMsg( "                               Boss tieu Hoang Kim phien ban cu" );
	OutputMsg( "                          xuat hien vao 12h, 20h15, 22h15 hang ngay" );
	OutputMsg( " ========================================================================================" );
	OutputMsg( "" );
end

function TaskContent()
	BossHKMini:Relay_Call()
	OutputMsg( " =========================Boss Tieu Hoang Kim 12 : 00 Xuat hien")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
















