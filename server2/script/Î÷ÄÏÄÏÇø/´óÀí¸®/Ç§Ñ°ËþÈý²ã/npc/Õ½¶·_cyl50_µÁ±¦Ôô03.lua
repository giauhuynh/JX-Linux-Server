-- ����ǳ�ʥ��ǧѰ�� ս��NPC ����03��������50������
-- by��Dan_Deng(2003-07-27)

function OnDeath()
	UTask_cy = GetTask(6)
	if (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) and (HaveItem(5) == 0) then		--50�����������޵���
		UTask_cy = SetBit(UTask_cy,3,1)
		if (UTask_cy == 50*256+32+7) then		--�����(bin(100 + 010 + 001))
			SetTask(6,50*256+32)
			AddEventItem(5)
			Msg2Player("��ܵ�������ر����ߵ���ͭ����")
			AddNote("��ܵ�������ر����ߵ���ͭ����")
		else
			SetTask(6,UTask_cy)
			Msg2Player("��ܵ��������ǣ�û���ҵ���ͭ���� ")		--Ҫ��Ҫ��ʾ��ң�
		end
	end
end;
