--description: ����30������ ���ɽ���ƶ�����
--author: yuanlan	
--date: 2003/3/11
-- Update: Dan_Deng(2003-08-13)

function main()
	UTask_tm = GetTask(2);
	if (UTask_tm == 30*256+30) and (HaveItem(98) == 1) then					--�õ�Կ��һ
		DelItem(98)
		AddEventItem(42) 
		Msg2Player("�õ��������ס�")
		SetTask(2, 30*256+50)
		AddNote("���䣬�õ��������ס� ")
	elseif (UTask_tm >= 30*256+50) and (UTask_tm <= 30*256+60) and (HaveItem(42) == 0) then			-- ���߶���
		AddEventItem(42) 
		Talk(1,"","ԭ����ѻ����׷Ž�������!")
	elseif (UTask_tm > 30*256+30) then 
		Talk(1,"","�����ѿ�")
	else
		Talk(1,"","û��Կ�ף����ܴ򿪱���!.")
	end
end;
