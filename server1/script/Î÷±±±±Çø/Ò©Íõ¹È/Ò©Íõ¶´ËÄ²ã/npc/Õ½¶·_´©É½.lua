-- 西北北区 药王谷 药王洞四层 战斗_穿山.lua  （小儿失踪任务）
-- By: Dan_Deng(2004-05-27)

function OnDeath(sel)
	Uworld42 = GetTask(42)
	if (Uworld42 >= 20) and (Uworld42 < 29) then
		SetTask(42,Uworld42 + 1)
		Msg2Player("杀了1名穿山. ")
	elseif (Uworld42 == 30) or (Uworld42 == 29) then
		SetTask(42,30)
		Msg2Player("杀了10名穿山，可以报告给跛道人 ")
	end
end
