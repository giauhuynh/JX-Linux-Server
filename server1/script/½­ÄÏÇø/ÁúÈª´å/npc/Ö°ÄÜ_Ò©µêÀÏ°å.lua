-- ÁúÈª´å Ö°ÄÜNPC Ò©µêÀÏ°å£¨Îå¶¾10¼¶ÈÎÎñ£©
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main()
	UTask_wu = GetTask(10)
	if ((UTask_wu == 10*256+10) and (HaveItem("10°üĞÅÊ¯") == 0)) then 		--ÈÎÎñÖĞ
		Say("LTT62ÎÒÕâÀïÊ²Ã´Ò©²Ä¶¼ÓĞ£¬ÓĞ²¡Àë¿ª£¬ÎŞ²¡½¡Éí£¬ÂòÒ©³ÏĞÄ²»ÆÛÆ­£¬ÄãÒªÂòÒ»µãÂğ?", 3, "ÓĞÂôÅøËªĞÅÊ¯Âğ?/L10_buy", "½»Ò×/yes", "²»½»Ò×/no")
	else
		Say("LTT63ÎÒÕâÀïÊ²Ã´Ò©²Ä¶¼ÓĞ£¬ÓĞ²¡Àë¿ª£¬ÎŞ²¡½¡Éí£¬ÂòÒ©³ÏĞÄ²»ÆÛÆ­£¬ÄãÒªÂòÒ»µãÂğ?", 3, "½»Ò×/yes","ÎÒÀ´ÁìÈ¡³õÈëÈÎÎñ/yboss", "²»½»Ò×/no")
	end
end;

function L10_buy()
	Talk(1,"L10_buy_sele","ÄLTT64Ç¿ÉÊÇ¶¾Ò©°¡£¬ÄãÒ»ÏÂÂòÕâÃ´¶àÏë¸ÉÊ²Ã´?")
end;

function L10_buy_sele()
	Say("²LTT65»¹ı£¬Èç¹ûÄã¿Ï¸ø¶àµãÇ®µÄ»°... ºÙºÙ£¬1000Á½!",2,"Âò/L10_buy_yes","ÔõÃ´¸úÇÀÇ®Ò»Ñù!/L10_buy_no")
end;

function L10_buy_yes()
	if (GetCash() >= 1000) then
		Pay(1000)
		AddEventItem(220)
		AddNote("ÂLTT66òµ½10°üÅøËª.")
		Msg2Player("Âòµ½10°üÅøËª.")
	end
end;

function L10_buy_no()
	Talk(1,"","ÂLTT67òÅøËª°¡£¿Ë­ÖªµÀÄãÂòÕâÃ´¶àÒª¸ÉÂï?")
end;

function yes()
	Sale(30);  			--µ¯³ö½»Ò×¿ò
end;

function no()
end;
