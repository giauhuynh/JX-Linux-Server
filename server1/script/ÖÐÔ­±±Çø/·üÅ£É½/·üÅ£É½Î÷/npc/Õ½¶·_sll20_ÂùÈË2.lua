-- ������� ս��NPC ����2 ����20������
-- by��Dan_Deng(2003-08-01)
--�����˵Ĺ����в����˳�������Ҫ���´����

function OnDeath()
	UTask_sl = GetTask(7);
	if (UTask_sl >= 20*256+64) and (UTask_sl < 20*256+128) and (GetBit(UTask_sl,2) == 0) then			-- ����������һֻδ���
		UTask_sl = SetBit(UTask_sl,2,1)
		if (UTask_sl == 20*256+64+31) then		--�����(bin(10000 + 01000 + 00100 + 00010 + 00001))
			SetTask(7,20*256+128)
			AddNote("������˱����ѵ���ķ��ڷ�����ŵ����������ԣ����ں�����Ϊ��. ")
			Msg2Player("������˱����ѵ���ķ��ڷ�����ŵ����������ԣ����ں�����Ϊ��. ")
		else
			Msg2Player("����һ������. ")
			SetTask(7,UTask_sl)
		end
	end
end;
