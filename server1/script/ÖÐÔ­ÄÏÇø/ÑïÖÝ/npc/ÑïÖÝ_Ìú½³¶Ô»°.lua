--ÖĞÔ­ÄÏÇø ÑïÖİ¸® Ìú½³¶Ô»°

Include("\\script\\global\\global_tiejiang.lua")

-- TIEJIANG_DIALOG = "<dec><npc>ÄãÊÇÏÀ¿Í£¿ÕâÀïÓĞ¸÷ÖÖ±øÆ÷£¬ÄãÏ²»¶ÄÄÒ»ÖÖ?"
TIEJIANG_DIALOG = "<dec><npc>Nhê cã ng­êi ®Ö tö nµy mµ h«m nay ta ®· ®ì nhäc h¬n." 

function main(sel)
	tiejiang_city()
end;

function yes()
Sale(4);  			--µ¯³ö½»Ò×¿ò
end;

