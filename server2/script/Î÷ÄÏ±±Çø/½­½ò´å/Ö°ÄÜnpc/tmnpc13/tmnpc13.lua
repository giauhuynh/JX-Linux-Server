--description: ÌÆÃÅ½­½ò´åÌÆÔª 50¼¶ÈÎÎñ
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)

Include("\\script\\global\\repute_head.lua")

function main()
	UTask_tm = GetTask(2);
	Uworld123 = GetTask(123)
	Uworld37 = GetByte(GetTask(37),1)
	if ((GetLevel() >= 90) and (Uworld123 < 10) and (Uworld37 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~= "tangmen")) or
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5896) == 0) then		-- ÈÎÎñÆô¶¯Ìõ¼ş£º90¼¶¡¢ÊÇÌÆÃÅ¼ÇÃûµÜ×Ó¡¢ÈÎÎñÎ´×ö¹ı¡¢ÉùÍûµÈ¼¶5¼¶
		Talk(2,"U123_get","Ch¼ng hay c¸c h¹ ®Õn gÆp ta cã chuyÖn g×? kh«ng ph¶i lµ muèn ®Õn tiÕp nhËn nhiÖm vô cÊp 90 cña §­êng m«n sao!","®óng råi ®­¬ng nguyªn ®¹i huynh!")
	elseif (Uworld123 >= 10) and (Uworld123 < 255) then			-- ÈÎÎñ½øĞĞÖĞ
		Talk(1,"","Ch¼ng hay c¸c h¹ ®Õn ®©y lµ cã viÖc g×?")
	elseif (UTask_tm == 50*256+40) then  				--50¼¶ÈÎÎñ
		Talk(7, "", "GTT65ÕÒÎÒÓĞÊ²Ã´¼±ÊÂÂğ?", "ÎåÊ¦ĞÖ£¬×òÍíÄãÓĞÈ¥¹ı°µÆ÷·¿Âğ?", "§CÓĞ°¡£¬ÎÒÊÇÈ¥×öÇå½àµÄ£¬´òÉ¨Íê¾ÍÀë¿ªÁË!", "ÄãÓĞ¼ûµ½ÈıÊ¦ĞÖÂğ?", "ËµÀ´Ææ¹Ö£¬ÎÒ×òÍíÔÚ°µÆ÷·¿µÄºóÃæ¿´¼ûÒ»¸öÈËºÜÏñÈıÊ¦ĞÖ£¬ÎÒ½ĞÁËËûÒ»Éù£¬ÄÄÖªËû¼±´Ò´Ò¾Í×ßÁË£¬ÎÒ»¹ÒÔÎªÎÒÈÏ´íÁËÈËÄØ!", "Äã¿ÉÖªÈıÊ¦ĞÖÏÖÔÚºÎ´¦?", "ÎÒÔçÉÏ³öÃÅµÄÊ±ºò£¬¿´¼ûËûÍù <color=Red>Çà³ÇÉ½<color>·½ÏòÈ¥ÁË£¬¿ÉÄÜÈ¥ÁË<color=Red>ÏìË®¶´<color>, ÌıËµËûÔÚÄÇÀïÓĞĞ©ÅóÓÑ®ã.")
		SetTask(2, 50*256+60)
		Msg2Player(" GTT66ÔÚ½­½ò´åÕÒµ½ÌÆÔª£¬ÖªµÀÌÆºÌÈ¥ÁËÇà³ÇÉ½µÄÏìË®¶´")
		AddNote("ÔÚ½­½ò´åÕÒµ½ÌÆÔª£¬ÖªµÀÌÆºÌÈ¥ÁËÇà³ÇÉ½µÄÏìË®¶´")
	elseif (UTask_tm == 50*256+60) then  
		Talk(1,"","GTT67ÈıÊ¦ĞÖ¿ÉÄÜÈ¥ÁË<color=Red>ÏìË®¶´<color>, ÌıËµËûÔÚÄÇÀïÓĞĞ©ÅóÓÑ®ã.")
	else
		Talk(1,"","Cha mÑ ta mÊt sím, nhê ng­êi cËu nu«i nÊng nªn ng­êi, cËu lµ ng­êi th©n thuéc nhÊt cña ta.")
	end
end;

function U123_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- °×ÃûÎ´Ñ§Ò°ÇòÈ­µÄ£¬²»ÔÊĞí½ÓÈÎÎñ
		Talk(1,"","hiÖn t¹i ta kh«ng thÓ tiÕn hµnh nhiÖm vô nµy!")
	else
		Say("§­êng bÊt nhiÔm ta nghi ngê cã nh÷ng biÓu hiÖn bÊt th­êng, hiÖn t¹i nhµ ng­êi h·y ®Õn gÆp ng­êi xem sao!?",2,"§­îc th«i, ta ph¶i ®i 1 chuyÕn xem sao/U123_get_yes","th«i, ta kh«ng cã thêi gian ®Ó lµm nhiÖm vô nµy/no")
	end
end

function U123_get_yes()
	SetTask(123,10)
	SetTask(5896,1)
	Msg2Player("VÒ ®­êng m«n ph¸i, ®Õn tÕ tæ phßng gÆp §­êng bÊt nhiÔm")
	AddNote("VÒ ®­êng m«n ph¸i, ®Õn tÕ tæ phßng gÆp §­êng bÊt nhiÔm")
end

function no()
end
