--description: ����30������ ���ɽ���ƶ����
--author: yuanlan	
--date: 2003/3/11
-- Update: Dan_Deng(2003-08-13)

function OnDeath()
	UTask_tm = GetTask(2);
	if (UTask_tm == 30*256+20) then 
		Talk(1,"","�ߣ����������ң���Ҳ�������׵õ��������ס�����ʵ�����㣬�������ס������Ǹ�������������Կ�����б��¾��ڶ��������Ұ�!")
		SetTask(2, 30*256+30)
		AddNote("���ͷĿ��ɳ��֪�������׷��ڱ�����! ")
		Msg2Player("���ͷĿ��ɳ��֪�������׷��ڱ�����! ")
	end
end;	
