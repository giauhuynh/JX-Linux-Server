-- \script\��������\��ɽ\npc\ս��_��������ж���.lua
-- by xiaoyang (2004\4\15) ����90������

function OnDeath()
Uworld122 = GetTask(122)
	if (Uworld122 == 55) then				-- ״̬�У��˴����������
		Talk(1,"","�a, t v�i nh� ng��i c� th� o�n g� sao?")
		SetTask(122,60)  -- �����������Ϊ60
		Msg2Player("��nh b�i ���c Kim qu�c t��ng l�nh, quay v� g�p Th��ng b�ch l� v� L� ��ch phong b�o tin.")
		AddNote("��nh b�i ���c Kim qu�c t��ng l�nh, quay v� g�p Th��ng b�ch l� v� L� ��ch phong b�o tin.")
	end
end
