--Î÷±±ÄÏÇø ·ïÏè¸® ÔÓ»õµêµÏ°å¶Ô»°
-- VH by anhdung9992001 clbgamesvn--

Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
Say("TiÖm t¹p hãa l·o b¶n: Nhµ ng­¬i muèn mua thø g× ®©y? Chç ta kh«ng thiÕu thø g× hÕt. Muèn g× cã nÊy. Muèn xem chót kh«ng? ", 2, "Giao dÞch/yes", "Rêi khái/no");
end;


function yes()
Sale(20); 		--µ¯³ö½»Ò×¿ò
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;

