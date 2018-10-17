-- ÁúÃÅÕò¡¡¢·ÈË¡¡Ëï¶şÀÉ(¾ÈĞ¡¾êÈÎÎñ)
-- by£ºDan_Deng(2003-09-16)

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(199) == 1 then
		allbrother_0801_FindNpcTaskDialog(199)
		return 0;
	end
	Uworld41 = GetByte(GetTask(41),1)
	if (GetLevel() >= 40) and (GetReputeLevel(GetRepute()) >= 5) then		-- ·ûºÏÈÎÎñÌõ¼ş
		if (Uworld41 == 0) then					-- ÈÎÎñ²»ÄÜÖ±½Ó´ÓËï¶şÀÉ´¦Æô¶¯
			if (random(0,1) == 0) then
				Talk(1,"","Cã ng­êi nãi Long M«n TrÊn chóng ta chØ toµn trém c­íp, ®óng lµ kh«ng biÕt g×! Ta d¸m cuéc lµ kh«ng qu¸ hai ba n¨m n÷a, Long M«n TrÊn sÏ xuÊt hiÖn mét nh©n vËt ®Ønh thiªn lËp ®Şa.")
			else
				Talk(1,"","Cã ng­êi nãi Long M«n TrÊn chóng ta chØ toµn trém c­íp, ®óng lµ kh«ng biÕt g×! Ta d¸m cuéc lµ kh«ng qu¸ hai ba n¨m n÷a, Long M«n TrÊn sÏ xuÊt hiÖn mét nh©n vËt ®Ønh thiªn lËp ®Şa. ")
			end
		elseif (Uworld41 == 5) then			-- ÈÎÎñÕıÊ½Æô¶¯
			Talk(1,"U41_get","VLT18Ê²Ã´Ê¢ÇéÈÃÄãÕâÃ´·³ÄÕ£¬ÅÔ±ßÄÇÎ»´óÉ©ÔõÃ´¿ŞµÃÄÇÃ´ÉËĞÄ°¡?")
		elseif (Uworld41 == 100) then			-- ÈÎÎñÍê³É
			Talk(2,"U41_prise","VLT19¶µĞ»Ó¢ĞÛ£¬Ó¢ĞÛµÄ´ó¶÷´óµ¢Ã»³İ²»Íü¡£ÕâÀïÊÇÒÔÇ°Ò»Î»ÉÙÁÖÉ®ÈËËÍÎÒµÄÁéÒ©£¬ËµÄÜÇ¿Éí½¡Ìå£¬·¢»Ó×ÔÉíÇ±ÄÜ¡£ÇëÓ¢ĞÛÍòÎğÍÆ´Ç!","¼ÈÈ»ÕâÑù£¬ÎÒ²»ÍÆ´Ç¾ÍÊÇ!")
		elseif (Uworld41 == 255) then			-- ÈÎÎñÍê³Éºó
			Talk(1,"","VLT20ÎÒ¾Í²»¸ÒÈÃĞ¡¾ê³öÃÅ£¬µ«ÕâÒ²²»ÊÇ³¤¾ÃÖ®¼Æ£¬Ö»ÄÜ¼Ş¸øËüÁË.")
		else											-- ÈÎÎñ½øĞĞÖĞ
			Talk(1,"","VLT21×òÌìĞ¡¾ê±»¹ÅÑô¶´µÄ´óÍõÇÀÈ¥ÁË£¬ÒªÈÃËı×öÑ¹Õ¯·òÈË¡£ÏÖÔÚËµÊ²Ã´¶¼ÍíÁË.! ")
		end
	else							-- ·ñÔò×ªÈ±Ê¡¶Ô»°
		Talk(1,"","VLT22ÓĞÈËËµÎÒÃÇÁúÃÅÕòÈ«ÊÇÇ¿µÁ£¬ÕæÊÇÊ²Ã´¶¼²»ÖªµÀ£¡ÎÒ¸ÒËµ²»Òª2¡¢3ÄêÁúÃÅÕò¾Í»á³öÏÖ¸ö¶¥ÌìÁ¢µØµÄÈËÎï")
	end
end;

function U41_get()
	Say("°VLT23¦£¡ÎÒÃÇ¼ÒĞ¡¾êÇ°¼¸Ìì±»¹ÅÑôÕ¯µÄ´óÍõ¿´µ½£¬ËµÒªËı×öÊ²Ã´Ñ¹Õ¯·òÈË£¬×òÌì¾ÍÕæµÄÀ´°ÑËı¸øÇÀ×ßÁË",2,"¿¶¿®È¥¾ÈÈË/U41_get_yes","°²Î¿¼¸¾ä/U41_get_no")
end

function U41_get_yes()
	Talk(2,"","VLT24Ê²Ã´´óÍõ£¬¹âÌì»¯ÈÕÖ®Ï¢¾¹¸ÒÇ¿ÇÀÃñÅ®£¡ÎÒÈ¥°ÑËı¾È»ØÀ´","¾Í¿¿´óÏÀÁË£¬¹ÅÑôÕ¯¾ÍÔÚ¹ÅÑô¶´Àï!")
	Uworld41 = random(1,15)*256*256 + 10			-- µÚÈı×Ö½ÚÎª£¨¶ş½øÖÆµÄ0001 - 1111£©£¬µÚÒ»×Ö½ÚÎª10
	SetTask(41,Uworld41)
	Msg2Player("VLT25½ÓÈÎÎñ£¬°ÑĞ¡¾ê´Ó¹ÅÑôÕ¯´ø»ØÀ´. ")
	AddNote("½ÓÈÎÎñ£¬°ÑĞ¡¾ê´Ó¹ÅÑôÕ¯´ø»ØÀ´. ")
end

function U41_prise()
	AddProp(1)											-- ½±Àø1µãÇ±ÄÜ
	add_repute = ReturnRepute(30,50,3)			-- ÉùÍû½±Àø£º×î´ó30µã£¬´Ó50¼¶ÆğÃ¿¼¶µİ¼õ3%
	AddRepute(add_repute)
	Uworld41 = SetByte(GetTask(41),1,255)
	SetTask(41,Uworld41)
	Ubonus86 = GetTask(86) + 1					-- ¼Ç¢¼ÈÎÎñ½±ÀøÁË1µãÇ±ÄÜ(µÚÒ»×Ö½Ú+1)
	if (GetByte(Ubonus86,1) >= 250) then		-- Èİ´í£ºÉÏÏŞÎª250µã
		Ubonus86 = 250
	end
	SetTask(86,Ubonus86)
	AddNote("°VLT26ÑĞ¡¾ê¾Í»ØÀ´£¬ÈÎÎñÍê³É. ")
	Msg2Player("<#> VLT27ÈÎÎñÍê³É£¬ÄãµÄÉùÍûÔö¼Ó "..add_repute.."<#> µã.")
	Talk(1,"KickOutSelf","VLT28·şÏ¢ÁéÒ©£¬ÔË¹¦¡£Äã¸Ğ¾õÇ±ÄÜÔö¼ÓÒ»µã.")
end

function U41_get_no()
	Talk(2,"","VLT29ÆñÓĞ´ËÀí£¡»¹ÓĞÃ»ÓĞÍõ·¨?","ÏÖÔÚ»¹ÓĞË­ËµÍõ·¨°¡?")
end

function no()
end
