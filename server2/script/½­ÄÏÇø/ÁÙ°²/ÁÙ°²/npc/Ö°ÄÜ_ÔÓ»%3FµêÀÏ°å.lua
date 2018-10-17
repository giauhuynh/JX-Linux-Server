-- ÁÙ°²¡¡Ö°ÄÜ¡¡ÔÓ»õµêÀÏ°å
-- by£ºDan_Deng(2003-09-16)

--========½Å±¾ĞŞ¸Ä==================================--
--ĞŞ¸ÄÕß£ºyfeng
--ĞŞ¸ÄÈÕÆÚ£º2005-1-28
--ĞŞ¸ÄÔ­Òò£º´º½ÚÊĞ³¡»î¶¯
--
--
--==================================================--
Include "/script/event/chinesenewyear/eventhead.lua"
Include("\\script\\global\\global_zahuodian.lua");


--if CHINESENEWYEAR then
--	tinsert(Buttons,1,"¹º¢ò½ÚÈÕµÀ¾ß/BuyNewyearItem")
--end 
	
function main()
local Buttons = store_sel_extend();
	local nDate = tonumber(GetLocalDate("%Y%m%d%H"));
	if (nDate >= 2006122200 and nDate <= 2007011424) then
		tinsert(Buttons,1,"N¹p ThÎ/BuyVnXasCard")
	end;
	Say("Chñ tiÖm t¹p hãa : tiÖm cña ta tù x­ng ®Ö nhÊt, tÊt c¶ mÆt hµng nam b¾c ®«ng t©y ®Òu cã øng cÇu hoµn,san h«,nh©n s©m,mËt tŞch...kh«ng thø nµo kh«ng cã",
			getn(Buttons),
			Buttons)
end;

function yes()
	Sale(2);  				--µ¯³ö½»Ò×¿ò
end;

function no()
end;

function BuyNewyearItem()
	Sale(101)
	return
end

function BuyChristmasCard()
	Sale(97);
end

function BuyVnXasCard()
	Sale(147)
end;
