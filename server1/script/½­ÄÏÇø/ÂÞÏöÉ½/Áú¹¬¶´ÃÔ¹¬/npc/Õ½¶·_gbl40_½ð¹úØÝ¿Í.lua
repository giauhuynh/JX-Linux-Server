-- ����ɽ ս��NPC ������ ؤ��40������
-- by��Dan_Deng(2003-07-28)

function OnDeath()
	UTask_gb = GetTask(8);
	if (UTask_gb == 40*256+10) and (HaveItem(236) == 0) and (random(0,100) < 33) then		--33%����
		AddEventItem(236)
		AddNote("�������Ľ�����������˵��ܵ�")
		Msg2Player("f4a9s8f64sdf16s4df9s8e4")
	end
end;
