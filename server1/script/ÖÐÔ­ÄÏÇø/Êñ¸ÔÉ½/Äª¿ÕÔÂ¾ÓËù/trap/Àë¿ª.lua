-- 莫空月居所 传送点 离开.lua
-- By: Dan_Deng(2004-04-08)

function main()
	Uworld43 = GetTask(43)
	if (Uworld43 == 100) then
		Talk(1,"","快滚，不要让我看到你! ")
	end
	SetFightState(0)
	NewWorld(176,1413,2991)
end
