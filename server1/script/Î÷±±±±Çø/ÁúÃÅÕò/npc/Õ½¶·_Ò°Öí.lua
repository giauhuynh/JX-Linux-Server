-- ������ ս�� Ұ�� Т������Ұ����
-- By��Dan_Deng(2003-09-17)

function OnDeath()
	UTask_world27 = GetTask(27)
	if (UTask_world27 == 5) and (random(0,99) < 80) then
		AddEventItem(228)
		if (GetItemCount(228) >= 3) then
			Msg2Player("�� l�y ���c 3 mi�ng th�t t��i, quay v� g�p b� ch� L� qu�n.")
			AddNote("�� l�y ���c 3 mi�ng th�t t��i, quay v� g�p b� ch� L� qu�n.")
		else
			Msg2Player("Gi�t ���c heo r�ng b�n l�y ���c m�t mi�ng th�t t��i")
		end
	end
end;
