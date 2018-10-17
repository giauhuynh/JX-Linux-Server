-- ´óÀí Ö°ÄÜ Ò©µêÀÏ°å
-- By: Dan_Deng(2003-09-16)
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

OPTIONS = {}

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("VŞ kh¸ch nµy mua mét İt thuèc phßng th©n ®i.",
		getn(OPTIONS),
		OPTIONS)
end;

function yes()
	Sale(12)  			--µ¯³ö½»Ò×¿ò
end

if TEACHERSWITCH then
	-- tinsert(OPTIONS, "°ïÎÒ·ÅÒ©¾Æ/brew")
end
tinsert(OPTIONS, "Giao dŞch/yes")
tinsert(OPTIONS, "Kh«ng cÇn/Cancel")
