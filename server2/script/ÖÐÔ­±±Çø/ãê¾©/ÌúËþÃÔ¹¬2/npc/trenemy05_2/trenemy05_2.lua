--description: �꾩�������������
--author: yuanlan
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)

function OnDeath()
	UTask_tr = GetTask(4)
	UTask_trsub01 = GetBit(GetTask(21),2)
	if (UTask_tr == 50*256+20) and (UTask_trsub01 == 0) and (HaveItem(161) == 0) and (random(0,99) < 50) then
		AddEventItem(161)
		Msg2Player("��õڶ���Կ��")
		AddNote("�������ڶ��㣬������������õ����ڶ������ص�Կ��")
	end
end;
