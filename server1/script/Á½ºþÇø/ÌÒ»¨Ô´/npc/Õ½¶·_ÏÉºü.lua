Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function OnDeath()
	Uworld76 = GetTask(76)
	if (Uworld76 == 40) and (HaveItem(371) == 0) and (random(0,99) < 50) then
		AddEventItem(371)
		Msg2Player("取得单泽的水")
		AddNote("取得单泽的水")
	end
		Bil_DefaultTalk4Npc()
end
