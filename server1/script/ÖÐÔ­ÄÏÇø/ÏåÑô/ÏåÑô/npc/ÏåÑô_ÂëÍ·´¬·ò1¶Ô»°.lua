--ÖÐÔ­ÄÏÇø ÏåÑô¸® ¢ëÍ·´¬·ò1¶Ô»°
--suyu
--200306015

CurWharf = 4;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")

---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("ThuyÒn phu:  ThuyÒn ta l¸i giã víi b­êm tr¨ng, l­ít gi÷a m©y cao víi biÓn b»ng :3 (chÕ th«i c¸c b¸c ah, Ðo hiÓu nã nãi g× c¶ :)) ) ", 3, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel", "§i §µo hoa ®¶o/go_thd");
	else
		Say("ThuyÒn phu:  ThuyÒn ta l¸i giã víi b­êm tr¨ng, l­ít gi÷a m©y cao víi biÓn b»ng :3 (chÕ th«i c¸c b¸c ah, Ðo hiÓu nã nãi g× c¶ :)) ) ", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
	end
end;

---------------------------------------------------------------
function  OnCancel()

   Say("ThuyÒn phu:  Kh«ng cã tiÒn th× tù b¬i qua s«ng ®i !",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(237);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶µ¡£ºÃ°É£¬Äã×øºÃµ¶£¡")
	if (nRet == -1) then
		Talk(1,"","LÖ phÝ ®i §µo Hoa §¶o lµ "..AEXP_TICKET.." l­îng, ng­¬i ®· chuÈn bÞ ®ñ tiÒn ch­a ?")
	end
end
---------------------------------------------------------------
