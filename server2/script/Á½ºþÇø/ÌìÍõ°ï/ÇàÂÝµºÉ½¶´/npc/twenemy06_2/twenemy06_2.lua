--description: ���ݵ�ɽ������
--author: yuanlan	
--date: 2003/4/28
-- Update: Dan_Deng(2003-08-16)

function OnDeath()
	UTask_tw = GetTask(3);
	if (UTask_tw == 60*256+40) and (HaveItem(96) == 0) and (random(0,99) < 25) then
		AddEventItem(96)
		Msg2Player("�ӽ��ɱ�����ж����������. ")
--		SetTask(3, 66)
		AddNote("��ɽ�����ݵ������ɱ�ֶ�����������")
	end
end;	
