
bilHour = 0

function TaskShedule()
	TaskName( "bil Th�ng b�o th�i gian kh�i ��ng Phong K�" );
	TaskInterval( 1440 );
	TaskTime( bilHour, 00 );
	TaskCountLimit( 0 );
	-- OutputMsg( "                              Tin Su - Phong Ky Toa Do ( "..bilHour.." : 00 ) " );
	OutputMsg( " ========================================================================================" );
end

function TaskContent()
	OutputMsg( " =========================Tin Su - Phong Ky Toa Do ( "..bilHour.." : 00 ) khoi dong --->")
	zMsg2SubWorld  = "<color=yellow>Phong K� t�a ��<color> <color=0xa9ffe0>�� ch�nh th�c m� c�a, c�c nh�n s� giang h� mu�n ��ng g�p s�c l�c cho tri�u ��nh th� h�y mau mau tham gia."
	zAddLocalCountNews = "Phong K� t�a �� �� m� c�a c�c nh�n s� nhanh ch�n tham gia, ��ng g�p s�c l�c cho tri�u ��nh."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end