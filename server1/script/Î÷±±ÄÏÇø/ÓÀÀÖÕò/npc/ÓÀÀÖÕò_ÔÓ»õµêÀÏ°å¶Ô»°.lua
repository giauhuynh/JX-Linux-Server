--Î÷±±ÄÏÇø ÓÀÀÖÕò ÔÓ»õµêÀÏ°å¶Ô»°
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local buttons = store_sel_village_extend();
		Say("Kh¸ch quan cÇn mua thø g×? ? ®©y c¸i g× ta còng cã!",getn(buttons), buttons);
end;


function yes()
Sale(84);   			--µ¯³ö½»Ò×¿ò
end;


function no()
end;
