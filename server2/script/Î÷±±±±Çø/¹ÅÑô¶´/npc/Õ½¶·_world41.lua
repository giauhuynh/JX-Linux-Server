-- ������-������-���������Է�(�������񡰾�С�ꡱ)
-- by��Dan_Deng(2004-03-03)

function OnDeath()
	Uworld41 = GetByte(GetTask(41),1)
	if (Uworld41 >= 10) and (Uworld41 < 100) and (HaveItem(352) == 0) and (random(0,99) < 50) then		-- �����в���û��Կ�ף�50%����
		if (Uworld41 == 10) then		-- ��һ�δ�ʱ�Ӿ���Ի�,��������ֵ
			if (GetSex() == 0) then		-- �Ի���Ů��ͬ
				Talk(1,"","Ӣ����������������С��֮�����������ӣ����ڻ����ں��������ء�����Կ�ף�ֻ��Ӣ���Ĺ�С�Ĺ���!")
			else
				Talk(1,"","Ů����������������С��֮�����������ӣ����ڻ����ں��������ء�����Կ�ף�ֻ��Ӣ���Ĺ�С�Ĺ���!")
			end
			Uworld41 = SetByte(GetTask(41),1,30)
			SetTask(41,Uworld41)
			AddNote("���ǿ��ͷĿ���������Է����õ�һ�Ѵ򿪺��ξ�С���Կ��")
		end
		AddEventItem(352)			-- ����Կ��
		Msg2Player("�õ�����Կ��")
	end
end;
