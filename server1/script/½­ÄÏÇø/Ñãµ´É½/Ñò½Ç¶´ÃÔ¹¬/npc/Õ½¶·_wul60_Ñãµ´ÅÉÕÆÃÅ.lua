-- �㵴ɽ��Ƕ��Թ� ս��NPC ��BOSS01���嶾��ʦ����
-- by��Dan_Deng(2003-08-05)

function OnDeath()
	UTask_wu = GetTask(10)
	if (UTask_wu == 60*256+20) and (HaveItem(222) == 0) and (random(0,99) < 50) then
		AddEventItem(222)
		AddNote("�������㵴��ͷ�죬�ѱܶ����û��嶾��")
		Msg2Player("�������㵴��ͷ�죬�ѱܶ����û��嶾��")
	end
end;
