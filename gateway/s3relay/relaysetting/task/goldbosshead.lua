	-- hoµng kim qu¸i vËt ch©n cña b¶n ®Æt ra

	--1, thµnh lËp mét hoµng kim qu¸i vËt s¶n sinh ph­¬ng ¸n kŞch b¶n gèc v¨n kiÖn ®Ó c¹nh nhau ®­a ë Relay\RelaySetting\Task\ môc lôc phİa d­íi.

	-- ë cai v¨n kiÖn bé phËn më ®Çu ph¶i bao hµm hoµng kim qu¸i vËt ®Çu v¨n kiÖn

	-- ®Ó mµ phİa d­íi ph¸p bao hµm

	--Include( "\\RelaySetting\\Task\\GoldBossHead.lua ");

	--2, ë phi hµm sè khu vùc (toµn côc ®Şnh nghÜa), ®iÒn d÷ hoµng kim qu¸i vËt cã liªn quan toµn côc l­îng biÕn ®æi gi¸ trŞ

	-- theo thø tù lµ

	--1, Sid biÓu thŞ sinh ra Boss ph­¬ng ¸n hµo, tõng ph­¬ng ¸n chØ cã thÓ ®ång thêi s¶n sinh mét Boss. Chó ı Boss ph­¬ng ¸n hµo ph¶i lµ duy nhÊt, bÊt n¨ng ®Æt ra t¸i diÔn Sid hµo.

	--2, Interval biÓu thŞ s¶n sinh Boss kho¶ng c¸ch thêi gian, ®¬n vŞ vi phót

	--3, Count biÓu thŞ g©y ra cai ph­¬ng ¸n sè lÇn, nÕu v× 0 biÓu thŞ v« h¹n sè lÇn, chØ cÇn ®Õn lóc ®ã ®ang lóc tùu g©y ra b¶n kŞch b¶n gèc.

	--4, StartHour, StartMin biÓu thŞ lÇn ®Çu tiªn g©y ra bæn ph­¬ng ¸n thêi gian, StartHour biÓu thŞ tiÕng ®ång hå, StartMin biÓu thŞ phót.

	-- nÕu nh­ StartHour d÷ StartMin b»ng -1 th×, biÓu thŞ Relay më ra ®éng, liÒn lËp tøc b¾t ®Çu lÇn ®Çu tiªn g©y ra

	-- tû nh­:

	--Sid = 4

	--Interval = 30

	--Count = 4

	--StartHour = 3

	--StartMin = 19

	-- kÓ trªn ®Æt ra biÓu thŞ, thø 4 mét hoµng kim qu¸i vËt s¶n sinh ph­¬ng ¸n, t­¬ng ë 3 ®iÓm 19 xa nhau thñy lÇn ®Çu tiªn g©y ra, ®ång thêi sau ®ã mçi b¸n tiÕng ®ång hå (30 phót) g©y ra mét lÇn, céng g©y ra 4 thø. Còng chİnh lµ ë 3:19 3:49 4:19 4:49 g©y ra.

	--3, ®Şnh nghÜa d÷ thùc hiÖn Boss ch©n cña b¶n hµm sè NewBoss()

	-- cai hµm sè ph¶i tån t¹i. Cai hµm sè c«ng n¨ng thŞ quyÕt ®Şnh cã hay kh«ng yÕu s¶n sinh Boss,Boss së t¹i, chñng lo¹i d÷ ®¼ng cÊp.

	-- bëi vËy, hµm sè cuèi ph¶n håi nh­ sau 4 mét tham sè

	-- ph©n biÖt biÓu thŞ cã hay kh«ng yÕu s¶n sinh boss,boss së t¹i ®å id,boss Npc gç cèp pha id, boss ®¼ng cÊp.

	-- tû nh­ nh­ sau NewBoss thùc hiÖn.

	--function NewBoss()

	--return 1, 20, random(100), 50 + random(50);

	--end;

	-- biÓu thŞ, s¶n sinh qu¸i vËt, nã trªn mÆt ®Êt ®å ID vi 20 trªn b¶n ®å, npc gç cèp pha hµo ë 1 ®¸o 100 ngÉu nhiªn, ®¼ng cÊp ë 51 ®¸o 100 ngÉu nhiªn

	--4, ë Relay\RelaySetting\Task\TaskList.ini v¨n kiÖn trung t¨ng b¶n kŞch b¶n gèc

	-- b¶ [List] h¹ Count gi¸ trŞ gia nhÊt biÓu thŞ l¹i t¨ng lªn mét ®óng giê g©y ra nhiÖm vô

	-- t¨ng [Task_X], b¶ X thay thµnh míi nhÊt Count gi¸ trŞ.

	-- ë [Task_X] TaskFile th­îng ®iÒn b¶n kŞch b¶n gèc v¨n kiÖn danh

	-- hoµng kim qu¸i vËt ng­êi thiÕt kÕ: §Ëu h¹o

	--2004. 2. 13 16:27:08

	function GameSvrConnected(dwGameSvrIP)

	bFind, key1, mapid = GetFirstRecordFromSDB( "GoldBoss",Sid, 0, 1, 0);

	if (bFind == 1) then

	-- nÕu nh­ nÆng liªn phôc vô khİ bao hµm Boss sè liÖu th×

	if (IsMapOnGameSvr(mapid, dwGameSvrIP ) == 1) then

	bResult, npctid, npclevel, npcstate = GetCustomDataFromSDB( "GoldBoss", Sid, mapid, "iii ");

	if (bResult == 1) then

	success = SaveCustomDataToSDBOw( "GoldBoss", Sid, mapid, "iii", npctid, npclevel, 0);

	NotifySDBRChanged1Svr(dwGameSvrIP, "GoldBoss", Sid,mapid,1);

	msg = format( "Hoµng kim qu¸i ph­¬ng ¸n %d, ph¸t hiÖn GameSvr %d khëi ®éng liªn tiÕp d÷ Relay, xuÊt hiÖn qu¸i vËt, khu vùc %d, ID Npc%d, ®¼ng cÊp Npc%d.", Sid, dwGameSvrIP, mapid, npctid, npclevel);

	OutputMsg(msg);

	else

	success = ClearRecordOnShareDB( "GoldBoss",Sid, 0,1,0);

	end;

	else

	OutputMsg( "Tr­ëng m¸y më l¹i kh«ng tån t¹i phİa d­íi BOSS: ".. Sid);

	end

	end

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "Boss Hoµng kim ".. Sid)

	-- thiÕt trİ kho¶ng c¸ch thêi gian, ®¬n vŞ vi phót

	TaskInterval(Interval)

	-- thiÕt trİ g©y ra sè lÇn, 0 biÓu thŞ v« h¹n sè lÇn

	TaskCountLimit(Count)

	-- ®Æt ra ®óng giê kú khëi ®éng thêi gian

	if (StartHour ~= -1 and StartMin ~= -1) then

	TaskTime(StartHour, StartMin);

	end;

	-- c¾t bá tõ tr­íc sè liÖu

	success = ClearRecordOnShareDB( "GoldBoss",Sid, 0,1,0);

	OutputMsg( "Du lieu Boss hoang kim database ".. Sid);

	end

	function TaskContent()

	bFind, key1, key2 = GetFirstRecordFromSDB( "GoldBoss",Sid, 0, 1, 0);

	if (bFind == 1) then

	OutputMsg( "T×m ®­îc Th«ng tin Boss Hoµng Kim database ".. Sid ..", ".. key2. ."Ph­¬ng ¸n t­ liÖu ");

	bResult, npctid, npclevel, npcstate = GetCustomDataFromSDB( "GoldBoss", Sid, key2, "iii ");

	msg =	format( "Tin ®ån %d cã ng­êi nh×n thÊy Npc: %d, ®¼ng cÊp:%d, tr¹ng th¸i: %d", Sid, npctid, npclevel, npcstate);

	OutputMsg(msg);

	if (bResult == 1) then

	if (npctid == 0 and npcstate == 0 and npclevel == 0) or (npctid ~= 0 and npclevel ~=0 and npcstate == 0) then

	create, mapid, npcid, npclevel = NewBoss();

	if (create == 1) then

	msg = format( "Hoµng kim Boss %d ®· l©u kh«ng thÊy, cã lÏ t­ìng nh­ ®· chÕt, nay xuÊt hiªn, Npc sæ vi %d, Npc ®¼ng cÊp %d.  ", Sid, mapid, npcid, npclevel);

	OutputMsg(msg);

	success = SaveCustomDataToSDBOw( "GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);

	NotifySDBRecordChanged( "GoldBoss", Sid,mapid,1);

	end

	end

	end

	else

	create, mapid, npcid, npclevel = NewBoss();

	msg = format( "Hoµng kim Boss %d ®· l©u kh«ng thÊy, gÇn xuÊt hiÖn s¾p xuÊt hiÖn, Npc sæ vi %d, Npc ®¼ng cÊp %d,", Sid, mapid, npcid, npclevel);

	OutputMsg(msg);

	success = SaveCustomDataToSDBOw( "GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);

	NotifySDBRecordChanged( "GoldBoss", Sid,mapid,1);

	end

	end



