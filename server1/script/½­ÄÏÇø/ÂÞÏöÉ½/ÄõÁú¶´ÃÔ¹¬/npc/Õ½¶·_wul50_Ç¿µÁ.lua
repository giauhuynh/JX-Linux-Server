-- ����ɽ������ ս��NPC ǿ�����嶾50������
-- by��Dan_Deng(2003-08-05)

function OnDeath()
	UTask_wu = GetTask(10)
	if (UTask_wu == 50*256+20) and (random(0,99) < 33) then		-- �������У������ʴ����
		AddEventItem(88)
		AddNote("������ɺ��")
		Msg2Player("65dsf4gd965g1df5")
	end
end;
