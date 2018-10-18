
bilHour = 20

function TaskShedule()
	TaskName( "bil Th«ng b¸o thêi gian khëi ®éng Phong Kú" );
	TaskInterval( 1440 );
	TaskTime( bilHour, 00 );
	TaskCountLimit( 0 );
	-- OutputMsg( "                              Tin Su - Phong Ky Toa Do ( "..bilHour.." : 00 ) " );
end

function TaskContent()
	OutputMsg( " =========================Tin Su - Phong Ky Toa Do ( "..bilHour.." : 00 ) khoi dong --->")
	zMsg2SubWorld  = "<color=yellow>Phong Kú täa ®é<color> <color=0xa9ffe0>®· chÝnh thøc më cöa, c¸c nh©n sÜ giang hå muèn ®ãng gãp søc lùc cho triÒu ®×nh th× h·y mau mau tham gia."
	zAddLocalCountNews = "Phong Kú täa ®é ®· më cöa c¸c nh©n sÜ nhanh ch©n tham gia, ®ãng gãp søc lùc cho triÒu ®×nh."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end