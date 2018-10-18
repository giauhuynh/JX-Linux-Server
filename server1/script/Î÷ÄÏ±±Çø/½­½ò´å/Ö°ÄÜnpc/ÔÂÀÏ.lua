-- Ô¢ÀÏ.lua ½á»éÉêÇëÈËNPC£¬NPCËùÔÚµØ´ı¶¨
-- By: Dan_Deng(2003-12-27)
-- Uworld67 == GetTask(67)¡¡¸÷×ÖÎ»ÒâÒå£º1-7(½á»éÈÎÎñ¸÷×´Ì¬)£¬8-15(½á»é´ÎÊı)£¬16-23(´ı¶¨)£¬24(»é·ñ)£¬25-32(´ı¶¨)
-- PS£º2£¨ÊÇ·ñËÍ¹ı½äÖ¸£©
-- GetTaskTemp(5)£º¼Ç¢¼ÊÇ·ñÒÑÌáÇ×£¨»ò±»ÌáÇ×£©
-- GetTaskTemp(6)£º¼Ç¢¼ÌáÇ×ÕßµÄÔÚÏßID
-- GetTaskTemp(7)£º¼Ç¢¼±»ÌáÇ×ÕßµÄÔÚÏßID
-- ½á»éÌõ¼ş£ºÎ´»é, µÈ¼¶>=20, ÄĞ·½×ö¶Ó³¤, ÄĞ·½È¥ÕÒÔ¢ÀÏËµ»°, È»ºóÅ®·½ÔÙÈ¥Ëµ»°£¬½ÓÊÜÇóÇ×
-- By: Dan_Deng(2004-03-02) ÖØĞ´½Å±¾½á¹¹£¬ÒÔ±ãÎ¬»¤
-- Update: Dan_deng(2004-03-02) Ğ­ÒéÀë»é
-- Update: Fanghao_Wu(2004-8-20) ÆßÏ¦ËÍÀñ
-- Update: ×Ó·ÇÓã (2007-10-12) ĞŞ¸ÄĞŞ¸´»é×´Ì¬

Include("\\script\\global\\teamhead.lua");
Include("\\script\\event\\valentine2007\\event.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")

TK_DATE_APPLYDIV = 1779; --µ¥·½Àë»éÈÎÎñºÅ
TOTALSEC_OF_DAY = 60 * 60 * 24; -- 1ÌìµÈÓÚ¶µÉÙÃë£¬ÓÃÓÚ°ÑÌìÊı×ª³ÉÃë
COSTOFSIMGLEDIV = 1000000; --µ¥·½Àë»é»¨·Ñ

function main(sel)
	if (check_married() == 1) then
		SetTask(67, SetBit(GetTask(67), 24, 0));
		Msg2Player("<color=yellow>H«n phèi cña b¹n ®· thay ®æi<color>");
	end;
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	
	if (GetSex() == 0) and (GetTaskTemp(5) == 1) then	
		tbDailog.szTitleMsg = "<#><npc>İ chung nh©n cña ng­¬i vËn ch­a tr¶ lêi ng­¬i,h·y kªu c« Êy nhanh ®Õn ®©y?"
		tbDailog:AddOptEntry("T«i nghÜ lêi cÇu h«n cña t«i qu¸ ®­êng ®ét,ngµi cã thÓ gióp ta hñy bá?", male_cancel)
		tbDailog:AddOptEntry("V©ng,ta sÏ ®i gäi", male_hurry)
	elseif (GetSex() == 1) and (GetTaskTemp(5) == 1) then	
		tbDailog.szTitleMsg = "<#><npc>ThiÕu hiÖp ®ang chê ng­¬i tr¶ lêi,cã ®ång ı cïng h¾n sèng qu¶n ®êi cßn l¹i kh«ng?"
		tbDailog:AddOptEntry("V©ng,ta nguyÖn cïng chµng ®i ®Õn hÕt kiÕp nµy.", female_yes)
		tbDailog:AddOptEntry("Kh«ng,ta v·n ch­a muèn lÊy chång", female_cancel)
	else
		tbDailog.szTitleMsg = "<#><npc>NguyÖt l·o ta bËn nhiÒu viÖc, ng­¬i cã g× may nãi ta nghe."
		tbDailog:AddOptEntry("Ta ®· cã ı trung nh©n,muèn cÇu h«n nµng", Qmarry)
		tbDailog:AddOptEntry("Chóng ta tİnh t×nh kh«ng hîp muèn chia tay.", divorce)
		tbDailog:AddOptEntry("Chóng t«i suèt ngµy g©y gç,xin «ng cho lêi khuyªn.", fix_marry)
		tbDailog:AddOptEntry("Ly h«n ®¬n ph­¬ng", singlediv_apply)
		tbDailog:AddOptEntry("®ång ı ly h«n ®¬n ph­¬ng.", sure_process_dinglediv)
		tbDailog:AddOptEntry("Kh«ng cã g×,ta chØ ghĞ ngang qua.", no)
	end
	
	tbDailog:Show()
end
-----------µ¥·½ÃæÀë»é----------------
--ÉêÇëµ¥·½ÃæÀë»é
function singlediv_apply()
	if (check_marrystate() == 0) then
		return
	end;
	
	local nDays = get_passdays();
	local str = "Kh«ng ®ñ thêi gian yªu cÇu ly h«n <color=yellow>1 ngµy<color>, ";
	if (nDays > 0) then
		str = format("Ng­¬i ®· yªu cÇu ly h«n<color=yellow>%d ngµy<color> nay, ",nDays);
	end;
	if (GetTask(TK_DATE_APPLYDIV) ~= 0) then
		Say(format("nguyÖt l·o: %s kh«ng muèn tiÕn hµnh ly h«n.", str), 0);
		return
	end;
	
	Say(format("tr¨m n¨m míi cã duyªn gÆp mËt,ngµn n¨m míi cã duyªn vî chång,nÕu ng­¬i vÉn kiªn quyÕt ly h«n th× cÇn ®ãng phİ <color=yellow>%d v¹n<color>. ng­¬i cã ch¾c r»ng vÉn gi÷ ı ®Şnh?",COSTOFSIMGLEDIV), 2,
		"Ta ®· suy nghÜ kü/makesure_apply",
		"§Ó ta suy nghÜ l¹i/no");
end;

--È·ÈÏÉêÇë£ºµ¥·½ÃæÀë»é
function makesure_apply()
	local nDate = GetCurServerTime();
	SetTask(TK_DATE_APPLYDIV, nDate);
	
	WriteLog(format("%s\tAccount:%s[Name:%s] §· yªu cÇu ly h«n.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName() ));	
	Say("NguyÖt l·o : mÆc dï ng­¬i ®· quyÕt ®Şnh,nh­ng ®Ó cho ng­¬i suy nghÜ vµ kh«ng hèi hËn, mét tuÇn sau gÆp l¹i ta.", 0);
	informother(Say, format("C¸c h¹ %s ®· ®­îc nguyÖt l·o chÊp thuËn quay l¹i sau mét tuÇn¯<color=yellow>sÏ ®o¹n tuyÖt mèi quan hÖ<color>.",GetName()), 0);
end;

--Í¨ÖªÅäÅ¼
function informother(proc, ...)
	local Lover = GetMateName();
	if (Lover == "") then 
		return 1
	end;
	
	local nOldPlayer = PlayerIndex
	local nIdx = SearchPlayer(Lover);
	if (nIdx <= 0) then
		return 1;
	end;
	
	if (not proc or type(proc) ~= "function") then
		return 1;
	end;
	PlayerIndex = nIdx;
	call(proc, arg);
	
	PlayerIndex = nOldPlayer;
end;


--ÉêÇëµ¥·½ÃæÀë»é
function sure_process_dinglediv()
	if (check_marrystate() == 0) then
		return
	end;
	
	if (GetTask(TK_DATE_APPLYDIV) == 0) then
		Say("nguyÖt l·o : ng­¬i vÉn muèn ly h«n?", 2,
			"§ång ı ly h«n/singlediv_apply",
			"Ta suy nghÜ l¹i/no");
		return
	end;
	
	local nDays = get_passdays();
	local str = "Ch­a ®ñ thêi gian ly h«n <color=yellow>1 ngµy<color>, ";
	if (nDays > 0) then
		str = format("Ng­¬i míi yªu cÇu ly h«n <color=yellow>%d ngµy<color>, ",nDays);
	end;
	if (nDays < 7) then
		Say(format("NguyÖt l·o : ng­¬i qu¸ nãng lßng vÉn ch­a ®ñ %s mét tuÇn, vÒ suy nghÜ kü ®i",str), 0);
		return 0;
	end;
	
	Say(format("tr¨m n¨m míi cã duyªn gÆp mËt,ngµn n¨m míi cã duyªn vî chång,nÕu ng­¬i vÉn kiªn quyÕt ly h«n th× cÇn ®ãng phİ <color=yellow>%d v¹n<color>. Ng­¬i thËt muèn ®o¹t tuyÖt nh©n duyªn nµy?", COSTOFSIMGLEDIV), 2,
		"Ta ®ång ı/process_dinglediv",
		"Ta cÇn suy nghÜ l¹i/no");
end;

--½øĞĞµ¥·½ÃæÀë»é
function process_dinglediv()
	if (GetCash() < COSTOFSIMGLEDIV) then
		Say(format("NguyÖt l·o : ®Ó ly h«n cÇn ®ãng <color=yellow>%d<color> v¹n, ng­¬i kh«ng mang ®ñ tiÒn!",COSTOFSIMGLEDIV), 0);
		return 0;
	end;
	
	if (Pay(COSTOFSIMGLEDIV) == 0) then
		return
	end;
	
	divorce_dateproc(PlayerIndex);
	WriteLog(format("%s\tAccount:%s[Name:%s] ®· tiÕn hµnh ly h«n.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName() ));
	Say("NguyÖt l·o : b©y giê ng­¬i ®· ly h«n, mong lµ sau nµy ng­¬i sÏ t×m ®­îc ng­êi tèt h¬n.", 0);
	
	Msg2Player(format("§· ®ãng <color=yellow>%d v¹n<color> cho thñ tôc ly h«n.", COSTOFSIMGLEDIV));
	Msg2Player("B¹n ®· thµnh ng­êi ®éc th©n.");
	informother(divorce_dateproc);
	informother(Say, format("c¸c h¹ %s ®Õn nguyÖt l·o xin<color=yellow>ly h«n<color>, ®o¹n tuyÖt quan hÖ vî chång.",GetName()), 0);
end;

--»ñµÃÉêÇëÁË¶µÉÙÌì
function get_passdays()
	local nApplyDate = GetTask(TK_DATE_APPLYDIV);
	local nDate = GetCurServerTime();
	if (nApplyDate == 0 or nDate < nApplyDate) then
		return -1;
	end;
	
	local nDays = floor((nDate - nApplyDate) / TOTALSEC_OF_DAY);
	return nDays;
end;

--ÉèÖÃµ¥·½Àë»éÉèÖÃ
function divorce_dateproc()
	local nWorld67 = GetTask(67);
	nWorld67 = SetBit(nWorld67,24,0);
	SetTask(TK_DATE_APPLYDIV, 0);
	UnMarry();
	
	nRepute = GetRepute();				-- ÉùÍûÏµ¹Ø´¦Àí
	if (nRepute > 10) then
		nRepute = 10;
	end;
	AddRepute(-1 * nRepute)								-- ÉùÍû10µã(²»×ã10µãÔò½µÎª0);
	
	nDivorceTimes = GetByte(nWorld67,2) + 1
	if (nDivorceTimes > 100) then
		nDivorceTimes = 100;
	end;
	nWorld67 = SetByte(nWorld67, 2, nDivorceTimes);
	SetTask(67,nWorld67);
end;

--¼ì²é»éÒöºÍÉêÇëµ¥·½ÃæÀë»éµÄ×´Ì¬
function check_marrystate()
	local nLvl = GetLevel();
	local nSex = GetSex();
	local bMarried = GetBit(GetTask(67),24);
	
	if (nLvl < 20) then
		Say("nguyÖn l·o : kh«ng nªn ®ïa giìn,ng­¬i cßn ch­a ®ñ tuæi thµnh gia ®©u.", 0);
		return 0;
	end;
	
	local str = "N÷";
	if (nSex == 1) then
		str = "Nam";
	end;
	
	if (bMarried == 0) then
		Say(format("nguyÖt l·o : ®õng cã ®ïa giìn víi l·o ng­¬i cßn ch­a kÕt h«n sao l¹i ®ßi ly h«n mau ®i t×m %s ı trung nh©n ®i.", str), 0);
		return 0;
	end;
	return 1;
end;
function check_married_team()
	local nOldPlayer = PlayerIndex;
	local nTeamSize = GetTeamSize();
	if (nTeamSize ~= 2) then
		return 1;
	end;
	local mem = {};
	mem[1] = GetTeamMember(1);
	mem[2] = GetTeamMember(2);
	local szName = "";
	for i = 1, nTeamSize do
		PlayerIndex = mem[i];
		if (check_married() == 1) then --Èç¹ûµ¥·½ÃæÀë»éÁË
			szName = GetName();
			SetBit(GetTask(67),24,0);
			SetTask(67,1);
		end;
		PlayerIndex = nOldPlayer;
	end;
	if (szName == "") then
		return 1
	end;
	
	local str = format("<color=yellow>Tr¹ng th¸i h«n nh©n  %s ®· thay ®æi<color>",szName)
	for i = 1, nTeamSize do
		OtherPlayer(mem[i], Msg2Player, str);
	end;
	return 1;
end;


function check_married()
	if (GetMateName() == "" and GetBit(GetTask(67),24) == 1) then
		return 1;
	end;
	return 0;
end;

----------------------- ÆßÏ¦»î¶¯ÓÃ9¿é°®ÁµÇÉ¿ËÁ¦»»È¡½±Àø ------------------
function chocolate()
	Say("9 khái s¾c t×nh duyªn cã thÓ ®æi 999 v¹n ®iÓm kinh nghiÖm, hoÆc cã thÓ ®æi quµ ng­¬i lùa chän lo¹i nµo?",3,"§æi 9999 v¹n kinh nghiÖm/chocolate_exp","§æi phÇn th­ëng/chocolate_gift","Kh«ng ta chØ ghĞ qua th«i!/no");
end

function chocolate_exp()
	local nNowDate = tonumber(date("%d"));
	if(CalcEquiproomItemCount( 6, 1, 833, 1) < 9) then
		Say("Ng­¬i kh«ng ®ñ 9 khèi s¾c t×nh duyªn, thiÕu 1 c¸i còng kh«ng ®­îc",0);
		return
	end
	if(GetTask(1564) == nNowDate) then
		if(GetTask(1565) > 0) then
			Say("NÕu ng­¬i muèn ®æi thµnh ®iÓm kinh nghiÖm th× mçi ngµy chØ cã thÓ ®æi 1 lÇn, l·o kh«ng thİch nhiÒu ®å ngät ®©u.",0);
			return
		end
		ConsumeEquiproomItem( 9, 6, 1, 833, 1);
		AddOwnExp(9990000);
		SetTask(1565,GetTask(1565)+1);
	else
		ConsumeEquiproomItem( 9, 6, 1, 833, 1);
		AddOwnExp(9990000);
		SetTask(1565,1);
		SetTask(1564,nNowDate);
	end
end

function chocolate_gift()
	if(CalcEquiproomItemCount( 6, 1, 833, 1) < 9) then
		Say("Ng­¬i kh«ng ®ñ 9 khèi s¾c t×nh duyªn, thiÕu 1 c¸i còng kh«ng ®­îc!",0);
		return
	end
	ConsumeEquiproomItem( 9, 6, 1, 833, 1);	
	local i = random(1,1000);
	if(i <= 300) then
		AddEventItem(353);
		Msg2Player("ng­¬i ®æi ®­îc 1 tinh hång b¶o th¹ch");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: may m¾n ®æi ®­îc tinh hång b¶o th¹ch");	
	elseif(i > 300 and i <= 460) then
		AddEventItem(238);
		Msg2Player("Ng­¬i ®æi ®­îc 1 lam thñy tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc 1 lam thñy tinh");		
	elseif(i > 460 and i <= 620) then
		AddEventItem(240);
		Msg2Player("Ng­¬i ®æi ®­îc 1 lôc thñy tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc 1 lôc thñy tinh");		
	elseif(i > 620 and i <= 800) then
		AddEventItem(239);
		Msg2Player("ng­¬i ®æi ®­îc 1 tö thñy tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc 1 tö thñy tinh");		
	elseif(i > 800 and i <= 949) then
		AddItem(6,1,147,6,0,0);
		Msg2Player("ng­¬i ®æi ®­îc 1 huyªn tinh kho¸ng th¹ch 6");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc huyÒn tinh kho¸ng th¹ch 6 ");		
	elseif(i > 949 and i <= 979) then
		AddItem(6,1,147,7,0,0);
		Msg2Player("ng­¬i ®æi ®­îc 1 huyªn tinh kho¸ng th¹ch 7");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc huyÒn tinh kho¸ng th¹ch 7");		
	elseif(i > 979 and i <= 989) then
		AddItem(6,1,147,8,0,0);
		Msg2Player("ng­¬i ®æi ®­îc 1 huyªn tinh kho¸ng th¹ch 8");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc huyÒn tinh kho¸ng th¹ch 8");		
	elseif(i > 989 and i <= 990) then
		AddItem(6,1,147,9,0,0);
		Msg2Player("ng­¬i ®æi ®­îc 1 huyªn tinh kho¸ng th¹ch 9");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc huyÒn tinh kho¸ng th¹ch 9");		
	elseif(i > 990 and i <= 1000) then
		AddItem(6,1,398,9,0,0);
		Msg2Player("ng­¬i ®æi ®­îc 1 thÇn bİ qu¸ng th¹ch ");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m¾n ®æi ®­îc 1 thÇn bİ qu¸ng th¹ch");		
	else
	end
end
----------------------- ÆßÏ¦»î¶¯ÓÃ9¿é°®ÁµÇÉ¿ËÁ¦»»È¡½±Àø ------------------

----------------------- Í¨ÓÃ¹¦ÄÜº¯Êı ------------------
function default_talk()			-- È±Ê¡¶Ô»°
	Talk(1,"","NÕu nh­ ng­¬i ®· cã ı chung nh©n,chØ cÇn c¶ 2 ®· ®ñ tuæi tr­ëng thµnh vµ ®Òu ®éc th©n,h·y d¾t tíi ®©y ra m¾t l·o,l·o sÏ t¸c hîp cho 2 ng­¬i.chØ cÇn ng­¬i cÇu h«n vµ nµng ®ång ı th× l­¬ng duyªn cña 2 ng­êi sÏ ®­îc t¸c hîp.")
end

function check_team()
	Player1_ID = GetTeamMember(1)
	Player2_ID = GetTeamMember(2)
-- ²éÑ¯¶ÓÎéÖĞµÄÅ®ĞÔ³ÉÔ±£¬ÈôÓĞÔò¼Ç¢¼ËıµÄIDµ½ÁÙÊ±±äÁ¿
	if (OtherPlayer(Player2_ID,GetSex) == 1) then
		His_ID = Player1_ID
		Her_ID = Player2_ID
		Her_world67 = OtherPlayer(Her_ID,GetTask,67)
		His_world67 = OtherPlayer(His_ID,GetTask,67)
	elseif (OtherPlayer(Player1_ID,GetSex) == 1) then
		His_ID = Player2_ID
		Her_ID = Player1_ID
		Her_world67 = OtherPlayer(Her_ID,GetTask,67)
		His_world67 = OtherPlayer(His_ID,GetTask,67)
	else
		His_ID = 0
		Her_ID = 0
	end
	return His_ID,Her_ID,His_world67,Her_world67
end

function do_qmarry_cancel()
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (OtherPlayer(His_ID,GetTaskTemp,0,5) == 1) and (OtherPlayer(Her_ID,GetTaskTemp,0,5) == 1) and (OtherPlayer(Her_ID,GetTaskTemp,0,6) == His_ID) and (OtherPlayer(His_ID,GetTaskTemp,0,7) == Her_ID) then	-- Ë«·½Êı¾İÄÜ¶ÔÉÏ£¬ÔÊĞíÉ¾³ı
		OtherPlayer(His_ID,SetTaskTemp,5,0)
		OtherPlayer(His_ID,SetTaskTemp,6,0)
		OtherPlayer(His_ID,SetTaskTemp,7,0)
		OtherPlayer(Her_ID,SetTaskTemp,5,0)
		OtherPlayer(Her_ID,SetTaskTemp,6,0)
		OtherPlayer(Her_ID,SetTaskTemp,7,0)
--		Msg2Player("Çó»éÈ¡Ïû³É¹¦¡£")
--	else
--		Msg2Player("ÎŞ·¨È¡ÏûÇó»é¡£")
	end
end

function OtherPlayer_talk(PlayerId, msg)		-- Îª±ğÈË·¢ÏûÏ¢
	OldPlayer = PlayerIndex
	PlayerIndex = PlayerId
	Talk(1,"",msg)
	PlayerIndex = OldPlayer
end
----------------------- Çó»éÏµ¹Ø -----------------------
function Qmarry()			-- Çó»éÒÔ¼°½á»éºÏ·¨ĞÔ¼ì²â
	if (GetFaction() == "shaolin") or (GetFaction() == "emei") then		-- ºÍÉĞÄá¹Ã²»×¼½á»é
		Talk(1,"","Ng­¬i lµ ng­êi xuÊt gia lµm sao cã thÓ thµnh h«n,h·y rêi khâi m«n ph¸i tr­íc ®i.")
	elseif (GetSex() == 1) then											-- ÆÕÍ¨µÄ¶ÔÅ®ĞÔµÄËµ»°
		Talk(1,"","Ng­¬i ®­êng ®­êng lµ mét c« n­¬ng lµm sao cã thÓ chñ ®éng,h·y ®Ó nam nh©n ®Õn ngâ lêi tr­íc ®i!")
	elseif (GetTeamSize() ~= 2) or (IsCaptain() ~= 1) then		-- (¶ÓÎéÈËÔ±²»¶Ô)»ò(×Ô¼º²»ÊÇ¶Ó³¤)£¬×ªÈ±Ê¡¶Ô»°
		default_talk()
	else					-- ¼ì²â¸÷ÖÖÌõ¼ş£¬²¢ÇÒ¿ªÊ¼Çó»é¹ı³Ì
		His_ID,Her_ID,His_world67,Her_world67 = check_team();
--		check_married_team();
		if (Her_ID == 0) then				-- ¶ÓÎéÖĞÎŞÅ®ĞÔ³ÉÔ±£¬×ªÈ±Ê¡¶Ô»°
			Talk(1,"","hai ng­êi c¸c ng­¬i ®­êng ®­êng lµ nam tö h¸n sao l¹i cã thÓ kÕt h«n,®Şnh hï däa l·o µ!")
--			default_talk()
		elseif (OtherPlayer(Her_ID,GetFaction) == "emei") then		-- ²»×¼È¢Äá¹Ã
			Talk(1,"","Ni c« th× lµm sao cã thÓ kÕt h«n,ta khuyªn ng­¬i h·y hoµn tôc tr­íc ®·!")
		elseif (GetBit(His_world67,24) == 1) then				-- ÄĞ·½ÒÑ»é
			Talk(1,"","Ng­¬i ®· cã thª tö kh«ng lÏ ng­¬i muèn tam thª tø thiÕp?")
		elseif (GetBit(Her_world67,24) == 1) then		-- Å®·½ÒÑ»é
			Talk(1,"","<#> ng­¬i lµ"..OtherPlayer(Her_ID,GetName).."<#> g¸i ®· cã chång lµm sao cã thÓ t¸i gi¸ n÷a!")
		elseif (GetLevel() < 20) or (OtherPlayer(Her_ID,GetLevel) < 20) then		-- ÓĞÈËµÈ¼¶²»¹»
			Talk(1,"","ng­¬i cßn qu¸ nhá sau nµy tr­ëng thµnh h·y quay l¹i!")
		else									-- ·ûºÏËùÓĞÌõ¼ş
			SetTaskTemp(7,Her_ID)
			SetTaskTemp(6,His_ID)
			Say("thiÕu hiÖp cã ph¶i ®Şnh cïng c« n­¬ng kÕ bªn kÕt thµnh phu phô?",2,"§óng ta muèn cÇu h«n nµng/qmarry_get","Kh«ng chóng ta chØ t×nh cê gÆp/qmarry_no")
		end
	end
end

function qmarry_get()			-- ÄĞ·½£ºÆô¶¯ÌáÇ×
	SetTaskTemp(5,1)
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (GetTeamSize() ~= 2) or (GetTaskTemp(7) ~= Her_ID) then			-- ¶ÓÎé·¢ÉúÁË¸Ä±ä£¬¾Ü¾ø¡£¡£¡£
		Talk(1,"","Ng­¬i do dù qu¸ l©u c« n­¬ng ®· bá ®i råi!")
	else
		Her_Name = OtherPlayer(Her_ID,GetName)
		Talk(1,"","<#>RÊt tèt hai ng­êi qu¶ lµ trêi sinh mét ®«i"..Her_Name.."<#> ®Ó ta hái c« n­¬ng kia ı ®Şnh ra sao.")
		Msg2Player("<#> ng­¬i quyÕt ®Şnh cÇu h«n "..Her_Name.."<#> ®em t©m t­ cña m×nh nãi cho nguyÖt l·o biÕt.")
		OtherPlayer(Her_ID,Msg2Player,GetName().."<#> Ng­¬i ®ång ı g· cho h¾n? h·y nhanh tr¶ lêi cho l·o biÕt.")
		OtherPlayer(Her_ID,SetTaskTemp,5,1)
		OtherPlayer(Her_ID,SetTaskTemp,6,His_ID)
		OtherPlayer(Her_ID,SetTaskTemp,7,Her_ID)
	end
end

function male_cancel()			-- ÄĞ·½£ºÈ¡ÏûÌáÇ×
	do_qmarry_cancel()
	Talk(1,"","Ğp buéc kh«ng h¹nh phóc,nÕu nµng ch­a s½n sµng th× h·y chê thêi gian sau!")
	Msg2Player("tr­íc mÆt ng­¬i c« n­¬ng c¶m thÊy xÊu hæ,bu«ng tha cho nµng ®Ó lÇn sau hái l¹i.")
	OtherPlayer(Her_ID,Msg2Player,GetName().."<#> Cù tuyÖt lêi cÇu h«n cña ng­¬i.")		-- ÏûÏ¢ÊÇ·¢µ½Å®·½£¬×¢ÒâÏûÏ¢ÄÚÈİÏµ·û
end

function male_hurry()		-- Çó»é£º´ß´Ù
	Her_ID = GetTaskTemp(7)
	OtherPlayer(Her_ID,Msg2Player,GetName().."<#> Ng­¬i ®ång ı g· cho h¾n? h·y nhanh tr¶ lêi cho l·o biÕt!")
end

----------------------- ´ğ¸´Çó»é¡¢È·ÈÏ»éÒö -------------
function female_cancel()		-- Å®·½£º¾Ü¾øÌáÇ×
	do_qmarry_cancel()
	Talk(1,"","Ng­¬i kh«ng ®ång ı ®Ó ta nãi cho h¾n biÕt!")
	Msg2Player("Qu¹ ®en cho m×nh lµ thiªn nga ? ng­¬i nhÊt ®Şnh cù tuyÖt lêi cÇu h«n cña h¾n.")
	OtherPlayer(His_ID,Msg2Player,GetName().."<#> nµng ®· cù tuyÖt lêi cÇu h«n cña ng­¬i,cè g¾ng lÇn sau nha!")
end

function female_yes()			-- Å®·½£º½ÓÊÜÌáÇ×
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	His_Name	= OtherPlayer(His_ID,GetName)
	Her_Name	= GetName()
	if (GetBit(Her_world67,24) == 1) then				-- ÒÑ»é
		Talk(1,"","Ng­¬i ®· cã phu qu©n sao cßn muèn lÊy ng­êi kh¸c?")
	elseif (GetTeamSize() ~= 2) then		-- ¶ÓÎéÈËÊıÒÑ¸Ä±ä
		Talk(1,"","Ta kh«ng thÊy ı chung nh©n cña ng­¬i,h·y cïng ®Õn víi nhau ta míi cã thÓ kÕt hîp!")
	elseif (His_ID ~= GetTaskTemp(6)) then			-- ¶Ó³¤²»ÊÇÇó»éÕß
		Talk(1,"","Gièng nh­ ng­¬i muèn cïng nhiÒu ng­êi kÕt h«n,thËt ra ng­¬i muèn lÊy ng­êi nµo?")
	else				-- Êı¾İÒÑ¾­¶ÔÉÏ£¬½øĞĞ½á»é´¦Àí
		DoMarry(GetTeam())
		
				-- ÔÚÕâÀïÅĞ¶Ï»éÒö¹ØÏµÊÇ·ñÕæÕıÈ·Á¢£¬·ñÔòÖ±½Ó·µ»Ø by zero 2007/06/27
		local szMaleName, szFemaleName = "","";
		local nOldPlayerIndex = PlayerIndex;
		
			PlayerIndex = His_ID;
			szMaleName = GetMateName();
			PlayerIndex = nOldPlayerIndex;
			szFemaleName = GetMateName();
			
		if szMaleName == "" or szFemaleName=="" then
			Msg2Player("<color=yellow>Quan hÖ vî chång ch­a ®­îc c«ng nhËn h·y thö l¹i lÇn n÷a!<color>");
			OtherPlayer(His_ID, Msg2Player, "<color=yellow>Quan hÖ vî chång ch­a ®­îc c«ng nhËn h·y thö l¹i lÇn n÷a!<color>");
			return
		end;
		
		
		SetTaskTemp(5,0)		--È¡ÏûÇó»é×´Ì¬
		SetTaskTemp(6,0)
		SetTaskTemp(7,0)
		OtherPlayer(His_ID,SetTaskTemp,5,0)
		OtherPlayer(His_ID,SetTaskTemp,6,0)
		OtherPlayer(His_ID,SetTaskTemp,7,0)
		Her_world67 = SetBit(Her_world67,24,1)		-- ÉèÖÃ½á»é±äÁ¿
		His_world67 = SetBit(His_world67,24,1)
		if (GetBit(Her_world67,2) == 0) and (GetLevel() >= 50) then		-- Å®·½ËÍ½äÖ¸
			Her_world67 = SetBit(Her_world67,2,1)		-- ÉèÖÃ½á»é±äÁ¿£¨ÒÑËÍ½äÖ¸£©
			present_ring(Her_ID)
		end
		if (GetBit(His_world67,2) == 0) and (OtherPlayer(His_ID,GetLevel) >= 50) then		-- ÄĞ·½ËÍ½äÖ¸
			His_world67 = SetBit(His_world67,2,1)		-- ÉèÖÃ½á»é±äÁ¿£¨ÒÑËÍ½äÖ¸£©
			present_ring(His_ID)
		end
		SetTask(67,Her_world67)
		OtherPlayer(His_ID,SetTask,67,His_world67)

		Msg2Player("<#> Ng­¬i tiÕp nhËn lêi cÇu h«n"..His_Name.."<#> chóc mõng hai vŞ tr¨m n¨m t×nh duyªn m·ng,b¹c ®Çu nghÜa phu thª!")
		OtherPlayer(His_ID, Msg2Player, Her_Name.."<#> §· tiÕp nhËn líi cÇu h«n, chóc hai vŞ tr¨m n¨m t×nh duyªn m·ng,b¹c ®Çu nghÜa phu thª!")
		OtherPlayer_talk(His_ID, "Chóc mõng hai vŞ d©y t¬ hång ®· chãi chÆt,sau nµy ngät bïi cïng h­ëng!")
		OtherPlayer_talk(Her_ID, "Chóc mõng hai vŞ d©y t¬ hång ®· chãi chÆt,sau nµy ngät bïi cïng h­ëng!")
		AddGlobalCountNews("<#> Chóc ta cïng nhau chóc mõng "..His_Name.."<#> kÕt duyªn cïng "..GetName().."<#> cïng chóc cho hä tr¨m n¨m t×nh duyªn m·n,b¹c ®Çu nghÜa phu thª!",3)
		
	end
end

function present_ring(PlayerId)			-- ËÍ½äÖ¸£¨ÅĞ¶Ï¡¢ÖÃ±äÁ¿ÒÑÒÆÖÁ½á»é¹ı³ÌÖĞ£©
	OldPlayer = PlayerIndex
	PlayerIndex = PlayerId

	item_level = floor(GetLevel() / 10) + 2
	if (item_level > 10) then
		item_level = 10
	end
--	item_lucky = (item_level - 3) * 5
	p = {0,0,0,0,0,0}
	j = item_level - 6
	if (j > 6) then j = 6 end
	for i=1,j do
		if (item_level - i - 2 < 0) then
			p[i] = 0
		else
			p[i] = item_level - i - 2
		end
	end
	AddItem(0,3,0,item_level,random(0,4),5,p[1],p[2],p[3],p[4],p[5],p[6])
	Msg2Player("NguyÖn l·o ®­a cho ng­¬i mét chiÕc nhÉn ")
	PlayerIndex = OldPlayer
end

----------------------- ĞŞ¸´»éÒö¹ØÏµ -------------------
function fix_marry()
	if( GetTeamSize() == 2 ) then
		His_ID,Her_ID,His_world67,Her_world67 = check_team()
		His_Name = GetName()
		Her_Name = OtherPlayer(Her_ID,GetName)
		if (His_ID ~= 0) and (Her_ID ~= 0) and (GetBit(His_world67,24) == 1) and (GetBit(Her_world67,24) == 1) and (OtherPlayer(His_ID,GetMateName) == "") and (OtherPlayer(Her_ID,GetMateName) == "") then		-- ÒìĞÔ¡¢Á½ÈË¶ÓÎé¡¢¾ùÒÑ»é£¬ÔòÊÓÎªÔÊĞíĞŞ¸´
			Talk(1,"","Phu thª g©y gç lµ chuyÖn th­êng,cïng suy nghÜ l¹i vµ b¾t tay gi¶ng hßa!")
			DoMarry(GetTeam())
			Msg2Player("<#> ng­¬i cïng"..Her_Name.."<#> ®· kh«i phôc mèi quan hÖ tèt lµnh")
			OtherPlayer(Her_ID,Msg2Player,"<#> ng­¬i cïng"..His_Name.."<#> ®· kh«i phôc mèi quan hÖ tèt lµnh")
		elseif (GetBit(GetTask(67),24) == 1) and (GetMateName() == "") then			-- ¿ÉÄÜĞŞ¸´£¬µ«¶Ô·½Ìõ¼ş²»³ÉÁ¢
			if (GetSex() == 0) then
				Talk(1,"","Phu thª g©y gç lµ chuyÖn th­êng,ng­¬i h·y cïng ng­êi yªu tíi ®©y ®Ó l·o cho mét lêi khuyªn!")
			else
				Talk(1,"","Phu thª g©y gç lµ chuyÖn th­êng,ng­¬i h·y cïng ng­êi yªu tíi ®©y ®Ó l·o cho h¾n !")
			end
		else			-- ×Ô¼ºÌõ¼ş²»³ÉÁ¢
			if (GetSex() == 0) then
				Talk(1,"","Râ rµng kh«ng cã g×, ng­¬i lõa ta?")
			else
				Talk(1,"","kh«ng cã g× ®õng phiÒn ta!")
			end
		end
	else
		if (GetSex() == 0) then
			Talk(1,"","Phu thª g©y gç lµ chuyÖn th­êng,ng­¬i h·y cïng ng­êi yªu tíi ®©y ®Ó l·o cho mét lêi khuyªn!")
		else
			Talk(1,"","Phu thª g©y gç lµ chuyÖn th­êng,ng­¬i h·y cïng ng­êi yªu tíi ®©y ®Ó l·o cho mét lêi khuyªn!")
		end
	end
end

----------------------- Àë»éÏµ¹Ø -----------------------
function divorce()
	if (GetTeamSize() == 2) and (IsCaptain() == 1) then		-- ×é¶Ó¡¢ÈËÊıÎª2¡¢×Ô¼ºÊÇ¶Ó³¤
		His_ID,Her_ID,His_world67,Her_world67 = check_team()
		His_Name = OtherPlayer(His_ID,GetName)
		Her_Name = OtherPlayer(Her_ID,GetName)
		if (GetBit(His_world67,24) == 1) and (OtherPlayer(His_ID,GetMateName) == Her_Name) and (GetBit(Her_world67,24) == 1) and (OtherPlayer(Her_ID,GetMateName) == His_Name) then		-- Ë«·½½á»é¹ØÏµÕıÈ·
			Say("Ly h«n kh«ng ph¶i lµ trß ®ïa, ng­¬i nªn suy nghÜ kü?",2,"Ta ®· quyÕt ®Şnh ly h«n!/divorce_yes","§Ó ta suy nghÜ l¹i/no")
		else
			Talk(1,"","Ng­¬i muèn cïng ai ly h«n? ng­êi nµy kh«ng ph¶i vî ng­¬i!")
		end
	else
		Talk(1,"","Muèn ly h«n ph¶i cã chång vµ vî ®i cïng ta míi tiÕn hµnh ®­îc!")
	end
end

function divorce_yes()
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (GetTeamSize() ~= 2) or (His_ID == 0) or (Her_ID == 0) or (OtherPlayer(His_ID,GetMateName) ~= Her_Name) or (OtherPlayer(Her_ID,GetMateName) ~= His_Name) then			-- ¸´²é×é¶Ó×´Ì¬
		Talk(1,"","Ng­¬i do dù qu¸ l©u, ng­êi kia ®· ®i mÊt råi!")
	elseif (GetCash() >= 50000) then
		Pay(50000)
		UnMarry(GetTeam())						-- ½â³ı»éÒö¹ØÏµ]
--Msg2Player("His_world67="..His_world67.."  Her_world67="..Her_world67)
		His_repute = OtherPlayer(His_ID,GetRepute)				-- ÄĞ·½Ïµ¹Ø´¦Àí
		if (His_repute > 10) then His_repute = 10 end
		OtherPlayer(His_ID,AddRepute,-1 * His_repute)								-- ¼õÄĞ·½ÉùÍû10µã(²»×ã10µãÔò½µÎª0)
		His_DivorceTimes = GetByte(His_world67,2) + 1								-- ¼ÆËãÀë»é´ÎÊı
		if (His_DivorceTimes > 100) then His_DivorceTimes = 100 end			-- ³¬¹ı100´Î²»ÔÙ¼Ç¢¼
		His_world67 = SetByte(His_world67,2,His_DivorceTimes)						-- Àë»é´ÎÊıĞ´Èë
		His_world67 = SetBit(His_world67,24,0)											-- »éÒö×´Ì¬
--Msg2Player("His_world67="..His_world67)
		OtherPlayer_talk(His_ID,"NÕu c¶ hai cïng ®ång ı th× ta sÏ tiÕn hµnh ly h«n, c¶ 2 ®· ®­îc tù do.")		-- ÎªË«·½·¢Àë»éÏûÏ¢
		Her_repute = OtherPlayer(Her_ID,GetRepute)				-- Å®·½Ïµ¹Ø´¦Àí
		if (Her_repute > 10) then Her_repute = 10 end
		OtherPlayer(Her_ID,AddRepute,-1 * Her_repute)								-- ¼õÅ®·½ÉùÍû10µã(²»×ã10µãÔò½µÎª0)
		Her_DivorceTimes = GetByte(Her_world67,2) + 1
		if (Her_DivorceTimes > 100) then Her_DivorceTimes = 100 end
		Her_world67 = SetByte(Her_world67,2,Her_DivorceTimes)
		Her_world67 = SetBit(Her_world67,24,0)
--Msg2Player("Her_world67="..Her_world67)

		OtherPlayer(His_ID,SetTask,67,His_world67)
		OtherPlayer(Her_ID,SetTask,67,Her_world67)
		OtherPlayer_talk(Her_ID,"NÕu c¶ hai cïng ®ång ı th× ta sÏ tiÕn hµnh ly h«n, c¶ 2 ®· ®­îc tù do.")
	else
		Talk(1,"","ng­¬i kh«ng mang ®ñ tiÒn ly h«n cÇn 5 v¹n l­îng!")
	end
end

----------------------- ºÏ»¶°üÏµ¹Ø ---------------------
function gather_bonus()
	Say("Ta cÇn 3 hîp hoan bao,3 uyªn ­¬ng m¹t, 3 t×nh ı kÕt cã thÓ ®æi 1 khèi thñy tinh vµ 1 t©m t©m t­¬ng ¶nh phï.\n 2 hîp hoan bao,2 uyªn ­¬ng m¹t hßa,2 t×nh ı kÕt hîp thµnh 1 khèi ng©n nguyªn b¶o 1 t©m tam t­¬ng ¶nh phï.  \n 1 hîp hoan bao,1 uyªn ­¬ng m¹t hßa,1 t×nh ı kÕt hîp thµnh 1 t©m tam t­¬ng ¶nh phï \n Ng­¬i muèn ®æi lo¹i nµo",4,"Ta ®æi thñy tinh vµ t©m t©m t­¬ng ¶nh phï /gather_bonus1","Ta muèn ®æi ng©n b¶o vµ t©m t©m t­¬ng ¶nh phï/gather_bonus2","Ta chØ ®æi t©m t©m t­¬ng ¶nh phï/gather_bonus3","ThËt xin lçi ta chØ ghĞ qua/no")
end

function gather_bonus1()
	if (GetItemCount(344) >= 3) then				-- ºÏ»¶°ü
		if (GetItemCount(345) >= 3) then			-- Ô§ÑìÅÁ
			if (GetItemCount(346) >= 3) then		-- ÇéÒâ½á
				for i=1,3 do
					DelItem(346)
					DelItem(345)
					DelItem(344)
				end
				AddItem(6,1,18,1,0,0,0)			-- ĞÄĞÄÏµÓ¡·û
				i = 238 + random(0,2)		-- Ëæ»ú¸øÒ»¿Å±¦Ê¯
				AddEventItem(i)
				Talk(1,"","ThËt tèt qu¸ ta g÷i ng­¬i 1 thñy tinh vµ 1 t©m t©m t­¬ng ¶nh phï chóc 2 ng­¬i h¹nh phóc!")
			else
				Talk(1,"","Ng­¬i kh«ng ®ñ 3 t×nh ı kÕt ")
			end
		else
			Talk(1,"","Ng­¬i kh«ng ®ñ 3 uyªn ­¬ng m¹t")
		end
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ 3 hîp hoan bao")
	end
end

function gather_bonus2()
	if (GetItemCount(344) >= 2) then				-- ºÏ»¶°ü
		if (GetItemCount(345) >= 2) then			-- Ô§ÑìÅÁ
			if (GetItemCount(346) >= 2) then		-- ÇéÒâ½á
				for i=1,2 do
					DelItem(346)
					DelItem(345)
					DelItem(344)
				end
				AddItem(6,1,18,1,0,0,0)			-- ĞÄĞÄÏµÓ¡·û
				AddEventItem(342)
				Talk(1,"","ThËt tèt qu¸ ta g÷i ng­¬i 1 ng©n b¶o vµ 1 t©m t©m t­¬ng ¶nh phï chóc 2 ng­¬i h¹nh phóc!")
			else
				Talk(1,"","Ng­¬i kh«ng ®ñ 2 t×nh ı kÕt")
			end
		else
			Talk(1,"","Ng­¬i kh«ng ®ñ 2 uyªn ­¬ng m¹t")
		end
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ 2 hîp hoan bao")
	end
end

function gather_bonus3()
	if (HaveItem(344) == 1) then				-- ºÏ»¶°ü
		if (HaveItem(345) == 1) then			-- Ô§ÑìÅÁ
			DelItem(344)
			DelItem(345)
			AddItem(6,1,18,1,0,0,0)			-- ĞÄĞÄÏµÓ¡·û
			Talk(1,"","ThËt tèt qu¸ ta g÷i ng­¬i 1 t©m t©m t­¬ng ¶nh phï chóc 2 ng­¬i h¹nh phóc!")
		else
			Talk(1,"","Ng­¬i kh«ng ®ñ 1 uyªn ­¬ng m¹t")
		end
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ 1 hîp hoan bao")
	end
end

-------------- 2004-8-22 ÆßÏ¦ËÍÀñ»î¶¯ ------------------
function present_QiXi( nPlayerIndex )
	local nPreservedPlayerIndex = PlayerIndex;
	
	PlayerIndex = nPlayerIndex;

	Talk( "H«m nay lµ ngµy tèt nguyÖt l·o tÆng cho 2 ng­¬i lÔ vËt vµ chóc c¶ hai b¹c ®Çu giai l·o!" );
	-- ËÍ2¸ö¡°ĞÄĞÄÏµÓ¡·û¡±
	for i = 1, 2 do
		AddItem( 6, 1, 18, 1, 0, 0 ,0);
	end
	Msg2Player( "B¹n nhËn ®­îc 2 t©m t©m t­¬ng ¶nh phï" );
	-- ËÍ9¶ä¡°Ãµ¹å»¨¡±
	for i = 1, 9 do
		AddItem( 6, 0, 20, 1, 0, 0 ,0);
	end	
	Msg2Player( "B¹n nhËn ®­îc 9 ®ãa hoa hång" );
	-- 50¼¶ÒÔÉÏÍæ¼Ò¼ÓËÍ1¸ö¡°ÌìÉ½Óñ¢¶¡±
	if( GetLevel() >= 50 ) then
		AddItem(6, 1, 72, 1, 0, 0, 0);
		Msg2Player( "b¹n nhËn ®­îc mét b×nh thiªn s¬n b¶o " );
	end
	
	PlayerIndex = nPreservedPlayerIndex;
end

----------------------- end ----------------------------
function no()
end
