--description: ��ţɽ������
--author: yuanlan	
--date: 2003/5/15
-- Update: Dan_Deng(2003-08-17)

function OnDeath()
	UTask_wd = GetTask(5)
	if (UTask_wd == 30*256+20) then	
		AddEventItem(133)
		Msg2Player("���һ�黭ü�� ")
		AddNote("��û�ü��")
	end;
end;	
