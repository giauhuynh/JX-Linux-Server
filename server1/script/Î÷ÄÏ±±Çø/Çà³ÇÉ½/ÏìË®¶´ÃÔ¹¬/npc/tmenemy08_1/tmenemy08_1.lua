--description: ����50������ ���ɽ��ˮ���ƺ�
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)

function OnDeath()
	UTask_tm = GetTask(2)
	if (UTask_tm == 50*256+60) then
		Talk(1,"","�ߣ���������������ѣ�������ң���Ҳ����õ��������ס����Ұ���������ɽ�����һ����Ҳ�����ҵ���")
		SetTask(2, 50*256+80)
		Msg2Player("������ɽ��ˮ���ƺ̣�֪�������׷��ڶ���")
		AddNote("������ɽ��ˮ���ƺ̣�֪�������׷��ڶ���")
	end
end;
