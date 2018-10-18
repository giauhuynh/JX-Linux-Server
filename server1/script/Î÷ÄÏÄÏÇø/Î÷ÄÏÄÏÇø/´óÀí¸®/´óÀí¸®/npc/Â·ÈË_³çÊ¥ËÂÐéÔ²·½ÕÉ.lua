-- ´óµí³Ç¡¡¢·ÈË¡¡³çÊ¥Ë¢ĞéÔ²·½ÕÉ£¨´äÑÌ·Å50¼¶ÈÎÎñ£©
-- by£ºDan_Deng(2003-07-27)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 50*256+10) then		--50¼¶ÈÎÎñ
		SetTask(6,50*256+32)
		Talk(4,"","Ph­¬ng Tr­îng §¹i S­, ta lµ Thóy Yªn ®Ö tö, ch­ëng m«n gäi ta tíi gióp quı tù t×m b¶o vËt.","A di ®µ phËt, thËt lµ phiÒn cho thİ chñ, ®¹o tÆc ®· trèn vµo Thiªn Tµm th¸p.","Th¸p nµy lµ th¸nh ®Şa cña §¹i Lı, cho nªn, ®Ó phßng ngõa ng­êi kh¸c tiÕn vµo, ë trong th¸p cã rÊt nhiÒu ®ång nh©n. Thİ chñ muèn vµo xin h·y cÈn thËn!","§¹i s­ yªn t©m! ")
	elseif (UTask_cy == 50*256+32) and (HaveItem(5) == 1) then		-- İê³É
		SetTask(6,50*256+50)
		DelItem(5)
		Talk(3,"","Ph­¬ng Tr­îng ®¹i s­, c¸i nµy lµ quı tù mÊt tİch ng« ®ång quan ©m. Còng muèn gióp ®¹i s­ mét tay.","A di ®µ phËt, trÊn tù b¶o vËt ®· t×m ®­îc. ThËt lµ Bå T¸t phï hé, ®a t¹ thİ chñ. Göi lêi c¶m ¬n ch­êng m«n dïm ta.","§¹i s­ kh«ng nªn kh¸ch khİ!")
		Msg2Player("§­a ng« ®ång quan ©m cho Ph­¬ng Tr­îng h­ viªn.")
		AddNote("§­a ng« ®ång quan ©m cho Ph­¬ng Tr­îng h­ viªn.")
	elseif (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) then		-- ÈÎÎñ¹ı³ÌÖĞ
		Talk(1,"","Trót bá hÕt phiÒn to¸i, ta ë chç nµy niÖm kinh, kh«ng mµng chuyÖn nh©n thÕ.")
	elseif (UTask_cy >= 50*256+50) then						-- ÈÎÎñİê³ÉÒÔºó
		Talk(1,"","§a t¹ thİ chñ, thİ chñ tİch nhiÒu ®øc ¾t sÏ gÆp nhiÒu may m¾n.")
	else
		Talk(3,"","Vò §ång Quan ¢m lµ mét trong nh÷ng Sïng Th¸nh Ngò B¶o cña bæn tù, ®©y lµ niÒm tù hµo cña Sïng Th¸nh Tù.","Ng­¬i xuÊt giao sao mµ cã lßng kiªu ng¹o hiÓu th¾ng chø?","Lêi gi¸o huÊn cña thİ chñ thËt khiÕn bÇn t¨ng ph¶i suy xĞt l¹i. A Di §µ PhËt, A Di §µ PhËt, A Di §µ PhËt. ")
	end
end;
