-- �������� ҩ���� ս��NPC ���� ������10�����񡢳ɶ���ҩ����ȭ����������
-- by��Dan_Deng(2003-07-30)
-- Update: Dan_Deng(2004-05-24)		ȭ����������

function OnDeath()
	UTask_kl = GetTask(9);
	Uworld132 = GetTask(132)
	if (UTask_kl == 10*256+10) or (Uworld132 == 10) then		--������
		if (HaveItem(112) == 0) then
			AddEventItem(112)
			Msg2Player("�õ�����ޣ ")
		elseif (HaveItem(113) == 0) then
			AddEventItem(113)
			Msg2Player("�õ��ؽ���")
		elseif (HaveItem(114) == 0) then
			AddEventItem(114)
			Msg2Player("�õ����")
		elseif (HaveItem(115) == 0) then
			AddEventItem(115)
			Msg2Player("�õ�������")
		elseif (random(0,99) < 50) then
			AddEventItem(116)			-- �õ��������������û����֥����50%�������֥
			Msg2Player("�õ���֥")
		end
	elseif (GetTask(75) == 10) and (GetTask(53) == 10) and (random(0,99) < 60) then		-- ȭ���������񣬰����ʵõ�
		AddEventItem(112)
		if (GetItemCount(112) >= 3) then
			Msg2Player("�ɵ�3������ޣ�����Ի�ȥ������")
		else
			Msg2Player("�ɵ�1������ޣ")
		end
	end
end;
