-- ս��_��ɱ.lua  ����������ϴ��ԩ����
-- By: Dan_Deng(2004-04-15)

function OnDeath()
	Uworld51 = GetTask(51)
	if (Uworld51 == 60) then		-- �����У��Ǵ�ĵ�һ��СBOSS
		SetTask(51,61)
		Talk(1,"","��ն�ֵܽ�Ϊ�㱨��!")
	elseif (HaveItem(377) == 0) and ((Uworld51 == 62) or (Uworld51 == 70) or (Uworld51 == 80)) then		-- �����У����Ե�����
		Talk(1,"","����!")
		SetTask(51,70)
		AddEventItem(377)		-- "��������"
		Msg2Player("��ɱ������̿ͣ������������б������ؼ� ")
	end
end
