--中原北区 汴京府 药店老板对话
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- 炼制混元灵⒍
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("Hi謚 Thu鑓: � ch� ta y thu鑓 g� c騨g u c�, dng th﹏ th�, ch鱝 b謓h, k衞 d礽 tu鎖 th�, b� m竨 ph遪g kh� c, ng礽 mu鑞 mua thu鑓 g� ? ", 
		getn(OPTIONS),
		OPTIONS)
end

function yes()
	Sale(9) 			--弹出交易框
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Mua ru thu鑓/brew")
end
tinsert(OPTIONS, "Giao d辌h/yes")
-- tinsert(OPTIONS, "Luy謓 H鏽 Nguy猲 Linh L�/refine")
tinsert(OPTIONS, "K誸 th骳/Cancel")
