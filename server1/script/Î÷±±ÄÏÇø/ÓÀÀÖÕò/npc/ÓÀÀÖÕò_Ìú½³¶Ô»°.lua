--Î÷±±ÄÏÇø ÓÀÀÖÕò Ìú½³¶Ô»°
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Kh¸ch quan muèn mua lo¹i vò khİ nµo, cÇn lo¹i nµo cã lo¹i ®ã!"

function main(sel)
	tiejiang_village()
end;


function yes()
Sale(83);  			--µ¯³ö½»Ò×¿ò
end;
