-- 罗宵山迷宫 战斗NPC 色鬼01（五毒20级任务）
-- by：Dan_Deng(2003-08-05)

function OnDeath()
	UTask_wu = GetTask(10)
	i = GetItemCount("人头")
	if (UTask_wu == 20*256+10) and (i < 7) and (random(0,99) < 80) then		-- 在任务中，按机率打出。
		AddEventItem(85)
		if (i >= 6) then
			Msg2Player("6a5s4f6awe53f12ds6fds4")
			AddNote("你杀了罗宵七鬼，拿了7个头，交给白莹莹")
		else
			Msg2Player("6as5f49aw86e4fs4ds6f3")
		end
	end
end;
