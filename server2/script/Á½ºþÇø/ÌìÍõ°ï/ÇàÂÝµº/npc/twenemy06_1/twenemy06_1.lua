--description: ���ݵ�����
--author: yuanlan	
--date: 2003/4/28
-- Update: Dan_Deng(2003-08-16)

function OnDeath()
	UTask_tw = GetTask(3);
	if (UTask_tw == 60*256+20) and (HaveItem(101) == 0) and (random(0,99) < 50) then
		AddEventItem(101)
		Msg2Player("�õ�Կ��")
		AddNote("�����ݵ��õ��������Կ��. ")
	end
end;
