	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "SÊm quan ho¹t ®éng mçi ngµy b¶ng xÕp h¹ng ")

	TaskTime(0, 0);

	-- thiÕt trÝ kho¶ng c¸ch thêi gian, ®¬n vÞ vi phót

	TaskInterval(1440) --30 phót mét lÇn

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn

	TaskCountLimit(0)

	OutputMsg( "                            Bang xep hang - Vuot Ai - moi ngay  ");

	end

	function TaskContent()

	name, value = Ladder_GetLadderInfo(10235, 1);

	value = value * (-1);

	if (name ~= " ") then

	-- local szTime	= format( "%s phót %s miÓu", floor(value/60), floor(mod(value, 60)));

	local szMsg 	= format("<color=red>Ngµy <color=green>míi <color=blue>®· <color=yellow>®Õn!");

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 3)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	Ladder_ClearLadder(10235);

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


