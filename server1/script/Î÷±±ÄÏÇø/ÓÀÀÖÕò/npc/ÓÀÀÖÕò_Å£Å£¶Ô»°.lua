----description: Ğ¢ÊÖ´å_Å£Å£
--author: wangzg	
--date: 2003/7/18
--Modify:2003/7/21 wangzg
--update 2003/7/22 yuanlan
-- Update: Dan_Deng(2003-08-07)
-- µÈ´ı¼ì²â²¢É¾³ıÎäÆ÷µÄº¯Êı£¬ÏÖÔÚÏÈÖ»ÔÊĞí¸øÇ®

function main(sel)
	UTask_world37=GetTask(65)
	if (UTask_world37==2) then		--ÒÑ¾­½Óµ½ÈÎÎñ
		Say("Ta muèn lµ ®¹i hiÖp, ®i kh¾p n¬i hµnh hiÖp tr­îng nghÜa, gióp ®ì ng­êi nghÌo khæ",2,"Khuyªn can/reason", "?ng hé/help")
	elseif (UTask_world37==9) then		--Ñ¡ÔñÈ°Ëµ
		Say("Lµm ®¹i hiÖp thËt khã, luyÖn vâ c«ng l©u qu¸.",0)
	elseif (UTask_world37==10) then		--Ñ¡ÔñÖ§³Ö
		Say("Lµm ®¹i hiÖp thËt khã, luyÖn vâ c«ng l©u qu¸.",0)	
	else
		Say("Nh÷ng hiÖp kh¸ch trong s¸ch thËt lµ oai phong, nÕu ®­îc gièng nh­ hä th× hay qu¸!",0)
	end
end;

function reason()		--Ñ¡ÔñÈ°ËµÅ£Å£
	Talk(3,"prise","Ng­êi xÊu rÊt hung d÷, ®Ö cßn nhá nh­ thÕ, vâ c«ng còng luyÖn kh«ng tèt th× lµm sao ®i hµnh hiÖp tr­îng nghÜa?","Ng­¬i nãi còng ®óng! §îi ta lín lªn, luyÖn thªm vâ c«ng, sÏ ®i hµnh hiÖp tr­îng nghÜa!","§óng råi! LuyÖn tèt vâ c«ng c¬ b¶n, sau ®ã h·y ®i ®¸nh ng­êi xÊu.")
end;

function prise()
	Talk(1,"","VËy ta vÒ nhµ ®©y! C¶m ¬n ®¹i hiÖp! §©y cã chót thuèc trŞ th­¬ng, xin nhËn cho!")
	AddItem(1,0,0,1,0,0)
	AddItem(1,0,0,1,0,0)
	AddItem(1,0,0,1,0,0)
	SetTask(65,9)
	AddRepute(6)		-- ÉùÍû¼Ó6µã
	AddNote("T×m ®­îc Ng­u Ng­u, khuyªn nã vÒ nhµ, nhiÖm vô hoµn thµnh. ")
	Msg2Player("T×m ®­îc Ng­u Ng­u, khuyªn nã vÒ nhµ, nhiÖm vô hoµn thµnh. ")
	Msg2Player("NhËn ®­îc 3 Kim S¸ng D­îc")
	Msg2Player("Danh väng cña b¹n t¨ng thªm 6 ®iÓm.")
end;

function help()			--Ñ¡Ôñ°ïÖúÅ£Å£
--	Say("ÍLMT33æ¼Ò£ºĞ¡Ğ¡Äê¼Í£¬µ¹Í¦ÓĞÖ¾Æø¡£",3,"ËÍÒ»°ÑÎäÆ÷/arm","ËÍÒ»µãÒø×Ó/money","ÎÒÔÙÏëÏë/wait")
	Say("Tuæi cßn nhá nh­ng ®· cã chİ lín!",2,"TÆng mét chót b¹c/money","§Ó ta suy nghÜ l¹i xem/wait")		--µÈÄÜ¹»¼ì²âÎäÆ÷ÔÙÓÃÉÏÃæÕâ¾ä£¬ÏÖÔÚÏÈÖ»¸øÇ®
end

function arm()
	if x==0 then	--Èç¹ûÃ»ÓĞÎäÆ÷
		Say("LMT35ÎÒÏÖÔÚÃ»ÓĞÎäÆ÷?",3,"ËÍÒ»°ÑÎäÆ÷/arm","ËÍÒ»µãÒø×Ó/money","ÎÒÔÙÏëÏë/wait")
	else 
		--¸øÎäÆ÷
		Talk(1,"","LMT36Ğ»Ğ»Äã£¬ÄãÕæºÃ!")
		AddOwnExp(100)
		SetTask(65,10)
		AddNote("LMT37ÕÒµ½Å£Å££¬¸øËûÒ»°ÑÎäÆ÷£¬Ö§³ÖËûµÄ´óÏÀÃÎ")
	end
end

function money()
	if (GetCash() < 100) then
--		Say("ÍLMT38æ¼Ò£º°¥Ñ½£¬ÎÒÉíÉÏÃ»´øÊ²Ã´Ç®¡£",3,"ËÍÒ»°ÑÎäÆ÷/arm","ËÍÒ»µãÒø×Ó/money","ÎÒÔÙÏëÏë/wait")
		Talk(1,"","LMT39ÎÒÉíÉÏÃ»´øÇ®£¬µÈÎÒ»ØÀ´")		--µÈÄÜ¹»¼ì²âÎäÆ÷ÔÙÓÃÉÏÃæÕâ¾ä£¬ÏÖÔÚÏÈÖ»¸øÇ®
	else
		Pay(100)
		Talk(1,"","C¶m ¬n ®¹i hiÖp! Ng­¬i thËt lµ tèt")
		AddOwnExp(100)
		SetTask(65,11)
		AddRepute(4)
		AddNote("T×m ®­îc Ng­u Ng­u, cho nã 1 İt b¹c, ñng hé m¬ uwowngcs lµm ®¹i hiÖp cña nã. Hoµn thµnh nhiÖm vô.")
		Msg2Player("T×m ®­îc Ng­u Ng­u, cho nã 1 İt b¹c, ñng hé m¬ uwowngcs lµm ®¹i hiÖp cña nã. Hoµn thµnh nhiÖm vô.")
		Msg2Player("Kinh nghiÖm giang hå cña b¹n ®· t¨ng lªn! ")
		Msg2Player("Danh väng cña b¹n t¨ng thªm 4 ®iÓm. ")
	end
end

function wait()
end
