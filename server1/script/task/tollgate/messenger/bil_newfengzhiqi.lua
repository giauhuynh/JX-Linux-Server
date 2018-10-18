
-- Create By Bil4i3n
-- 25/07/2015

_BIL_TIME_EVENT_ON_PLAYER = (60*60)

Include("\\script\\global\\bil4i3n\\bill4i3n.lua");
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Bil_CheckTimeHaveBeenUsed()
	if Bil_CheckResetTask1212Fl(GetTask(1210)) == 1212 then
		return "<color=yellow>"..(_BIL_TIME_EVENT_ON_PLAYER/60).."<color>"
	else
	return "<color=yellow>"..floor((_BIL_TIME_EVENT_ON_PLAYER/60) - (GetTask(1212)/60)).."<color>"
	end
end

function Bil_NewEspeciallyMessenger()
	local szTitle = Bil_EnemySay[5][1].."ViÖc qu©n c¬ cña TriÒu ®×nh gÇn ®©y lu«n bŞ giÆc Kim biÕt tr­íc, ta nghi ngê cã néi gi¸n. Nh­ng tr­íc khi mÊy tªn b¹i lo¹i nµy bŞ ph¸t hiÖn, ta muèn r»ng tin nµy kh¾p n¬i ®Òu biÕt, ng­¬i cã muèn gãp mét phÇn søc cho Quèc gia kh«ng?<enter>Thêi gian Phong Kú cßn l¹i cña ®¹i nh©n lµ: "..Bil_CheckTimeHaveBeenUsed().." Phót";
	local tbOpt = 
	{
		{"Ta b»ng lßng!",Bil_SureFengzh_Chek},
		{"Ta ®Õn ®Ó giao nhiÖm vô Tİn sø",Bil_FinishFengzh},
		{"Ta muèn xãa bá nhiÖm vô Tİn sø",Bil_DelFengzh},
		{"Ta muèn t×m hiÓu vÒ nhiÖm vô Tİn sø",Bil_FengzhWhat},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_SureFengzh_Chek()

	-- do 
		-- return Talk(1, "", "V× hiÖn t¹i Phong kú ®ang ph¸t sinh lçi ngoµi ı muèn, nªn t¹m thêi ®ãng b¶n ®å nµy, thêi gian ®ãng b¶n ®å cã thÓ ®Õn b¶o tr× lÇn sau, xin lçi quı nh©n sÜ v× sù bÊt tiÖn nµy!")
	-- end

	if bilCheckTimeFengzhiqui() then return end
	local Bil_Task1212TimeUsed
	local Bil_CheckResetTask1212 = Bil_CheckResetTask1212Fl(GetTask(1210))
	if Bil_CheckResetTask1212 ~= 1212 then
		Bil_Task1212TimeUsed = GetTask(1212)
	else
		SetTask(Bil_CheckResetTask1212, 0)
		Bil_Task1212TimeUsed = GetTask(1212)
	end
	local Uworld1204 = GetTask(1204)  
	local Uworld1028 = GetTask(1028)
	if GetLevel() < 80 then
		return Talk(1,"", Bil_EnemySay[5][1].."ThËt xin lçi, tr­íc m¾t cÊp bËc cña ng­¬i kh«ng ®ñ 80 cÊp. TiÕp tôc luyÖn tËp sau ®ã tíi t×m ta.")
	elseif Uworld1204 ~= 0 then
		return Talk(1,"", Bil_EnemySay[5][1].."Xin lçi! NhiÖm vô Tİn sø cña b¹n ch­a hoµn thµnh, kh«ng thÓ tiÕp nhËn nhiÖm vô tiÕp theo, xin hoµn thµnh nhiÖm vô nµy tr­íc, c¸m ¬n!")
	elseif Bil_Task1212TimeUsed >= _BIL_TIME_EVENT_ON_PLAYER then
		return Talk(1, "", Bil_EnemySay[5][1].."ThËt xin lçi , h«m nay thêi gian ë nhiÖm vô tİn sø ®· hÕt, xin mêi ngµy mai trë l¹i")
	elseif GetTask(1201) ~= 0 then
		return Say(Bil_EnemySay[5][1]..GetName().." ®¹i nh©n ch¼ng ph¶i ®ang lµm nhiÖm vô sao, nÕu ®· hoµn thµnh nhiÖm vô th× h·y ®i tr¶ nhiÖm vô ®i, <color=red>nÕu nhËn l¹i nhiÖm vô th× chiÕn c«ng lóc tr­íc sÏ bŞ t­íc bá<color>, ®¹i nh©n cã muèn lµm l¹i nhiÖm vô nµy?", 2, "Ta quyÕt nhËn l¹i nhiÖm vô/Bil_SureFengzh","Ah, ta quªn mÊt, c¶m ¬n ®¹i nh©n ®· nh¾c nhë/OnCancel")
	end
	Bil_SureFengzh();
end

function Bil_SureFengzh()
	SetTask(1210, tonumber(date("%y%m%d")))
	SetTask(1211,GetGameTime())  
	SetTask(1201, 10)
	NewWorld(389, 1580, 3135)
	Msg2Player("Cung tiÔn <color=yellow>"..GetName().."<color> ®¹i nh©n lªn ®­êng b×nh an!")
	if GetTask(5905) == 65 then
		bilNvTanThu:NextTask()
	end
end

function Bil_FinishFengzh()
	Bil_Uworld1201 = GetTask(1201)
	Bil_Uworld1218 = GetTask(1218)
	-- if Bil_Uworld1201 == 30 then
		-- if GetTask(1202) == 0 and GetTask(1203) == 0 then
			-- Talk(1, "", Bil_EnemySay[5][1].."C¸i tªn chÕt bÇm nµy ch­a cã chiÕn tİch g× còng ®ßi  nhËn th­ëng µ? Ng­êi ®©u, b»m c¸i tªn nµy lµm nh©n b¸nh bao cho ta!")
		-- else
			-- SetTask(1218,Bil_Uworld1218+1)
			-- Bil_flyprize()
		-- end
	-- elseif Bil_Uworld1201 == 20 then
		-- Talk(1, "", Bil_EnemySay[5][1].."C¸i tªn nµy d¸m <color=yellow>bá nhiÖm vô gi÷a chõng<color> cßn l¹i tr¶ nhiÖm vô! Ng­êi ®©u? B»m c¸i tªn nµy lµm nh©n b¸nh bao cho ta!")
	-- else
		-- Talk(1, "", Bil_EnemySay[5][1].."Ch­a tiÕp nhËn nhiÖm vô nµo ng­¬i cßn l¹i tr¶ nhiÖm vô! Ng­êi ®©u? B»m c¸i tªn nµy lµm nh©n b¸nh bao cho ta!")
	-- end
	
	if GetTask(1202) > 0 then
		SetTask(1218,Bil_Uworld1218+1)
		Bil_flyprize()
	else
		return Talk(1, "", Bil_EnemySay[5][1].."HiÖn t¹i ng­¬i kh«ng cßn phÇn th­ëng nµo  ®Ó nhËn c¶!")
	end
end

function Bil_flyprize()
	local Bil_ValueTask1202 = GetTask(1202)
	local Bil_ValueTask1203 = GetTask(1203)
	Ladder_NewLadder(10187, GetName(),GetTask(1205),1);
	local Uworld1207 = GetTask(1207)
	local i = random(5,20)
	AddRepute(i)
	if Bil_ValueTask1202 > 0 then
		-- Bil_messenger_giveplayerexp (Bil_ValueTask1202*10000, Bil_ValueTask1203*5000)
		Bil_messenger_giveplayerexp (Bil_ValueTask1202*8000, Bil_ValueTask1203*4000)
	end
	Msg2Player("Chóc mõng ng­¬i nhËn ®­îc <color=yellow>"..i.."<color> ®iÓm danh väng. ")
	SetTask(1201,0)	
	SetTask(1202, 0)
	SetTask(1203, 0)
	-- SetTask(1204,0)	
	SetTask(1207,0)	
	SetTask(1211,0)
end

function Bil_messenger_giveplayerexp(playerexpPoint, ExpNPC)
	AddOwnExp(playerexpPoint + ExpNPC)
	-- Msg2Player("Bëi v× ngµi lµm nhiÖm vô tİn sø biÓu hiÖn hoµn h¶o, ®¹t ®­îc <color=yellow>"..(playerexpPoint/10000).."<color> täa ®é vµ <color=yellow>"..(ExpNPC/5000).."<color> NPC, dŞch tr¹m th­ëng cho ngµi <color=yellow>"..playerexpPoint.." + "..ExpNPC.."<color> ®iÓm kinh nghiÖm !")
	Msg2Player("Bëi v× ngµi lµm nhiÖm vô tİn sø biÓu hiÖn hoµn h¶o, ®¹t ®­îc <color=yellow>"..(playerexpPoint/8000).."<color> täa ®é vµ <color=yellow>"..(ExpNPC/4000).."<color> NPC, dŞch tr¹m th­ëng cho ngµi <color=yellow>"..playerexpPoint.." + "..ExpNPC.."<color> ®iÓm kinh nghiÖm !")
	SetTask(1224,1) 
	SetTask(1223,0)
end

function Bil_DelFengzh()
	if GetTask(1201) == 0 then
		Talk(1, "", Bil_EnemySay[5][1]..GetName().." ®¹i nh©n vÉn ch­a tiÕp nhËn nhiÖm vô Tİn sø, kh«ng thÓ xãa bá!")
	else
		Say(Bil_EnemySay[5][1].."B¹n x¸c ®Şnh muèn xãa bá?", 2, "§óng vËy!/Bil_DelFengzh_Sure","§Ó ta suy nghÜ l¹i!/OnCancel")
	end
end

function Bil_DelFengzh_Sure()
	SetTask(1201,0) -- Phong kú
	SetTask(1202,0) -- S¬n  thÇn
	SetTask(1203,0) -- thiªn b¶o
	SetTask(1204,0)
	SetTask(1207,0)
	-- SetTask(1212,0) -- GameTime
	SetTask(1213,0)
	SetTask(1214,0)
	SetTask(1215,0)
	Msg2Player("Ng­¬i ®· hñy bá thµnh c«ng nhiÖm vô Tİn Sø.")
end

function Bil_FengzhWhat()
	local szTitle = Bil_EnemySay[5][1].."NhiÖm vô Tİn Sø lµ nhiÖm vô gióp TriÒu §×nh ®­a th­ cho c¸c DŞch Quan ë c¸c Thµnh ThŞ, v× gÇn ®©y néi c¸c trong TriÒu §×nh xuÊt hiÖn ph¶n tÆc, cho nªn trong lóc ®­a th­ ng­¬i sÏ gÆp kh«ng İt nguy hiÓm. Kh«ng cã nh÷ng ng­êi dòng c¶m trİ tuÖ siªu phµm nhÊt ®¼ng vµ tinh thÇn hîp t¸c ®oµn kÕt th× sÏ rÊt khã hoµn thµnh nhiÖm vô. ChØ cã ®¹t ®Õn <color=red> cÊp 80 trë lªn<color> míi cã thÓ tham gia. Tr­íc m¾t ng­¬i sÏ gÆp nh÷ng trë ng¹i cöa ¶i sau ®©y: <color=red> Phong kú täa ®é<color>. Trong nh÷ng cöa ¶i nµy cã v« sè kÎ thï kh«ng gièng nhau vµ nh÷ng c¬ quan kú qu¸i,  ng­¬i ph¶i dùa vµo trİ tuÖ cña m×nh ®Ó cã lùa chän cùc kú chİn x¸c. Ta chØ cã ®«I lêi nh­ vËy choc ng­¬i thµnh c«ng, cè lªn chiÕn h÷u!";
	local tbOpt = 
	{
		{"Giíi thiÖu ®¼ng cÊp ®Şa ®å",Bil_messenger_flyhorse_Level},
		{"Giíi thiÖu nhiÖm vô phong kú",Bil_messenger_flyhorse},
		{"Ta muèn biÕt thêi gian nhiÖm vô",Bil_messenger_flyhorse_LimitTime},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_messenger_flyhorse_Level()
	local szTitle = Bil_EnemySay[5][1].."Tr­íc m¾t <color=red>cÊp 80<color> trë lªn cã thÓ tham gia nhiÖm vô."
	local tbOpt = 
	{
		{"Quay l¹i",Bil_FengzhWhat},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_messenger_flyhorse()
	local szTitle = Bil_EnemySay[5][1].."Trong ¶i Phong Kú, b¹n cã thÓ chän ®Õn cæng ra, nh­ thÕ coi nh­ hoµn thµnh nhiÖm vô nh­ng chØ nhËn ®­îc ®iÓm danh väng. Trong ¶i, chóng t«i cã lËp nh÷ng môc tiªu nhiÖm vô ®¬n gi¶n: Däc ®­êng b¹n sÏ thÊy nhiÒu kı hiÖu cña qu©n ta ®Ó l¹i, cïng lóc cã nhiÒu gian tÕ Kim Quèc. B¹n chØ cÇn tiÕp xóc 5 täa ®å trong b¶n ®å cã thÓ ®Õn cæng ra t×m B¹ch Dùc T­íng qu©n qua ¶i. Nh­ng biÓu hiÖn cña b¹n ®Òu n»m trong tÇm m¾t cña trinh s¸t ta ph¸i ®Õn. §èi víi viÖc t¨ng ®¼ng cÊp Yªu bµi cña b¹n sÏ rÊt cã lîi."
	local tbOpt = 
	{
		{"Quay l¹i",Bil_FengzhWhat},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_messenger_flyhorse_LimitTime()
	local szTitle = Bil_EnemySay[5][1].."Sau khi tiÕp nhËn nhiÖm vô Tİn sø, b¹n cã thêi gian <color=red>2 giê<color> ®Ó hoµn thµnh. Thêi gian lµm nhiÖm vô mçi ngµy lµ <color=red>2 giê<color>. Chó ı! Khi ë trong ¶i, b¹n bŞ chÕt hoÆc rít m¹ng xem nh­ <color=red>nhiÖm vô thÊt b¹i<color>!"
	local tbOpt = 
	{
		{"Quay l¹i",Bil_FengzhWhat},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function OnCancel()
end