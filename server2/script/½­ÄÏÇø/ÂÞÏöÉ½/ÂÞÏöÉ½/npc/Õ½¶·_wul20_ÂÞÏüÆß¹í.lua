-- ����ɽ�Թ� ս��NPC ɫ��01���嶾20������
-- by��Dan_Deng(2003-08-05)

function OnDeath()
	UTask_wu = GetTask(10)
	i = GetItemCount("��ͷ")
	if (UTask_wu == 20*256+10) and (i < 7) and (random(0,99) < 80) then		-- �������У������ʴ����
		AddEventItem(85)
		if (i >= 6) then
			Msg2Player("6a5s4f6awe53f12ds6fds4")
			AddNote("��ɱ�������߹�����7��ͷ��������ӨӨ")
		else
			Msg2Player("6as5f49aw86e4fs4ds6f3")
		end
	end
end;
