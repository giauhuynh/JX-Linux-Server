	Include( "\\script\\event\\tongwar\\event.lua");

	TONGWAR_NAME = " Vo lam de nhat bang "

	LEAGUE_NUMBER = 7

	TONGWAR_STATETIME = 2000

	TONGWAR_ENDTIME = 2130

	-- ®Ö nhÊt danh bang héi bang chñ ®¨ng ký m×nh ®éi h÷u League

	ONETONG_LGTYPE		= 541;

	ONETONG_ACC_LGTYPE	= 542;

	TONGWAR_SEASON_TB = {

	-- ID = { thêi ®¹i, b¸o danh b¾t ®Çu nhËt, b¸o danh kÕt thóc nhËt (tøc bØ t¸i b¾t ®Çu nhËt), bØ t¸i kÕt thóc nhËt, th­ëng cho lÜnh b¾t ®Çu nhËt, th­ëng cho lÜnh kÕt thóc nhËt }

	--	[1] = {0706, 14, 18, 30, 70701, 70705},

	--	[2] = {0709, 14, 18, 30, 71001, 71006},

	--	[3] = {0803, 18, 18, 30, 80331, 80406},

	--	[4] = {0810, 3, 4, 16, 81017, 81022},

	--	[5]	= {0904, 3, 4,	 16, 90417, 90422},

	--	[6] = {0910, 3, 4,	 16, 91017, 91022},

	--	[7] = {1004, 15, 16, 28, 100429, 100502},

	-- ID = {[1] b¸o danh b¾t ®Çu nhËt,[2] bØ t¸i khëi,	[3] bØ t¸i chØ,	[4] th­ëng cho khëi,	[5] th­ëng cho chØ }

	[1] = {101030, 		101101,		101108,		101109,		101113},

	--Season 2 - VLDNB 2011 - Modified by DinhHQ - 20110510

	
	--phase 1: 20110514

	--phase 2: 20110514 - 20110521

	--phase 3: 20110522 - 20110529

	[2] = {110514, 		110514,		110521,		110522,		110529},

	--Season 3 - VLDNB 10 - Modified by DinhHQ - 20111013

	--phase 1: 20111022

	--phase 2: 20111022 - 20111030

	--phase 3: 20111031 - 20111107

	[3] = {111022, 		111022,		111029,		111030,		111106},

	--Season 4 - VLDNB 11 - Modified by DinhHQ - 20120507

	[4] = {120512, 		120512,		120523,		120524,		120530},

	}

	SCHEDULE_TABLE = {	-- bØ t¸i nhËt tr×nh

	{

	"16",	-- 2009 niªn 10 nguyÖt 4 nhËt

	{5, 7}, 	-- l©m an VS T­¬ng D­¬ng

	{4, 6}, 	-- BiÖn Kinh VS D­¬ng Ch©u

	{2, 3}		-- thµnh ®« VS §¹i Lý

	},

	{

	"17",	-- 2009 niªn 10 nguyÖt 6 nhËt

	{1, 4},		-- ph­îng t­êng VS BiÖn Kinh

	{5, 6},		-- T­¬ng D­¬ng VS D­¬ng Ch©u

	{3, 7}		-- l©m an VS §¹i Lý

	},

	{

	"19",	-- 2009 niªn 10 nguyÖt 8 nhËt

	{2, 7},		-- thµnh ®« VS l©m an

	{1, 5},		-- ph­îng t­êng VS T­¬ng D­¬ng

	{6, 3}		-- D­¬ng Ch©u VS §¹i Lý

	},

	{

	"20",	-- 2009 niªn 10 nguyÖt 10 nhËt

	{4, 5},		-- BiÖn Kinh VS T­¬ng D­¬ng

	{2, 6},		-- thµnh ®« VS D­¬ng Ch©u

	{1, 3}		-- ph­îng t­êng VS §¹i Lý

	},

	{

	"21",	-- 2009 niªn 10 nguyÖt 12 nhËt

	{1, 2},		-- ph­îng t­êng VS thµnh ®«

	{6, 7},		-- l©m an VS D­¬ng Ch©u

	{3, 4}		-- BiÖn Kinh VS §¹i Lý

	},

	{

	"22",	-- 2009 niªn 10 nguyÖt 14 nhËt

	{2, 4},		-- thµnh ®« VS BiÖn Kinh

	{1, 7},		-- ph­îng t­êng VS l©m an

	{3, 5}		-- T­¬ng D­¬ng VS §¹i Lý

	},

	{

	"23",	-- 2009 niªn 10 nguyÖt 16 nhËt

	{4, 7},		-- BiÖn Kinh VS l©m an

	{2, 5},		-- thµnh ®« VS T­¬ng D­¬ng

	{1, 6}		-- ph­îng t­êng VS D­¬ng Ch©u

	}

	}

	function TaskShedule()

	TaskName(TONGWAR_NAME)

	OutputMsg(TONGWAR_NAME)

	local nhour = GetNextHour();

	TaskTime(nhour, 0)		-- lÇn ®Çu nhiÖm vô vu kÕ tiÕp chØnh më ra thñy

	TaskInterval(30)	-- 30 phót mét lÇn

	TaskCountLimit(0)	-- v« h¹n thø g©y ra nhiÖm vô

	end

	function TaskContent()

	local task_month = tonumber(date( "%y%m "));

	local task_date = tonumber(date( "%d "));

	local task_time = tonumber(date( "%H%M "));

	local task_ymd = task_month *100 + task_date;

	local nseason = tongwar_GetCurSeason(task_ymd)

	OutputMsg(format( "B©y giê thi ®Êu quý vi %s", nseason))

	if (nseason == 0) then		-- kh«ng cã an bµi cïng th¸ng thi ®Êu tr×nh

	set_tongwar_phase(0);

	--OutputMsg( "season ".. task_month.." cannot be found in schedule, quit task.".. nseason)

	return 0;

	end;

	if (task_ymd > TONGWAR_SEASON_TB[nseason][5]) then	-- tr­íc mÆt thi ®Êu quý th­ëng cho thêi gian ®· qua, nhiÖm vô kh«ng l¹i tiÕp tôc

	set_tongwar_phase(0);

	--OutputMsg( "season ".. task_month.." cannot be found in schedule, quit task.")

	return 0;

	end;

	-- thÞ thi ®Êu tr×nh trung 22 nhËt 0 ®iÓm t¶ h÷u t¾c c¾t bá th¸ng tr­íc chiÕn ®éi tin tøc, mét lÇn n÷a ®éc thñ chiªm thµnh bang héi

	-- lóc nµy, héi thanh trõ b¶ng xÕp h¹ng tin tøc

	--VLDNB2011 Set sign up time from 00h 20110514 to 18h 20110514 - Modified by DinhHQ 20110510

	if ((task_ymd == TONGWAR_SEASON_TB[nseason][1]) and (task_time < 1800)) then

	if (tongwar_initmatch(nseason) == 1) then

	return 1;

	end

	end

	if (task_ymd >= TONGWAR_SEASON_TB[nseason][2] and task_ymd <= TONGWAR_SEASON_TB[nseason][3]) then

	if (task_ymd == TONGWAR_SEASON_TB[nseason][2] and task_time < 1800) then

	return

	else

	set_tongwar_phase(2);-- tr­íc mÆt giai ®o¹n vi 2, bØ t¸i nhËt tiÕn ®i trung

	end

	elseif (task_ymd >= TONGWAR_SEASON_TB[nseason][4] and task_ymd <= TONGWAR_SEASON_TB[nseason][5]) then

	set_tongwar_phase(3);-- tr­íc mÆt giai ®o¹n vi 3, th­ëng cho cho vay trung

	end;

	local team1, team2, team3	-- Table lo¹i h×nh, Table[2] = { liªn minh 1, liªn minh 2}

	local strGlExe = ""

	for i = 1, LEAGUE_NUMBER do

	if (tostring(task_date) == SCHEDULE_TABLE[i][1]) then

	team1 = SCHEDULE_TABLE[i][2]

	team2 = SCHEDULE_TABLE[i][3]

	team3 = SCHEDULE_TABLE[i][4]

	end

	end

	if (not team1) or (not team2) or (not team3) then	-- ngµy kh«ng ë nhËt tr×nh trong ngoµi, rêi khái

	OutputMsg( "date ".. task_date.." cannot be found in schedule, quit task.")

	return

	end

	if (task_time >= (TONGWAR_STATETIME - 5) and task_time <= (TONGWAR_STATETIME + 5)) then	-- bØ t¸i b¾t ®Çu

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	OutputMsg(TONGWAR_NAME.."starting.")

	for i = 1, getn(TONGWAR_CITY) do

	local szcityname = TONGWAR_CITY[i];

	LG_ApplySetLeagueTask(TONGWAR_LGTYPE, szcityname, TONGWAR_LGTASK_CAMP, 0)

	LG_ApplySetLeagueTask(TONGWAR_LGTYPE, szcityname, TONGWAR_LGTASK_MAP, 0)

	end;

	local ground1, ground2, ground3 = random_ground()	-- ngÉu nhiªn ph©n phèi n¬i so tµi

	-- truyÒn l¹i 9 mét tham sè, theo thø tù lµ cuéc so tµi thø nhÊt liªn minh ®éi ngò song ph­¬ng trËn doanh, n¬i s©n, trËn thø hai tranh tµi liªn minh ®éi ngò song ph­¬ng trËn doanh, n¬i s©n, cuéc tranh tµi thø ba liªn minh ®éi ngò song ph­¬ng trËn doanh, n¬i s©n

	strGlExe = format( "dw tongwar_start(%d, %d, %d, %d, %d, %d, %d, %d, %d)", team1[1], team1[2], ground1, team2[1], team2[2], ground2, team3[1], team3[2], ground3)

	GlobalExecute(strGlExe)

	OutputMsg(strGlExe);

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	return

	end

	if (task_time >= (TONGWAR_ENDTIME - 5) and task_time <= (TONGWAR_ENDTIME + 5)) then	-- bØ t¸i kÕt thóc

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	strGlExe = "dw tongwar_start(0) "	-- tham sè vi 0 biÓu thÞ bØ t¸i kÕt thóc

	GlobalExecute(strGlExe)

	OutputMsg(TONGWAR_NAME.."overed.")

	OutputMsg(strGlExe);

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	return

	end

	--OutputMsg(task_time.." ".. task_date.." ".. task_month)

	end

	function random_ground()	-- ngÉu nhiªn ph©n phèi ba thi ®Êu trµng, v« tha cho. Thi ®Êu trµng ®¸nh sè 1, 2, 3

	local grd = {}

	grd[1] = random(1, 3)

	repeat

	grd[2] = random(1, 3)

	until (grd[2] ~= grd[1])

	repeat

	grd[3] = random(1, 3)

	until (grd[3] ~= grd[1]) and (grd[3] ~= grd[2])

	return	grd[1], grd[2], grd[3]

	end

	function GetNextHour()

	local nh = tonumber(date( "%H ")) + 1;

	if (nh >= 24) then

	nh = 0;

	end;

	return nh;

	end;

	function tongwar_GetTong()

	local tb = {}

	for i = 1, 7 do

	local strCityName = GetCityAreaName(i)

	local strCityTongName = GetCityOwner(i)

	tb[strCityTongName] = tb[strCityTongName] or {}

	tinsert(tb[strCityTongName], strCityName)

	end

	return tb

	end

	function tongwar_GetCurSeason(nDate)

	for i, tb in TONGWAR_SEASON_TB do

	if (nDate >= TONGWAR_SEASON_TB[i][1] and nDate <= TONGWAR_SEASON_TB[i][5]) then

	OutputMsg(format( "%d<=%d<=%d ->%d",TONGWAR_SEASON_TB[i][1],nDate,TONGWAR_SEASON_TB[i][5], i));

	return i;

	end;

	end;

	OutputMsg(format( "%d ->%d",nDate,0));

	return 0;

	end

	function tongwar_initmatch(nseason)

	if (gb_GetTask( "TONGWAR_STATION", 3) == nseason) then

	OutputMsg( "gb_GetTask(TONGWAR_STATION, 3) == nseason) ")

	return 0;

	end;

	local szlogfile = LOGFILE.. date( "%y%m ").."\\tongwar.log"

	-- t©n nhÊt quý ®Ö nhÊt bang, c¾t bá cò chiÕn ®éi

	tongwar_delete_oldleague(TONGWAR_LGTYPE, nseason);

	-- c¾t bá cò ®Ö nhÊt bang bang chñ ®¼ng cÊp ®éi h÷u

	tongwar_delete_oldleague(ONETONG_LGTYPE);

	tongwar_delete_oldleague(ONETONG_ACC_LGTYPE);

	local tbTongSet = tongwar_GetTong()

	for strCityTongName, tbCity in tbTongSet do

	if getn(tbCity) == 1 and strCityTongName ~= nil and strCityTongName ~= "" then

	local strCityName = tbCity[1]

	if FALSE(LG_GetLeagueObj(TONGWAR_LGTYPE, strCityName)) then

	local nLeagueID = LG_CreateLeagueObj()

	LG_SetLeagueInfo(nLeagueID, TONGWAR_LGTYPE, strCityName)

	LG_ApplyAddLeague(nLeagueID, "", " ")

	LG_FreeLeagueObj(nLeagueID)

	LG_ApplySetLeagueTask(TONGWAR_LGTYPE, strCityName, TONGWAR_LGTASK_SEASON, nseason);

	if (not FALSE(strCityTongName))then

	nMemberID = LGM_CreateMemberObj()

	-- thiÕt trÝ x· ®oµn thµnh viªn tin tøc (vai danh, chøc vÞ, x· ®oµn lo¹i h×nh, x· ®oµn tªn gäi)

	LGM_SetMemberInfo(nMemberID, strCityTongName, 1, TONGWAR_LGTYPE, strCityName)

	LGM_ApplyAddMember(nMemberID, "", "")

	LGM_FreeMemberObj(nMemberID)

	LG_ApplySetMemberTask(TONGWAR_LGTYPE, strCityName, strCityTongName, TONGWAR_LGMTASK_JOB, 1)

	end

	WriteStringToFile(szlogfile, strCityName.."\t ".. strCityTongName.."\n ")

	OutputMsg( "Tham gia vâ l©m ®Ö nhÊt bang bang héi ®· x¸c ®Þnh! !");

	end

	end

	end

	for i = 10225, 10234 do		-- thanh trõ b¶ng xÕp h¹ng tin tøc; néi dung cô thÓ kiÓm tra ui\ c©y h×nh bµi danh chñ ®Ò. ini

	Ladder_ClearLadder(i);

	end;

	-- "TONGWAR_STATION "	1, xa t­ nöa gi¸ bang héi id

	--					2, ®Ö nhÊt thiªn h¹ bang thi ®Êu quý

	gb_SetTask( "TONGWAR_STATION", 2,1)	-- tr­íc mÆt giai ®o¹n vi 1, míi më ®Ö nhÊt thiªn h¹ bang

	gb_SetTask( "TONGWAR_STATION", 3,nseason)	--

	return 1;

	end;

	function set_tongwar_phase(nphase)

	if (gb_GetTask( "TONGWAR_STATION", 2) ~= nphase) then

	gb_SetTask( "TONGWAR_STATION", 2,nphase)	-- tr­íc mÆt giai ®o¹n vi 0, kh«ng cã ®Ö nhÊt bang bØ t¸i

	OutputMsg( "Set TongWar Phase ".. nphase)

	end;

	end;

	function tongwar_delete_oldleague(nlgtype, nseason)

	local n_lid = LG_GetFirstLeague(nlgtype);

	while (not FALSE(n_lid)) do

	local n_rmlid = n_lid;

	n_lid = LG_GetNextLeague(nlgtype, n_lid);

	if (not nseason or LG_GetLeagueTask(n_rmlid, TONGWAR_LGTASK_SEASON) ~= nseason) then

	local str_lgname = LG_GetLeagueInfo(n_rmlid);

	LG_ApplyRemoveLeague(nlgtype, str_lgname);

	end;

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


