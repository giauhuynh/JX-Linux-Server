-- ���ɽ ս��NPC ��� ؤ��30������
-- by��Dan_Deng(2003-07-28)

function OnDeath()
	UTask_gb = GetTask(8);
	if (UTask_gb == 30*256+20) then			--30��������
		SetTask(8,30*256+30)
		AddNote("�������Ľ������λʧ�ٵ�ؤ����Ӷ������������ץ��. ")
		Msg2Player("�������Ľ������λʧ�ٵ�ؤ����Ӷ������������ץ��. ")
	end
end;
