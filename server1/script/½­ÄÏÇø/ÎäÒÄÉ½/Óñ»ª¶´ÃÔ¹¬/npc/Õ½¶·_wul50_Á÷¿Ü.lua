-- ����ɽ�񻪶��Թ� ս��NPC ����01���嶾50������
-- by��Dan_Deng(2003-08-05)

function OnDeath()
	UTask_wu = GetTask(10)
	if (UTask_wu == 50*256+10) then
		SetTask(10,50*256+20)
		AddNote("ȥ����ɽ���ǿ��, �û���ɺ��")
		Msg2Player("ץ��ͷ��,�Żص���ɺ��������ɽ��ǿ����ȥ��, ���Ǻ���������ǿ����һ���")
	end
end;
