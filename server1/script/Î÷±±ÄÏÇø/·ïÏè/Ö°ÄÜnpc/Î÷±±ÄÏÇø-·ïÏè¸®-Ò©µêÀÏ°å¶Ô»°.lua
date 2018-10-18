--Î÷±±ÄÏÇø ·ïÏè¸® Ò©µêµÏ°å¶Ô»°
-- VH by anhdung9992001 clbgamesvn--
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- ¸¶ÖÆ»ìÔª¸é¢¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("TiÖm thuèc l·o b¶n: Ta ®©y n¬i nµy b¸n th¶o d­îc cã bÖnh ch÷a bÖnh, v« bÖnh d­ìng sinh. Kh«ng lo¹i d­îc liÖu nµo mµ ta kh«ng b¸n!.",
		getn(OPTIONS),
		OPTIONS)
end

function yes()
	Sale(12) 		--µ¯³ö½»Ò×¿ò
end;

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gióp cÊt r­îu thuèc/brew")
end
tinsert(OPTIONS, "Giao dÞch/yes")
-- tinsert(OPTIONS, "Tinh chÕ hçn nguyªn linh lé/refine")
tinsert(OPTIONS, "Kh«ng giao dÞch/Cancel")
