--������ ��Ȫ��to����ɽ
--Trap ID�������� 5

function main(sel)
	if (GetLevel() >= 5) then						--�ȼ��ﵽʮ��
		SetFightState(1);
		NewWorld(179, 1618, 3292);
		AddTermini(153);
	else
		Talk(1,"","Ph�a tr��c r�t nguy hi�m, h�y v� luy�n t�p th�m �i!")
	end
end;
