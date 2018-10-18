Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
	{340,3,100,"\\settings\\maps\\great_night\\ƒ™∏ﬂøﬂ.txt","Mπc Cao QuÀt"},			

	{225,2,30,"\\settings\\maps\\great_night\\…≥ƒÆ…Ω∂¥1.txt","Sa mπc s¨n ÆÈng 1"},		
	{226,2,30,"\\settings\\maps\\great_night\\…≥ƒÆ…Ω∂¥2.txt","Sa mπc s¨n ÆÈng 2"},		
	
	-- {182,1,25,"\\settings\\maps\\great_night\\ƒı∏˙∂¥∑‘π¨.txt","Nghi÷t long ÆÈng"},
	{182,1,25,"\\settings\\maps\\great_night\\ƒı¡˙∂¥√‘π¨.txt","Nghi÷t long ÆÈng"},
	{167,1,25,"\\settings\\maps\\great_night\\µ„≤‘…Ω.txt","ßi”m Th≠¨ng s¨n"},			

	{341, 4, 1, "\\settings\\maps\\great_night\\ƒÆ±±≤›‘≠.txt","Mπc Bæc th∂o nguy™n"},		
	{340, 4, 1, "\\settings\\maps\\great_night\\quahoangkimmcq.txt","Mπc Cao QuÀt"},		
};

	tblantern_area = {2, 21, 167, 193}

	function TaskShedule()
		TaskName( "Huy hoµng qu?")
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
			gb_SetTask( "Hoa Æ®ng hoπt ÆÈng", 1, 0)
			gb_SetTask( "Huy hoµng qu?", 12, 0);
			return
		end;
			OutputMsg( " =========================Qua Huy Hoang - Hoang Kim bat dau xuat hien --->")
		local nNowTime = tonumber(date( "%H%M "))
		if nNowTime >= 1200 and nNowTime < 1205 then	
			gb_SetTask( "Huy hoµng qu?", 12, 0);
			
		szMsg2SubWorld1 = "<color=yellow>Qu∂ Huy Hoµng (S¨ c p)<color> Æ∑ xu t hi÷n tπi <color=green>Nghi÷t  Long ßÈng<color> t‰a ÆÈ <color=blue>(235, 208)<color>"
		szMsg2SubWorld2 = "<color=yellow>Qu∂ Huy Hoµng (S¨ c p)<color> Æ∑ xu t hi÷n tπi <color=green>ßi”m Th≠¨ng S¨n<color> t‰a ÆÈ <color=blue>(189, 155)<color>"
		szMsg2SubWorld3 = "<color=yellow>Qu∂ Huy Hoµng (Trung c p)<color> Æ∑ xu t hi÷n tπi <color=green>Sa mπc s¨n ÆÈng 1<color> t‰a ÆÈ <color=blue>(192, 204), (174, 204)<color>"
		szMsg2SubWorld4 = "<color=yellow>Qu∂ Huy Hoµng (Trung c p)<color> Æ∑ xu t hi÷n tπi <color=green>Sa mπc s¨n ÆÈng 2<color> t‰a ÆÈ <color=blue>(202, 201), (228, 203)<color>"
		szMsg2SubWorld5 = "<color=yellow>Qu∂ Huy Hoµng (Cao c p)<color> Æ∑ xu t hi÷n tπi <color=green>Mπc Cao QuÀt<color> t‰a ÆÈ <color=blue>(228, 175)<color>"
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
				szMsg = "Qu∂ Huy Hoµng"
			elseif greatseed_configtab[i][2] == 4 then
				szMsg = "Qu∂ Huy Hoµng"
			elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
				szMsg = "Qu∂ Huy Hoµng"
			elseif greatseed_configtab[i][2] == 4 then
				szMsg = "Qu∂ Huy Hoµng"
			end;
			szMsg = format( "Hi÷n nay %s Æ∑ xu t hi÷n Î %s, 5 phÛt sau qu∂ ch›n. C∏c Æπi hi÷p chu»n bﬁ h∏i qu∂",
			szMsg,
			greatseed_configtab[i][5]);
			GlobalExecute(format( "dw AddLocalNews([[%s]])",szMsg));
		end;
	end

	function CreateLantern(nDate)
	if (gb_GetTask( "Hoa Æ®ng hoπt ÆÈng 2 ") == 0 or gb_GetTask( "Hoa Æ®ng hoπt ÆÈng 2 ") ~= nDate) then
	lantern_area = tblantern_area[ random( getn(tblantern_area) ) ]
	gb_SetTask( "Hoa Æ®ng hoπt ÆÈng 1", lantern_area)
	gb_SetTask( "Hoa Æ®ng hoπt ÆÈng 2", nDate)
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
	gb_SetTask( "Huy hoµng qu?", 1, goldcity);
	local RowIndex = random(2, 41)
	gb_SetTask( "Huy hoµng qu?", 2, RowIndex);
	OutputMsg( "Huy hoµng thµnh th?".. goldcity);
	OutputMsg( "goldenseedmap(); ".. RowIndex);
	return goldcity;
	end;

	function GameSvrConnected(dwGameSvrIP)
	end

	function GameSvrReady(dwGameSvrIP)
	end


