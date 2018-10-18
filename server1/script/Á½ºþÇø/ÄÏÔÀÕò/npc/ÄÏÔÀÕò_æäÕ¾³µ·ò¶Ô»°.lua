--Á½ºşÇø ÄÏÔÀÕò æäÕ¾³µ·ò¶Ô»°  ÊÀ½çÈÎÎñ
-- Update: Dan_Deng(2003-09-16)ÔİÊ±ÆÁ±ÎÈÎÎñ£¨ÒÔºóÖØĞ´ÖØ¿ª·Å£©

CurStation = 11;
Include("\\script\\global\\station.lua")
--Include("\\script\\global\\skills_table.lua")

function main(sel)
--	check_update()					-- ¼¼ÄÜ¸üĞÂ¡¢ÃÅÅÉ¼Ó±êÊ¶£¨2004-05-31£©
--	UTask_world15 = GetTask(15)
--	if (UTask_world15 < 255) then	
--		Say("³µ·ò£º°¦£¬ÏÖÔÚµÄÉúÒâÔ½À´Ô½ÄÑ×öÁË£¬Ô­±¾»¹ÓĞ²»ÉÙ¸»ÉÌ´óÒ¯È¥ÉñÅ©¼ÜÄÇ¶ùÓÎÍæ£¬¿ÉÊÇ×î½ü²»Öª´ÓÄÄ¶ù´Ü³öÒ»ÈººÚÒ¶ºï£¬ÑØÂ·´ò½Ù¿ÍÈË£¬¸ãµÃÎÒÉúÒâ´óÊÜÓ°Ïì£¬Èç¹ûÓĞÈËÄÜ¸Ï×ßÕâĞ©ºÚÒ¶ºï¾ÍºÃÁË¡£Äã°ïÎÒ¸Ï×ßÊ®Ö»ºï×Ó£¬¾Í¿ÉÒÔÃâ·ÑÔÚÎÒÕâÀïÊ¹ÓÃÒ»´Î³µÂí¡£ÄúÒª×ø³µÂğ£¿", 2, "°ïÃ¦/yes", "²»°ïÃ¦/no")
--		SetTask(15, 1)
--	else
		Say("VŞ thiÕu hiÖp cã muèn ®i ®©u kh«ng?", 4, "Nh÷ng n¬i ®· ®i qua/WayPointFun", "Nh÷ng thµnh thŞ ®· ®i qua/StationFun", "Trë l¹i ®iÓm cò/TownPortalFun", "Th«i, kh«ng ®i/OnCancel");
--	end
end;

function  OnCancel()
   Say("Khi nµo muèn ®i cø t×m l·o!",0)
end;
