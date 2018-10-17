-- ÁÙ°²¡¡Ö°ÄÜ¡¡Ìú½³
-- by£ºDan_Deng(2003-09-16)
--update:zhaowenyi(2005-02-20)Ôö¼Ó×ÏÉ«¼°»Æ½ğ×°±¸ÖıÔì

Include("\\script\\global\\global_tiejiang.lua")


TIEJIANG_DIALOG = "<dec><npc>TiÖm rÌn nµy ®· cã tõ thêi «ng néi ta, tuy tay nghÒ kh«ng giái nh­ng còng kh«ng tÖ, kh¸ch quan muèn mua g×?";
function main()
	tiejiang_city(TIEJIANG_DIALOG);
end;


function yes()
	Sale(1);  				--µ¯³ö½»Ò×¿ò
end;

