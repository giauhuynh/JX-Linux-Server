--description: �������һ�����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)

function OnDeath()
	UTask_tr = GetTask(4);
	if (UTask_tr == 30*256+20) and (HaveItem(59) == 0) then
		AddEventItem(59)
		Msg2Player("�õ���Ѫ�챦ʯ. ")
		AddNote("�������, ��ܱ���С͵, �õ���Ѫ�챦ʯ. ")
	end
end;	
