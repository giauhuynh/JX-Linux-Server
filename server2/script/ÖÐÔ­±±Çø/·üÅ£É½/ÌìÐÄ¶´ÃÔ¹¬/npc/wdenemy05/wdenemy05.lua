--description: ��ţɽ ���Ķ��Թ����ˡ��䵱50������
--author: yuanlan	
--date: 2003/5/16
-- Update: Dan_Deng(2003-08-17)

function OnDeath()
	UTask_wd = GetTask(5)
	if (UTask_wd == 50*256+20) and (random(0,99) < 33) then
		SetTask(5, 50*256+50)
		Earn(10000)
		Msg2Player("�������ͷĿ�������õ��������õ�1����. ")
		AddNote("�ڷ�ţɽ���Ķ����������ͷĿ�������õ��������õ�1����. ")
	end
end;
