--ÖĞÔ­ÄÏÇø ÑïÖİ¸® ÔÓ»õµêÀÏ°å¶Ô»°
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
	Say("§¹i hiÖp cÇn bµ l·o t¹p hãa nµy gióp g× kh«ng?", getn(Buttons), Buttons);

end;


function yes()
Sale(5);  			--µ¯³ö½»Ò×¿ò
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;





