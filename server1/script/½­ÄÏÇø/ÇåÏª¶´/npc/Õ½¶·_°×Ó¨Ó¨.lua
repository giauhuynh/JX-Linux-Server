-- ս��_��ӨӨ.lua
-- By: Dan_Deng(2004-04-13)

function OnDeath()
	Uworld50 = GetTask(50)
	if (Uworld50 == 31) then			-- �����˶�����ˣ����Եõ�����
		SetTask(50,40)
		AddEventItem(383)
		Msg2Player("��ܰ�ӨӨ")
		Talk(2,"","�׹�����������������?","����˻����пյ��ı��˵������أ���������Ź����")
	elseif (Uworld50 == 30) then
		SetTask(50,32)
		Msg2Player("��ܰ�ӨӨ")
		Talk(1,"","��! ��������.��ʹ����, ����!")
	elseif (Uworld50 == 40) and (HaveItem(383) == 0) then			-- ���µõ�����
		SetTask(50,40)
		AddEventItem(383)
		Msg2Player("��ܰ�ӨӨ")
		Talk(2,"","�׹�����������������?","����˻����пյ��ı��˵������أ���������Ź����")
	end
end
