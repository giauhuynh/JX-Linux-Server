Include("\\RelaySetting\\Task\\bilcallboss_incityhead.lua")
Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	TaskName( "BILCALLBOSS16H00" );
	TaskInterval( 1440 );
	TaskTime( 20, 15 );
	TaskCountLimit( 0 );
end

function TaskContent()
	bilCallBossInCity()
	OutputMsg( " =========================Boss Hoang Kim 16 : 00 Xuat hien")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end