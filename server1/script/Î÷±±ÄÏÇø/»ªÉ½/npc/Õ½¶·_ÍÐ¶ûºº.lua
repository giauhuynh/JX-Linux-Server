-- \script\西北南区\华山\npc\战斗_金国将领托尔汉.lua
-- by xiaoyang (2004\4\15) 少林90级任务

function OnDeath()
Uworld122 = GetTask(122)
	if (Uworld122 == 55) then				-- 状态中，此处不检查令牌
		Talk(1,"","馻, t v韎 nh� ngi c� th� o竛 g� sao?")
		SetTask(122,60)  -- 设置任务变量为60
		Msg2Player("Цnh b筰 頲 Kim qu鑓 tng l躰h, quay v� g苝 Thng b竎h l� v� L� ch phong b竜 tin.")
		AddNote("Цnh b筰 頲 Kim qu鑓 tng l躰h, quay v� g苝 Thng b竎h l� v� L� ch phong b竜 tin.")
	end
end
