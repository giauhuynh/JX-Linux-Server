--西北南区 凤翔府 药店迪板对话
-- VH by anhdung9992001 clbgamesvn--
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- 付制混元搁⒍
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("Ti謒 thu鑓 l穙 b秐: Ta y n琲 n祔 b竛 th秓 dc c� b謓h ch鱝 b謓h, v� b謓h dng sinh. Kh玭g lo筰 dc li謚 n祇 m� ta kh玭g b竛!.",
		getn(OPTIONS),
		OPTIONS)
end

function yes()
	Sale(12) 		--弹出交易框
end;

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gi髉 c蕋 ru thu鑓/brew")
end
tinsert(OPTIONS, "Giao d辌h/yes")
-- tinsert(OPTIONS, "Tinh ch� h鏽 nguy猲 linh l�/refine")
tinsert(OPTIONS, "Kh玭g giao d辌h/Cancel")
