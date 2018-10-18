--Î÷ÄÏÄÏÇø ´óµí¸® ³¤½­¢ëÝ·´¬·ò¶Ô»°
--suyu
--20031029

CurWharf = 9;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Hoµng Hµ cöu khóc, ng­êi ë bªn nµy s«ng, ta ë bªn kia s«ng, c¸ch nhau Th­¬ng S¬n nhÞ h¶i, muèn gÆp còng khã.", 3, "Ngåi thuyÒn/WharfFun", "Hñy bá/OnCancel", "§i ®µo hoa ®¶o (5) /go_thd")
	else
		Say("Hoµng Hµ cöu khóc, ng­êi ë bªn nµy s«ng, ta ë bªn kia s«ng, c¸ch nhau Th­¬ng S¬n nhÞ h¶i, muèn gÆp còng khã.", 2, "Ngåi thuyÒn/WharfFun", "Hñy bá/OnCancel")
	end
end;

function  OnCancel()
   Talk(1,"","Cã tiÒn h·y quay l¹i gÆp ta!")
end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(239);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶µ¡£º·°É£¬Äã×øº·µ¶£¡")
	if (nRet == -1) then
		Talk(1,"","§i ®µo hoa ®¶o cÇn  "..AEXP_TICKET.." l­îng, ng­¬i ®ñ ch­a? ")
	end
end
---------------------------------------------------------------
