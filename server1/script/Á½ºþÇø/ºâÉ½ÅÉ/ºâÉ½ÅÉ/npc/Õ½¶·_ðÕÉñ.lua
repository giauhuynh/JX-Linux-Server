function OnDeath()
	Uworld76 = GetTask(76)
	if (Uworld76 == 40) and (HaveItem(372) == 0) and (random(0,99) < 50) then
		AddEventItem(372)
		Msg2Player("�õ����Ƶ�����. ")
		AddNote("�õ����Ƶ�����. ")
	end
end
