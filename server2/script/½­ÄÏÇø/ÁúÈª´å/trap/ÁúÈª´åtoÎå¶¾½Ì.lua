--������ ��Ȫ��to�嶾��
--Trap ID�������� 108

function main(sel)
	if (GetLevel() >= 5) then						--�ȼ��ﵽʮ��
		SetFightState(1);
		NewWorld(183, 1371, 3677);
	else
		Talk(1,"","Ph�a tr��c v� c�ng nguy hi�m, h�y v� luy�n t�p th�m!")
	end
end;
