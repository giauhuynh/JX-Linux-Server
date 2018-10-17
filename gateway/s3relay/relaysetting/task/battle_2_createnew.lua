	-- n­íc chiÕn tèng kim

	-- DongZhi

	Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

	function TaskShedule()

	TaskName( "Tèng kim quèc chiÕn tæng ®iÒu ®éng" );	-- nhiÖm vô tªn gäi

	TaskTime( 20, 00 );				-- khëi ®éng thêi gian

	TaskInterval(1440);				-- kho¶ng c¸ch thêi gian: Mét ngµy ®ªm

	TaskCountLimit(0);				-- v« sè lÇn h¹n chÕ

	OutputMsg( "**************** Chien truong Tong Kim  **************** ")

	end

	function TaskContent()

	local nWeekday = tonumber(date( "%w "));

	if nWeekday == 1 then

	OutputMsg( "**************** Create GUOZHAN New Battle **************** ")

	battle_StartNewIssue(2, 3);

	OutputMsg( "*********************************************************** ")

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


