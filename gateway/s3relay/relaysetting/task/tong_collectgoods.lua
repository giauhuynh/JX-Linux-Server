	-- bang h�i chi�u m� �� t� ho�t ��ng

	Include( "\\script\\gb_taskfuncs.lua");

	function TaskShedule()

	FESTIVAL_SHREWMOUSE = "Thu th�p bang h�i v�t ph�m ";

	TaskName( "Thu th�p bang h�i v�t ph�m ");

	-- 3 m�y gi� m�t l�n, ��n v� ph�t

	TaskInterval(15);

	-- thi�t tr� g�y ra th�i gian

	local nNowHour = tonumber(date( "%H "));

	local nBeginTime = mod(nNowHour + 1, 24);-- c�u ra th�i gian t�i 3 b�i s� + 1 gi�

	TaskTime(nBeginTime, 0);

	OutputMsg(format( "Thu th�p bang h�i v�t ph�m ho�t ��ng b�t ��u t� %d:%d?", nBeginTime, 0));

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0);

	gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 3);

	end

	function TaskContent()

	local nHour = tonumber(date( "%H "));

	local nMin = tonumber(date( "%M "));

	nResult = hourcheck(nHour, nMin);

	if (nResult == 0) then

	return

	end

	OutputMsg( "Thu th�p bang h�i v�t ph�m ho�t ��ng �� b�t ��u b�o danh.");

	GlobalExecute( "dwf \\script\\missions\\tong\\collectgoods\\collg_gmscript.lua collg_opencellectgoods( 827 ) ");	--827 vi bang h�i thu th�p v�t ph�m ho�t ��ng chu�n b� tr�ng mapid

	end

	function hourcheck(nHour, nMin)

	if (mod(nHour, 3) ~= 2) then

	return 0;

	end

	if (nMin > 55) then

	return 0;

	end;

	return 1;

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


