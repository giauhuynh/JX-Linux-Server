-- 黄河源头留仙洞迷宫4F 战斗NPC 山贼04（昆仑出师任务）
-- by：Dan_Deng(2003-07-31)

function OnDeath()
	UTask_kl = GetTask(9)
	if ((UTask_kl == 60*256+20) and (HaveItem(14) == 0) and (random(1,99) < 30)) then
		AddEventItem(14)
		Msg2Player("要去找颛顼")
		AddNote("要去找颛顼")
	end
end;
