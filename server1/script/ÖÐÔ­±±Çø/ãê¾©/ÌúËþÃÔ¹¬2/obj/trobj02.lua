--description: �꾩���������㱦�� ���̽�50������
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)

function main()
	UTask_tr = GetTask(4);
	UTask_trsub01 = GetTask(21)
	if (UTask_tr == 50*256+20) and (HaveItem(161) == 1) then
		DelItem(161)
		if (GetBit(UTask_trsub01,2) == 0) then
			UTask_trsub01 = SetBit(UTask_trsub01,2,1)
			SetTask(21, UTask_trsub01)
			AddNote("�򿪵ڶ�������")
			Msg2Player("�򿪵ڶ�����ı��䣬�򿪵ڶ�������")
			if (UTask_trsub01 == 7) then 			-- bin: 100 + 010 + 001
				Talk(1,"","���Ѵ򿪵�������أ��ȳ���������ķ����� ")
				Msg2Player("���Ѵ򿪵�������أ��ȳ���������ķ����� ")
				SetTask(4, 50*256+50)
				AddNote("���������ȫ���򿪣��ȳ���������ķ�����")
			end
		else
			Talk(1,"","���ر���")
		end
	elseif (UTask_tr == 50*256+20) and (GetBit(UTask_trsub01,2) == 1) then
		Talk(1,"","���ر���")
	elseif (UTask_tr == 50*256+50)  then
		Talk(1,"","���ر���")
	else
		Talk(1,"","û��Կ�׾Ͳ��ܴ򿪴˻���")
	end
end;
