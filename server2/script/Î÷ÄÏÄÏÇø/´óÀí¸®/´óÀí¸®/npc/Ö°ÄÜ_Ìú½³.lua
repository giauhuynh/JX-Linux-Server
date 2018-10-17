-- ´óÀí Ö°ÄÜ Ìú½³
-- By: Dan_Deng(2003-09-16)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Ta lµ thî rÌn chİnh ë ®©y, c«ng viÖc rÊt bËn muèn mua g× th× cø xem tù nhiªn."

function main(sel)
	tiejiang_city(TIEJIANG_DIALOG);
end;

function yes()
	Sale(16);  				--ÁÙÊ±¶¨Îª25
end;

