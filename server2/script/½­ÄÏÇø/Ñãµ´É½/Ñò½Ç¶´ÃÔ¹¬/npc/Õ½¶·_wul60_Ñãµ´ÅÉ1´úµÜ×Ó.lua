-- �㵴ɽ��Ƕ��Թ� ս��NPC 1�����ӣ��嶾��ʦ����
-- by��Dan_Deng(2003-08-05)

function OnDeath()
	UTask_wu = GetTask(10)
	if ((UTask_wu == 60*256+10) and (HaveItem(222) == 0)) then		-- �������У���δ�õ�������Ʒ
		i = GetTaskTemp(48) + random(0,2)			-- �����������0��2���ӵ�5���ɴ��BOSS
		if (i >= 5) then
			SetTask(10,60*256+20)
			SetTaskTemp(48,0)
			AddNote("�㵴�������ѳ���")
			Msg2Player("��ɱ��������֮��, �㵴��������������")
		else
			SetTaskTemp(48,i)
			Msg2Player("��ɱ��һ���㵴�ɵĵ���")
		end
	end
end;
