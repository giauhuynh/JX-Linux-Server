--�������� �����toɳĮ�Թ�
--TrapID��ɳĮ�Թ�16

function main(sel)
	i = random(0,2)
	if (GetLevel() >= 80) then
		SetFightState(1);
		AddTermini(195);
		if (i == 0) then 
			NewWorld(224,1620,3216)
		elseif (i == 1) then 
			NewWorld(224,1594,3166)
		else
			NewWorld(224,1622,3144)
		end

	else
		Say("ɳĮ��Σ�գ���ȥ������ȥ!",1,"�ص������. /no")
		SetPos(1716,3144)
	end
end;

function no()
end
