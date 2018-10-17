-- Ä®±±²İÔ­ Ö°ÄÜ Ìú½³
-- By: li_xin(2005-01-18)
--update:zhaowenyi(2005-02-20)Ôö¼Ó×ÏÉ«¼°»Æ½ğ×°±¸ÖıÔì

Include("\\script\\global\\×ÏÉ«¼°»Æ½ğ×°±¸ÖıÔì.lua")
function main(sel)
	--Say(" °ÙÀïÄÚ£¬Ë­²»ÖªµÀÎÒµÄ´óÃû£¬´Óµ¶½£¹÷Ç¹£¬18°ãÎäÆ÷¶¼ÓĞ£¬¿Í¹ÙÏëÂòÄÄÖÖ£¿ÏëÖÆÔìĞş¾§×°±¸»òÕß»Æ½ğ×°±¸£¬¶¼ÒªÀ´ÕÒÎÒ£¬Ò»¶¨¼Û¸ñ¹«µÀ!", 3, "½»Ò×/yes", "ÖÆÔì/onFoundry", "Ë³±ãÂ·¹ı/no")
	Say("Nµo nµo, vŞ huynh ®Ö ch¾c lµ ng­êi ë trung nguyªn muèn mua binh khİ chø g×, l¹i ®©y ngåi nhÊm miÕng thŞt chóng ta cïng bµn chuyÖn!", 
			2, 
			"Cho ta xem c¸c lo¹i binh khİ xem sao/yes", 
--			"ÖÆÔì/onFoundry", 
			"th«i, ta chØ ®Õn xin cèc n­íc/no")
end;

function yes()
	Sale(13);  				
end;

function no()
end;
