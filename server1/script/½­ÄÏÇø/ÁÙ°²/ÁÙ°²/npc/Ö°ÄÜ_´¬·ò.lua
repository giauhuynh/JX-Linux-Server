--½­ÄÏÇø ÁÙ°²¸® ³¤½­¢ëÍ·´¬·ò¶Ô»°
--suyu
--20031029

CurWharf = 11;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")

function main(sel)
	if (GetLevel() >= 50) then
		Say("ThuyÒn phu : thuyÒn cña ta tuy kh«ng ph¶i lµ thuyÒn lín g×, nh­ng ai qua ®©y ®Óu ph¶i nhê ta, nh×n ng­¬i còng kh«ng ®Õn nçi bÇn, cã tiÒn th× qua s«ng.", 3, "Ngåi thuyÒn/WharfFun", "kh«ng ngåi/OnCancel", "<#>§µo hoa ®¶o ["..AEXP_TICKET.."<#>§i]/go_thd");
	else
		Say("ThuyÒn phu : thuyÒn cña ta tuy kh«ng ph¶i lµ thuyÒn lín g×, nh­ng ai qua ®©y ®Óu ph¶i nhê ta, nh×n ng­¬i còng kh«ng ®Õn nçi bÇn, cã tiÒn th× qua s«ng.", 2, "Ngåi thuyÒn/WharfFun", "kh«ng ngåi/OnCancel")
	end
end;

function  OnCancel()
   Talk(1,"","ThuyÒn phu : kh«ng cã tiÒn th× ®õng ®i thuyÒn")
end;

function go_thd()
	nRet = aexp_gotothd(235);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶µ¡£ºÃ°É£¬Äã×øºÃµ¶£¡")
	if (nRet == -1) then
		Talk(1,"","<#>§i ®µo hoa ®¶o"..AEXP_TICKET.."<#>ng­¬i ®· chuÈn bŞ ®ñ tiÒn ch­a ?.")
	end
end
