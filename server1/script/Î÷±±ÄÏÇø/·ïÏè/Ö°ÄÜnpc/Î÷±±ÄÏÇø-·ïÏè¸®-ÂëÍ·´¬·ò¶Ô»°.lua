--Î÷±±ÄÏÇø ·ïÏè¸® ¢ëÝ·´¬·ò¶Ô»°
--suyu
--200306015
-- VH by anhdung9992001 clbgamesvn--
CurWharf = 1;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("ThuyÒn phu: (H¸t) xem k×a ®«ng s¬n mÆt trêi lªn l­ng T©y s¬n ~~ , ch©n ®¹p hoµng ®Êt t©m th¶n nhiªn ~~, ng­¬i cã hiÓu ®­îc thiªn h¹ Hoµng Hµ ~~, chÝn m­¬i chÝn sao c«ng yªu ®em thuyÒn mµ ban !! Ng­¬i muèn ®i thuyÒn kh«ng!!", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
	else
		Say("Hoµng Hµ chÝn ®¹o loan, ta ®Çu nµy, ng­¬i ®Çu kia ....", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
	end

end;

---------------------------------------------------------------
function  OnCancel()

   Say("Lóc nµo cÇn ta cø quay l¹i!",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(241);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶µ¡£º·°É£¬Äã×øº·µ¶£¡")
	if (nRet == -1) then
		Talk(1,"","Muèn ngåi thuyÒn ®i §µo Hoa §¶o cÇn "..AEXP_TICKET.." l­îng, ng­¬i cã ®ñ ch­a.")
	end
end
---------------------------------------------------------------
