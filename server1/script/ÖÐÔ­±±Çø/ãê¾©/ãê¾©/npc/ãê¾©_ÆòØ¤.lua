-- Ñ§¡°½Ù¸»¼ÃÆ¶¡±¼¼ÄÜµÄÆòØ¤
-- By: Dan_Deng(2003-08-22)
-- ¸øÇ®ÊýµÚÒ»´Î100£¬µÚ¶þ´Î200£¬µÚÈý´Î400...ÒÀ´ËÀµÍÆ£¬¹À¼Æ8´Î(12800)Ö®ºó»¹Ã»Ñ§µ½µÄ¾ÍÃ»Ê²Ã´ÒâÒåÁË£¬Ö»ÄÜÔ¹Ì«Ãü¿µ¡£

function main(sel)
	-- UTask_world16 = GetTask(16)
	-- if (UTask_world16 == 255) then			-- ÈÎÎñÒÑÍê³É
		-- Talk(1,"","GÆp ph¶i chuyÖn tèt!")
	-- else
		-- i = (2 ^ UTask_world16) * 100
		-- Say("Chóc ng­¬i kháe m¹nh , ®¸ng th­¬ng ®¸ng th­¬ng ta ®©y tªn ¨n mµy ®i! ",2,"Cho ng­¬i "..i.." ng©n l­îng./W53_pay","¡n ngon lµm l­êi, nhÊt ®Þnh kh«ng cho/W53_no")
	-- end
	Say("Bå t¸t phï hé, ngµi cã thÓ bè thÝ cho ta 1 b÷a c¬m ®­îc kh«ng!")
end;

-- function W53_pay()
	-- UTask_world16 = GetTask(16)
	-- i = (2 ^ UTask_world16) * 100
	-- if (GetCash() >= i) then
		-- Pay(i)
		-- if (random(0,99) < 20) then			-- 20%»ú¢ÊÑ§µ½¡°½Ù¸»¼ÃÆ¶¡±¼¼ÄÜ
			-- Talk(3,"W53_prise","§a t¹ h¶o t©m cña ng­¬i, muèn häc mét Ýt chuyÖn ®ïa trß ch¬i sao? ","ChuyÖn ®ïa, trß ch¬i? ","§óng. ")
		-- else
			-- SetTask(16,UTask_world16 + 1)
		-- end
	-- else
		-- Talk(1,"","B©y giê ta kh«ng cã tiÒn lÎ ")
	-- end
-- end;

-- function W53_no()
	-- Talk(1,"","Ng­¬i kh«ng cã t©m ý, Bå T¸t sÏ kh«ng phï hé.")
-- end;

-- function W53_prise()
	-- AddNote("Bè thÝ tªn khÊt c¸i, häc ®­îc kü n¨ng c­íp cña ng­êi giµu gióp ng­êi nghÌo khã.")
	-- Msg2Player("bè thÝ tªn khÊt c¸i , häc ®­îc kü n¨ng c­íp cña ng­êi giµu gióp ng­êi nghÌo khã.")
	-- if (HaveMagic(400) == -1) then		-- ±ØÐëÃ»ÓÐ¼¼ÄÜµÄ²Å¸ø¼¼ÄÜ
		-- AddMagic(400,1)
	-- end
	-- SetTask(16,255)
-- end;
