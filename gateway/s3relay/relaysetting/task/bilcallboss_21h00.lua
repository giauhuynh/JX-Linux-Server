Include("\\RelaySetting\\Task\\bilcallboss_incityhead.lua")
Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	TaskName( "BILCALLBOSS11H00" );
	TaskInterval( 1440 );
	-- TaskTime( 21, 00 );
	TaskTime( 20, 30 );
	TaskCountLimit( 0 );
end

function TaskContent()
	bilCallBossInCity()
	OutputMsg( " =========================Boss Hoang Kim 21 : 00 Xuat hien")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end