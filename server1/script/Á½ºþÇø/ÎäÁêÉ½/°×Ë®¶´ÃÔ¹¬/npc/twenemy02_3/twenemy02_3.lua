--description: ����ɽ ��ˮ������3������20������
--author: yuanlan	
--date: 2003/4/25
-- Update: Dan_Deng(2003-08-16)

function OnDeath()
	UTask_tw = GetTask(3)
	if (UTask_tw == 20*256+50) then
		UTask_twtmp20 = SetBit(GetTaskTemp(10),3,1)
		SetTaskTemp(10,UTask_twtmp20)
		if (UTask_twtmp20 == 7) then		-- bin: 100 + 010 + 001
			Msg2Player("������ˣ����������ͳ�һ�������Ϊ��л. ")
			AddEventItem(92) 
--			SetTask(3, 28)
			AddNote("������ɽ��ˮ�����3��ð����������ӵ����ˣ��õ����������͵Ľ���. ")
		end
	end
end;
