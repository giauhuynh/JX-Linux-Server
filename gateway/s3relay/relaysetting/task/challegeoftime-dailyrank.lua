	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "S�m quan ho�t ��ng m�i ng�y b�ng x�p h�ng ")

	TaskTime(0, 0);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(1440) --30 ph�t m�t l�n

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	OutputMsg( "                            Bang xep hang - Vuot Ai - moi ngay  ");

	end

	function TaskContent()

	name, value = Ladder_GetLadderInfo(10235, 1);

	value = value * (-1);

	if (name ~= " ") then

	-- local szTime	= format( "%s ph�t %s mi�u", floor(value/60), floor(mod(value, 60)));

	local szMsg 	= format("<color=red>Ng�y <color=green>m�i <color=blue>�� <color=yellow>��n!");

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 3)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	Ladder_ClearLadder(10235);

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


