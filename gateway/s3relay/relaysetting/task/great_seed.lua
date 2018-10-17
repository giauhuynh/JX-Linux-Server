Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
	{340,3,100,"\\settings\\maps\\great_night\\Ī�߿�.txt","M�c Cao Qu�t"},			

	{225,2,30,"\\settings\\maps\\great_night\\ɳĮɽ��1.txt","Sa m�c s�n ��ng 1"},		
	{226,2,30,"\\settings\\maps\\great_night\\ɳĮɽ��2.txt","Sa m�c s�n ��ng 2"},		
	
	-- {182,1,25,"\\settings\\maps\\great_night\\�������Թ�.txt","Nghi�t long ��ng"},
	{182,1,25,"\\settings\\maps\\great_night\\�������Թ�.txt","Nghi�t long ��ng"},
	{167,1,25,"\\settings\\maps\\great_night\\���ɽ.txt","�i�m Th��ng s�n"},			

	{341, 4, 1, "\\settings\\maps\\great_night\\Į����ԭ.txt","M�c B�c th�o nguy�n"},		
	{340, 4, 1, "\\settings\\maps\\great_night\\quahoangkimmcq.txt","M�c Cao Qu�t"},		
};

	tblantern_area = {2, 21, 167, 193}

	function TaskShedule()
		TaskName( "Huy ho�ng qu?")
		TaskTime(12, 00);
		TaskInterval(5)
		TaskCountLimit(0)
		OutputMsg( " ========================================================================================");
		OutputMsg( "                             Qua Huy Hoang - Hoang Kim 12 : 00");
	end

	function TaskContent()
		local START_TIME = 1200;
		local END_TIME = 1230;
		if righttime_add() ~= 1 then
			gb_SetTask( "Hoa ��ng ho�t ��ng", 1, 0)
			gb_SetTask( "Huy ho�ng qu?", 12, 0);
			return
		end;
			OutputMsg( " =========================Qua Huy Hoang - Hoang Kim bat dau xuat hien --->")
		local nNowTime = tonumber(date( "%H%M "))
		if nNowTime >= 1200 and nNowTime < 1205 then	
			gb_SetTask( "Huy ho�ng qu?", 12, 0);
			
		szMsg2SubWorld1 = "<color=yellow>Qu� Huy Ho�ng (S� c�p)<color> �� xu�t hi�n t�i <color=green>Nghi�t  Long ��ng<color> t�a �� <color=blue>(235, 208)<color>"
		szMsg2SubWorld2 = "<color=yellow>Qu� Huy Ho�ng (S� c�p)<color> �� xu�t hi�n t�i <color=green>�i�m Th��ng S�n<color> t�a �� <color=blue>(189, 155)<color>"
		szMsg2SubWorld3 = "<color=yellow>Qu� Huy Ho�ng (Trung c�p)<color> �� xu�t hi�n t�i <color=green>Sa m�c s�n ��ng 1<color> t�a �� <color=blue>(192, 204), (174, 204)<color>"
		szMsg2SubWorld4 = "<color=yellow>Qu� Huy Ho�ng (Trung c�p)<color> �� xu�t hi�n t�i <color=green>Sa m�c s�n ��ng 2<color> t�a �� <color=blue>(202, 201), (228, 203)<color>"
		szMsg2SubWorld5 = "<color=yellow>Qu� Huy Ho�ng (Cao c�p)<color> �� xu�t hi�n t�i <color=green>M�c Cao Qu�t<color> t�a �� <color=blue>(228, 175)<color>"
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg2SubWorld1))
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg2SubWorld2))
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg2SubWorld3))
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg2SubWorld4))
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg2SubWorld5))
		
		end
		local nBatch = floor(mod(nNowTime,100)/5) + 1
		local nMapCount = getn(greatseed_configtab);
		for i = 1, nMapCount do
			local strExecute = format( "dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
			GlobalExecute(strExecute);
			local szMsg = " ";
			if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
				szMsg = "Qu� Huy Ho�ng"
			elseif greatseed_configtab[i][2] == 4 then
				szMsg = "Qu� Huy Ho�ng"
			elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
				szMsg = "Qu� Huy Ho�ng"
			elseif greatseed_configtab[i][2] == 4 then
				szMsg = "Qu� Huy Ho�ng"
			end;
			szMsg = format( "Hi�n nay %s �� xu�t hi�n � %s, 5 ph�t sau qu� ch�n. C�c ��i hi�p chu�n b� h�i qu�",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format( "dw AddLocalNews([[%s]])",szMsg));
		end;
	end

	function CreateLantern(nDate)
	if (gb_GetTask( "Hoa ��ng ho�t ��ng 2 ") == 0 or gb_GetTask( "Hoa ��ng ho�t ��ng 2 ") ~= nDate) then
	lantern_area = tblantern_area[ random( getn(tblantern_area) ) ]
	gb_SetTask( "Hoa ��ng ho�t ��ng 1", lantern_area)
	gb_SetTask( "Hoa ��ng ho�t ��ng 2", nDate)
	end
	GlobalExecute( "dw GN_Create_Lanterns() ")
	end

	function righttime_add()
	local nTime = tonumber(date( "%H%M "));
	if (nTime >= 1200 and nTime < 1230) then
	return 1;
	end;
	return 0;
	end

	function goldenseedmap()	
	local goldcity = random(1, 2);
	gb_SetTask( "Huy ho�ng qu?", 1, goldcity);
	local RowIndex = random(2, 41)
	gb_SetTask( "Huy ho�ng qu?", 2, RowIndex);
	OutputMsg( "Huy ho�ng th�nh th?".. goldcity);
	OutputMsg( "goldenseedmap(); ".. RowIndex);
	return goldcity;
	end;

	function GameSvrConnected(dwGameSvrIP)
	end

	function GameSvrReady(dwGameSvrIP)
	end


