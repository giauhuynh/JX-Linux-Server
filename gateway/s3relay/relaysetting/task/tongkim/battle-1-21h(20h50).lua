--Script by NK
----------TOng Kim Chien Quoc va Tong Kim Thuong
function TaskShedule()
	TaskName( "T��ng D��ng (T�ng Kim) 20:50" );
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
	zMsg2SubWorld  = "<color=yellow>Chi�n tr��ng T�ng Kim<color> <color=green>Cao C�p �i�m Th��ng X3 v� Th��ng Top 1 - 20<color=yellow> �� ��n gi� b�o danh, xin m�i c�c anh h�ng ngh�a s� mau mau b�o danh ,Th�i gian b�o danh l� <color=pink>10<color> ph�t."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end	
end
function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


