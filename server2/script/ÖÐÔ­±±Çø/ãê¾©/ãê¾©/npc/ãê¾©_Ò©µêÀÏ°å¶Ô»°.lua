--ÖÐÔ­±±Çø ãê¾©¸® Ò©µêÀÏ°å¶Ô»°
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- Á¶ÖÆ»ìÔªÁé¢¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("HiÖu Thuèc: ë chç ta ®©y thuèc g× còng ®Òu cã, d­ìng th©n thÓ, ch÷a bÖnh, kÐo dµi tuæi thä, bæ m¸u phßng khÝ ®éc, ngµi muèn mua thuèc g× ? ", 
		getn(OPTIONS),
		OPTIONS)
end

function yes()
	Sale(9) 			--µ¯³ö½»Ò×¿ò
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Mua r­îu thuèc/brew")
end
tinsert(OPTIONS, "Giao dÞch/yes")
-- tinsert(OPTIONS, "LuyÖn Hçn Nguyªn Linh Lé/refine")
tinsert(OPTIONS, "KÕt thóc/Cancel")
