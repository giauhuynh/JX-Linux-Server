--description: �����������ص�����
--author: yuanlan	
--date: 2003/5/17
-- Update: Dan_Deng(2003-08-17)

function OnDeath()
	UTask_wd = GetTask(5)
	UTask_wd60sub = GetByte(GetTask(17),3)
	if (UTask_wd == 60*256+20) and (UTask_wd60sub == 2) then
		Talk(2, "", "���٣���ס���Ժ����۸����ա���������Ӣ�۲���������!", "�������������ң��Һ���!")
		Msg2Player("�ɹ���ѵ�����ؽ�. ")
		SetTask(17, SetByte(GetTask(17),3,5))
		AddNote("�������ţ�����ؽ����������������ƶ�")
	end
end;
