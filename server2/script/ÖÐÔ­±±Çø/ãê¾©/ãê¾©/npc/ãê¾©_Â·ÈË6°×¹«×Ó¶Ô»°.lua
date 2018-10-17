--ÖĞÔ­±±Çø ãê¾©¸® Â·ÈË6°×¹«×Ó¶Ô»°
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main(sel)
	x = GetTask(12)
	Uworld123 = GetTask(123)
	if (x > 0) and (x < 256) and (HaveItem(231+x) == 1) and (GetLevel() >= 20) and (GetRepute() >= 20) then			-- µÈ¼¶¹ı20¡¢ÉùÍû¹ı20¡¢ÓĞÈÎÎñ¡¢ÓĞĞÅº¯ÄÜ¶ÔÓ¦ÉÏ£¬¿ÉÒÔ¿ªÊ¼ÊÕÂò
		if (GetSex() == 0) then		-- Íæ¼ÒÊÇÄĞ½ÇÉ«
			Talk(2,"W12_sale_get","1. ","ÌÖÈË£¬ÄãÏëÊ²Ã´¾ÍËµ£¬²»ÓÃÅÄÂíÆ¨ ")
		else
			Talk(2,"W12_sale_get","2. ","ÌÖÈË£¬ÄãÏëÊ²Ã´¾ÍËµ£¬²»ÓÃÅÄÂíÆ¨ ")
		end
	elseif (Uworld123 == 20) and (HaveItem(379) == 1) then		-- ÌÆ²»È¾ÈÎÎñ£ºÓĞÈÎÎñ²¢ÇÒÓĞĞÅº¯
		Talk(3,"Uworld123_step1","L¹i cã th­ tõ ch­ëng m«n cña §­êng m«n ph¸i?","T¹i h¹ ®· ®äc th­ cña §­êng bÊt nhiÔm!","ë ®©y ta ®· viÕt l¹i 1 bøc th­, phiÒn ®¹i hiÖp göi håi ©m cña ta ®Õn Ch­ëng m«n nh©n .")
	elseif (Uworld123 == 30) and (HaveItem(380) == 0) then		-- ĞÅ¶ªÁË
		Talk(1,"","4?")
		AddEventItem(380)
		Msg2Player("4 ")
	else
		-- Talk(1,"","5")
			Bil_DefaultTalk4Npc()
	end
end;

function W12_sale_get()
	-- Say("¼ÈÈ»Èç´Ë£¬ÔÚÏÂ¾ÍÖ±ËµÁË¡£ÇëÎÊ£¬ÎÒ¿ÉÒÔ¿´¿´ÄãµÄÃÜº¯Âğ£¿ÎÒÕâÓĞ20000Á½£¬ËãÊÇĞÄÒâ.",2,"ÇëÔ­ÁÂ£¬ÎÒÒªÌı´Óæä¹ÙµÄ»°£¬²»ÄÜ¸øËûÈË¿´¡£/W12_sale_no","Èç¹ûÎÒËÍÄã20000Á½°×ÒøºÍÕâ¼şÆ¤ÒÂ£¬ÔõÃ´Ñù£¿/W12_sale_yes")
end

function W12_sale_yes()
	-- if (GetSex() == 0) then
		-- Talk(1,"","ĞÖÌ¨ÕæÊÇ´ó¶ÈÖ®ÈË£¬ÒÔºó´ó½ğ¹¥ÆÆÁÙ°²£¬Ò»¶¨ÇëĞÖÌ¨ºÈ²è! ")
	-- else
		-- Talk(1,"","¹ÃÄïÕæÊÇ´ó¶ÈÖ®ÈË£¬ÒÔºó´ó½ğ¹¥ÆÆÁÙ°²£¬Ò»¶¨Çë¹ÃÄïºÈ²è! ")
	-- end
	-- x = GetTask(12)
	-- DelItem(231 + x)		-- É¾³ıµÀ¾ß
	-- SetTask(12,GetGameTime()+7200)			-- ÔÚÏßÊ±¼ä2Ğ¡Ê±ºó¿ÉÒÔÖØ¸´ËÍĞÅÈÎÎñ
	-- Earn(20000)
	-- Msg2Player("Äã´øæä¹ÙµÄÃÜº¯£¬Âô¸ø½ğÈË¡£ÄãµÄÃûÍû±»¼õÉÙ")
	-- AddNote("Äã´øæä¹ÙµÄÃÜº¯£¬Âô¸ø½ğÈË¡£ÄãµÄÃûÍû±»¼õÉÙ")
	-- i = GetRepute()
	-- if (i >= 20) then			-- ¿ÛÉùÍû20µã£¬²»¹»20¾Í¿Û¹â£¨Ğ¡ÓÚ10µÄ»°Ç°ÃæÒÑÉè¶¨²»ÈÃ×ö£©
		-- AddRepute(-1 * 20)
	-- else
		-- AddRepute(-1 * i)
	-- end
end

function W12_sale_no()
	-- Talk(1,"","Ò»¶¨ÒªÕâÃ´¹ÌÖ´Âğ£¿²»¶®Ê±ÊÆ£¬ÓĞÊ²Ã´ÓÃ£¿¾¡ÖÒ±¨¹ú²»ÈçÏíÊÜÈÙ»ª¸»¹ó¡£¼´Ê¹ÊÇÔÀ·ÉÒ²ÒªÒûºŞ!")
end

function Uworld123_step1()
	AddEventItem(380)
	SetTask(123,30)
	DelItem(379)
	Msg2Player("Quay trë vÒ §­êng m«n, giao th­ håi ©m cho §­êng bÊt nhiÔm! ")
end

function no()
end
