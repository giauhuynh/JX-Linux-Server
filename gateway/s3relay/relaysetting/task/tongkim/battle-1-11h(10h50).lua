	-- T�ng kim

	function TaskShedule()

	TaskName( "T��ng D��ng chi�n d�ch (t�ng kim)" );

	TaskInterval( 1440 );

	TaskTime( 10, 50 );

	TaskCountLimit( 0 );

	-- OutputMsg( "                           Chien truong Tong - Kim - 11h (10 : 50) " );

	end

function TaskContent()
	Battle_StartNewRound( 1, 1 );	-- GMָ������ͼ���ս��
	Battle_StartNewRound( 1, 2 );	-- GMָ������м���ս��
	Battle_StartNewRound( 1, 3 );	-- GMָ������߼���ս��
	zMsg2SubWorld  = "<color=yellow>Chi�n tr��ng T�ng - Kim<color> <color=green>Cao C�p<color> �� ��n gi� b�o danh, Th�i gian b�o danh l� <color=pink>10<color> ph�t."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


