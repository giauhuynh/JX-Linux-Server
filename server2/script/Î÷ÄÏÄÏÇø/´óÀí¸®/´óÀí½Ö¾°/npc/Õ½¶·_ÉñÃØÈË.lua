function OnDeath()
	if (GetTask(126) == 45) then
		SetTask(126,50)
		Msg2Player("Kh¸ l¾m tiÓu tö")
		AddNote("Kh¸ l¾m tiÓu tö")
		Talk(1,"Uworld126_kill","Kh¸ l¾m tiÓu tö")
	end
end

function Uworld126_kill()
	SetFightState(0)
	NewWorld(162,1531,3157)
end
