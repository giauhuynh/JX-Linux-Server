-- ���ɽ��Զ� ս��NPC ������03��������40������
-- by��Dan_Deng(2003-07-26)

function OnDeath()
	UTask_cy = GetTask(6)
	if (UTask_cy == 40*256+20) and (HaveItem(198) == 0) and (random(0,100) < 30) then				-- 30%�Ļ��ʳɹ�
		AddEventItem(198)
		Msg2Player("�õ���Կ�� ")
		AddNote("�ҳ���Կ��")
	end
end;
