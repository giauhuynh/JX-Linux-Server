--Script by NK
----------TOng Kim Chien Quoc va Tong Kim Thuong
function TaskShedule()
	TaskName( "T­¬ng D­¬ng (Tèng Kim) 20:50" );
	TaskInterval( 1440 );
	TaskTime( 20, 50 );
	TaskCountLimit( 0 );
	OutputMsg( "CHIEN TRUONG TONG KIM 20:50 BAT DAU..." );
end

function TaskContent()	
	local nWeekday = tonumber(date("%w"));
	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then
		return							-----khong lam gi de battel 2 chay
	else
		Battle_StartNewRound( 1, 3 );	-- tong kim 3
	zMsg2SubWorld  = "<color=yellow>ChiÕn tr­êng Tèng Kim<color> <color=green>Cao CÊp §iÓm Th­ëng X3 vµ Th­ëng Top 1 - 20<color=yellow> ®· ®Õn giê b¸o danh, xin míi c¸c anh hïng nghÜa sÜ mau mau b¸o danh ,Thêi gian b¸o danh lµ <color=pink>10<color> phót."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end	
end
function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


