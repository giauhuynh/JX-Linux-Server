	Include( "\\script\\gb_taskfuncs.lua")

	GN_EVENTNAME = "Ho�ng chi ch��ng ho�t ��ng "

	GN_HUANG_EVENTID = 1

	GN_HUANG_SWITH = 2

	GN_HUANG_DATE = 3

	TB_HUANGZHIZHANG_EVENT = {

	"T�ng kim chi�n tr��ng",

	"Ng��i mang tin t�c nhi�m v� ",

	"Khi�u chi�n th�i gian",

	"D� t�u nhi�m v�",

	-- "��ng b�n n�i dung v� k�ch nhi�m v� tu luy�n thi�n, ��ng b�n tu luy�n nhi�m v�",

	}

	TB_HUANGZHIZHANG_RATE = {

	50,

	0,

	25,

	25,

	}

	function GetNextTime()

	local hour = tonumber(date( "%H "));

	if (hour == 23) then

	hour = 0;

	else

	hour = hour + 1;

	end

	return hour, 25;

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName(GN_EVENTNAME)

	h, m = GetNextTime()

	TaskTime(h, m);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(30)

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	-- m�i l�n m� l�i thanh tr� ho�t ��ng n�i dung

	if (gb_GetTask(GN_EVENTNAME, GN_HUANG_EVENTID) == 0) then
	
	gb_SetTask(GN_EVENTNAME, GN_HUANG_DATE, 0)

	end

	gb_SetTask(GN_EVENTNAME, GN_HUANG_SWITH, 0)

	OutputMsg( "Hoang chi chuong")

	end

	function TaskContent()

	local nDate = tonumber(date( "%m%d "))

	local nHour = tonumber(date( "%H%M "))

	-- th�i gian ho�t ��ng � 21: 00~23: 00

	--00:00 th�ng tri ��m �� ho�t ��ng n�i dung

	local event_date = gb_GetTask(GN_EVENTNAME, GN_HUANG_DATE)

	-- m�i ng�y l�n ��u ti�n th�i gian ho�t ��ng n�i, ng�u nhi�n ch�n ho�t ��ng

	if (event_date == 0 or event_date ~= nDate) then

	local nrand = random(1, 100);

	local nsum = 0;

	local event_event = 1;

	for i = 1, getn(TB_HUANGZHIZHANG_RATE) do

	nsum = nsum + TB_HUANGZHIZHANG_RATE[i];

	if (nsum >= nrand) then

	event_event = i;

	break

	end;

	end;

	gb_SetTask(GN_EVENTNAME, GN_HUANG_EVENTID, event_event)

	gb_SetTask(GN_EVENTNAME, GN_HUANG_DATE, nDate)

	OutputMsg(date().."Huy ho�ng d�, huy ho�ng d� ho�t ��ng vi ".. TB_HUANGZHIZHANG_EVENT[event_event])

	local szMsg = format( "[ huy ho�ng d� ho�t ��ng ]: ��m nay, ho�t ��ng <color=yellow>%s<color> g�p ��i th��ng cho vi %s, l�c b�t ��u �ang l�c 19h45, c�c v� ��i hi�p kho�i �i tham gia.",

	"Ho�ng chi ch��ng",

	TB_HUANGZHIZHANG_EVENT[event_event]);

	GlobalExecute(format( "dw AddLocalNews([[%s]])", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	return

	end

	-- phi th�i gian ho�t ��ng ��ng ch�t m�

	if (nHour < 1945 or nHour >= 2145) then

	if (gb_GetTask(GN_EVENTNAME, GN_HUANG_SWITH) ~= 0) then

	gb_SetTask(GN_EVENTNAME, GN_HUANG_EVENTID, 0)

	gb_SetTask(GN_EVENTNAME, GN_HUANG_SWITH, 0)

	local szMsg = format( "��m nay, <color=yellow><color> g�p ��i th��ng cho ho�t ��ng d� k�t th�c.", "Ho�ng chi ch��ng ");

	GlobalExecute(format( "dw AddLocalNews([[%s]])", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	return

	end

	-- � 20: 55 th�i gian m� ra ho�t ��ng ch�t m�

	if (nHour >= 1945 and nHour <= 2145 + 3) then

	local event_event = gb_GetTask(GN_EVENTNAME, GN_HUANG_EVENTID)

	gb_SetTask(GN_EVENTNAME, GN_HUANG_SWITH, 1)

	OutputMsg(date().."B�t ��u huy ho�ng d� ho�t ��ng ")


	local szMsg = format( "[ huy ho�ng d� ho�t ��ng ]: Ho�t ��ng <color=yellow>%s<color> �� b�t ��u, ho�t ��ng n�i dung vi %s. ��i gia kho�i �i tham gia.","Ho�ng chi ch��ng",

	TB_HUANGZHIZHANG_EVENT[event_event])

	GlobalExecute(format( "dw AddLocalNews([[%s]])", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	--	GlobalExecute( "dw AddLocalNews([[[ huy ho�ng chi d� ho�t ��ng ]: Ho�ng chi ch��ng ho�t ��ng �ang ti�n h�nh trung, c�c v� ngo�n gia kh� d� � l� quan ch� tu�n tra th��ng cho g�p ��i ho�t ��ng n�i dung, th�nh c�c v� tho� th�ch h��ng th� ��c c� minh ch� t�ng. ]]) ")

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


