--description: �������һ�����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)

function OnDeath()
	UTask_tr = GetTask(4);
	if (UTask_tr == 30*256+20) and (HaveItem(61) == 0) then
		AddEventItem(61)
		Msg2Player("�õ���ʯ��ĸ��. ")
		AddNote("�������, ��ܱ���С͵, �õ���ʯ��ĸ��. ")
	end
end;
