-- 大理 职能 药店老板
-- By: Dan_Deng(2003-09-16)
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

OPTIONS = {}

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("V� kh竎h n祔 mua m閠 輙 thu鑓 ph遪g th﹏ 甶.",
		getn(OPTIONS),
		OPTIONS)
end;

function yes()
	Sale(12)  			--弹出交易框
end

if TEACHERSWITCH then
	-- tinsert(OPTIONS, "帮我放药酒/brew")
end
tinsert(OPTIONS, "Giao d辌h/yes")
tinsert(OPTIONS, "Kh玭g c莕/Cancel")
