--Î÷ÄÏ±±Çø ³É¶¼¸® ¢·ÈË14Ñ¦Ğ¡··¶Ô»°  ¶ëáÒÅÉ40¼¶ÈÎÎñ
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)
-- ĞŞ¸ÄDan_Deng µÄ´íÎó£ºQBJ(2003-10-3)

function main(sel)
	UTask_em = GetTask(1)
	UTask_emsub01 = GetByte(GetTask(29),1)
	if (UTask_em == 40*256+50) then		-- 40¼¶ÈÎÎñÖĞ
		if (UTask_emsub01 == 0) then
		Talk(5, "", "TiÕt TiÓu muéi : vŞ ®¹i tû nµy , nhÜ l·o cïng ë ta , cã chuyÖn g× sao", " bëi v× muéi tö trªn ng­êi ng­¬i cã mét lo¹i mïi th¬m kú dŞ , cho nªn...", "TiÕt tiÓu muéi : a , ng­¬i thËt ngöi thÊy sao ? ta dïng linh x¹ h­¬ng nang , bªn trong h­¬ng liÖu tõ T©y Vùc truyÒn tíi ®©y !", "§óng lµ linh x¹ h­¬ng nang , khã tr¸ch th¬m nh­ vËy ! muéi tö , ng­¬i cã thÓ hay kh«ng ®­a c¸i nµy linh x¹ h­¬ng nang b¸n cho ta ? ta cã viÖc cÇn dïng"," TiÕt tiÓu muéi :Ta kh«ng b¸n ®©u , ta nghe nãi trong thµnh tiÖm t¹p hãa gÇn nhÊt míi võa cã chi ng©n tr©m , ng­¬i cÇm mét chi ng©n tr©m tíi cïng ta ®æi ®i !")
			SetTask(29,SetByte(UTask_emsub01,1,1))			-- ÉèÖ·task(29)µó1¸ö×Ö½óÎª1
--			SetTask(29, 2)	
			AddNote("gÆp TiÕt tiÓu muéi(383, 315) t×m ®­îc linh x¹ h­¬ng nang , nh­ng muèn dïng ng©n tr©m trao ®æi .. ")
			Msg2Player("TiÕt tiÓu muéi ®Ò nghŞ dïng ng©n tr©m ®æi linh x¹ h­¬ng nang")
		elseif ((UTask_emsub01 == 1) and (HaveItem(63) == 1)) then
			Say("TiÕt tiÓu muéi : thËt lµ ®Ñp ®İch ng©n tr©m , c¸i nµy h­¬ng nang sÏ ®­a cho ng­¬i ", 1, "lÊy ®­îc linh x¹ h­¬ng nang/get")
			DelItem(63)
			AddEventItem(166)
			SetTask(29,SetByte(UTask_emsub01,1,10))
--			SetTask(29, 2)
			AddNote("lÊy ®­îc linh x¹ h­¬ng nang")
			Msg2Player("lÊy ®­îc linh x¹ h­¬ng nang")
		elseif (UTask_emsub01 == 10) and (HaveItem(166) == 0) then
			AddEventItem(166)
			Talk(1,"","TiÕt tiÓu muéi : mua ®­îc ng©n tr©m sao ?")
		else
			Talk(1,"","TiÕt tiÓu muéi : ta kh«ng cã linh x¹ h­¬ng nang  , ng­¬i cßn cã chuyÖn g×?")
		end
	else
		Talk(1,"","TiÕt tiÓu muéi : nhÜ l·o cïng ë ta , cã chuyÖn g× sao ?")
	end
end;

function get()
end;
