-- ´óµí¡¡Ö°ÄÜ ÔÓ»õµêµÏ°å
-- By: Dan_Deng(2003-09-16)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
	Say("Ta míi më hµng trë l¹i, ñng hé ta chót nµo...", getn(Buttons), Buttons)
end;

function yes()
	Sale(17)
end;

function BuyChristmasCard()
	Sale(97);
end

function no()
end;
