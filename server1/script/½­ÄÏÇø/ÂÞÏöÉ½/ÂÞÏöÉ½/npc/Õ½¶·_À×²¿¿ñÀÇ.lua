-- ������ ����ɽ ս��_�ײ�����.lua ������ɻ�������
-- By: Dan_Deng(2004-05-28)

function OnDeath()
	Uworld43 = GetTask(43)
	if (Uworld43 >= 20) and (Uworld43 < 29) then			-- ûɱ��10��
		SetTask(43,Uworld43 + 1)
		Msg2Player("��ɱ��һ���ײ�����")
	elseif (Uworld43 == 29) or (Uworld43 == 30) then		-- �Ѿ�ɱ��10��
		SetTask(43,30)
		Msg2Player("��ɱ��һ���ײ����ǣ�������������ʲô��Ӧ. ")
	end
end
