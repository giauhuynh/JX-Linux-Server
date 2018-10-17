Include("\\RelaySetting\\Task\\bilcallboss_incityhead.lua")
Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	TaskName( "BILCALLBOSS11H00" );
	TaskInterval( 1440 );
	TaskTime( 22, 15 );
	TaskCountLimit( 0 );
	OutputMsg( "." );
	OutputMsg( " ========================================================================================" );
	OutputMsg( "                   Boss Hoang Kim xuat hien vao 11h, 16h, 21h hang ngay" );
end

function TaskContent()
	bilCallBossInCity()
	OutputMsg( " =========================Boss Hoang Kim 11 : 00 Xuat hien")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end