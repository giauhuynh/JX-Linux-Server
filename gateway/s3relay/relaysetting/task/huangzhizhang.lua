	Include( "\\script\\gb_taskfuncs.lua")

	GN_EVENTNAME = "Hoµng chi ch­¬ng ho¹t ®éng "

	GN_HUANG_EVENTID = 1

	GN_HUANG_SWITH = 2

	GN_HUANG_DATE = 3

	TB_HUANGZHIZHANG_EVENT = {

	"Tèng kim chiÕn tr­êng",

	"Ng­êi mang tin tøc nhiÖm vô ",

	"Khiªu chiÕn thêi gian",

	"D· tÈu nhiÖm vô",

	-- "§ång b¹n néi dung vë kÞch nhiÖm vô tu luyÖn thiªn, ®ång b¹n tu luyÖn nhiÖm vô",

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

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName(GN_EVENTNAME)

	h, m = GetNextTime()

	TaskTime(h, m);

	-- thiÕt trÝ kho¶ng c¸ch thêi gian, ®¬n vÞ vi phót

	TaskInterval(30)

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn

	TaskCountLimit(0)

	-- mçi lÇn më l¹i thanh trõ ho¹t ®éng néi dung

	if (gb_GetTask(GN_EVENTNAME, GN_HUANG_EVENTID) == 0) then
	
	gb_SetTask(GN_EVENTNAME, GN_HUANG_DATE, 0)

	end

	gb_SetTask(GN_EVENTNAME, GN_HUANG_SWITH, 0)

	OutputMsg( "Hoang chi chuong")

	end

	function TaskContent()

	local nDate = tonumber(date( "%m%d "))

	local nHour = tonumber(date( "%H%M "))

	-- thêi gian ho¹t ®éng ë 21: 00~23: 00

	--00:00 th«ng tri ®ªm ®ã ho¹t ®éng néi dung

	local event_date = gb_GetTask(GN_EVENTNAME, GN_HUANG_DATE)

	-- mçi ngµy lÇn ®Çu tiªn thêi gian ho¹t ®éng néi, ngÉu nhiªn chän ho¹t ®éng

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

	OutputMsg(date().."Huy hoµng d¹, huy hoµng d¹ ho¹t ®éng vi ".. TB_HUANGZHIZHANG_EVENT[event_event])

	local szMsg = format( "[ huy hoµng d¹ ho¹t ®éng ]: §ªm nay, ho¹t ®éng <color=yellow>%s<color> gÊp ®«i th­ëng cho vi %s, lóc b¾t ®Çu ®ang lóc 19h45, c¸c vÞ ®¹i hiÖp kho¸i ®i tham gia.",

	"Hoµng chi ch­¬ng",

	TB_HUANGZHIZHANG_EVENT[event_event]);

	GlobalExecute(format( "dw AddLocalNews([[%s]])", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	return

	end

	-- phi thêi gian ho¹t ®éng ®ãng chèt më

	if (nHour < 1945 or nHour >= 2145) then

	if (gb_GetTask(GN_EVENTNAME, GN_HUANG_SWITH) ~= 0) then

	gb_SetTask(GN_EVENTNAME, GN_HUANG_EVENTID, 0)

	gb_SetTask(GN_EVENTNAME, GN_HUANG_SWITH, 0)

	local szMsg = format( "§ªm nay, <color=yellow><color> gÊp ®«i th­ëng cho ho¹t ®éng dÜ kÕt thóc.", "Hoµng chi ch­¬ng ");

	GlobalExecute(format( "dw AddLocalNews([[%s]])", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	return

	end

	-- ë 20: 55 thêi gian më ra ho¹t ®éng chèt më

	if (nHour >= 1945 and nHour <= 2145 + 3) then

	local event_event = gb_GetTask(GN_EVENTNAME, GN_HUANG_EVENTID)

	gb_SetTask(GN_EVENTNAME, GN_HUANG_SWITH, 1)

	OutputMsg(date().."B¾t ®Çu huy hoµng d¹ ho¹t ®éng ")


	local szMsg = format( "[ huy hoµng d¹ ho¹t ®éng ]: Ho¹t ®éng <color=yellow>%s<color> ®· b¾t ®Çu, ho¹t ®éng néi dung vi %s. §¹i gia kho¸i ®i tham gia.","Hoµng chi ch­¬ng",

	TB_HUANGZHIZHANG_EVENT[event_event])

	GlobalExecute(format( "dw AddLocalNews([[%s]])", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	--	GlobalExecute( "dw AddLocalNews([[[ huy hoµng chi d¹ ho¹t ®éng ]: Hoµng chi ch­¬ng ho¹t ®éng ®ang tiÕn hµnh trung, c¸c vÞ ngo¹n gia kh¶ dÜ ë lÔ quan chç tuÇn tra th­ëng cho gÊp ®«i ho¹t ®éng néi dung, thØnh c¸c vÞ tho¶ thÝch h­ëng thô ®éc c« minh chñ tÆng. ]]) ")

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


