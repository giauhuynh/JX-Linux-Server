-- ս��_�����ʹ.lua
-- By: Dan_Deng(2004-04-13)

function OnDeath()
	Uworld50 = GetTask(50)
	if ((Uworld50 == 32) or (Uworld50 == 40)) and (HaveItem(383) == 0) then			-- �����˶�����ˣ����Եõ�����
		SetTask(50,40)
		AddEventItem(383)
		Msg2Player("��ܰ�ӨӨ")
		Talk(2,"","�׹���! ��������������?","����ô�пչ��˼ҵ��°�, ��������Ź����")
	elseif (Uworld50 == 30) then
		SetTask(50,31)
		Talk(1,"","����正�����!")
	end
end
