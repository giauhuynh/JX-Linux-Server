--description: ������ ������ɽ������
--author: yuanlan	
--date: 2003/4/24
-- Update: Dan_Deng(2003-08-16)

function OnDeath()
	UTask_tw = GetTask(3)
	if (UTask_tw == 10*256+20) and (GetItemCount("��Ѫʯ") < 3) then
		AddEventItem(91)
		Msg2Player("�õ�һ�ż�Ѫʯ")
		AddNote("��������ɽ�����ҵ�һ�ż�Ѫʯ. ")
	end
end;	
