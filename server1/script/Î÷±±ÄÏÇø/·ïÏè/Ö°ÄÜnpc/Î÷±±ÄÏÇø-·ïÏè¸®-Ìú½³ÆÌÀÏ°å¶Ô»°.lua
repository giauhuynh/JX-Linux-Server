--Î÷±±ÄÏÇø ·ïÏè¸® Ìú½³ÆÌµÏ°å¶Ô»°
-- VH by anhdung9992001 clbgamesvn--
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Thî rÌn: Muèn mua binh khÝ g× ®Ó phßng th©n kh«ng?"
function main(sel)
	tiejiang_city(TIEJIANG_DIALOG);
end;


function yes()
	Sale(19);  			--µ¯³ö½»Ò×¿ò
end;

