	-- n��c chi�n t�ng kim

	-- DongZhi

	Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

	function TaskShedule()

	TaskName( "T�ng kim qu�c chi�n t�ng �i�u ��ng" );	-- nhi�m v� t�n g�i

	TaskTime( 20, 00 );				-- kh�i ��ng th�i gian

	TaskInterval(1440);				-- kho�ng c�ch th�i gian: M�t ng�y ��m

	TaskCountLimit(0);				-- v� s� l�n h�n ch�

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


