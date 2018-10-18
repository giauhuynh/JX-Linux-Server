	Include( "\\script\\event\\tongwar\\event.lua");

	TONGWAR_NAME = " Vo lam de nhat bang "

	LEAGUE_NUMBER = 7

	TONGWAR_STATETIME = 2000

	TONGWAR_ENDTIME = 2130

	-- �� nh�t danh bang h�i bang ch� ��ng k� m�nh ��i h�u League

	ONETONG_LGTYPE		= 541;

	ONETONG_ACC_LGTYPE	= 542;

	TONGWAR_SEASON_TB = {

	-- ID = { th�i ��i, b�o danh b�t ��u nh�t, b�o danh k�t th�c nh�t (t�c b� t�i b�t ��u nh�t), b� t�i k�t th�c nh�t, th��ng cho l�nh b�t ��u nh�t, th��ng cho l�nh k�t th�c nh�t }

	--	[1] = {0706, 14, 18, 30, 70701, 70705},

	--	[2] = {0709, 14, 18, 30, 71001, 71006},

	--	[3] = {0803, 18, 18, 30, 80331, 80406},

	--	[4] = {0810, 3, 4, 16, 81017, 81022},

	--	[5]	= {0904, 3, 4,	 16, 90417, 90422},

	--	[6] = {0910, 3, 4,	 16, 91017, 91022},

	--	[7] = {1004, 15, 16, 28, 100429, 100502},

	-- ID = {[1] b�o danh b�t ��u nh�t,[2] b� t�i kh�i,	[3] b� t�i ch�,	[4] th��ng cho kh�i,	[5] th��ng cho ch� }

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

	SCHEDULE_TABLE = {	-- b� t�i nh�t tr�nh

	{

	"16",	-- 2009 ni�n 10 nguy�t 4 nh�t

	{5, 7}, 	-- l�m an VS T��ng D��ng

	{4, 6}, 	-- Bi�n Kinh VS D��ng Ch�u

	{2, 3}		-- th�nh �� VS ��i L�

	},

	{

	"17",	-- 2009 ni�n 10 nguy�t 6 nh�t

	{1, 4},		-- ph��ng t��ng VS Bi�n Kinh

	{5, 6},		-- T��ng D��ng VS D��ng Ch�u

	{3, 7}		-- l�m an VS ��i L�

	},

	{

	"19",	-- 2009 ni�n 10 nguy�t 8 nh�t

	{2, 7},		-- th�nh �� VS l�m an

	{1, 5},		-- ph��ng t��ng VS T��ng D��ng

	{6, 3}		-- D��ng Ch�u VS ��i L�

	},

	{

	"20",	-- 2009 ni�n 10 nguy�t 10 nh�t

	{4, 5},		-- Bi�n Kinh VS T��ng D��ng

	{2, 6},		-- th�nh �� VS D��ng Ch�u

	{1, 3}		-- ph��ng t��ng VS ��i L�

	},

	{

	"21",	-- 2009 ni�n 10 nguy�t 12 nh�t

	{1, 2},		-- ph��ng t��ng VS th�nh ��

	{6, 7},		-- l�m an VS D��ng Ch�u

	{3, 4}		-- Bi�n Kinh VS ��i L�

	},

	{

	"22",	-- 2009 ni�n 10 nguy�t 14 nh�t

	{2, 4},		-- th�nh �� VS Bi�n Kinh

	{1, 7},		-- ph��ng t��ng VS l�m an

	{3, 5}		-- T��ng D��ng VS ��i L�

	},

	{

	"23",	-- 2009 ni�n 10 nguy�t 16 nh�t

	{4, 7},		-- Bi�n Kinh VS l�m an

	{2, 5},		-- th�nh �� VS T��ng D��ng

	{1, 6}		-- ph��ng t��ng VS D��ng Ch�u

	}

	}

	function TaskShedule()

	TaskName(TONGWAR_NAME)

	OutputMsg(TONGWAR_NAME)

	local nhour = GetNextHour();

	TaskTime(nhour, 0)		-- l�n ��u nhi�m v� vu k� ti�p ch�nh m� ra th�y

	TaskInterval(30)	-- 30 ph�t m�t l�n

	TaskCountLimit(0)	-- v� h�n th� g�y ra nhi�m v�

	end

	function TaskContent()

	local task_month = tonumber(date( "%y%m "));

	local task_date = tonumber(date( "%d "));

	local task_time = tonumber(date( "%H%M "));

	local task_ymd = task_month *100 + task_date;

	local nseason = tongwar_GetCurSeason(task_ymd)

	OutputMsg(format( "B�y gi� thi ��u qu� vi %s", nseason))

	if (nseason == 0) then		-- kh�ng c� an b�i c�ng th�ng thi ��u tr�nh

	set_tongwar_phase(0);

	--OutputMsg( "season ".. task_month.." cannot be found in schedule, quit task.".. nseason)

	return 0;

	end;

	if (task_ymd > TONGWAR_SEASON_TB[nseason][5]) then	-- tr��c m�t thi ��u qu� th��ng cho th�i gian �� qua, nhi�m v� kh�ng l�i ti�p t�c

	set_tongwar_phase(0);

	--OutputMsg( "season ".. task_month.." cannot be found in schedule, quit task.")

	return 0;

	end;

	-- th� thi ��u tr�nh trung 22 nh�t 0 �i�m t� h�u t�c c�t b� th�ng tr��c chi�n ��i tin t�c, m�t l�n n�a ��c th� chi�m th�nh bang h�i

	-- l�c n�y, h�i thanh tr� b�ng x�p h�ng tin t�c

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

	set_tongwar_phase(2);-- tr��c m�t giai �o�n vi 2, b� t�i nh�t ti�n �i trung

	end

	elseif (task_ymd >= TONGWAR_SEASON_TB[nseason][4] and task_ymd <= TONGWAR_SEASON_TB[nseason][5]) then

	set_tongwar_phase(3);-- tr��c m�t giai �o�n vi 3, th��ng cho cho vay trung

	end;

	local team1, team2, team3	-- Table lo�i h�nh, Table[2] = { li�n minh 1, li�n minh 2}

	local strGlExe = ""

	for i = 1, LEAGUE_NUMBER do

	if (tostring(task_date) == SCHEDULE_TABLE[i][1]) then

	team1 = SCHEDULE_TABLE[i][2]

	team2 = SCHEDULE_TABLE[i][3]

	team3 = SCHEDULE_TABLE[i][4]

	end

	end

	if (not team1) or (not team2) or (not team3) then	-- ng�y kh�ng � nh�t tr�nh trong ngo�i, r�i kh�i

	OutputMsg( "date ".. task_date.." cannot be found in schedule, quit task.")

	return

	end

	if (task_time >= (TONGWAR_STATETIME - 5) and task_time <= (TONGWAR_STATETIME + 5)) then	-- b� t�i b�t ��u

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	OutputMsg(TONGWAR_NAME.."starting.")

	for i = 1, getn(TONGWAR_CITY) do

	local szcityname = TONGWAR_CITY[i];

	LG_ApplySetLeagueTask(TONGWAR_LGTYPE, szcityname, TONGWAR_LGTASK_CAMP, 0)

	LG_ApplySetLeagueTask(TONGWAR_LGTYPE, szcityname, TONGWAR_LGTASK_MAP, 0)

	end;

	local ground1, ground2, ground3 = random_ground()	-- ng�u nhi�n ph�n ph�i n�i so t�i

	-- truy�n l�i 9 m�t tham s�, theo th� t� l� cu�c so t�i th� nh�t li�n minh ��i ng� song ph��ng tr�n doanh, n�i s�n, tr�n th� hai tranh t�i li�n minh ��i ng� song ph��ng tr�n doanh, n�i s�n, cu�c tranh t�i th� ba li�n minh ��i ng� song ph��ng tr�n doanh, n�i s�n

	strGlExe = format( "dw tongwar_start(%d, %d, %d, %d, %d, %d, %d, %d, %d)", team1[1], team1[2], ground1, team2[1], team2[2], ground2, team3[1], team3[2], ground3)

	GlobalExecute(strGlExe)

	OutputMsg(strGlExe);

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	return

	end

	if (task_time >= (TONGWAR_ENDTIME - 5) and task_time <= (TONGWAR_ENDTIME + 5)) then	-- b� t�i k�t th�c

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	strGlExe = "dw tongwar_start(0) "	-- tham s� vi 0 bi�u th� b� t�i k�t th�c

	GlobalExecute(strGlExe)

	OutputMsg(TONGWAR_NAME.."overed.")

	OutputMsg(strGlExe);

	OutputMsg( "-------------------TONGWAR MSG--------------------------- ")

	return

	end

	--OutputMsg(task_time.." ".. task_date.." ".. task_month)

	end

	function random_ground()	-- ng�u nhi�n ph�n ph�i ba thi ��u tr�ng, v� tha cho. Thi ��u tr�ng ��nh s� 1, 2, 3

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

	-- t�n nh�t qu� �� nh�t bang, c�t b� c� chi�n ��i

	tongwar_delete_oldleague(TONGWAR_LGTYPE, nseason);

	-- c�t b� c� �� nh�t bang bang ch� ��ng c�p ��i h�u

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

	-- thi�t tr� x� �o�n th�nh vi�n tin t�c (vai danh, ch�c v�, x� �o�n lo�i h�nh, x� �o�n t�n g�i)

	LGM_SetMemberInfo(nMemberID, strCityTongName, 1, TONGWAR_LGTYPE, strCityName)

	LGM_ApplyAddMember(nMemberID, "", "")

	LGM_FreeMemberObj(nMemberID)

	LG_ApplySetMemberTask(TONGWAR_LGTYPE, strCityName, strCityTongName, TONGWAR_LGMTASK_JOB, 1)

	end

	WriteStringToFile(szlogfile, strCityName.."\t ".. strCityTongName.."\n ")

	OutputMsg( "Tham gia v� l�m �� nh�t bang bang h�i �� x�c ��nh! !");

	end

	end

	end

	for i = 10225, 10234 do		-- thanh tr� b�ng x�p h�ng tin t�c; n�i dung c� th� ki�m tra ui\ c�y h�nh b�i danh ch� ��. ini

	Ladder_ClearLadder(i);

	end;

	-- "TONGWAR_STATION "	1, xa t� n�a gi� bang h�i id

	--					2, �� nh�t thi�n h� bang thi ��u qu�

	gb_SetTask( "TONGWAR_STATION", 2,1)	-- tr��c m�t giai �o�n vi 1, m�i m� �� nh�t thi�n h� bang

	gb_SetTask( "TONGWAR_STATION", 3,nseason)	--

	return 1;

	end;

	function set_tongwar_phase(nphase)

	if (gb_GetTask( "TONGWAR_STATION", 2) ~= nphase) then

	gb_SetTask( "TONGWAR_STATION", 2,nphase)	-- tr��c m�t giai �o�n vi 0, kh�ng c� �� nh�t bang b� t�i

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


