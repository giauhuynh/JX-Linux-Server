--description: ����������ƶ�����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)

function OnDeath()
	UTask_tr = GetTask(4);
	if (UTask_tr == 40*256+20) and (HaveItem(159) == 0) then					--ȡ����������Ʒ���޵��жϣ��Ա���������
		AddEventItem(159)
		Msg2Player("����ץס�����εģ��������ҵ��˸��γ���һ������. ")
--		SetTask(4, 45)
		AddNote("�ڽ������ץ�����εģ��õ����γ�������. ")
	end
end;
