--ÖÐÔ­±±Çø ãê¾©¸® ¢ëÍ·´¬·ò2¶Ô»°
--suyu
--200306015

CurWharf = 3;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("ThuyÒn phu : h«m nay c¸ nghÞch thñy hµnh thuyÒn, l¹i gÆp gì ®Ýnh ®Çu phong, xem ra ®îi quang diªu lç ph¶i kh«ng thµnh, sî r»ng ®­îc víi ng¹n kÐo tiªm míi ®­îc. Ng­¬i muèn ®i ®©u mµ ?", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
	else
		Say("H«m nay c¸ nghÞch thñy hµnh thuyÒn, l¹i gÆp gì ®Ýnh ®Çu phong, xem ra ®îi quang diªu lç ph¶i kh«ng thµnh, sî r»ng ®­îc víi ng¹n kÐo tiªm míi ®­îc . ng­¬i muèn ®i ®©u mµ ? ", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");		
	end

end;

---------------------------------------------------------------
function  OnCancel()

   Say("ThuyÒn phu : kh«ng cã b¹c nh­ng n¬i nµo còng ®i kh«ng ®­îc !",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(238);
	 --if (nRet == 1) then
		--Msg2Player("ThuyÒn phu : gÇn nhÊt ®i §µo Hoa §¶o ng­êi cña còng thËt nhiÒu. §­îc råi , ng­¬i ngåi xong l©u !")
	if (nRet == -1) then
		Talk(1,"","Ngåi thuyÒn ®i §µo Hoa §¶o"..AEXP_TICKET.." l­îng , ng­¬i ®ñ ch­a? ")
	end
end
---------------------------------------------------------------
