--ÖÐÔ­ÄÏÇø µ¾Ïã´å Ìú½³¶Ô»°

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Ta lµm ra rÊt nhiÒu lo¹i vò khÝ võa ý. Ng­¬i muèn xem thö kh«ng?"

function main(sel)
	tiejiang_village();
end;


function yes()
Sale(89);  			--µ¯³ö½»Ò×¿ò
end;
