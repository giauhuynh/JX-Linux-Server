-- ������ ����ɽ ս��_�Ʋ�ɽӥ.lua ������ɻ�������
-- By: Dan_Deng(2004-05-28)

function OnDeath()
	Uworld43 = GetTask(43)
	if (Uworld43 >= 60) and (Uworld43 < 69) then			-- ûɱ��10��
		SetTask(43,Uworld43 + 1)
		Msg2Player("as5d4fsd645f1sdf845")
	elseif (Uworld43 == 69) or (Uworld43 == 70) then		-- �Ѿ�ɱ��10��
		SetTask(43,70)
		Msg2Player("uhaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	end
end
