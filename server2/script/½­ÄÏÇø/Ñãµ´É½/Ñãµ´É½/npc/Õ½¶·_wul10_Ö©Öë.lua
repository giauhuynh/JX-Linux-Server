-- �㵴ɽ�Թ� ս��NPC ֩��01���嶾10������ȭ����������
-- by��Dan_Deng(2003-08-05)

function OnDeath()
	UTask_wu = GetTask(10)
	if (UTask_wu == 10*256+10) then		-- �������У������ʴ����ȡ�����ʣ���
		AddEventItem(86)			-- ��Ʒ֩��
		if (GetItemCount(86) >= 10) then
			Msg2Player("��׽����10ֻ��֩��")
			AddNote("��׽����10ֻ��֩��")
		else
			Msg2Player("׽����10ֻ��֩��")
		end
	elseif (GetTask(75) == 10) and (GetTask(52) == 10) and (random(0,99) < 75) then		-- ȭ���������񣬰����ʵõ�
		AddEventItem(86)
		if (GetItemCount(86) >= 7) then
			Msg2Player("׽����7ֻ��֩��,���Ի�ȥ�ˣ�����")
		else
			Msg2Player("ץ��һֻ��֩�� ")
		end
	end
end;
