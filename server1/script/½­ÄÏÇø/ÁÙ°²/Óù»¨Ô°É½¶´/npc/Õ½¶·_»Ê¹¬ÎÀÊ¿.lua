--临安皇宫秘道 战斗NPC 皇宫卫士（丐帮50级任务）
-- by：Dan_Deng(2003-07-28)

function OnDeath()
	UTask_gb = GetTask(8);
	if (UTask_gb == 50*256+40) and (random(0,99) < 20) then				--10%几⑹（改为20，加大一倍2004-01-13）
		SetTask(8,50*256+50)
		AddNote("Trong ho祅g cung nh b筰 v� s� b秓 v� T祇 c玭g c玭g. ")
		Msg2Player("Trong ho祅g cung nh b筰 v� s� b秓 v� T祇 c玭g c玭g. ")
	end
end;
