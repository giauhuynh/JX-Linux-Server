--description: �������ʦ���� ���ݵ�����
--author: yuanlan	
--date: 2003/4/28
-- Update: Dan_Deng(2003-08-16)

function main()
	UTask_tw = GetTask(3)
	if (UTask_tw == 60*256+20) and (HaveItem(101) == 1) then
		DelItem(101)
		Talk(2,"","���������Ѿ�������������","������һЩָ�����ݵ��ı�ǣ�����ɱ�ָ��뿪���éu. ")
		SetTask(3, 60*256+40)
		AddNote("�򿪺����ߵı��䣬��֪���������鱻���ɱ��������. ")
	elseif (UTask_tw == 60*256+40) then
		Talk(1,"","�����ǿյ�. ")
	else
		Talk(1,"","û��Կ�ף��򲻿�����.")
	end
end;
