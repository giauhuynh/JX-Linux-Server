--description: ����50������ ���ɽ��ˮ������
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)
-- ��������Ѿ��������ˣ������ȡ�����ŵ�����������ȥ�á�

function OnDeath()
	UTask_tm = GetTask(2);
	if ((UTask_tm == 50*256+80) and (HaveItem(48) == 0)) then
		Msg2Player("�õ��ٵġ������ס���ԭ����һ����������")
	end
end;
