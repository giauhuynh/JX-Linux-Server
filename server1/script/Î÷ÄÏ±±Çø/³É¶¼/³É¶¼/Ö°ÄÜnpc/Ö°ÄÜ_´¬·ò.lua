--Î÷ÄÏ±±Çø ³É¶¼ ´¬·ò¶Ô»°

CurWharf = 9;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("N¬i ®©y mÆc dï kh«ng cã thuyÒn, nh­ng ta vÉn cã thÓ dÉn ng­¬i ®i", 2, "§i §µo hoa ®¶o (6) /go_thd", "Th«i, ta kh«ng ®i/OnCancel")
	else
		Talk(1, "", "Kh«ng biÕt khi nµo thuyÒn míi ®Õn ®©y!")
	end
end;

function  OnCancel()
   Talk(1,"","Kh«ng cã tiÒn, kh«ng thÓ ngåi thuyÒn! ")
end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(240);
	-- if (nRet == 1) then
	--	Msg2Player("ThuyÒn phu: Ta biÕt con ®­êng ng¾n nhÊt ®Õn §µo hoa ®¶o. Ngåi cho v÷ng, chóng ta ®i ®Õn §µo hoa ®¶o nhÐ")
	if (nRet == -1) then
		Talk(1,"","TiÒn ®Ó lªn ®¶o"..AEXP_TICKET.."ng­¬i ®· mang theo ®ñ ch­a? ")
	end
end
---------------------------------------------------------------
