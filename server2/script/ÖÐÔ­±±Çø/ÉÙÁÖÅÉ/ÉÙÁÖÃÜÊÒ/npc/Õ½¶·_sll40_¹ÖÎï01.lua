-- 少林后山密室 战斗NPC ??01（少林40级任务）
-- by：Dan_Deng(2003-08-04)

function OnDeath()
	UTask_sl = GetTask(7)
	UTask_sl40tmp = GetTaskTemp(44)
	if (UTask_sl == 40*256+10) and (random(1,99) < 33) then
		SetTask(7,40*256+20)
		AddNote("L蕐 頲 kh萿 quy誸: 竛 Ma Ni B竧 M� H錸g. ")
		Msg2Player("L蕐 頲 kh萿 quy誸: 竛 Ma Ni B竧 M� H錸g. ")
	end
end;
