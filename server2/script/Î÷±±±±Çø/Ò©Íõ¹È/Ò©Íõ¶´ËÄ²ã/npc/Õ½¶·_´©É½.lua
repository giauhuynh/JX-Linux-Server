-- �������� ҩ���� ҩ�����Ĳ� ս��_��ɽ.lua  ��С��ʧ������
-- By: Dan_Deng(2004-05-27)

function OnDeath(sel)
	Uworld42 = GetTask(42)
	if (Uworld42 >= 20) and (Uworld42 < 29) then
		SetTask(42,Uworld42 + 1)
		Msg2Player("ɱ��1����ɽ. ")
	elseif (Uworld42 == 30) or (Uworld42 == 29) then
		SetTask(42,30)
		Msg2Player("ɱ��10����ɽ�����Ա�����˵��� ")
	end
end
