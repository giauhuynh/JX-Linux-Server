-- Î÷É½Óì Ö°ÄÜ Ìú½³
-- By: li_xin(2005-01-27)
--update:zhaowenyi(2005-02-20)Ôö¼Ó×ÏÉ«¼°»Æ½ğ×°±¸ÖıÔì

Include("\\script\\global\\×ÏÉ«¼°»Æ½ğ×°±¸ÖıÔì.lua")
function main(sel)
	--Say("ÏëÒªÔÚÎ÷É½Óì£¬Ã»ÓĞÎÒÀ÷º¦µÄ±øÆ÷¿ÖÅ¢Òª³Ô¿÷°¡¡£ÄãÏëÒª¢òÊ²Ã´£¿»¹ÏëÒªÖÆÔìĞş¾§×°±¸»ò»Æ½ğ×°±¸¾ÍÀ´ÕÒÎÒ£¬¼Û¸ñÒ»¶¨ºÏÀí!", 3, "½»Ò×/yes", "ÖÆÔì/onFoundry", "Ö»ÊÇ¢·¹ı/no")
	Say("Muèn ë T©y S¬n Tù, kh«ng cã ta lîi h¹i binh khİ sî r»ng muèn ¨n thua thiÖt a. Ng­¬i muèn mua c¸i g×? Cßn muèn muèn dån t¹o huyÒn tinh trang bŞ hoÆc hoµng kim trang bŞ sÏ tíi t×m ta, gi¸ c¶ nhÊt ®Şnh hîp lı!", 
			2, "Giao dŞch/yes", 			
			"KÕt thãc/no")
end;

function yes()
	Sale(13);  				
end;

function no()
end;
