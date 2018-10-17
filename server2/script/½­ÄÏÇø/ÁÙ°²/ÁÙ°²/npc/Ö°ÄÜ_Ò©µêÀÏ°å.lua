-- 临安　职能　药店老板
-- by：Dan_Deng(2003-09-16)

-- 炼制混元灵⒍
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say(10855,
		2,
		"Giao d辌h/yes",
		-- "Luy謓 ch?h鏽 nguy猲 linh l?refine",
		"Kh玭g giao d辌h/Cancel")
end;

function yes()
	Sale(12)  				--弹出交易框
end
