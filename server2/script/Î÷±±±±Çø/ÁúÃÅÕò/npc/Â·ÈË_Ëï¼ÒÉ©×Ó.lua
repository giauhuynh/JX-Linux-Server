-- ÁúÃÅÕò¡¡¢·ÈË¡¡Ëï¼ÒÉ©×Ó
-- by£ºDan_Deng(2003-09-16)

Include("\\script\\global\\repute_head.lua")

function main()
	Uworld41 = GetByte(GetTask(41),1)
	if (GetLevel() >= 40) and (GetReputeLevel(GetRepute()) >= 5) then		-- ·ûºÏÈÎÎñÌõ¼þ
		if (Uworld41 == 0) or (Uworld41 == 5) then			-- ÈÎÎñÆô¶¯
			Talk(4,"","§µn «ng nhµ nµy, tõ s¸ng ®Õn tèi cø më t­ëng viÔn v«ng, c¸i g× lµ chÝ khÝ, c¸i g× lµ anh hïng? Toµn lµ ®å bá ®i, kh«ng lo cho cuéc sèng hiÖn t¹i.","ÕâÎ»´óÉ©£¬ÓÐÊ²Ã´Í·ÌÛµÄÊ¢¢ð£¿"," (¿ÞÉù) ","... ")
			SetTask(41,5)
		elseif (Uworld41 == 10) or (Uworld41 == 30) then	-- ÈÎÎñ½øÐÐÖÐ
			Talk(1,"","´VLT31óÏÀÔ¸Òâ°ïÎÒ°ÑÐ¡¾ê¾Í»ØÀ´¢ð£¿¸Ð¼¤²»¾¡£¡")
		elseif (Uworld41 == 100) then					-- ÒÑ¾­¾È³öÐ¡¾ê£¬ÈÎÎñÎ´½»
			Talk(1,"","VLT32Ð¡¾ê£¡ÎÒµÄº¢×Ó»ØÀ´ÁË£¡ÕæÊÇ¿µÁËÎÒµÄº¢×ÓÁË¡£Äã¸Ï¿ìÈ¥¼û¸¸Ç×ÈÃËû²»Òªµ£ÐÄÁË.")
		else		-- ÈÎÎñÒÑÍê³É
			Talk(1,"","VLT33æÊÇ¸ÐÐ»´óÏÀ£¡ÎÒºÍÆäËû¼¸¸öÈËÒªËÍ³¤ÉúÒ©¸ø´óÏÀ.")
		end
	else
		Talk(1,"","ÎVLT34Ò¼ÒÀÏÍ·£¬´ÓÔçµ½Íí¾ÍÒ»Ö±Ï¹ÏëÊ²Ã´ÊÇÖ¾Æø£¬Ê²Ã´ÊÇÓ¢ÐÛ£¿È«¶¼ÊÇ·Ï»°£¬¶¼²»ÏëÒ»Ï¢Êµ¼ÊÉú»î!")
	end
end;
