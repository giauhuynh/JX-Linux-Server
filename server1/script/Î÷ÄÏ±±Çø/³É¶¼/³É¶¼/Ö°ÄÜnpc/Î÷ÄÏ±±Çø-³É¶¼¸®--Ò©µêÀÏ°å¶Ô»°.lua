--西南北区 成都府 药店迪板对话

-- 付制混元搁⒍
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main(sel)
	Say("<color=yellow>Ch� ti謒 thu鑓<color>: ta l骳 c遪 tr�, mu鑞 l祄 m閠 danh y gi鑞g nh� Hoa У, Sau  ta ph秈 l蕐 v� r錳 sinh con, v� nu玦 gia nh, ch� nh ph秈 m� ra ti謒 thu鑓 n祔. Con ngi ta ng祔 c祅g l玦 th玦 d礽 d遪g, ngi mu鑞 mua thu鑓 ph秈 kh玭g?",
		2,
		"Giao d辌h/yes",
		-- "Tinh ch� h鏽 nguy猲 linh l�/refine",
		"Kh玭g giao d辌h/Cancel")
end

function yes()
	Sale(15) 		--弹出交易框
end
