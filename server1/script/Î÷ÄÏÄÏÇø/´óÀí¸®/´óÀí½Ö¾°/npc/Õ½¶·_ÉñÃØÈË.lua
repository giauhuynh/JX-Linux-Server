function OnDeath()
	if (GetTask(126) == 45) then
		SetTask(126,50)
		Msg2Player("Kh� l�m ti�u t�")
		AddNote("Kh� l�m ti�u t�")
		Talk(1,"Uworld126_kill","Kh� l�m ti�u t�")
	end
end

function Uworld126_kill()
	SetFightState(0)
	NewWorld(162,1531,3157)
end
