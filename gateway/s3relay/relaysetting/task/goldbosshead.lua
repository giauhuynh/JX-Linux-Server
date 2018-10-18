	-- ho�ng kim qu�i v�t ch�n c�a b�n ��t ra

	--1, th�nh l�p m�t ho�ng kim qu�i v�t s�n sinh ph��ng �n k�ch b�n g�c v�n ki�n �� c�nh nhau ��a � Relay\RelaySetting\Task\ m�c l�c ph�a d��i.

	-- � cai v�n ki�n b� ph�n m� ��u ph�i bao h�m ho�ng kim qu�i v�t ��u v�n ki�n

	-- �� m� ph�a d��i ph�p bao h�m

	--Include( "\\RelaySetting\\Task\\GoldBossHead.lua ");

	--2, � phi h�m s� khu v�c (to�n c�c ��nh ngh�a), �i�n d� ho�ng kim qu�i v�t c� li�n quan to�n c�c l��ng bi�n ��i gi� tr�

	-- theo th� t� l�

	--1, Sid bi�u th� sinh ra Boss ph��ng �n h�o, t�ng ph��ng �n ch� c� th� ��ng th�i s�n sinh m�t Boss. Ch� � Boss ph��ng �n h�o ph�i l� duy nh�t, b�t n�ng ��t ra t�i di�n Sid h�o.

	--2, Interval bi�u th� s�n sinh Boss kho�ng c�ch th�i gian, ��n v� vi ph�t

	--3, Count bi�u th� g�y ra cai ph��ng �n s� l�n, n�u v� 0 bi�u th� v� h�n s� l�n, ch� c�n ��n l�c �� �ang l�c t�u g�y ra b�n k�ch b�n g�c.

	--4, StartHour, StartMin bi�u th� l�n ��u ti�n g�y ra b�n ph��ng �n th�i gian, StartHour bi�u th� ti�ng ��ng h�, StartMin bi�u th� ph�t.

	-- n�u nh� StartHour d� StartMin b�ng -1 th�, bi�u th� Relay m� ra ��ng, li�n l�p t�c b�t ��u l�n ��u ti�n g�y ra

	-- t� nh�:

	--Sid = 4

	--Interval = 30

	--Count = 4

	--StartHour = 3

	--StartMin = 19

	-- k� tr�n ��t ra bi�u th�, th� 4 m�t ho�ng kim qu�i v�t s�n sinh ph��ng �n, t��ng � 3 �i�m 19 xa nhau th�y l�n ��u ti�n g�y ra, ��ng th�i sau �� m�i b�n ti�ng ��ng h� (30 ph�t) g�y ra m�t l�n, c�ng g�y ra 4 th�. C�ng ch�nh l� � 3:19 3:49 4:19 4:49 g�y ra.

	--3, ��nh ngh�a d� th�c hi�n Boss ch�n c�a b�n h�m s� NewBoss()

	-- cai h�m s� ph�i t�n t�i. Cai h�m s� c�ng n�ng th� quy�t ��nh c� hay kh�ng y�u s�n sinh Boss,Boss s� t�i, ch�ng lo�i d� ��ng c�p.

	-- b�i v�y, h�m s� cu�i ph�n h�i nh� sau 4 m�t tham s�

	-- ph�n bi�t bi�u th� c� hay kh�ng y�u s�n sinh boss,boss s� t�i �� id,boss Npc g� c�p pha id, boss ��ng c�p.

	-- t� nh� nh� sau NewBoss th�c hi�n.

	--function NewBoss()

	--return 1, 20, random(100), 50 + random(50);

	--end;

	-- bi�u th�, s�n sinh qu�i v�t, n� tr�n m�t ��t �� ID vi 20 tr�n b�n ��, npc g� c�p pha h�o � 1 ��o 100 ng�u nhi�n, ��ng c�p � 51 ��o 100 ng�u nhi�n

	--4, � Relay\RelaySetting\Task\TaskList.ini v�n ki�n trung t�ng b�n k�ch b�n g�c

	-- b� [List] h� Count gi� tr� gia nh�t bi�u th� l�i t�ng l�n m�t ��ng gi� g�y ra nhi�m v�

	-- t�ng [Task_X], b� X thay th�nh m�i nh�t Count gi� tr�.

	-- � [Task_X] TaskFile th��ng �i�n b�n k�ch b�n g�c v�n ki�n danh

	-- ho�ng kim qu�i v�t ng��i thi�t k�: ��u h�o

	--2004. 2. 13 16:27:08

	function GameSvrConnected(dwGameSvrIP)

	bFind, key1, mapid = GetFirstRecordFromSDB( "GoldBoss",Sid, 0, 1, 0);

	if (bFind == 1) then

	-- n�u nh� n�ng li�n ph�c v� kh� bao h�m Boss s� li�u th�

	if (IsMapOnGameSvr(mapid, dwGameSvrIP ) == 1) then

	bResult, npctid, npclevel, npcstate = GetCustomDataFromSDB( "GoldBoss", Sid, mapid, "iii ");

	if (bResult == 1) then

	success = SaveCustomDataToSDBOw( "GoldBoss", Sid, mapid, "iii", npctid, npclevel, 0);

	NotifySDBRChanged1Svr(dwGameSvrIP, "GoldBoss", Sid,mapid,1);

	msg = format( "Ho�ng kim qu�i ph��ng �n %d, ph�t hi�n GameSvr %d kh�i ��ng li�n ti�p d� Relay, xu�t hi�n qu�i v�t, khu v�c %d, ID Npc%d, ��ng c�p Npc%d.", Sid, dwGameSvrIP, mapid, npctid, npclevel);

	OutputMsg(msg);

	else

	success = ClearRecordOnShareDB( "GoldBoss",Sid, 0,1,0);

	end;

	else

	OutputMsg( "Tr��ng m�y m� l�i kh�ng t�n t�i ph�a d��i BOSS: ".. Sid);

	end

	end

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Boss Ho�ng kim ".. Sid)

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(Interval)

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(Count)

	-- ��t ra ��ng gi� k� kh�i ��ng th�i gian

	if (StartHour ~= -1 and StartMin ~= -1) then

	TaskTime(StartHour, StartMin);

	end;

	-- c�t b� t� tr��c s� li�u

	success = ClearRecordOnShareDB( "GoldBoss",Sid, 0,1,0);

	OutputMsg( "Du lieu Boss hoang kim database ".. Sid);

	end

	function TaskContent()

	bFind, key1, key2 = GetFirstRecordFromSDB( "GoldBoss",Sid, 0, 1, 0);

	if (bFind == 1) then

	OutputMsg( "T�m ���c Th�ng tin Boss Ho�ng Kim database ".. Sid ..", ".. key2. ."Ph��ng �n t� li�u ");

	bResult, npctid, npclevel, npcstate = GetCustomDataFromSDB( "GoldBoss", Sid, key2, "iii ");

	msg =	format( "Tin ��n %d c� ng��i nh�n th�y Npc: %d, ��ng c�p:%d, tr�ng th�i: %d", Sid, npctid, npclevel, npcstate);

	OutputMsg(msg);

	if (bResult == 1) then

	if (npctid == 0 and npcstate == 0 and npclevel == 0) or (npctid ~= 0 and npclevel ~=0 and npcstate == 0) then

	create, mapid, npcid, npclevel = NewBoss();

	if (create == 1) then

	msg = format( "Ho�ng kim Boss %d �� l�u kh�ng th�y, c� l� t��ng nh� �� ch�t, nay xu�t hi�n, Npc s� vi %d, Npc ��ng c�p %d.  ", Sid, mapid, npcid, npclevel);

	OutputMsg(msg);

	success = SaveCustomDataToSDBOw( "GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);

	NotifySDBRecordChanged( "GoldBoss", Sid,mapid,1);

	end

	end

	end

	else

	create, mapid, npcid, npclevel = NewBoss();

	msg = format( "Ho�ng kim Boss %d �� l�u kh�ng th�y, g�n xu�t hi�n s�p xu�t hi�n, Npc s� vi %d, Npc ��ng c�p %d,", Sid, mapid, npcid, npclevel);

	OutputMsg(msg);

	success = SaveCustomDataToSDBOw( "GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);

	NotifySDBRecordChanged( "GoldBoss", Sid,mapid,1);

	end

	end



